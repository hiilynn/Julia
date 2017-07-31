# Sort(Make a Matrix)
SortScore = ["Schrodinger"    64 ;
             "Einstein"	90 ;
             "Feynman"	98 ;
             "Neumann"	100 ;
             "Dirac"	92 ; 
             "Bohr"	90 ;
             "Fermi"	91 ;
             "Heisenberg"	72 ;
             "Pauli"	88 ;
             "Newton"	93 ;
             "Leibniz"	93 ;
             "Planck"	52]


A = sortrows(SortScore, by=x->x[2], rev=true)

println("평균은 : " ,mean(A[:,2]))

# ==============================================================================
# standard deviation (std)는 Float만 받기 때문에 mean()과 같이 std(A)를 할 경우, A의 타입이 지정되어있지 않아(= Float이 아니여서)
#에러가 난다.
# ==============================================================================

Score=zeros(12)
for i=1:12
    Score[i]=Float64(A[i,2])
end

println("표준편차 : ", std(Score))

function Rank(Matrix)
    B = zeros(Int64, 12)
    for i = 1:12
        if i > 1 && Matrix[i,2] == Matrix[i-1,2] # &&: 그리고 
            B[i] = B[i-1]
        else
            B[i] = i
        end
    end
    return B
end

B = Rank(A)
C = hcat(A, B)


# ==============================================================================
# .csv file로 저장하기
# ==============================================================================

# open("Sorting.csv", "w") do f
#     for i = 1:12
#         name, score, rank = C[i,1],C[i,2],C[i,3]
#         write(f, "$name, $score, $rank \n")
#     end
# end

writedlm("Sorting.csv", C, ',')

# ==============================================================================
# plotting through .csv
# ==============================================================================

f = readdlm("Sorting.csv", ',') # 각각 type별로 원소 읽어오기

using PyPlot
figure(figsize=(7,7), dpi=300)
title("Distribution")
xlabel("Rank")
ylabel("Score")
plot(f[:,3],f[:,2])
savefig("Sorting.png")