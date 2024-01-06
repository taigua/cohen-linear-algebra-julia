### A Pluto.jl notebook ###
# v0.19.36

using Markdown
using InteractiveUtils

# ╔═╡ ea5109ff-1422-4c63-a7c2-b6705d9185bf
using LinearAlgebra

# ╔═╡ b348e5c0-ac34-11ee-06e8-b713317bd455
md"""
# Chapter 7 Rank
"""

# ╔═╡ f1030e0c-4b34-4a71-8af0-3f33a40484c2
md"""
## 7.1 Six things to known about matrix rank
"""

# ╔═╡ f8110471-954b-4e26-807c-f427054b7e5a
md"""
## 7.2 Interpretations of matrix rank
"""

# ╔═╡ 33f89c1f-91c2-4ef9-9fe2-f6e1bb4b598e
md"""
## 7.3 Computing matrix rank
"""

# ╔═╡ fc8e6fd1-a13e-4bb6-961f-23b062e5b02c
# Code block 7.1/7.2
let
	A = randn(3, 6)
	r = rank(A)
end

# ╔═╡ 32bb5e08-cb12-4fca-83fd-cea7a7c53ae4
md"""
## 7.4 Rank and scalar multiplication
"""

# ╔═╡ b1b2728f-5016-4699-a8eb-da2ee90138bb
# Code block 7.3/7.4
let
	s = randn()
	M = randn(3, 5)
	r1 = rank(M)
	r2 = rank(s * M)
	r1 == r2
end

# ╔═╡ d25d395f-37cf-4a30-818c-6770631c250d
md"""
## 7.5 Rank of added matrices
"""

# ╔═╡ ffacb79d-c1ab-49cf-ae43-4375c6f0023b
md"""
## 7.6 Rank of multiplied matrices
"""

# ╔═╡ d6dc4e85-1ac2-415f-8c9f-266d0d627ed8
md"""
## 7.7 Rank of $A$, $A^T$, $A^TA$ and $AA^T$
"""

# ╔═╡ 224c12d2-4162-43f6-9422-0d892dce6e42
md"""
## 7.8 Rank of random matrices
"""

# ╔═╡ 9ff5d658-abd9-42d2-841a-59c73248c282
md"""
## 7.9 Full rank matrices via "shifting"
"""

# ╔═╡ 956abef6-0f2e-48a1-9885-a690bb6972e3
md"""
## 7.10 Difficulties in computing rank in practice
"""

# ╔═╡ 4d798b92-748a-4fb6-93a7-f878cf45dd2b
# Code block 7.5/7.6
@edit rank(randn(4, 4))

# ╔═╡ 3ec4d7b5-df63-4d0f-9f2e-4685e1cbea8c
md"""
## 7.11 Rank and span
"""

# ╔═╡ 4ce938f5-3a27-4fb8-8f60-0599fe0d81f5
md"""
## 7.12 Exercises
"""

# ╔═╡ b8f4b744-a278-4666-bc29-7e7b3440076d
# E.1
# a) 1
# b) 2
# c) 3
# d) 3

# ╔═╡ f897873a-ceb6-4840-8157-47b3ff1a29c0
# E.2
let
	A = [2 4 3
	     0 1 3]
	B = [-2 -1 3
	      6 -7 7]
	# a)
	rank(A) == 2
	# b)
	rank(B) == 2
	# c)
	rank(A + B) == 2
	# d)
	rank(A * A') == 2
	# e)
	rank(A' * A) == 2
	# f)
	rank(A * B') == 2
	# g)
	rank((A * B')') == 2
	# h)
	rank(2A * A') == 2
end

# ╔═╡ 05ec62f9-d25e-4a19-b196-ca8a44865e3d
# E.3
# a) 3
# b) ≠ 0
# c) ≠ 2
# d) 0

# ╔═╡ 2b400acf-684d-4236-bf67-882f3fccabbe
# E.4
# a) 2
# b) 3
# c) 3
# d) 3
# e) 3
# f) 3
# g) 2
# h) invalid
# i) 3
# j) 3
# k) 2
# l) 3

# ╔═╡ a2049d04-c470-46c4-8ff3-5835829da4a3
md"""
## 7.14 Code challenge
"""

# ╔═╡ 9f87daf6-f374-44c1-a6fb-6ae6dc9c615d
# 1 Code block 7.7/7.8
let
	A = randn(9, 2)
	B = randn(2, 16)
	A * B
end

# ╔═╡ 6a2a52cd-7fa5-427c-ae15-cd4851326bb6
# 2 Code block 7.9/7.10
let
	Z = zeros(5, 5)
	N = randn(5, 5) * eps(Float64) * 1e-307
	ZN = Z + N
	println(rank(Z))
	println(rank(ZN))
	println(norm(ZN))	
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
# ╟─b348e5c0-ac34-11ee-06e8-b713317bd455
# ╠═ea5109ff-1422-4c63-a7c2-b6705d9185bf
# ╟─f1030e0c-4b34-4a71-8af0-3f33a40484c2
# ╟─f8110471-954b-4e26-807c-f427054b7e5a
# ╟─33f89c1f-91c2-4ef9-9fe2-f6e1bb4b598e
# ╠═fc8e6fd1-a13e-4bb6-961f-23b062e5b02c
# ╟─32bb5e08-cb12-4fca-83fd-cea7a7c53ae4
# ╠═b1b2728f-5016-4699-a8eb-da2ee90138bb
# ╟─d25d395f-37cf-4a30-818c-6770631c250d
# ╟─ffacb79d-c1ab-49cf-ae43-4375c6f0023b
# ╟─d6dc4e85-1ac2-415f-8c9f-266d0d627ed8
# ╟─224c12d2-4162-43f6-9422-0d892dce6e42
# ╟─9ff5d658-abd9-42d2-841a-59c73248c282
# ╟─956abef6-0f2e-48a1-9885-a690bb6972e3
# ╠═4d798b92-748a-4fb6-93a7-f878cf45dd2b
# ╟─3ec4d7b5-df63-4d0f-9f2e-4685e1cbea8c
# ╟─4ce938f5-3a27-4fb8-8f60-0599fe0d81f5
# ╠═b8f4b744-a278-4666-bc29-7e7b3440076d
# ╠═f897873a-ceb6-4840-8157-47b3ff1a29c0
# ╠═05ec62f9-d25e-4a19-b196-ca8a44865e3d
# ╠═2b400acf-684d-4236-bf67-882f3fccabbe
# ╟─a2049d04-c470-46c4-8ff3-5835829da4a3
# ╠═9f87daf6-f374-44c1-a6fb-6ae6dc9c615d
# ╠═6a2a52cd-7fa5-427c-ae15-cd4851326bb6
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
