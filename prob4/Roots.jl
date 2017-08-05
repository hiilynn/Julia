## ==============================================================================
#  ------- << Fine the Roots! >> ----------
# there are Root finding functions for Julia! 
# The basic interface is through the function << fzero >>
# First, I can install the package => Pkg.add(Roots) /n using Roots
# if I could fix sections of domain, [x1, x2] =>  it can be written as fzero(function, x1, x2)
#For historical purposes, there are implementations of Newton's method (newton), Halley's method (halley), and the secant method (secant_method). For the first two,
#    if derivatives are not specified, they will be computed using the ForwardDiff package.
# Also I can get more precision => fzero(f, BigFloat(x)) ... with 256 bits of precision.
# ==============================================================================

println(" -- Using Package -- ")

function A(x)
    return x^2 - 4
end

function B(x)
    return x^5 - 2*x^3 - 7*x^2 + 14
end

using Roots

println(fzero(A, -1, 4))
println(fzero(B, -3, 1))

println(" -- Newton Method -- ")

function Derivative(f)
    h = 1e-09
    return function(x)  # function 은 타입이름. 즉, 함수로 리턴하겠다.
        return (f(x+h) - f(x-h))/(2h)
    end
end

function Newton(f, x::Float64)::Float64
    Df = Derivative(f)
    for i = 1:20
        x = x - (f(x)/Df(x))
        if abs(f(x)) <= 1e-16
            println("number of iteration : ", i)
            break # 돌리다가 조건이 충족되었을 때 나와라.
        end
    end
            println("Can't find root in range 20")
    return x
end

function main(x::Float64)
    println("When f(x) = x^2 - 4 : ", Newton(A, x))
    println("When f(x) = x^5 -2x^3 - 7x^2 + 14 : ", Newton(B, x))
end

println("-- Find all roots of some eqns --")

function C(x)
    return x - cos(x)
end

function E(x)
    return airyai(x)
end

println("When C(x) = x - cos(x) : ", fzero(C, -2.5, 2.5))

function FS(f) 
     for x = -100:0.01:1
         if abs(f(x)) < 1e-2
            println(x)
        end
    end
end 

            
        

using PyPlot

figure(figsize=(10, 6), dpi=300)
X = [-30:0.01:10...]
Y = [C(x) for x in X]
plot(X, Y)
Y2 = [E(x) for x in X]
plot(X, Y2)
G(x) = 0
Y3 = [G(x) for x in X]
plot(X, Y3)
savefig("E.png")
