# Variables
var <- "This is a variable"
print(var)

var <- 12.5

# Vectors
vec <- c(13, 48.5, 71) # c = combine function
vec2 <- c(1L, 5L, 15L) # a vector of only integers
vec3 <- c(TRUE, FALSE, TRUE)
print(vec)
# Check if a vector is a specific data type
print(is.integer(vec2))
print(is.double(vec2))
print(is.logical(vec3))
print(is.character(vec3))
# Naming vectors
x <- c(1,3,5)
names(x) <- c("a", "b", "c")

# Lists - unlike vectors, their elements can be of different types
l1 <- list("a", 1L, 1.5, TRUE)
l2 <- list(list(list(l1)))
print(l1)
# Find out types of elements that a list contains
print(str(l2))
# Naming a list
l3 <- list('Chicago'=1, 'New York'=2, 'Los Angeles'=3)

# If Else Statements
x <- 4
if (x>0) {
    print("x is  +ve")
} else if (x<0) {
    print("x is -ve")
} else {
    print("x is 0")
}

# Arithmetic operators
# modulus - y %% x
# floor division - y %/% x