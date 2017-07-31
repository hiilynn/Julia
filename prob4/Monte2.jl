type 이차원
    x::Float64
    y::Float64
end

function radius(A::이차원)::Float64
    return A.x^2 + A.y^2
end

function D2()
    s = 0
    n = [1:1e+07...]
    for i = n
        a = 이차원(rand(), rand())
        if  radius(a) <= 1
            s += 1
        end
    end
c = (s/length(n))*4
println("probability : ", c)
println("error : ", abs(pi - c) /pi * 100)
end
