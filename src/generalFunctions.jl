
"""
Gets random number from probability distribution. 

# Arguments

- probDistribution::String
    - Arg specifying type of distribution

- lower::Float64
    - Lower bound of distribution

- upper::Float64
    - Upper bound of distribution

"""
function get_random_value(probDistribution::String; lower::Float64=0.0, upper::Float64=1.0, μ::Float64=0.0, σ::Float64=1.0, θ::Float64=1.0, v1::Float64=10.0, v2::Float64=1.0, α::Float64=1.0)
    if probDistribution == "uniform"
        randomValue = rand() # uniform distribution, same chance for any value between 0 and 1 
    
        return randomValue * (upper - lower) + lower # scale to the desired range

    elseif probDistribution == "normal"
        distribution = Truncated(Normal(μ, σ), lower, upper)

        return rand(distribution)

    elseif probDistribution == "exponential"
        distribution = Exponential(θ)

        return rand(distribution)

    elseif probDistribution == "F"
        distribution = FDist(v1, v2)

        return rand(distribution)

    elseif probDistribution == "gamma"
        distribution = Gamma(α, θ)

        return rand(distribution)

    end # if
end # function get_random_value


"""
Get mean of N runs of get_random_value

"""
function get_sample_mean(N::Int64; probDistribution::String="uniform", lower::Float64=0.0, upper::Float64=1.0, μ::Float64=0.0, σ::Float64=1.0, θ::Float64=1.0, v1::Float64=10.0, v2::Float64=1.0, α::Float64=1.0)
    results = Vector{Float64}() # empty vector to store results 

    for i ∈ 1:N
        push!(results, get_random_value(probDistribution; lower=lower, upper=upper, μ=μ, σ=σ))
    end # for 

    mean(results)
end # function get_mean

"""
Calls get_sample_mean N times and returns the results, the mean, and the stdev.

"""
function get_sample_mean_mean(N::Int64, sampleRuns::Int64; probDistribution::String="uniform", lower::Float64=0.0, upper::Float64=1.0, μ::Float64=0.0, σ::Float64=1.0, θ::Float64=1.0, v1::Float64=10.0, v2::Float64=1.0, α::Float64=1.0)
    results = Vector{Float64}() # empty vector to store results 

    for i ∈ 1:N
        push!(results, get_sample_mean(sampleRuns; probDistribution, lower=lower, upper=upper, μ=μ, σ=σ))
    end # for 

    (results, mean(results), std(results))
end # function get_sample_mean_mean

"""
Displays histogram for get_sample_mean_mean

"""
function save_histogram(results::Vector{Float64}, fileName::String)
    png(histogram(results; bins=:scott), fileName)

end # function distplay_histogram