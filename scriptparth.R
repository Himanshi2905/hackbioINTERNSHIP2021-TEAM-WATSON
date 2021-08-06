name= c('Name- Parth Khurana')
email= c('Email- khuranaparth07@gmail.com')
slack= c('Slack Username- @Parth')
twitter= c('Twitter username- @pk707')
biostack= c('Biostack- Genomics & Drug Development')
hamming_distance= stringdist("@parth","@pk707",method="h")
info_list= c(name,email,slack,twitter,biostack,hamming_distance)
cat(paste(shQuote(info_list, type= "cmd"), collapse=", "))

