Name= "Somoshri Banerji"
Email = "somoshrib.98@gmail.com"
Slack = "@Somoshri"
Biostack = "Transcriptomics"
Twitter = "bsomoshri"

def hammingDist(Slack, Twitter):
    i = 0
    count = 0
 
    while(i < len(Slack)):
        if(Slack[i] != Twitter[i]):
            count += 1
        i += 1
    return count
 
 
Hdist = hammingDist(Slack, Twitter)

List = Name, Email, Slack, Biostack, Twitter, Hdist


print(*List, sep = ', ')
