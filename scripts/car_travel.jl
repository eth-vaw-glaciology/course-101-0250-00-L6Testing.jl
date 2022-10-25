# plotting not needed
# using Plots
# pyplot()

function update_position(X, V, dir, dt, L)
    X = X + dir*V*dt
    if X > L
        dir = -1      # if beyond L, go back (left)
    elseif X < 0
        dir = 1       # if beyond 0, go back (right)
    end
    return X, dir
end

# a unit test
using Test
@test update_position(10, 0, 1, 123, 123) == (10, 1)

function car_travel_1D()
    # Physical parameters
    V     = 113.0          # speed, km/h
    L     = 200.0          # length of segment, km
    dir   = 1              # switch 1 = go right, -1 = go left
    ttot  = 16.0           # total time, h
    # Numerical parameters
    dt    = 0.1            # time step, h
    nt    = Int(cld(ttot, dt))  # number of time steps
    # Array initialisation
    T     = zeros(nt)
    X     = zeros(nt)
    # Time loop
    for it = 2:nt
        T[it] = T[it-1] + dt
        X[it], dir = update_position(X[it - 1], V, dir, dt, L)
    end
    # Visualisation
    # display(scatter(T, X, markersize=5, xlabel="time, hrs", ylabel="distance, km", framestyle=:box, legend=:none))
    return T, X
end

T, X = car_travel_1D()

# a reference test:
# make inds with `sort(rand(1:length(X), 10)
inds = [10, 28, 36, 37, 39, 69, 80, 96, 128, 135]
# make vals with `X[inds]`
vals = [101.69999999999999, 101.7, 11.300000000000018, 1.7763568394002505e-14, 1.7763568394002505e-14, 67.80000000000001, 33.90000000000002, 192.10000000000005, 146.9, 180.80000000000004]

using Test
@test all(vals .≈ X[inds])
