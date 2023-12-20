### A Pluto.jl notebook ###
# v0.19.36

using Markdown
using InteractiveUtils

# ╔═╡ 35c952d0-9f3a-11ee-24da-c1561287d5b8
md"""
# Chapter 4 Vector spaces
"""

# ╔═╡ ecdcfe35-a3f6-4bac-b3f9-cbbe65f7479f
md"""
## 4.8 Exercises
"""

# ╔═╡ 8a9f672f-a2f4-411c-919c-28c1e9b97f4e
# E.1
let
    # a) Neither
    # b) S, [4, 0]
    [0, 4, 12] == 4 * [0, 1, 3] + 0 * [1, 0, 3]
    # c) Both, [0, 0]
    # d) T, [2, -3]
    [-10, -2, -3] == 2 * [1, .5, 0] + (-3) * [4, 1, 1]
    # e) S, [2, -3]
    [-3, 2, -3] == 2 * [0, 1, 3] + (-3) * [1, 0, 3]	
end

# ╔═╡ 6fe13173-8abc-4e11-9354-b949ecbeb78c
# E.2
# a) No
# b) Yes, [3, 1]
# c) No

# ╔═╡ 32f62ba3-4477-4e11-8bb1-555475753464
# E.3
# a) independent
# b) independent
# c) dependent, yes
# d) dependent, no
# e) dependent, yes
# f) dependent, no
# g) independent
# h) dependent, yes
# i) dependent, yes

# ╔═╡ 5ac8f0e7-3382-4b1d-bdda-9aecf754dd29
# E.4
# a) λ = 9
# b) λ = 0 or Any for a = b = c = d = 0
# c) Any λ

# ╔═╡ 66c52312-3132-4cb2-a7ce-1ecde12cde98
# E.5
# a) 2
# b) 2

# ╔═╡ 7666ae52-f76e-4570-9b46-706ae4577403
# E.6
# a) subspace and subset
# b) subset
# c) subspace and subset
# d) subset

# ╔═╡ 79280798-a3af-45f0-a9b7-b1e5d768ef25
# E.7
# a) 1D
# b) 2D
# c) 3D
# d) 1D

# ╔═╡ c9b17e39-9d8d-4174-a0bf-72a74abd9c79
# E.8
# a) [1, 2, 3]
# b) [1, 4, 3] or [3, 12, 9]
# c) [-3, 2, 13] or [4.5, -3, -19.5]

# ╔═╡ Cell order:
# ╟─35c952d0-9f3a-11ee-24da-c1561287d5b8
# ╟─ecdcfe35-a3f6-4bac-b3f9-cbbe65f7479f
# ╠═8a9f672f-a2f4-411c-919c-28c1e9b97f4e
# ╠═6fe13173-8abc-4e11-9354-b949ecbeb78c
# ╠═32f62ba3-4477-4e11-8bb1-555475753464
# ╠═5ac8f0e7-3382-4b1d-bdda-9aecf754dd29
# ╠═66c52312-3132-4cb2-a7ce-1ecde12cde98
# ╠═7666ae52-f76e-4570-9b46-706ae4577403
# ╠═79280798-a3af-45f0-a9b7-b1e5d768ef25
# ╠═c9b17e39-9d8d-4174-a0bf-72a74abd9c79
