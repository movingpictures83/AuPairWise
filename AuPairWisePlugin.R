#################################################################################################
#	AuPairWise: A tool to assess biological replicability without using replicates		#
#################################################################################################

masterdir="./"
source(paste(masterdir,"plugins/AuPairWise/helper.R",sep=""))
source(paste(masterdir,"plugins/AuPairWise/AuPairWise.R",sep=""))

dyn.load(paste("RPluMA", .Platform$dynlib.ext, sep=""))
source("RPluMA.R")


input <- function(inputfile) {
        pfix <<- prefix()
  parameters <<- read.table(inputfile, as.is=T);
  rownames(parameters) <<- parameters[,1];
}

run <- function() {}

output <- function(outputfile) {

load(paste(pfix, parameters["data", 2], sep="/"))
load(paste(pfix, parameters["pairs", 2] ,sep="/"))

out = outputfile

summary = run_APW(exprs, out, stoich.pairs )

}
