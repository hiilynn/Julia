#=
Normal_distribution:
- Julia version: 
- Author: hiilynn
- Date: 2019-01-18
=#

#Pkg.add("Distributions")

using Distributions
using Plots
gr()

function X(n)
    return rand(dist, n)
end

function μML(n)
    return 1/n * sum(X(n))
end

function σML(n)
    a = zeros(n)
    for i = 1:n
    a[i] = X(n)[i] - μML(n)
    end
    return sqrt(1/n* sum(a.^2))
end

function main(n)
    dist = Normal()
    newdist = Normal(μML(n), σML(n))
    T = -4:0.0001:4
    y = pdf(dist, T)
    p = plot(T, y, lw=3, label="normal", size=(1000, 600))
    title!("\\sigma")
    xlabel!("x")
    ylabel!("y")
    y2 = pdf(newdist, T)
    plot!(T, y2, lw=3, label="n = $n")
end






