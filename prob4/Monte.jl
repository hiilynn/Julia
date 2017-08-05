
println(" -- In 2D -- ")

function D2()
    s = 0
    n = [1:1e+07...]
    for i = n
        a = (rand(), rand())
        if a[1]^2 + a[2]^2 <= 1
            s += 1
        end
    end
c = (s/length(n))*4
println("probability : ", c)
println("error : ", abs(pi - c) /pi * 100)
end

println(" -- In 3D -- ")

function D3()
    s = 0
    n = [1:1e+07...]
    for i = n
        a = (rand(),rand(), rand())
        if a[1]^2 + a[2]^2 + a[3]^2 <= 1
            s += 1
        end
    end
c = (s/length(n))*6
println("probability : ", c)
println("error : ", abs(pi - c) /pi * 100)
end

println(" -- How long it takes to calculate -- ")

function main()
    @time D2()
    @time D3()
end

@time main()