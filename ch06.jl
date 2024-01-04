### A Pluto.jl notebook ###
# v0.19.36

using Markdown
using InteractiveUtils

# ╔═╡ 5ae4c5f2-6c14-4a39-b049-ac84c9801408
using LinearAlgebra

# ╔═╡ 46bb88b0-a77d-11ee-01d0-41047381356d
md"""
# Chapter 6 Matrix multiplication
"""

# ╔═╡ 2ecff8dc-1201-4314-af26-34e78439681c
md"""
## 6.1 "Standard" matrix multiplication
"""

# ╔═╡ 9e627e13-cbb7-4e89-9134-dd11fedf9caa
# Code block 6.1/6.2
let
	M1 = randn(4, 3)
	M2 = randn(3, 5)
	C = M1 * M2
end

# ╔═╡ c5ea461b-ff06-45fe-a110-add386392802
md"""
## 6.2 Multiplication and equations
"""

# ╔═╡ ab6f63ac-9b27-4e90-9c97-727421169865
# Code block 6.3/6.4
let
	A = randn(2, 2)
	B = randn(2, 2)
	C1 = A * B
	C2 = B * A
end

# ╔═╡ 94b1cdc4-024e-491e-ba1c-8836ffda181f
md"""
## 6.3 Multiplication and eqns.
"""

# ╔═╡ 96cf0ac0-e72a-4cb5-ac4e-877b1cad00e4
md"""
## 6.4 LIVE EVIL
"""

# ╔═╡ 22a983a2-b4a6-438d-87ac-39f341602bee
md"""
## 6.5 Matrix-vector multiplication
"""

# ╔═╡ 9c2b8cf4-12eb-4a70-bb5a-b069609aa6b5
md"""
## 6.6 Creating symmetric matrices
"""

# ╔═╡ 834aaba3-8b93-4b42-981d-372ec39649d3
md"""
## 6.7 Multiply symmetric matrices
"""

# ╔═╡ 0442ff0f-6b78-4bd4-805a-37b9abcfdb7d
md"""
## 6.8 Hadamard multiplication
"""

# ╔═╡ 7749a04c-e60e-42c2-9b15-71c08fb6ffa6
# Code block 6.5/6.6
let
	M1 = randn(4, 3)
	M2 = randn(4, 3)
	C = M1 .* M2
end

# ╔═╡ 15d5743a-accf-47eb-aae8-98869a8bc2ba
md"""
## 6.9 Frobenius dot product
"""

# ╔═╡ 99bb1739-eebd-4605-a749-9dba153a35ec
# Code block 6.7/6.8
let
	A = [1 2 3; 4 5 6]
	A[:]
end

