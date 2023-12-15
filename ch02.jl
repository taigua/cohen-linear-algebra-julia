### A Pluto.jl notebook ###
# v0.19.36

using Markdown
using InteractiveUtils

# ╔═╡ c05a1fc0-9a7f-11ee-195a-5574f3c2bb76
begin
	import Pkg
	Pkg.activate()

	using CairoMakie
	CairoMakie.activate!(type = "svg")
end

# ╔═╡ dc5a9bf0-dcdf-4c83-913b-26443265edec
md"""
# Chapter 2 Vectors
"""

# ╔═╡ 0ace1f38-41fc-4847-bc3e-a15a4156d281
# ╠═╡ disabled = true
#=╠═╡

  ╠═╡ =#

# ╔═╡ 4eb27d53-c0b7-4184-9306-e660fe2c07df
md"""
## 2.1 Scalars
"""

# ╔═╡ 5d53db4c-c222-4649-934f-8ee5533f7494
# Code block 2.1/2.2
ascalar = 4

# ╔═╡ 1b3344a2-26c8-4017-a489-bd69d321992e
md"""
## 2.2 Vectors: geometry and algebra
"""

# ╔═╡ c2d8de75-6d3e-4e48-bfdc-188d4632cc7d
# Code block 2.3/2.4
let
	v = [2, -1]
	f = Figure()
	ax = Axis(f[1, 1], limits=(-3, 3, -3, 3))
	lines!(ax, [0, v[1]], [0, v[2]])
	f
end

# ╔═╡ 907e8499-ae84-4ab1-8cf4-7de6bb23b5ec
# Code block 2.5/2.6
let
	v1 = [2 5 4 7]  # row vector (1x4 matrix)
	v2 = [2, 5, 4, 7] # column vector
end

# ╔═╡ 4fdadfbb-4d50-4c3a-bac6-c013055549e7
md"""
## 2.3 Transpose operation
"""

# ╔═╡ b5bbb005-84a0-4a1d-9d75-48ae29789c98
# Code block 2.7/2.8
let
	v1 = [2 5 4 7]      # row vector
	v2 = v1'            # column vector
	v3 = transpose(v1)  # column vector
end

# ╔═╡ b6a8f39b-d3ab-43a3-9c7e-b82f51b1a863
md"""
## 2.4 Vector addition and subtraction
"""

# ╔═╡ 1da9b15c-a77b-4b14-a841-a8fc4df083b4
md"""
## 2.5 Vector-scalar multiplication
"""

# ╔═╡ 4c66911a-585b-40a6-b3f8-8a99a87c2c76
# Code block 2.9/2.10
let
	v1 = [2 5 4 7]
	v2 = [4 1 0 2]
	v3 = 4v1 - 2v2
end

# ╔═╡ fbbbfa1f-f96d-4704-87c8-4e8af2953ef2
md"""
## 2.6 Exercises
"""

# ╔═╡ 23d1cd63-d33f-41f8-865f-23f5e21ed032
# E.1
begin
	[6, 3, 33, 9] == 3 * [2, 1, 11, 3]
	[48, 12, 24, 60] == 12 * [4, 1, 2, 5]
	[12, 18, 24] == 6 * [2, 3, 4]
	[45, 36, 99, 72, 27] == 9 * [5, 4, 11, 8, 3]
end

# ╔═╡ 2f771037-3efb-45ea-9592-66846475773c
# E.2
let
	f = Figure()
	ax = Axis(f[1,1])
	lines!(ax, [0, 2], [0, 2])
	lines!(ax, [-1, 6], [-2, 12])
	lines!(ax, [4, -1], [1, 0])
	lines!(ax, [0, π], [0, ℯ])
	lines!(ax, [0, 1], [0, 2])
	lines!(ax, [-3, 1], [0, 2])
	lines!(ax, [2, 1], [4, 2])
	lines!(ax, [0, -1], [0, -2])
	lines!(ax, [1, -3], [0, 0])
	lines!(ax, [0, -4], [3/2, -2])
	lines!(ax, [1, 8], [1, 4])
	lines!(ax, [8, -8], [4, -4])
	f
