#----------------------------------------------------------------------------------#
#-----------------------------TD SENSITIVITY ANALYSIS-----------------------------##
#----------------------------------------------------------------------------------#
# Application of the  metamodelling approach to extablish the sensitivity of 3D apple tree model on light interception outputs
# Raphael PEREZ, Christian FOURNIER, November 2018 

###load/install the package

packs <- c( "sensitivity", "lhs", "ggplot2",'ggpmisc')
InstIfNec<-function (pack) {
  if (!do.call(require,as.list(pack))) {
    do.call(install.packages,as.list(pack))  }
  do.call(require,as.list(pack)) }
lapply(packs, InstIfNec)

##ggplot graphic theme
myTheme <- theme(
  panel.background=element_rect(fill="transparent", color=NA),  
  plot.background = element_rect(fill = "transparent",colour = NA),
  axis.line=element_line(colour="black"), 
  axis.title=element_text(size=16),
  axis.text.y=element_text(size=14, colour="black"), 
  axis.text.x=element_text(size=14, colour="black", angle=0, hjust=0.5),
  panel.grid.minor = element_blank(), 
  panel.grid.major = element_line(colour="grey90", size=0.2), 
  legend.position=c(0.8,0.9), 
  legend.text=element_text(size=14),
  legend.title=element_text(size=14)
)
####______________________________________________________________________________####
####----------------------------------METAMODEL-----------------------------------####
####______________________________________________________________________________####

####----------------------------Design the plan-------------------------------####

###-----generate paramters variation range of model parameters----####
parameters=c('INSERTION_ANGLE','PHYLLOTAXY','BRANCH_ELASTICITY','INTERNODE_FLENGTH','LONGGU_PEAK_POSITION')

Pvar=data.frame(parameter=parameters,min=NA,max=NA) #generate a data frame
rownames(Pvar)=parameters

###----fix  min and max paramater values----####
#INSERTION_ANGLE
Pvar['INSERTION_ANGLE',c('min','max')]=c(0,90) #45
#PHYLLOTAXY
Pvar['PHYLLOTAXY',c('min','max')]=c(0,359) #144
#BRANCH_ELASTICITY 
Pvar['BRANCH_ELASTICITY',c('min','max')]=c(0,0.1) #0.06
#INTERNODE_FLENGTH
Pvar['INTERNODE_FLENGTH',c('min','max')]=c(0,5)  #3.5
#LONGGU_PEAK_POSITION
Pvar['LONGGU_PEAK_POSITION',c('min','max')]=c(0,0.9)   #0.5
#difference angle between insertion and leaf tip (degree)

#check the data frame
print(Pvar)

####function to generate the LHS plan
RandomLHS=function(factors,distribParameters,size,preserveDraw=FALSE){
  
  #set random seed
  RNGkind(kind="L'Ecuyer-CMRG")
  set.seed(1) 
  
  nbf=length(factors)
  design=randomLHS(n=size,k=nbf,preserveDraw = preserveDraw)
  for (i in 1:nbf){
    design[,i]=distribParameters[[1]][[i]]+design[,i]*(distribParameters[[2]][[i]]-distribParameters[[1]][[i]])
  }
  colnames(design)=factors
  resultats=as.data.frame(design)
  return(resultats)
}


####----------------------------Design the plan-------------------------------####
factors=parameters
distribParameters=Pvar[,c('min','max')]

size=length(parameters)**3

planLHS=RandomLHS(factors = factors,size=size,distribParameters = distribParameters,preserveDraw=FALSE)

###----affect fixed parameters
SEED=1
ORCHARD=FALSE

planLHS$SEED=SEED
planLHS$ORCHARD=ORCHARD

###----save the design----####
# filename=paste0('planLHS_seed',SEED,'_orchard_',ORCHARD,'_',size,'simus')
# write.csv(x=planLHS,file =paste(filename,'.csv',sep=''),row.names = F)

# write.csv(x=planLHS,file =paste('C:/Users/perez/Desktop/TD_AS_UM2018/SensitivityAnalysis_UM2018/hbma312_training_2018/simulation/plan','_',size,'simus.csv',sep=''),row.names = T)

###----visualisation of parameter distribution & sampling grid  ----####
for (p in parameters){
  hist(planLHS[,p],col='grey',main=paste(p),xlab='value')
}


plot(planLHS[,1:length(parameters)],pch=19,col=alpha(c='red',alpha=0.1))