# ╔═╡ 371c24f3-879a-4da3-ad17-f7143ed02f6a
# Code block 6.9/6.10
let
	A = randn(4, 3)
	B = randn(4, 3)
	f = tr(A' * B)
	f ≈ A[:] ⋅ B[:]
end

# ╔═╡ 35d68a1f-4fc2-4dee-9183-e52aeb179df5
md"""
## 6.10 Matrix norms
"""

# ╔═╡ 4ee50704-4493-4813-bcee-1c59e5be642a
# Code block 6.11/6.12
let
	A = randn(6, 3)
	norm(A)
end

# ╔═╡ b5285604-0adc-4b1d-a7ca-b44ffd2f40c2
md"""
## 6.11 What about matrix division?
"""

# ╔═╡ 005ce62d-20da-4e96-a92e-66d571c92d53
md"""
## 6.12 Exercises
"""

# ╔═╡ b4f19d59-59b7-4960-9ca9-4b54b878199d
# E.1
# a) invalid
# b) valid, 4x3
# c) invalid
# d) valid, 4x4
# e) invalid
# f) valid, 2x4
# g) valid, 4x4
# h) invalid
# i) valid, 2x2
# j) valid, 3x3
# k) invalid
# l) invalid
# m) valid, 3x3
# n) invalid
# o) valid, 3x4
# p) valid, 3x3
# q) invalid
# r) valid, 2x3

# ╔═╡ 34249a88-d4d9-4a4e-80b0-24c955037eb5
# E.2
begin
	# a)
	[1 0; 3 1] * [0 5; 2 2] == [0 5; 2 17]
	# b)
	[-3 2; -2 3] * [1 0; 0 2] == [-3 4; -2 6]
	# c)
	[11 -5; 9 -13] * [3 1; -8 .5] == [73 8.5; 131 2.5]
	# d) [1 0; 0 2] * [a b; c d] == [a b; 2c 2d]
	# e)
	[2 2; 1 3] * [10 1; -5 4] == [10 10; -5 13]
	# f) [a 0; b 0] * [2 3; 4 1] == [2a 3a; 2b 3b]
	# g) [a b; 0 0] * [2 3; 4 1] == [2a + 4b 3a + b; 0 0]
	# h)
	[1 0 4; 0 1 1; 3 3 0] * [-2 -3 -1; -1 -9 3; 0 1 5] == [-2 1 19; -1 -8 8; -9 -36 6]
	# i) [a 0 1; 0 b 0; 1 0 c] * [a b c; 1 2 3; 0 0 1] == [a^2 ab ac+1; b 2b 3b; a b 2c]
end

# ╔═╡ 6f2f2f60-67f7-4722-9cd5-392fe50b83d3
# E.3
begin
	# a)
	[2 0; 0 3] * [2, 3] == [4, 9]
	# b)
	[2 3] * [2 0; 0 3] == [4 9]
	# c)
	[2 1; 2 3] * [2, 3] == [7, 13]
	# d)
	[2 3] * [2 1; 2 3] == [10 11]
	# e) [0 1 0; 0 0 1; 1 0 0] * [a, b, c] == [b, c, a]
	# f)
	[1 0 1; 0 -4 0; 1 0 1] * [5, 2, 1] == [6, -8, 6]
	# g) invalid
	# h)
	[3 3 2] * [1 3 2; 6 1 5; 3 5 0] == [27 22 21]	
end

# ╔═╡ 166bde48-6540-4f4e-9ae8-c79144a7fb15
# E.4
# a) Both are symmetric matrices
# b) A = B, A is symmetric. Or A = B'
# c) B = B'
# d) A = A'
# e) A = B, A is symmetric
# f) Both are symmetric matrices

# ╔═╡ 5a916be1-7ee6-4b48-b28b-0156cf3516cf
# E.5
# Yes

# ╔═╡ c04cc911-e955-4820-a4ff-5b751d01284b
# E.6
# a) a+2b+3c+4d
# b) 63
# c) 135
# d) a²+b²+ca+bd
# e) a²+b²+c²+d²
# f) undefined

# ╔═╡ d363ebe0-1e4c-4c9e-bebc-edb5bf53ec1a
# E.7
let
	A = [3 0 0; 0 2 0; 0 0 -1]
	B = [2 0 0; 0 5 0; 0 0 3]
	C = [2 1 3; 0 4 1; 2 2 3]
	# a)
	A * B == [6 0 0; 0 10 0; 0 0 -3]
	# b)
	A * C == [6 3 9; 0 8 2; -2 -2 -3]
	# c)
	B * C == [4 2 6; 0 20 5; 6 6 9]
	# d)
	C * A == [6 2 -3; 0 8 -1; 6 4 -3]
	# e)
	C * B == [4 5 9; 0 20 3; 4 10 9]
	# f)
	B * C * A == [12 4 -6; 0 40 -5; 18 12 -9]
	# g)
	A * C * B == [12 15 27; 0 40 6; -4 -10 -9]
	# h)
	A * B * C == [12 6 18; 0 40 10; -6 -6 -9]
end

# ╔═╡ 7953c760-b454-47d4-9f4b-15472214adde
md"""
## 6.14 Code challenges
"""

# ╔═╡ fc64bbb8-84c8-41b8-8326-8a9447ea3483
# 1 Code block 6.13/6.14
let
	A = randn(2, 4)
	B = randn(4, 3)
	C1 = zeros(2, 3)
	for i = 1:4
		C1 = C1 + A[:, i] * B[i, :]'
	end
	C1 ≈ A * B
end

# ╔═╡ d3b9d920-0305-4879-b8c6-ca152c0ef51f
# 2 Code block 6.15/6.16
let
	D = diagm(1:4)	
	A = randn(4, 4)
	C1 = D .* A
	C2 = D * A
	[diag(C1) diag(C2)]
end

# ╔═╡ 85e0f431-cc0c-427e-b824-f90503f254a1
# 3 Code block 6.17/6.18
let
	A = diagm(rand(3))
	C1 = (A' + A) / 2
	C2 = A' * A
	C1 - sqrt.(C2)
end

# ╔═╡ 6e77da08-754e-4150-8f76-922a77163859
# 4 Code block 6.19/6.20
let
	m = 5
	A = randn(m, m)
	v = randn(m)
	LHS = norm(A * v)
	RHS = norm(A) * norm(v)
	RHS - LHS > 0
end

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
LinearAlgebra = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.10.0"
manifest_format = "2.0"
project_hash = "ac1187e548c6ab173ac57d4e72da1620216bce54"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "1.0.5+1"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "OpenBLAS_jll", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.23+2"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.8.0+1"
"""

# ╔═╡ Cell order:
# ╟─46bb88b0-a77d-11ee-01d0-41047381356d
# ╠═5ae4c5f2-6c14-4a39-b049-ac84c9801408
# ╟─2ecff8dc-1201-4314-af26-34e78439681c
# ╠═9e627e13-cbb7-4e89-9134-dd11fedf9caa
# ╟─c5ea461b-ff06-45fe-a110-add386392802
# ╠═ab6f63ac-9b27-4e90-9c97-727421169865
# ╟─94b1cdc4-024e-491e-ba1c-8836ffda181f
# ╟─96cf0ac0-e72a-4cb5-ac4e-877b1cad00e4
# ╟─22a983a2-b4a6-438d-87ac-39f341602bee
# ╟─9c2b8cf4-12eb-4a70-bb5a-b069609aa6b5
# ╟─834aaba3-8b93-4b42-981d-372ec39649d3
# ╟─0442ff0f-6b78-4bd4-805a-37b9abcfdb7d
# ╠═7749a04c-e60e-42c2-9b15-71c08fb6ffa6
# ╟─15d5743a-accf-47eb-aae8-98869a8bc2ba
# ╠═99bb1739-eebd-4605-a749-9dba153a35ec
# ╠═371c24f3-879a-4da3-ad17-f7143ed02f6a
# ╟─35d68a1f-4fc2-4dee-9183-e52aeb179df5
# ╠═4ee50704-4493-4813-bcee-1c59e5be642a
# ╟─b5285604-0adc-4b1d-a7ca-b44ffd2f40c2
# ╟─005ce62d-20da-4e96-a92e-66d571c92d53
# ╠═b4f19d59-59b7-4960-9ca9-4b54b878199d
# ╠═34249a88-d4d9-4a4e-80b0-24c955037eb5
# ╠═6f2f2f60-67f7-4722-9cd5-392fe50b83d3
# ╠═166bde48-6540-4f4e-9ae8-c79144a7fb15
# ╠═5a916be1-7ee6-4b48-b28b-0156cf3516cf
# ╠═c04cc911-e955-4820-a4ff-5b751d01284b
# ╠═d363ebe0-1e4c-4c9e-bebc-edb5bf53ec1a
# ╟─7953c760-b454-47d4-9f4b-15472214adde
# ╠═fc64bbb8-84c8-41b8-8326-8a9447ea3483
# ╠═d3b9d920-0305-4879-b8c6-ca152c0ef51f
# ╠═85e0f431-cc0c-427e-b824-f90503f254a1
# ╠═6e77da08-754e-4150-8f76-922a77163859
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
