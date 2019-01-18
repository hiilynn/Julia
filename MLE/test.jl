#=
test:
- Julia version: 
- Author: hiilynn
- Date: 2019-01-18
=#

function multiples()
    a = zeros(1000)
    b = zeros(1000)
    if sum(a)<1000 && sum(b)<1000
        for i = 1:1000
            a[i] = 3*i
            b[i] = 5*i
        end
    end
    return sum(a) + sum(b)
end