function B()   
    s = 0
    for i = 1:1e+07
        s += 1/i^2
    end
    print(sqrt(s*6))
end
