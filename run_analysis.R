getwd()
setwd("C:/Mystuff/datasciencecoursera/Getting and Cleaning Data/data/UCI HAR Dataset")
getwd()

library(dplyr)
library(plyr)

readData<-function(dir,file){
  
return_string<-paste(dir,"/",file,sep="")  
return(return_string)

}

#Step 2: selecting a subset of features and also renaming variables with convinient names

features<-read.table(readData(".","features.txt"))
activity_labels<-read.table(readData(".","activity_labels.txt"))
activity_labels1<-activity_labels %>% rename(c('V1' = 'activity_id')) %>% rename(c('V2' = 'activity_label')) 

features_sub<-features[grep("[Mm]ean\\(\\)|[Ss]td\\(\\)",features$V2),]

features_sub$V2<-tolower(features_sub$V2)
features_sub$V2<-gsub("-","_",features_sub$V2)
features_sub$V2<-gsub("\\(\\)","",features_sub$V2)



#training data
subject_train<-read.table(readData("train","subject_train.txt"))

subject_train1<-subject_train %>% rename(c('V1' = 'subject')) %>% mutate(data_partition='train')

x_train<-read.table(readData("train","X_train.txt"))
x_train1<-x_train[,features_sub$V1]
#step 4 for training data
names(x_train1)<-features_sub$V2

y_train<-read.table(readData("train","y_train.txt"))

y_train1<-y_train %>% rename(c('V1' = 'activity_id'))

train<-cbind(x_train1,y_train1,subject_train1)


#Test

subject_test<-read.table(readData("test","subject_test.txt"))

subject_test1<-subject_test %>% rename(c('V1' = 'subject')) %>% mutate(data_partition='test')

x_test<-read.table(readData("test","X_test.txt"))
x_test1<-x_test[,features_sub$V1]
#step 4 for test data
names(x_test1)<-features_sub$V2

y_test<-read.table(readData("test","y_test.txt"))

y_test1<-y_test %>% rename(c('V1' = 'activity_id'))

test<-cbind(x_test1,y_test1,subject_test1)

#step1 : merge Training and Test data
all<- rbind(train,test)

#Step 3: merge activity_id and activity_label

all2<-merge(all,activity_labels1)

#step 5: Create a summarized tidy data set with means of all variables by subject and activity_label
all_avg<-all2 %>% group_by(subject) %>% 
  summarize(tbodyacc_mean_x=mean(tbodyacc_mean_x,na.rm=TRUE))



all_mean <- aggregate(all2[, 2:67],
                       by=list(subject = all2$subject, 
                               activity_label = all2$activity_label),
                       mean)

#write dataset to txt file
write.table(format(all_mean, scientific=T), "tidy_data_mean.txt",
            row.names=F, col.names=T, quote=2)