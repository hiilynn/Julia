T = readcsv("taylor.csv")
x = zeros(7301)
y = zeros(7301)
z = zeros(7301)
dist = zeros(7301)

function Distance()
    for i = 1:7301
        x[i] = T[i, 1]
        y[i] = T[i, 2]
        z[i] = T[i, 3]
    dist[i] = sqrt(x[i]^2 + y[i]^2 + z[i]^2)
    end
    return dist
end
