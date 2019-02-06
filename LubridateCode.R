##define dates for regression
df_MD$birthdate<-as.Date(df_MD$birthdate, "%m/%d/%Y")
start <- mdy("01/01/1900", tz = "US/Eastern")##Note this date is in the data although it seems implausible, may have inserted on accident so we'll do with and without
df_MD$BirthdayNumeric<-time_length(difftime(df_MD$birthdate, start), "years")
