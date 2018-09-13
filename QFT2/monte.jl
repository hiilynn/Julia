function monte(n)
  s = 0
  for i in 1:n
    a = [rand(), rand(), rand()]
    if a[1]^2 + a[2]^2 + a[3]^2 <= 1
    s += 1
    end
  end
  prob = s / n
  return prob*8
end

x = monte(10)
y = monte(100)
z = monte(1e+6)
w = monte(1e+8)

println("=============================")
println("        roll 10 times        ")
println("-----------------------------")
println("Volume of sphere: ", x)
println("4/3 pi: ", 4/3*pi)
println("error: ", abs(4/3*pi - x)/(4/3*pi)*100)


println("=============================")
println("        roll 100 times       ")
println("-----------------------------")
println("Volume of sphere: ", y)
println("4/3 pi: ", 4/3*pi)
println("error: ", abs(4/3*pi - y)/(4/3*pi)*100)


println("=============================")
println("     roll 1 milion times     ")
println("-----------------------------")
println("Volume of sphere: ", z)
println("4/3 pi: ", 4/3*pi)
println("error: ", abs(4/3*pi - z)/(4/3*pi)*100)


println("=============================")
println("    roll 100 milion times    ")
println("-----------------------------")
println("Volume of sphere: ", w)
println("4/3 pi: ", 4/3*pi)
println("error: ", abs(4/3*pi - w)/(4/3*pi)*100)
println("=============================")



