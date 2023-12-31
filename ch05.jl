### A Pluto.jl notebook ###
# v0.19.36

using Markdown
using InteractiveUtils

# ╔═╡ 6ea69138-a4f3-4d63-8514-bb999072d53d
using LinearAlgebra, ToeplitzMatrices

# ╔═╡ 717b7960-a3f0-11ee-363e-351959c7cf59
md"""
# Chapter 5 Matrices
"""

# ╔═╡ 0581a74a-2b6d-463c-8ed5-5169cc244dc0
md"""
## 5.1 Interpretations and uses of matrices
"""

# ╔═╡ 047631f0-4174-443c-b8dc-61dce7403743
md"""
## 5.2 Matrix terminology and notation
"""

# ╔═╡ 5510b685-452a-4177-824b-85200bc72266
md"""
## 5.3 Matrix dimensionalities
"""

# ╔═╡ 2072303b-91fb-4bd8-8cd7-74d9d5701e56
md"""
## 5.4 The transpose operation
"""

# ╔═╡ e090ee78-e954-489c-a982-c9c6a464a308
# Code block 5.1/5.2
let
	A = randn(2, 5)
	At1 = A'
	At2 = transpose(A)
end

# ╔═╡ fe41d3aa-c2b5-49c2-9696-505ba8ef0fd5
md"""
## 5.5 Matrix zoology
"""

# ╔═╡ b7de7a5c-a1c5-48e8-b0de-4e1bd5c1c9af
# Code block 5.3/5.4
let
	# julia using I representing an identity matrix of any size
	O = ones(4)
	Z = zeros(4, 4)
end

# ╔═╡ 2aab9cec-dae9-4cbd-861a-05043a223c8d
# Code block 5.5/5.6
let
	D = diagm([1, 2, 3, 5])
	R = randn(3, 4)
	d = diag(R)
end

# ╔═╡ 48a4060a-70f3-4140-8f74-5e5f3c60a83d
# Code block 5.7/5.8
let
	A = randn(3, 5)
	B = randn(3, 4)
	AB = [A B]
end

# ╔═╡ 10bad1f5-7b4e-484b-b94f-913445d3b5ac
# Code block 5.9/5.10
let
	A = randn(5, 5)
	L = tril(A)
	U = triu(A)
end

# ╔═╡ c4ca57d3-0814-4e8a-9a14-5592785af9a7
# Code block 5.11/5.12
let
	t = 1:4
	T = Toeplitz(t, t)
	H = Hankel(t, [4, 1, 2, 3])	
end

# ╔═╡ f9160937-d48e-430f-bcf7-bda03f13a7ee
md"""
## 5.6 Matrix addition and substraction
"""

# ╔═╡ b9681557-e56c-4c8d-96dc-569f0744272e
md"""
## 5.7 Scalar-matrix multi.
"""

# ╔═╡ c7ef3d6c-3e52-4470-9cdb-792a6b7c7db2
md"""
## 5.8 "Shifting" a matrix
"""

# ╔═╡ f2c1c08b-2c6d-4148-bf4a-d41ca8e5cadf
# Code block 5.13/5.14
let
	l = .01
	A = randn(4, 4)
	As = A + l*I
end

# ╔═╡ f8c17dfc-4fc2-4042-9201-89ff4e53360b
md"""
## 5.9 Diagonal and trace
"""

# ╔═╡ 8ca8ad3f-fdc2-4c4b-b473-377e1e0400d3
# Code block 5.15/5.16
let
	A = randn(4, 4)
	t = tr(A)
end

# ╔═╡ 539b759d-3cc6-4b8b-9b29-c21360f0fb38
md"""
## 5.10 Exercises
"""

# ╔═╡ 0d03bfe1-5172-4514-8ede-1a134b5089a8
# E.1
let
	u = [2, 4, 1]
	v = [3, 5, 0, 2]
	w = [1, 0, 1, 5]
	A = [-1 -2 -6 -6
	      1 -1  0 -2
	     -1  0 -1 -4]
	# a) Size mismatch
	# b)
	w * u' + A' == [ 1  5  0
	                -2 -1  0
	                -4  4  0
	                 4 18  1]
	# c)
	u * v' - A == [ 7 12 6 10
	               11 21 0 10
	                4  5 1  6]
	# d) Size mismatch
	# e) Size mismatch
