### A Pluto.jl notebook ###
# v0.19.24

using Markdown
using InteractiveUtils

# ╔═╡ 5f05ba0a-e917-11ed-00f5-a3a827d01496
begin
	import Pkg
	Pkg.activate(mktempdir())
	Pkg.add([
		Pkg.PackageSpec(name="GraphViz", url="https://github.com/abelsiqueira/GraphViz.jl", rev="38-add-engine-attribute"),
		Pkg.PackageSpec(name="GraphvizDotLang"),
	])
	using GraphViz
	using GraphvizDotLang: digraph, edge
end

# ╔═╡ c6df2d08-3dfe-477b-8c60-043e76757a09
typeof(Int8(2))

# ╔═╡ d8e69d05-945d-4b3d-958f-7c43712b3d5c
typeof(BigFloat(1.0))

# ╔═╡ 1eb64e33-83ea-4e11-b413-87bc7007087d
typeof("s")

# ╔═╡ cb29dca0-907e-4f93-8a73-826a48d5e4c3
typeof(exp)

# ╔═╡ fc7929da-262c-4baa-933e-b9921b18ce25
f(x) = x^2

# ╔═╡ 89da3a4f-8e68-4cdf-88fc-26d844c28998
typeof(f)

# ╔═╡ e0be720e-30bb-4278-a952-b548a174824a
typeof(x -> x^2 - x)

# ╔═╡ e5361dde-92d0-44b3-833c-83e56f775f86
AbstractFloat

# ╔═╡ 2e451e12-1c24-47c0-992a-840f22ed2aa0
Float64 <: AbstractFloat

# ╔═╡ d1c46f49-4004-45c8-9b31-4df84c708bc4
supertype(Float64)

# ╔═╡ 4bcbd80f-b4c9-4fbd-8fce-8dde8a6542f1
Float64 |> supertype |> supertype|> supertype|> supertype

# ╔═╡ 96c26d5f-e4f9-4f61-8742-4845fc0b7b71
v = Real[1, 1.0]

# ╔═╡ 38fa875b-2573-4095-a3c7-964a9cc3caaf
eltype(v)

# ╔═╡ dcc65078-b16a-4034-9885-18e62e0dde23
'c'

# ╔═╡ f8b48885-d4d6-4386-86ef-34048c542841
"car"[2]

# ╔═╡ 7d77365c-fedd-4c8d-bed8-cacebdfa8c56
typeof(nothing)

# ╔═╡ 0d5ccfcb-b59a-4dc4-80a0-16916e443c83
typeof(missing)

# ╔═╡ daa7e0d0-b02f-49d6-878b-a14f5c86784f
begin
	"""
		type_tree(type_list)

	Draw a type tree for the array of types `type_list`.
	"""
	function type_tree(type_list)
		graph = """
		strict digraph {
		"""
		g = digraph()
		leafs_by_type = Dict()
		
		for t in type_list
			st = supertype(t)
			if isconcretetype(t)
				key = string(st)
				if !haskey(leafs_by_type, key)
					leafs_by_type[key] = String[]
				end
				push!(leafs_by_type[key], string(t))
				t = st
				st = supertype(t)
			end
			while t != Any
				graph *= "$st -> $t;\n"
				t = st
				st = supertype(t)
			end
		end
		for (key, leafs) in leafs_by_type
			label = join(leafs, "|")
			graph *= """$key -> cluster_$key;
			cluster_$key [shape=record, label="{$label}"]
			"""
		end
		
		graph *= "}"
		GraphViz.Graph(graph, engine="dot")
	end
end

# ╔═╡ e0fdaec2-515c-4020-8ab1-11508cb38e11
type_tree([
	Float64, Float32, Int64, UInt64, Bool, String, Char, ComplexF64, Nothing, Missing
])

# ╔═╡ Cell order:
# ╠═c6df2d08-3dfe-477b-8c60-043e76757a09
# ╠═d8e69d05-945d-4b3d-958f-7c43712b3d5c
# ╠═1eb64e33-83ea-4e11-b413-87bc7007087d
# ╠═cb29dca0-907e-4f93-8a73-826a48d5e4c3
# ╠═fc7929da-262c-4baa-933e-b9921b18ce25
# ╠═89da3a4f-8e68-4cdf-88fc-26d844c28998
# ╠═e0be720e-30bb-4278-a952-b548a174824a
# ╠═e5361dde-92d0-44b3-833c-83e56f775f86
# ╠═2e451e12-1c24-47c0-992a-840f22ed2aa0
# ╠═d1c46f49-4004-45c8-9b31-4df84c708bc4
# ╠═4bcbd80f-b4c9-4fbd-8fce-8dde8a6542f1
# ╠═96c26d5f-e4f9-4f61-8742-4845fc0b7b71
# ╠═38fa875b-2573-4095-a3c7-964a9cc3caaf
# ╠═e0fdaec2-515c-4020-8ab1-11508cb38e11
# ╠═dcc65078-b16a-4034-9885-18e62e0dde23
# ╠═f8b48885-d4d6-4386-86ef-34048c542841
# ╠═7d77365c-fedd-4c8d-bed8-cacebdfa8c56
# ╠═0d5ccfcb-b59a-4dc4-80a0-16916e443c83
# ╠═5f05ba0a-e917-11ed-00f5-a3a827d01496
# ╟─daa7e0d0-b02f-49d6-878b-a14f5c86784f
