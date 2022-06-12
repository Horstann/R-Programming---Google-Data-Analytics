# Data frames
df = data.frame(x = c(1, 2, 3), y = c(1.5, 5.5, 7.5))
print(df)

# Files & Folders
dir.create("folder")
file.create("folder/file.txt")
file.create("folder/file.csv")
file.create("file.docx")
# Copy files
file.copy("file.docx", "folder")
# Delete files
unlink("file.docx")

# Matrices - multi-D vectors but with same datatypes
mat = matrix(c(1:6), nrow=2) # matrix of numeric elements 1-6 with 2 rows
mat2 = matrix(c(1:6), ncol=3) # or you can specify no. of columns instead
print(mat)