#upload dataset
dataset = read.csv('Data.csv')
View(dataset)

#clean dataset by turning blanks into averages of the column data
dataset$Age = ifelse(is.na(dataset$Age),
                    ave(dataset$Age, FUN = function(x) mean(x, na.rm=TRUE)),
                    dataset$Age)
                    
dataset$Salary = ifelse(is.na(dataset$Salary),
                    ave(dataset$Salary, FUN = function(x) mean(x, na.rm=TRUE)),
                    dataset$Salary)


echo "# RStudio" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/jhughes314/RStudio.git
git push -u origin master
