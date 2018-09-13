# Sum multipliers of 3 or 5 in 1:999

reduce(+, filter(x-> mod(x, 3)==0||mod(x, 5)==0), 1:999))
