List = [1:1e+06...]

function Sum()
    start = time()
    s = 0
    for i in List
        s += i
    end
    elapsed = time() - start
    return s, elapsed
end

s, _ = Sum()
t = 0

for j=1:10
    _,elapsed = Sum()
    t += elapsed
end

println(s)
println("Time : ", t/10, " (10 times)")

start_2 = time()
A = sum(List)
elapsed_2 = time()-start_2
println(A)
println("Time_2 : ", elapsed_2)

