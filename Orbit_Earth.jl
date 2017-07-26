# ==============================================================================
#Q1.  What is the Earth position in (x,y,z) after 3650 days?
# ==============================================================================

# dt = 43200
# r_1 = [-9.851920196143998E-01, 1.316466809434336E-01, -4.877392224782687E-06] * 1.49597870691E+11
# r_2 = [-9.864337701483683E-01, 1.230799243164879E-01, -4.374019384763304E-06] * 1.49597870691E+11
# # average velocity
# V = (r_2 - r_1)/dt
# # I want to know the third point.
# G = 6.67259e-11
# M = 1.9891e30
# a = [G*M/r_2[1], G*M/r_2[2], G*M/r_2[3]]
# # println("a = ", a)
# V2 = V + dt*a
# # println((V2 - V)/dt)
# r_3 = V2*dt
# println(r_3)
# dday = 3650 * 24 * 60 * 60
#=================================================================================#
function A(T)
    dt = 43200
    r_1 = [-9.851920196143998E-01, 1.316466809434336E-01, -4.877392224782687E-06] * 1.49597870691E+11
    r_2 = [-9.864337701483683E-01, 1.230799243164879E-01, -4.374019384763304E-06] * 1.49597870691E+11
    V1 = (r_2 - r_1)/dt
    G = 6.67259e-11
    M = 1.9891e30
    a = [G*M/r_2[1], G*M/r_2[2], G*M/r_2[3]]
    V2 = V1 + dt*a
    r_3 = V2*dt
    b = T/dt
    for i in [1:b]
        V = (r_(2+i) - r_2)/dt
        A = [G*M/r_(2+i)[1], G*M/r_(2+i)[2], G*M/r_(2+i)[3]]
        V(2+i) = V + dt*a
        r_(3+i) = V(2+i)*dt
    end
end

print(A(43200))