####-------------------Polynomial model and variance components------------------####

###----import outputs----####
responses=c('Leaf_area','Leaf_Ei','Leaf_I','Leaf_nb','Fruit_area','Fruit_Ei','Fruit_I','Fruit_nb')
#isolated
outputLHS_isol=read.table('res_isolated3125simus.csv',sep=',',dec='.',header=T)
##light intercepted by leaves
outputLHS_isol$Leaf_I=outputLHS_isol$Leaf_Ei*outputLHS_isol$Leaf_area
##light intercepted by fruits
outputLHS_isol$Fruit_I=outputLHS_isol$Fruit_Ei*outputLHS_isol$Fruit_area

###change colnames
colnames(outputLHS_isol)[which(colnames(outputLHS_isol) %in% responses)]=paste0(colnames(outputLHS_isol)[which(colnames(outputLHS_isol) %in% responses)],'_isol')

##canopy
outputLHS_canop=read.table('res_non_isolated3125simus.csv',sep=',',dec='.',header=T)
##light intercepted by leaves
outputLHS_canop$Leaf_I=outputLHS_canop$Leaf_Ei*outputLHS_canop$Leaf_area
##light intercepted by fruitsd
outputLHS_canop$Fruit_I=outputLHS_canop$Fruit_Ei*outputLHS_canop$Fruit_area

###change colnames
colnames(outputLHS_canop)[which(colnames(outputLHS_canop) %in% responses)]=paste0(colnames(outputLHS_canop)[which(colnames(outputLHS_canop) %in% responses)],'_canop')


###merge isolated and canopy outputs
outputs=merge(x=outputLHS_isol[,c('X',parameters,paste0(responses,'_isol'))],y=outputLHS_canop[,c('X',parameters,paste0(responses,'_canop'))])
outputs=outputs[order(outputs$X),] ##sort simulation number

###estimate mutual shading
outputs$Leaf_MS=(outputs$Leaf_Ei_isol-outputs$Leaf_Ei_canop)/outputs$Leaf_Ei_isol

###----find the 3D plant a selected variable----####


###select the response variable
var='Leaf_Ei_isol'

dataMM=outputs[,c(parameters,var)]


###----fit the polynomial metamodel----####

#complete model
MM_poly_total=lm(formula=dataMM[,var]~polym(INSERTION_ANGLE,PHYLLOTAXY,BRANCH_ELASTICITY,INTERNODE_FLENGTH,LONGGU_PEAK_POSITION,degree=3),data=dataMM)

summary(lm(formula=dataMM[,var]~predict(MM_poly_total)))

r2_total=summary(MM_poly_total)$adj.r.squared
print(paste(var,'  r2=',r2_total))

#estimate principal effect and interaction

tableMM=NULL
V=dataMM[,1:(ncol(dataMM)-1)]
for (i in 1:ncol(V)){
  v=paste(colnames(V)[i])
  
  model_seul=lm(formula=dataMM[,var]~polym(V[,i],degree=3),data=dataMM)
  r2_seul=summary(model_seul)$adj.r.squared
  
  vecteur=data.frame(r=c(1:length(parameters)),c=c(1:length(parameters)))
  w=which(vecteur$c!=i)  
  
  model_sauf=lm(formula=dataMM[,var]~polym(V[,w[1]],V[,w[2]],V[,w[3]],V[,w[4]],degree=3),data=dataMM)
  r2_sauf=summary(model_sauf)$adj.r.squared
  
  r2_spe=r2_total-r2_sauf  ##specific effect of the parameter
  r2_int_conf=r2_total-r2_sauf-r2_seul
  r2_int=ifelse(r2_int_conf>0,r2_int_conf,0) ### interaction effect
  r2_conf=ifelse(r2_int_conf>0,0,abs(r2_int_conf)) ###confusion effect (cannot differenciate if the effect comes from the parameters or the others)
  
  tableMM_sub=data.frame(Alone=r2_seul,Specific=r2_spe,Interaction=r2_int,Confusion=r2_conf,row.names=v)
  tableMM=rbind(tableMM,tableMM_sub)
}

assign(paste('table',var),tableMM)

print(tableMM)


###----graphs----####


#model adjustment

dataMM$prediction=predict(MM_poly_total) ##get metaomel precidtions

formula <- y ~ x

