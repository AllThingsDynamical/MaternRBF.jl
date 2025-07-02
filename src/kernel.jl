using LinearAlgebra
using SpecialFunctions

function matern_kernel(x, y, ν, ρ)
    d = norm(x-y)
    a = (sqrt(2*ν)*d / ρ)^(ν)
    b = besselk(ν, sqrt(2*ν)*d / ρ)
    (2^(1-ν) / gamma(ν)) * a * b
end

x = rand(3)
y = rand(3)
ν = 1.0
ρ = 1.0
matern_kernel(x, y, ν, ρ)