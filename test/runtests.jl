include("../scripts/car_travel.jl")

using Test
T, X = car_travel_1D()

# a unit test
@test update_position(10, 0, 1, 123, 123) == (10, 1)

# a reference test:
# make inds with `sort(rand(1:length(X), 10)
inds = [10, 28, 36, 37, 39, 69, 80, 96, 128, 135]
# make vals with `X[inds]`
vals = [101.69999999999999, 101.7, 11.300000000000018, 1.7763568394002505e-14, 1.7763568394002505e-14, 67.80000000000001, 33.90000000000002, 192.10000000000005, 146.9, 180.80000000000004]

@test all(vals .≈ X[inds])
