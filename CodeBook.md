Code Book for R script for the Data science course : Getting and Cleaning Data.

1.  read.table

	Reads the txt file and loads into R. 

2. rbind

	This function combines the two data sets by the rows.

3. which(duplicated(DataSet))

	This checks if there are any duplicates in the data set and return the position of the duplicates in the data set.

4. names(Dataset) <-c("Name1","Name2","Name3")

	This function names the column heading for the data set in question.

5. aggregate(Dataset, by=list(Dataset$variable1,Dataset$variable1,..)

	This function computes the averages.

6. write.table(Dataset,file="Filename",row.name=FALSE)

	This function writes the data set specified to the file name specified to the working directory path set in your R workspace.

Note: I am new to R programming, Once I am done with this course I will be taking the R programming course. It was an over look on my 

part while enrolling to this course, that R programming was pre-require.But in retrospect, learing to program in R during this course 

has been hard and fun :) My code would have been much polished I guess if I had finished that course first. Take life has it comes :)
