include("./CentralLimitSim.jl")

using .CentralLimitSim

# trailResults = get_sample_mean_mean(10000, 10000; probDistribution="normal", lower=-10.0, upper=10.0, μ=0.0, σ=1.0)

# println("mean: ", trailResults[2], " std: ", trailResults[3])

# save_histogram(trailResults[1], "normalDist10000.png")

trialResults = get_sample_mean_mean(10000, 10000; probDistribution="exponential", θ=1.0)

println("mean: ", trialResults[2], " std: ", trialResults[3])

save_histogram(trialResults[1], "exponentialDist10000.png")