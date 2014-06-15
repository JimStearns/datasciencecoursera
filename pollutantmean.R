readpollutant <- function(directory, pollutant, id) {
    # Open the pollutant data file.
    filename <- paste(directory, "/", sprintf("%03d", id), ".csv", sep="")
    print(sprintf("Opening file %s ...", filename))
    pollutantdataframe <- read.csv(filename)
    nrows <- nrow(pollutantdataframe)
    print(sprintf("File %s contains %i rows before stripping NA rows.", filename, nrows))
    nrowswithcorrectid = nrow(pollutantdataframe["ID" == id])
    if (nrows == nrowswithcorrectid) {
        print(paste("All rows have ID =", id))
    } else {
        stop(sprintf("%i rows have incorrect ID", nrows - nrowswithcorrectid))
    }
    pollutantdataframe
}

cullnas <- function(pollutantdataframe, pollutant) {
    
    # Strip rows which have NA for pollutant of interest.
    non_na_rows = complete.cases(pollutantdataframe[, pollutant])
    print(paste("Number of non-NA rows =", nrow(non_na_rows[TRUE])))

    non_na_dataframe = pollutantdataframe[non_na_rows,pollutant]
}

pollutantmeanandcount <- function(pollutantvector) {
    #count_and_mean <- matrix(c(NROW(pollutantvector), mean(pollutantvector, nrow=1, ncol=2)
    count_and_mean <- c(NROW(pollutantvector), mean(pollutantvector))
    print(count_and_mean)
    count_and_mean
}

pollutantmean <- function(directory, pollutant, id = 1:332) {
    ## 'directory' is a character vector of length 1 indicating
    ## the location of the CSV files
    
    ## 'pollutant' is a character vector of length 1 indicating
    ## the name of the pollutant for which we will calculate the
    ## mean; either "sulfate" or "nitrate".
    
    ## 'id' is an integer vector indicating the monitor ID numbers
    ## to be used
    
    ## Return the mean of the pollutant across all monitors list
    ## in the 'id' vector (ignoring NA values)
}

datadir = "specdata"
pollutantdataframe <- readpollutant(datadir, "nitrate", 23)
pollutantvector.nonas <- cullnas(pollutantdataframe, pollutant)

counts_and_means <- matrix(pollutantmeanandcount(pollutantvector.nonas), nrow = 1, ncol=2)
## counts_and_means <- rbind(counts_and_means, pollutantmeanandcount(pollutantdataframe))
counts_and_means
