# ==============================================================================
# Making a Calendar!
# 1. AD 1년 1월 1일은 월요일
# 2. 4로 나눠떨어지면 윤년
#       근데 이게 100으로 나눠 떨어지면 평년
#       근데 또 이게 400으로 나눠 떨어지면 윤년       
# ==============================================================================

# 윤년 없는 해

function C1(M::Int, D::Int)
    # print("M을 입력하세요 : ")
    # M = parse(Int, readline())
    # print("D을 입력하세요 : ")
    # D = parse(Int, readline())
    d = 0
    if 3<=M<=7
        if M % 2 == 0
            d = (M/2-2)*30 + (M/2)*31 + 28
        else 
            d = (M-1)/2*31 + floor((M-2)/2)*30 + 28
        end
    elseif 8<=M<=12
        if M%2 == 0
            d = (4*31+2*30 + 28) + (M-8)/2*31 + (M-8)/2*30
        else
            d = (4*31+2*30 + 28) + (M-9)/2*30 + (M-7)/2*31
        end
    elseif M==2
        d = 31
    end
    d += D
    return d
end

# 윤년 있는 해

function C2(M::Int, D::Int)
    d = 0
    if 3<=M<=7
        if M % 2 == 0
            d = (M/2-2)*30 + (M/2)*31 + 29
        else 
            d = (M-1)/2*31 + floor((M-2)/2)*30 + 29
        end
    elseif 8<=M<=12
        if M%2 == 0
            d = (4*31+2*30 + 29) + (M-8)/2*31 + (M-8)/2*30
        else
            d = (4*31+2*30 + 29) + (M-9)/2*30 + (M-7)/2*31
        end
    elseif M==2
        d = 31
    end
    d += D
    return d
end

# 윤년이 있는 해인지/ 없는 해인지 가려내는 함수

function Det(Y::Int, M, D)
    if Y % 4 == 0 
        if Y % 100 == 0
            if Y % 400 == 0
                return C2(M,D)
            else
                return C1(M,D)
            end
        else
            return C2(M,D)
        end
    else
        return C1(M,D)
    end
end

# 요일 

function DAY(day)
    if day % 7 == 1
        return "월요일"
    elseif day % 7 == 2
        return "화요일"
    elseif day % 7 == 3
        return "수요일"
    elseif day % 7 == 4
        return "목요일"
    elseif day % 7 == 5
        return "금요일"
    elseif day % 7 == 6
        return "토요일"
    elseif day % 7 == 0
        return "일요일"    
    end
end

# main 으로 한번에 돌리기.

function main()
    print("해를 쓰세요 : ")
    Y = parse(Int, readline())
    print("월을 쓰세요 : ")
    M = parse(Int, readline())
    print("일을 쓰세요 : ")
    D = parse(Int, readline())
    day = 0
    if Y>1
        for i in range(1,Y-1)
            day += Det(i,12,31)
        end    
    end
    day += Det(Y, M, D)
    println("서기 : ",day)
    println("요일 : ", DAY(day))
end

main()


        

