# julia environments:
# julia -e 'using Pkg; Pkg.generate("Demo")'
# cd Demo

# OPEN JULIA IN ENVIRONMENT:
# julia --project=.   # this activate the project for us 
 
# this install package inside the environment
using Pkg 
Pkg.add("DataFrames", preserve=PRESERVE_DIRECT)

# list of packages:
# Pkg DataFrames Turing DocumenterTools Documenter Test Random Plots Distributions
# StatsPlots MCMCChains DifferentialEquations

# julia multithreading
# https://docs.julialang.org/en/v1/manual/multi-threading/
# export JULIA_NUM_THREADS=4
julia --threads 8

using Base.Threads
Threads.nthreads()


#Revise:

# https://timholy.github.io/Revise.jl/stable/config/#Configuration-1


# config/startup_ijulia.jl
try
    @eval using Revise
catch e
    @warn "Error initializing Revise" exception=(e, catch_backtrace())
endtry
   using OhMyREPL
catch e
   @warn "error using OhMyREPL" exception=(e, catch_backtrace())
end

# config/startup.jl
try
   using Pkg
catch e
   @warn "error using Pkg" exception=(e, catch_backtrace())
end

try
    using Revise
catch e
    @warn "Error initializing Revise" exception=(e, catch_backtrace())
end
