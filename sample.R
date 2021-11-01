
# Creating the data frame
popdat <- data.frame(gender = c(rep("M", 150), rep("F", 50)), id = c(1:200), income = runif(200, min = 100, max = 1000))

# Separate the data according to gender
popm <- popdat[popdat$gender == "M",]
popf <- popdat[popdat$gender == "F",]

# Sampling data separately 
sampm <- popm[sample(nrow(popm), 3/10*nrow(popm), replace = FALSE),]
sampf <- popm[sample(nrow(popf), 5/10*nrow(popf), replace = FALSE),]

# Merge these data
samp = rbind(sampm, sampf)
print(samp)
