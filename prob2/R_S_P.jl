a = ["Rock" "Scissors" "Paper"]
rand(a)

# ==============================================================================
# making a game "G S P"
# ==============================================================================

function G()
    print("Rock! Scissors! Paper! : ")
    a = ["Rock" "Scissors" "Paper"]
    oh = readline(STDIN)
    println(rand(a))
end

G()
