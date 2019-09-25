rm(list = ls())
setwd('C:/Users/akash/Documents/Edwisor_assign')
getwd()

# Creating a Dataframe excluding second line of csv file

df = read.csv('IMDB_data.csv',header = TRUE )
mod_df = df[c(1,3:nrow(df)),]


length(unique(mod_df$Genre))
genre_count = mod_df$imdbID

#Extracting the unique genres and its count and store in dataframe
count_unique = aggregate(mod_df$imdbID, by = list(mod_df$Genre),FUN = function(x) length(unique(x)))
print(count_unique)
class(count_unique)


# Converting the required data types

#since imdbRating,imdbVotes and Year are only numeric column in dataset which should be converted from
#factor to numeric except year column because unique(mod_df$Year) gives significantly low value

mod_df$imdbRating = as.numeric(mod_df$imdbRating) #convert imdbRating to numeric
mod_df$imdbVotes = as.numeric(mod_df$imdbVotes) #convert imdbVotes to numeric

#	Sort the genre by its name
mod_df = mod_df[order(mod_df$Genre),]

#	Creating new variable whose values is square of difference between imdbrating and imdbvotes.

mod_df$sqr_new = with(mod_df,(mod_df$imdbVotes - mod_df$imdbRating)**2) 



  





 



