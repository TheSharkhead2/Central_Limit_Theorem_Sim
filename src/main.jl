include("./CentralLimitSim.jl")

using .CentralLimitSim

# trailResults = get_sample_mean_mean(10000, 10000; probDistribution="normal", lower=-10.0, upper=10.0, μ=0.0, σ=1.0)

# println("mean: ", trailResults[2], " std: ", trailResults[3])

# save_histogram(trailResults[1], "normalDist10000.png")

# trialResults = get_sample_mean_mean(10000, 10000; probDistribution="exponential", θ=1.0)

# println("mean: ", trialResults[2], " std: ", trialResults[3])

# save_histogram(trialResults[1], "exponentialDist10000.png")


# uniform stuff

# trialResults = get_sample_mean_mean(10, 10; probDistribution="uniform")

# println("mean: ", trialResults[2], " std: ", trialResults[3])

# save_histogram(trialResults[1], "uniform10.png")


# trialResults = get_sample_mean_mean(30, 30; probDistribution="uniform")

# println("mean: ", trialResults[2], " std: ", trialResults[3])

# save_histogram(trialResults[1], "uniform30.png")


# trialResults = get_sample_mean_mean(100, 100; probDistribution="uniform")

# println("mean: ", trialResults[2], " std: ", trialResults[3])

# save_histogram(trialResults[1], "uniform100.png")


# trialResults = get_sample_mean_mean(300, 300; probDistribution="uniform")

# println("mean: ", trialResults[2], " std: ", trialResults[3])

# save_histogram(trialResults[1], "uniform300.png")


# trialResults = get_sample_mean_mean(10000, 10000; probDistribution="uniform")

# println("mean: ", trialResults[2], " std: ", trialResults[3])

# save_histogram(trialResults[1], "uniform10000.png")


# normal stuff 

# trialResults = get_sample_mean_mean(10, 10; probDistribution="normal", lower=-10.0, upper=10.0, μ=0.0, σ=1.0)

# println("mean: ", trialResults[2], " std: ", trialResults[3])

# save_histogram(trialResults[1], "normal10.png")


# trialResults = get_sample_mean_mean(30, 30; probDistribution="normal", lower=-10.0, upper=10.0, μ=0.0, σ=1.0)

# println("mean: ", trialResults[2], " std: ", trialResults[3])

# save_histogram(trialResults[1], "normal30.png")


# trialResults = get_sample_mean_mean(100, 100; probDistribution="normal", lower=-10.0, upper=10.0, μ=0.0, σ=1.0)

# println("mean: ", trialResults[2], " std: ", trialResults[3])

# save_histogram(trialResults[1], "normal100.png")


# trialResults = get_sample_mean_mean(300, 300; probDistribution="normal", lower=-10.0, upper=10.0, μ=0.0, σ=1.0)

# println("mean: ", trialResults[2], " std: ", trialResults[3])

# save_histogram(trialResults[1], "normal300.png")


# trialResults = get_sample_mean_mean(10000, 10000; probDistribution="normal", lower=-10.0, upper=10.0, μ=0.0, σ=1.0)

# println("mean: ", trialResults[2], " std: ", trialResults[3])

# save_histogram(trialResults[1], "normal10000.png")


# exponential stuff
# for i ∈ [10, 30, 100, 300, 500, 1000, 10000] # loop through all trial amounts 
#     trialResults = get_sample_mean_mean(i, i; probDistribution="exponential", θ=1.0)

#     println("mean: ", trialResults[2], " std: ", trialResults[3])

#     save_histogram(trialResults[1], "exponential$(i).png")

# end # for 


# F Distribution stuff
# for i ∈ [10, 30, 100, 300, 500, 1000, 10000] # loop through all trial amounts 
#     trialResults = get_sample_mean_mean(i, i; probDistribution="F")

#     println("mean: ", trialResults[2], " std: ", trialResults[3])

#     save_histogram(trialResults[1], "FDist$(i).png")

# end # for 

# Gamma Distribution stuff
# for i ∈ [10, 30, 100, 300, 500, 1000, 10000] # loop through all trial amounts 
#     trialResults = get_sample_mean_mean(i, i; probDistribution="gamma")

#     println("mean: ", trialResults[2], " std: ", trialResults[3])

#     save_histogram(trialResults[1], "gamma$(i).png")

# end # for 


# Arcsin Distribution stuff
for i ∈ [10, 30, 100, 300, 500, 1000, 10000] # loop through all trial amounts 
    trialResults = get_sample_mean_mean(i, i; probDistribution="arcsin")

    println("mean: ", trialResults[2], " std: ", trialResults[3])

    save_histogram(trialResults[1], "arcsin$(i).png")

end # for 