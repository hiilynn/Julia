# When the area of circle is pi with the radius 1, calculate pi #

function compute_pi(N::Int)
  n_in_circle = 0
  for i = 1:N
    x = rand()*2 -1
    y = rand()*2 -1
    r2 = x*x + y*y
    if r2<1
      n_in_circle += 1
    end
  end
  return n_in_circle/N*4
end

# parallel programming from multiple cores #

job = @spawn compute_pi(1000000000)
fetch(job)

function parallel_pi_computation(N::Int, ncores::Int=8)
  sum_of_pis=@parallel (+) for i=1:ncores
    compute_pi(ceil(Int, N/ncores))
  end
  return sum_of_pis/ncores
end

@time compute_pi(8000000000)
@time parallel_pi_computation(8000000000)