end

# ╔═╡ f4345eaa-4f74-433e-9afc-749f827748d0
# E.2
let
	A = [2 4 3
	     0 1 3]
	B = [-2 -1 3
	      6 -7 7]
	C = [ 0 -6
	     -3 -2
	     -2  7]
	D = [1 2
	     3 4
	     2 4]
	# a)
	A + 3B == [-4   1 12
	           18 -20 24]
	# b) Invalid
	# c)
	C - D == [-1 -8
	          -6 -6
	          -4  3]
	# d)
	D + C == [1 -4
	          0  2
	          0 11]
	# e)
	A' + D == [3 2
	           7 5
	           5 7]
	# f)
	(A + B)' + 2C == [ 0 -6
	                  -3 -10
	                   2  24]
	# g)
	3A + (B' + C)' == [4  8 10
	                   0 -6 23]
	# h) Invalid	
end

# ╔═╡ ad2105bc-c0bc-45fb-9c97-d953ce1e73f1
# E.3
# (N + 1)*N/2

# ╔═╡ cc272c57-9b33-4900-a401-c1002849e02e
# E.4
# a) square, diagonal, symmetric
# b) square, upper-triangular
# c) square, symmetric
# d) square, skew-symmetric if a = d = f = 0
# e) square, skew-symmetric if e = f
# f) rectangular, diagonal

# ╔═╡ a3f7bd58-4ce9-483c-9826-ee3043d5f68f
# E.5


# ╔═╡ b57121e0-7547-442c-917b-db38601c217d
# E.6
let
	m = [1  2  3  1  2  3
 		 2  3  1  2  3  1
   	     3  1  2  3  1  2
 		 1  2  3  1  2  3
 		 2  3  1  2  3  1
 		 3  1  2  3  1  2]
end

# ╔═╡ 9e0c4c11-a1c2-4bd8-91d2-7ef2b91ad4c5
# E.7
# a) No, the third column does not have magnitude = 1.
# b) No, because columns are not orthogonal.
# c) Yes, all identities matrices are orthogonal.

# ╔═╡ e8355101-e4c9-4702-91d5-3f784d1b6d72
# E.8
# Yes
# a) -2
# b) 21
# c) a + j + b + k + c + l

# ╔═╡ 04b935f5-4cb2-41c6-8c78-6348e4b2ca2e
# E.9
let
	# a)
	a1 = [3, -5, 1]
	a2 = [-2, 1, 5]
	tr(a1 * a2') == a1 ⋅ a2
	# b)
	b1 = [1, -3, 5, 2]
	b2 = [5, 6, 1, 4]
	tr(b1 * b2') == b1 ⋅ b2
	# c)
	# ae + bf + cg + dh
end

# ╔═╡ 136b21d5-6acc-4ccf-a882-84d9f0235ce3
# E.10
let
	A = [5 -3
	     2 -3]
	B = [-4 -1
	      1  3]
	C = [:a :c
	     :b :d]
	λ = 5
	α = -3
	# a)
	tr(A) == 2
	# b)
	tr(B) == -1
	# c)
	# tr(C) == a + b
	# d)
	# tr(λC) == 5a + 5b
	# e)
	# λtr(C) == 5a + 5b
	# f)
	# λtr(αC) == -18a - 18b
	# g)
	# αtr(λC) == -18a - 18b
	# h)
	tr(α*A + λ*B) == -11
	# i)
	(λ*α)tr(A + B) == -15
	# j)
	tr(λ*A + λ*B) == 5
	# k)
	λ*tr(A + B) == 5
	# l)
	tr(A + B') == 1	
end

# ╔═╡ 19cf66f1-bcab-4410-9009-6820e3b2f7a8
md"""
## 5.12 Code challenge
"""

# ╔═╡ cc7f3e30-4fc5-4ba3-9ea8-1d68a813ed82
# C.1, Code block 5.17/5.18
let
	A = randn(4, 2)
	B = randn(4, 2)
	C = zeros(2, 2)
	for coli in 1:2
		for colj in 1:2
			C[coli, colj] = A[:, coli] ⋅ B[:, colj]
		end
	end
end

# ╔═╡ de47a90e-a013-468f-ab2d-8192b4505d41
# C.2, Code block 5.19/5.20
let
	A = randn(4, 4)
	Al = tril(A)
	S = Al + Al'
end

# ╔═╡ 4be39f19-da1f-4e21-823d-b33dba738500
# C.3, Code block 5.21/5.22
let
	D = zeros(4, 8)
	for d = 1:min(size(D)...)
		D[d, d] = d + 1
	end
end

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
LinearAlgebra = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
ToeplitzMatrices = "c751599d-da0a-543b-9d20-d0a503d91d24"

[compat]
ToeplitzMatrices = "~0.8.2"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.10.0"
manifest_format = "2.0"
project_hash = "5d51cef3dd3668cc95b7e94fef6ab1720986ca38"

[[deps.AbstractFFTs]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "d92ad398961a3ed262d8bf04a1a2b8340f915fef"
uuid = "621f4979-c628-5d54-868e-fcf4e3e8185c"
version = "1.5.0"

    [deps.AbstractFFTs.extensions]
    AbstractFFTsChainRulesCoreExt = "ChainRulesCore"
    AbstractFFTsTestExt = "Test"

    [deps.AbstractFFTs.weakdeps]
    ChainRulesCore = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"
    Test = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[deps.ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"
version = "1.1.1"

[[deps.Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[deps.Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[deps.Compat]]
deps = ["UUIDs"]
git-tree-sha1 = "886826d76ea9e72b35fcd000e535588f7b60f21d"
uuid = "34da2185-b29b-5c13-b0c7-acf172513d20"
version = "4.10.1"
weakdeps = ["Dates", "LinearAlgebra"]

    [deps.Compat.extensions]
    CompatLinearAlgebraExt = "LinearAlgebra"

[[deps.CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"
version = "1.0.5+1"

[[deps.ConstructionBase]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "c53fc348ca4d40d7b371e71fd52251839080cbc9"
uuid = "187b0558-2788-49d3-abe0-74a17ed4e7c9"
version = "1.5.4"

    [deps.ConstructionBase.extensions]
    ConstructionBaseIntervalSetsExt = "IntervalSets"
    ConstructionBaseStaticArraysExt = "StaticArrays"

    [deps.ConstructionBase.weakdeps]
    IntervalSets = "8197267c-284f-5f27-9208-e0e47529a953"
    StaticArrays = "90137ffa-7385-5640-81b9-e52037218182"

[[deps.DSP]]
deps = ["Compat", "FFTW", "IterTools", "LinearAlgebra", "Polynomials", "Random", "Reexport", "SpecialFunctions", "Statistics"]
git-tree-sha1 = "f7f4319567fe769debfcf7f8c03d8da1dd4e2fb0"
uuid = "717857b8-e6f2-59f4-9121-6e50c889abd2"
version = "0.7.9"

[[deps.Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[deps.DocStringExtensions]]
deps = ["LibGit2"]
git-tree-sha1 = "2fb1e02f2b635d0845df5d7c167fec4dd739b00d"
uuid = "ffbed154-4ef7-542d-bbb7-c09d3a79fcae"
version = "0.9.3"

[[deps.Downloads]]
deps = ["ArgTools", "FileWatching", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"
version = "1.6.0"

[[deps.FFTW]]
deps = ["AbstractFFTs", "FFTW_jll", "LinearAlgebra", "MKL_jll", "Preferences", "Reexport"]
git-tree-sha1 = "ec22cbbcd01cba8f41eecd7d44aac1f23ee985e3"
uuid = "7a1cc6ca-52ef-59f5-83cd-3a7055c09341"
version = "1.7.2"

[[deps.FFTW_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "c6033cc3892d0ef5bb9cd29b7f2f0331ea5184ea"
uuid = "f5851436-0d7a-5f13-b9de-f02708fd171a"
version = "3.3.10+0"

[[deps.FileWatching]]
uuid = "7b1f6079-737a-58dc-b8bc-7a2ca5c1b5ee"

[[deps.FillArrays]]
deps = ["LinearAlgebra", "Random"]
git-tree-sha1 = "5b93957f6dcd33fc343044af3d48c215be2562f1"
uuid = "1a297f60-69ca-5386-bcde-b61e274b549b"
version = "1.9.3"

    [deps.FillArrays.extensions]
    FillArraysPDMatsExt = "PDMats"
    FillArraysSparseArraysExt = "SparseArrays"
    FillArraysStatisticsExt = "Statistics"

    [deps.FillArrays.weakdeps]
    PDMats = "90014a1f-27ba-587c-ab20-58faa44d9150"
    SparseArrays = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"
    Statistics = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[deps.Future]]
deps = ["Random"]
uuid = "9fa8497b-333b-5362-9e8d-4d0656e87820"

[[deps.IntelOpenMP_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl"]
git-tree-sha1 = "5fdf2fe6724d8caabf43b557b84ce53f3b7e2f6b"
uuid = "1d5cc7b8-4909-519e-a0f8-d0f5ad9712d0"
version = "2024.0.2+0"

[[deps.InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[deps.IrrationalConstants]]
git-tree-sha1 = "630b497eafcc20001bba38a4651b327dcfc491d2"
uuid = "92d709cd-6900-40b7-9082-c6be49f344b6"
version = "0.2.2"

[[deps.IterTools]]
git-tree-sha1 = "274c38bd733f9d29036d0a73658fff1dc1d3a065"
uuid = "c8e1da08-722c-5040-9ed9-7db0dc04731e"
version = "1.9.0"

[[deps.JLLWrappers]]
deps = ["Artifacts", "Preferences"]
git-tree-sha1 = "7e5d6779a1e09a36db2a7b6cff50942a0a7d0fca"
uuid = "692b3bcd-3c85-4b1f-b108-f13ce0eb3210"
version = "1.5.0"

[[deps.LazyArtifacts]]
deps = ["Artifacts", "Pkg"]
uuid = "4af54fe1-eca0-43a8-85a7-787d91b784e3"

[[deps.LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"
version = "0.6.4"

[[deps.LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"
version = "8.4.0+0"

[[deps.LibGit2]]
deps = ["Base64", "LibGit2_jll", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[deps.LibGit2_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll"]
uuid = "e37daf67-58a4-590a-8e99-b0245dd2ffc5"
version = "1.6.4+0"

[[deps.LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"
version = "1.11.0+1"

[[deps.Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[deps.LinearAlgebra]]
deps = ["Libdl", "OpenBLAS_jll", "libblastrampoline_jll"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[deps.LogExpFunctions]]
deps = ["DocStringExtensions", "IrrationalConstants", "LinearAlgebra"]
git-tree-sha1 = "7d6dd4e9212aebaeed356de34ccf262a3cd415aa"
uuid = "2ab3a3ac-af41-5b50-aa03-7779005ae688"
version = "0.3.26"

    [deps.LogExpFunctions.extensions]
    LogExpFunctionsChainRulesCoreExt = "ChainRulesCore"
    LogExpFunctionsChangesOfVariablesExt = "ChangesOfVariables"
    LogExpFunctionsInverseFunctionsExt = "InverseFunctions"

    [deps.LogExpFunctions.weakdeps]
    ChainRulesCore = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"
    ChangesOfVariables = "9e997f8a-9a97-42d5-a9f1-ce6bfc15e2c0"
    InverseFunctions = "3587e190-3f89-42d0-90ee-14403ec27112"

[[deps.Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[deps.MKL_jll]]
deps = ["Artifacts", "IntelOpenMP_jll", "JLLWrappers", "LazyArtifacts", "Libdl"]
git-tree-sha1 = "72dc3cf284559eb8f53aa593fe62cb33f83ed0c0"
uuid = "856f044c-d86e-5d09-b602-aeab76dc8ba7"
version = "2024.0.0+0"

[[deps.MacroTools]]
deps = ["Markdown", "Random"]
git-tree-sha1 = "b211c553c199c111d998ecdaf7623d1b89b69f93"
uuid = "1914dd2f-81c6-5fcd-8719-6d5c9610ff09"
version = "0.5.12"

[[deps.Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[deps.MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"
version = "2.28.2+1"

[[deps.MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"
version = "2023.1.10"

[[deps.NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"
version = "1.2.0"

[[deps.OpenBLAS_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Libdl"]
uuid = "4536629a-c528-5b80-bd46-f80d51c5b363"
version = "0.3.23+2"

[[deps.OpenLibm_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "05823500-19ac-5b8b-9628-191a04bc5112"
version = "0.8.1+2"

[[deps.OpenSpecFun_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "13652491f6856acfd2db29360e1bbcd4565d04f1"
uuid = "efe28fd5-8261-553b-a9e1-b2916fc3738e"
version = "0.5.5+0"

[[deps.Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "FileWatching", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"
version = "1.10.0"

[[deps.Polynomials]]
deps = ["LinearAlgebra", "RecipesBase", "Setfield", "SparseArrays"]
git-tree-sha1 = "a9c7a523d5ed375be3983db190f6a5874ae9286d"
uuid = "f27b6e38-b328-58d1-80ce-0feddd5e7a45"
version = "4.0.6"

    [deps.Polynomials.extensions]
    PolynomialsChainRulesCoreExt = "ChainRulesCore"
    PolynomialsFFTWExt = "FFTW"
    PolynomialsMakieCoreExt = "MakieCore"
    PolynomialsMutableArithmeticsExt = "MutableArithmetics"

    [deps.Polynomials.weakdeps]
    ChainRulesCore = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"
    FFTW = "7a1cc6ca-52ef-59f5-83cd-3a7055c09341"
    MakieCore = "20f20a25-4f0e-4fdf-b5d1-57303727442b"
    MutableArithmetics = "d8a4904e-b15c-11e9-3269-09a3773c0cb0"

[[deps.PrecompileTools]]
deps = ["Preferences"]
git-tree-sha1 = "03b4c25b43cb84cee5c90aa9b5ea0a78fd848d2f"
uuid = "aea7be01-6a6a-4083-8856-8a6e6704d82a"
version = "1.2.0"

[[deps.Preferences]]
deps = ["TOML"]
git-tree-sha1 = "00805cd429dcb4870060ff49ef443486c262e38e"
uuid = "21216c6a-2e73-6563-6e65-726566657250"
version = "1.4.1"

[[deps.Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[deps.REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[deps.Random]]
deps = ["SHA"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[deps.RecipesBase]]
deps = ["PrecompileTools"]
git-tree-sha1 = "5c3d09cc4f31f5fc6af001c250bf1278733100ff"
uuid = "3cdcf5f2-1ef4-517c-9805-6587b60abb01"
version = "1.3.4"

[[deps.Reexport]]
git-tree-sha1 = "45e428421666073eab6f2da5c9d310d99bb12f9b"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.2.2"

[[deps.SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"
version = "0.7.0"

[[deps.Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[deps.Setfield]]
deps = ["ConstructionBase", "Future", "MacroTools", "StaticArraysCore"]
git-tree-sha1 = "e2cc6d8c88613c05e1defb55170bf5ff211fbeac"
uuid = "efcf1570-3423-57d1-acb7-fd33fddbac46"
version = "1.1.1"

[[deps.Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[deps.SparseArrays]]
deps = ["Libdl", "LinearAlgebra", "Random", "Serialization", "SuiteSparse_jll"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"
version = "1.10.0"

[[deps.SpecialFunctions]]
deps = ["IrrationalConstants", "LogExpFunctions", "OpenLibm_jll", "OpenSpecFun_jll"]
git-tree-sha1 = "e2cfc4012a19088254b3950b85c3c1d8882d864d"
uuid = "276daf66-3868-5448-9aa4-cd146d93841b"
version = "2.3.1"

    [deps.SpecialFunctions.extensions]
    SpecialFunctionsChainRulesCoreExt = "ChainRulesCore"

    [deps.SpecialFunctions.weakdeps]
    ChainRulesCore = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"

[[deps.StaticArraysCore]]
git-tree-sha1 = "36b3d696ce6366023a0ea192b4cd442268995a0d"
uuid = "1e83bf80-4336-4d27-bf5d-d5a4f845583c"
version = "1.4.2"

[[deps.Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"
version = "1.10.0"

[[deps.SuiteSparse_jll]]
deps = ["Artifacts", "Libdl", "libblastrampoline_jll"]
uuid = "bea87d4a-7f5b-5778-9afe-8cc45184846c"
version = "7.2.1+1"

[[deps.TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"
version = "1.0.3"

[[deps.Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"
version = "1.10.0"

[[deps.ToeplitzMatrices]]
deps = ["AbstractFFTs", "DSP", "FillArrays", "LinearAlgebra"]
git-tree-sha1 = "a097662c0fd28143bb714e4527ac2dcb7520212e"
uuid = "c751599d-da0a-543b-9d20-d0a503d91d24"
version = "0.8.2"

    [deps.ToeplitzMatrices.extensions]
    ToeplitzMatricesStatsBaseExt = "StatsBase"

    [deps.ToeplitzMatrices.weakdeps]
    StatsBase = "2913bbd2-ae8a-5f71-8c99-4fb6c76f3a91"

[[deps.UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[deps.Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[deps.Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"
version = "1.2.13+1"

[[deps.libblastrampoline_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850b90-86db-534c-a0d3-1478176c7d93"
version = "5.8.0+1"

[[deps.nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"
version = "1.52.0+1"

[[deps.p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"
version = "17.4.0+2"
"""

# ╔═╡ Cell order:
# ╟─717b7960-a3f0-11ee-363e-351959c7cf59
# ╠═6ea69138-a4f3-4d63-8514-bb999072d53d
# ╟─0581a74a-2b6d-463c-8ed5-5169cc244dc0
# ╟─047631f0-4174-443c-b8dc-61dce7403743
# ╟─5510b685-452a-4177-824b-85200bc72266
# ╟─2072303b-91fb-4bd8-8cd7-74d9d5701e56
# ╠═e090ee78-e954-489c-a982-c9c6a464a308
# ╟─fe41d3aa-c2b5-49c2-9696-505ba8ef0fd5
# ╠═b7de7a5c-a1c5-48e8-b0de-4e1bd5c1c9af
# ╠═2aab9cec-dae9-4cbd-861a-05043a223c8d
# ╠═48a4060a-70f3-4140-8f74-5e5f3c60a83d
# ╠═10bad1f5-7b4e-484b-b94f-913445d3b5ac
# ╠═c4ca57d3-0814-4e8a-9a14-5592785af9a7
# ╟─f9160937-d48e-430f-bcf7-bda03f13a7ee
# ╟─b9681557-e56c-4c8d-96dc-569f0744272e
# ╟─c7ef3d6c-3e52-4470-9cdb-792a6b7c7db2
# ╠═f2c1c08b-2c6d-4148-bf4a-d41ca8e5cadf
# ╟─f8c17dfc-4fc2-4042-9201-89ff4e53360b
# ╠═8ca8ad3f-fdc2-4c4b-b473-377e1e0400d3
# ╟─539b759d-3cc6-4b8b-9b29-c21360f0fb38
# ╠═0d03bfe1-5172-4514-8ede-1a134b5089a8
# ╠═f4345eaa-4f74-433e-9afc-749f827748d0
# ╠═ad2105bc-c0bc-45fb-9c97-d953ce1e73f1
# ╠═cc272c57-9b33-4900-a401-c1002849e02e
# ╠═a3f7bd58-4ce9-483c-9826-ee3043d5f68f
# ╠═b57121e0-7547-442c-917b-db38601c217d
# ╠═9e0c4c11-a1c2-4bd8-91d2-7ef2b91ad4c5
# ╠═e8355101-e4c9-4702-91d5-3f784d1b6d72
# ╠═04b935f5-4cb2-41c6-8c78-6348e4b2ca2e
# ╠═136b21d5-6acc-4ccf-a882-84d9f0235ce3
# ╟─19cf66f1-bcab-4410-9009-6820e3b2f7a8
# ╠═cc7f3e30-4fc5-4ba3-9ea8-1d68a813ed82
# ╠═de47a90e-a013-468f-ab2d-8192b4505d41
# ╠═4be39f19-da1f-4e21-823d-b33dba738500
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
