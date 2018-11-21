convert_data_types <- function(df) {
  df$ID <- as.numeric(df$ID)
  df$Timestamp <- as.POSIXct(df$Timestamp)
  df$Q2_1 <- as_factor(df$Q2_1)
  df$Q2_2 <- as.numeric(df$Q2_2)
  df$Q2_3 <- as.numeric(df$Q2_3)
  df$Q3_1 <- as_factor(df$Q3_1)
  df$Q4_1 <- as_factor(df$Q4_1)
  df$Q4_2_1 <- as.logical(df$Q4_2_1)
  df$Q4_2_2 <- as.logical(df$Q4_2_2)
  df$Q4_2_3 <- as.logical(df$Q4_2_3)
  df$Q4_2_4 <- as.logical(df$Q4_2_4)
  df$Q5_1 <- as_factor(df$Q5_1)
  df$Q5_2 <- as_factor(df$Q5_2)
  df$Q5_4 <- as_factor(df$Q5_4)
  df$Q5_5 <- as_factor(df$Q5_5)
  df$Q5_6 <- as_factor(df$Q5_6)
  df$Q5_7_1 <- as.logical(df$Q5_7_1)
  df$Q5_7_2 <- as.logical(df$Q5_7_2)
  df$Q5_7_3 <- as.logical(df$Q5_7_3)
  df$Q5_7_4 <- as.logical(df$Q5_7_4)
  df$Q5_7_5 <- as.logical(df$Q5_7_5)
  df$Q5_7_6 <- as.logical(df$Q5_7_6)
  df$Q5_7_7 <- as.logical(df$Q5_7_7)
  df$Q5_7_8 <- as.logical(df$Q5_7_8)
  df$Q5_7_9 <- as.logical(df$Q5_7_9)
  df$Q5_7_10 <- as.logical(df$Q5_7_10)
  df$Q6_1_1 <- as.logical(df$Q6_1_1)
  df$Q6_1_2 <- as.logical(df$Q6_1_2)
  df$Q6_1_3 <- as.logical(df$Q6_1_3)
  df$Q6_1_4 <- as.logical(df$Q6_1_4)
  df$Q6_1_5 <- as.logical(df$Q6_1_5)
  df$Q6_3 <- as_factor(df$Q6_3)
  df$Q6_4 <- as_factor(df$Q6_4)
  df$Q6_5 <- as_factor(df$Q6_5)
  df$Q7_1 <- as.numeric(df$Q7_1)
  df$Q7_2 <- as.numeric(df$Q7_2)
  df$Q7_3 <- as.numeric(df$Q7_3)
  df$Q7_4 <- as.numeric(df$Q7_4)
  df$Q7_5 <- as.numeric(df$Q7_5)
  df$Q7_6 <- as.numeric(df$Q7_6)
  df$Q7_7 <- as_factor(df$Q7_7)
  df$Q7_9 <- as_factor(df$Q7_9)
  df$Q7_10 <- as_factor(df$Q7_10)
  df$Q8_1 <- as_factor(df$Q8_1)
  df$Q9_1_1 <- as.logical(df$Q9_1_1)
  df$Q9_1_2 <- as.logical(df$Q9_1_2)
  df$Q9_1_3 <- as.logical(df$Q9_1_3)
  df$Q9_1_4 <- as.logical(df$Q9_1_4)
  df$Q9_1_5 <- as.logical(df$Q9_1_5)
  df$Q9_1_6 <- as.logical(df$Q9_1_6)
  df
}

adjust_value_labels <- function(df) {
  val_label(df$Q8_1, 1) <- "sehr unzufrieden"
  val_label(df$Q8_1, 2) <- "eher unzufrieden"
  val_label(df$Q8_1, 3) <- "neutral"
  val_label(df$Q8_1, 4) <- "eher zufrieden"
  val_label(df$Q8_1, 5) <- "sehr zufrieden"
  df
}
