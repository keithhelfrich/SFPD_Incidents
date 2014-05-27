
merge_SFPD_incidents<-function(){
### Open Files
Incidents_1<-read.csv("SFPD_Incidents_2013.11.01-2014.01.31.csv")
Incidents_2<-read.csv("SFPD_Incidents_2014.02.01-2014.04.27.csv")
Incidents_3<-read.csv("SFPD_Incidents_2014.04.20-2014.04.30.csv")

### Merge Unique
Incidents<-unique(rbind(Incidents_1,Incidents_2,Incidents_3))

### Consolidate Categories
Cat.Orig<-levels(Incidents$Category)
Cat.New<-Cat.Orig[1:22]
Cat.New[23:length(Cat.Orig)]<-rep("OTHER OFFENSES",length(Cat.Orig)-22)
Cat.New
Map.Table<-data.frame(Cat.Orig,Cat.New)
Incidents<-merge(x=Incidents,y=Map.Table, by.x="Category",by.y="Cat.Orig")
Incidents$Cat.New <- factor(Incidents$Cat.New, levels=names(sort(table(Incidents$Cat.New), decreasing=TRUE)))

### Sanity Check
print("names:")
print(names(Incidents))
print("Category:")
print(levels(Incidents$Category))
print("Cat.New:")
print(levels(Incidents$Cat.New))

### Write CSV
write.csv(Incidents,file="Incidents.csv",row.names=FALSE,quote=TRUE)

}