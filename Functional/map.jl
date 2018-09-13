# find even numbers in Matrix

filter(iseven, 1:10) # find even numbers in 1:10

# The matrix changes to columns which consist of vectors in order to apply filter

# M = [1 3 5 7; 1 2 4 7; -1 4 7 9; 3, 8, 4, 1] can be written as:
M = [[1,3,5,7], [1,2,4,7], [-1,4,7,9], [3,8,4,1]]
# This form represents the matrix consists of lists

filter(iseven, M[1]) # find even numbers in M[1]

# and iterate but it is boring. So use map

map(x -> filter(iseven, x), M) # the input of both filter and map is function and the output is a vector or a list of vectors 

#===========================#

# find multiplies of 3 or 5 in 1:999

filter(x -> mod(x, 3)==0 || mod(x, 5)==0, 1:999)