end

# ╔═╡ 7c02edf7-ce47-471f-be54-2f67e0aa10e0

md"""
**E.3**
- a) 5 dimensional row vector
- b) 3 dimensional column vector
- c) 2 dimensional row vector
- d) 3 dimensional column vector
- e) 6 dimensional row vector
"""

# ╔═╡ 823cad6e-a952-4f47-9a97-33d8264be475
# E.4
begin
	3 * [1, 2] == [3, 6]
	1/3 * [12 6] == [4 2]
	0 * [big(ℯ)^10000, 1, 0, √π] == [0, 0, 0, 0]
	4 * [-3, 3] == [-12, 12]
	# λ [a b c d e]	== [λa λb λc λd λe]
	# γ [0 0 0 0 0] == [0 0 0 0 0]
end

# ╔═╡ 4e055c32-e6db-4d11-8bd2-5de1d6c57b4d
# E.5
begin
	[0, 1] + [1, 0] == [1, 1]
	[6, -2] - [2, -6] == [4, 4]
	[2, 1] + [1, 2] == [3, 3]
	[2, 3] + [2, 3] == [4, 6]
	[2, 3] - [2, 3] == [0, 0]
	[1, 1] + [1, -1] == [2, 0]
	[4, 2] + [1, 0] == [5, 2]
	[-3, -5] + [7, 3] == [4, -2]
	[-5, -2] + [7, 7] == [2, 5]
	[1, 2] + [1, 3] - [3, -2] == [-1, 7]
	[-2, -5] - [-7, -6] - [0, 4] == [5, -3]
	[0, 1] - [3, 3] + [1, 2] == [-2, 0]
end

# ╔═╡ f7e951b5-0413-44d7-964a-ddfa01896325
md"""
## 2.8 Code challenges
"""

# ╔═╡ 54eaeef8-be92-4596-8c19-d9026539f926
# C.1
let
	f = Figure()
	ax = Axis(f[1, 1], limits=(-4, 4, -4, 4))
	v = [1, 2]
	lines!(ax, [0, v[1]], [0, v[2]])
	for _ in 1:10
		s = randn()
		sv = s * v
		lines!(ax, [0, sv[1]], [0, sv[2]])
	end
	f
end

# ╔═╡ Cell order:
# ╟─dc5a9bf0-dcdf-4c83-913b-26443265edec
# ╠═c05a1fc0-9a7f-11ee-195a-5574f3c2bb76
# ╠═0ace1f38-41fc-4847-bc3e-a15a4156d281
# ╟─4eb27d53-c0b7-4184-9306-e660fe2c07df
# ╠═5d53db4c-c222-4649-934f-8ee5533f7494
# ╟─1b3344a2-26c8-4017-a489-bd69d321992e
# ╠═c2d8de75-6d3e-4e48-bfdc-188d4632cc7d
# ╠═907e8499-ae84-4ab1-8cf4-7de6bb23b5ec
# ╟─4fdadfbb-4d50-4c3a-bac6-c013055549e7
# ╠═b5bbb005-84a0-4a1d-9d75-48ae29789c98
# ╟─b6a8f39b-d3ab-43a3-9c7e-b82f51b1a863
# ╟─1da9b15c-a77b-4b14-a841-a8fc4df083b4
# ╠═4c66911a-585b-40a6-b3f8-8a99a87c2c76
# ╟─fbbbfa1f-f96d-4704-87c8-4e8af2953ef2
# ╠═23d1cd63-d33f-41f8-865f-23f5e21ed032
# ╠═2f771037-3efb-45ea-9592-66846475773c
# ╟─7c02edf7-ce47-471f-be54-2f67e0aa10e0
# ╠═823cad6e-a952-4f47-9a97-33d8264be475
# ╠═4e055c32-e6db-4d11-8bd2-5de1d6c57b4d
# ╟─f7e951b5-0413-44d7-964a-ddfa01896325
# ╠═54eaeef8-be92-4596-8c19-d9026539f926
