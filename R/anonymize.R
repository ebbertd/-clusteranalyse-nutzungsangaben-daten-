library(haven)
library(labelled)

# Source functions
source("R/functions.R")

# Read in original data
wise_2016_17_de <- read_sav("data/eLectures-eLectures_Evaluation_WiSe_2016_17.sav")
sose_2017_de <- read_sav("data/eLectures-eLectures_Evaluation_SoSe_2017.sav")
sose_2017_en <- read_sav("data/eLectures-eLectures_Evaluation_SoSe_2017_-_EN.sav")
wise_2017_18_de <- read_sav("data/eLectures-eLectures_Evaluation_WiSe_2017_18.sav")
wise_2017_18_en <- read_sav("data/eLectures-eLectures_Evaluation_WiSe_2017_18_-_EN.sav")

# Drop reference to lecture series
wise_2016_17_de <- wise_2016_17_de[-c(6)]
sose_2017_de <- sose_2017_de[-c(6:18)]
sose_2017_en <- sose_2017_en[-c(6:18)]
wise_2017_18_de <- wise_2017_18_de[-c(6:33)]
wise_2017_18_en <- wise_2017_18_en[-c(6:33)]

# Unify the column names
colnames_unified <- c(
  "ID", "Timestamp",
  "Q2_1", "Q2_2", "Q2_3",
  "Q3_1",
  "Q4_1", "Q4_2_1", "Q4_2_2", "Q4_2_3", "Q4_2_4", "Q4_3",
  "Q5_1", "Q5_2", "Q5_3", "Q5_4", "Q5_5", "Q5_6", "Q5_7_1", "Q5_7_2", "Q5_7_3", "Q5_7_4", "Q5_7_5", "Q5_7_6", "Q5_7_7", "Q5_7_8", "Q5_7_9", "Q5_7_10", "Q5_8",
  "Q6_1_1", "Q6_1_2", "Q6_1_3", "Q6_1_4", "Q6_1_5", "Q6_2", "Q6_3", "Q6_4", "Q6_5",
  "Q7_1", "Q7_2", "Q7_3", "Q7_4", "Q7_5", "Q7_6", "Q7_7", "Q7_8", "Q7_9", "Q7_10",
  "Q8_1", "Q8_2",
  "Q9_1_1", "Q9_1_2", "Q9_1_3", "Q9_1_4", "Q9_1_5", "Q9_1_6", "Q9_2"
)

colnames(wise_2016_17_de) <- colnames_unified
colnames(sose_2017_de) <- colnames_unified
colnames(sose_2017_en) <- colnames_unified
colnames(wise_2017_18_de) <- colnames_unified
colnames(wise_2017_18_en) <- colnames_unified

# Drop free text answers
drops <- c("Q4_3", "Q5_3", "Q5_8", "Q6_2", "Q7_8", "Q8_2", "Q9_2")

wise_2016_17_de <- wise_2016_17_de[, !(names(wise_2016_17_de) %in% drops)]
sose_2017_de <- sose_2017_de[, !(names(sose_2017_de) %in% drops)]
sose_2017_en <- sose_2017_en[, !(names(sose_2017_en) %in% drops)]
wise_2017_18_de <- wise_2017_18_de[, !(names(wise_2017_18_de) %in% drops)]
wise_2017_18_en <- wise_2017_18_en[, !(names(wise_2017_18_en) %in% drops)]

# Write german labels to csv
labels_german <- var_label(wise_2017_18_de)
labels_german <- unlist(labels_german)
labels_german[2] <- "Timestamp"
write.csv2(labels_german, "data/labels_german.csv")

# Write english labels to csv
labels_english <- var_label(wise_2017_18_en)
labels_english <- unlist(labels_english)
labels_english[2] <- "Timestamp"
write.csv2(labels_english, "data/labels_english.csv")

# Adjust value labels
wise_2016_17_de <- adjust_value_labels(wise_2016_17_de)
sose_2017_de <- adjust_value_labels(sose_2017_de)
sose_2017_en <- adjust_value_labels(sose_2017_en)
wise_2017_18_de <- adjust_value_labels(wise_2017_18_de)
wise_2017_18_en <- adjust_value_labels(wise_2017_18_en)

# Convert variables to correct type
wise_2016_17_de <- convert_data_types(wise_2016_17_de)
sose_2017_de <- convert_data_types(sose_2017_de)
sose_2017_en <- convert_data_types(sose_2017_en)
wise_2017_18_de <- convert_data_types(wise_2017_18_de)
wise_2017_18_en <- convert_data_types(wise_2017_18_en)

# Save data sets as csv
write.csv2(wise_2016_17_de, "data/wise_2016_17_de.csv", row.names = FALSE)
write.csv2(sose_2017_de, "data/sose_2017_de.csv", row.names = FALSE)
write.csv2(sose_2017_en, "data/sose_2017_en.csv", row.names = FALSE)
write.csv2(wise_2017_18_de, "data/wise_2017_18_de.csv", row.names = FALSE)
write.csv2(wise_2017_18_en, "data/wise_2017_18_en.csv", row.names = FALSE)
