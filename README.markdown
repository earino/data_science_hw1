Assingment:

For homework, please try creating a regression model using any dataset of your 
choice and tell us why you picked that model (e.g. absolute t values < 1, all 
significant relationships, etc..) along with sending the R script/commands you 
used to generate the model.  Please use an iterative process.  If you want to 
save your code from your console session, you can use the command 
"savehistory(file.choose())".  Please send r script + brief explanation to Jason 
by Thursday of next week.   

My Info:

I decided to create a merged data set taking the 2012 LA crime information data
available at http://www.lasdhq.org/sites/CAASS/2012-PART_I_AND_II_CRIMES.csv

and the 1999 Average Household income of LA county available at
http://www.laalmanac.com/LA/la09_zip.htm.

Using a number of perl scripts (i could have been neater, but I was just playing
around) I took the crime information, grabbed the zip code, and simply incremented
a counter for every entry in the data file. I then merged that data with the LA 
income data to create a new data file called merged_incomes_crimes.csv which was

zip, crimes, income

I then created a linear model in which I verified that, not shockingly, there is
a negative correlation between household income in a zipcode and crimes commited
in that zip code. Richer zip codes have fewer reported crimes.
