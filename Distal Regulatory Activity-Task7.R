#1 define wd

setwd("C:/Users/meiga/OneDrive/Escritorio/MEI/UVic_Bioinfo/Epigenomics")
getwd()

#2 load files
stomach <- read.table("//wsl.localhost/Ubuntu/home/mei_gascon/epigenomics_uvic/regulatory_elements/analyses/peaks.analysis/regulatoryElements.genes.distances.stomach.tsv", sep = "\t")

sigmoid_colon <- read.table("//wsl.localhost/Ubuntu/home/mei_gascon/epigenomics_uvic/regulatory_elements/analyses/peaks.analysis/regulatoryElements.genes.distances.sigmoid_colon.tsv", sep="\t")


#3 change col names. encontrar el gen más cercano a un “enhancer” dado en un archivo de entrada. 

colnames(stomach) <- c("Closest_Gene", "Start", "Distance")
colnames(sigmoid_colon) <- c("Closest_Gene", "Start", "Distance")

#4 calculate mean and median

mean.stomach <- mean(stomach$Distance)
mean.stomach

median.stomach <- median(stomach$Distance)
median.stomach

mean.sigmoid_colon <- mean(sigmoid_colon$Distance)
mean.sigmoid_colon

median.sigmoid_colon <- median(sigmoid_colon$Distance)
median.sigmoid_colon
