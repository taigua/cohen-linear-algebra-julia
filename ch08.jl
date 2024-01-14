### A Pluto.jl notebook ###
# v0.19.36

using Markdown
using InteractiveUtils

# ╔═╡ 6f5467b7-3f73-4e5d-852f-ec6bf1f0de53
using LinearAlgebra

# ╔═╡ f531d60e-b2db-11ee-21bd-0f8e914b86ca
md"""
# Chapter 8 Matrix spaces
"""

# ╔═╡ 0acf372e-acb9-4407-a2eb-dc1d7c0ace35
md"""
## 8.1 Column space of a matrix
"""

# ╔═╡ 207895e9-ab6f-479a-9e8e-54394e990093
md"""
## 8.2 The column space of $A$ and $AA^T$
"""

# ╔═╡ b86fb7a0-c937-476b-8283-66691902ee02
md"""
## 8.3 Determining whether $v \in C(A)$
"""

# ╔═╡ 391dc532-c4ec-432f-8904-b54ea77c691c
md"""
## 8.4 Row space of a matrix
"""

# ╔═╡ 19f54567-7905-4399-9f06-20db1e2d6054
md"""
## 8.5 Row spaces of $A$ and $A^TA$
"""

# ╔═╡ 1e233bd3-eafd-4079-8502-7f8cf44ced25
md"""
## 8.6 Null space of a matrix
"""

# ╔═╡ ece6e3dc-74d1-4657-bff8-59b15eb933af
# Code block 8.1/8.2
let
	A = randn(3, 4)
	nullspace(A)
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
# ╟─f531d60e-b2db-11ee-21bd-0f8e914b86ca
# ╠═6f5467b7-3f73-4e5d-852f-ec6bf1f0de53
# ╟─0acf372e-acb9-4407-a2eb-dc1d7c0ace35
# ╟─207895e9-ab6f-479a-9e8e-54394e990093
# ╟─b86fb7a0-c937-476b-8283-66691902ee02
# ╟─391dc532-c4ec-432f-8904-b54ea77c691c
# ╟─19f54567-7905-4399-9f06-20db1e2d6054
# ╟─1e233bd3-eafd-4079-8502-7f8cf44ced25
# ╠═ece6e3dc-74d1-4657-bff8-59b15eb933af
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