graph_ajust=ggplot(data=dataMM,aes(x=dataMM[,var],y=prediction))+
  geom_point()+
  geom_smooth(method='lm')+
  stat_poly_eq(aes(label = paste(..rr.label..)),label.x.npc = 'left', label.y.npc = 'top',formula = formula , parse = TRUE, size = 5)+
  ylab(paste0('Metamodel predictions for ',var))+
  xlab(paste0('Simulations for ',var))+
  myTheme
 
 
print(graph_ajust)


### contribution of parameters to response variance
data_bar=data.frame(r2=c(tableMM[,'Specific'],tableMM[,'Interaction'],tableMM[,'Confusion']),Effect=c(rep('Specific',nrow(tableMM)),rep('Interaction',nrow(tableMM)),rep('Confusion',nrow(tableMM))),Parameter=rep(rownames(tableMM),3))

graphDecomp=ggplot() + 
  geom_hline(yintercept=r2_total,lty=2)+
  geom_bar(data=data_bar, aes(fill=Effect,y=r2, x=Parameter), stat="identity",col=1,lwd=0.1)+
  ylab('')+
  ylim(0,1)+
  theme_classic()+  
  theme(legend.position=c(0.8,0.8))+
  coord_flip()+
  ggtitle(var)+
  myTheme
print(graphDecomp)



###____identify ideotypes

ideo=which(outputs[,var]==max(outputs[,var],na.rm=T))

outputs[ideo,]

###command for visualisation on python
print(ideo-1)

df=load_res(output='plan_3125simus.csv')
display_res(df,irow=1657,light=True)







###____visualisation of outputs & ideotypes
outputs$ref=NA
outputs$type='NA'

##best
max_Leaf_Ei_isol=which(outputs[,'Leaf_Ei_isol']==max(outputs[,'Leaf_Ei_isol'],na.rm=T))
max_Leaf_Ei_canop=which(outputs[,'Leaf_Ei_canop']==max(outputs[,'Leaf_Ei_canop'],na.rm=T))
max_Fruit_Ei_isol=which(outputs[,'Fruit_Ei_isol']==max(outputs[,'Fruit_Ei_isol'],na.rm=T))
max_Fruit_Ei_canop=which(outputs[,'Fruit_Ei_canop']==max(outputs[,'Fruit_Ei_canop'],na.rm=T))

outputs[max_Leaf_Ei_isol,c('ref','type')]=c('max_Leaf_Ei_isol','isol')
outputs[max_Leaf_Ei_canop,c('ref','type')]=c('max_Leaf_Ei_canop','canop')
outputs[max_Fruit_Ei_isol,c('ref','type')]=c('max_Fruit_Ei_isol','isol')
outputs[max_Fruit_Ei_canop,c('ref','type')]=c('max_Fruit_Ei_canop','canop')


###worst
min_Leaf_Ei_isol=which(outputs[,'Leaf_Ei_isol']==min(outputs[,'Leaf_Ei_isol'],na.rm=T))
min_Leaf_Ei_canop=which(outputs[,'Leaf_Ei_canop']==min(outputs[,'Leaf_Ei_canop'],na.rm=T))
min_Fruit_Ei_isol=which(outputs[, 'Fruit_Ei_isol']==min(outputs[,'Fruit_Ei_isol'],na.rm=T))
min_Fruit_Ei_canop=which(outputs[,'Fruit_Ei_canop']==min(outputs[,'Fruit_Ei_canop'],na.rm=T))


outputs[min_Leaf_Ei_isol,c('ref','type')]=c('min_Leaf_Ei_isol','isol')
outputs[min_Leaf_Ei_canop,c('ref','type')]=c('min_Leaf_Ei_canop','canop')
outputs[min_Fruit_Ei_isol,c('ref','type')]=c(rep('min_Fruit_Ei_isol',length(min_Fruit_Ei_isol)),rep('isol',length(min_Fruit_Ei_isol)))
outputs[min_Fruit_Ei_canop,c('ref','type')]=c('min_Fruit_Ei_canop','canop')


ggplot() + 
geom_point(data=outputs[is.na(outputs$ref),],aes(x=Leaf_area_isol,y=Leaf_Ei_isol),col='lightgrey',size=0.5)+
geom_point(data=outputs[!is.na(outputs$ref),],aes(x=Leaf_area_isol,y=Leaf_Ei_isol,col=ref,pch=type),size=3)+
myTheme+
theme(legend.position='right')

