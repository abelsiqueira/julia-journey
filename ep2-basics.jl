### A Pluto.jl notebook ###
# v0.19.24

using Markdown
using InteractiveUtils

# ╔═╡ 8cc82a78-dd36-11ed-2ed1-758f23cbd94f
3 ^ 4

# ╔═╡ def6b4ad-ef24-44d4-a117-a364d1a4c125
exp(sin(pi * 4 / 3))

# ╔═╡ 5b2e3d62-5203-4a36-825f-99c32d295b8c
3

# ╔═╡ 0b041d95-5a3c-48cb-b5e4-9a438ad780f3
3.0

# ╔═╡ 8f4aef42-661c-44b6-8e8e-fa6484c4d87e
"abelsiqueira"

# ╔═╡ 1b086ec6-e83d-4eb6-b8ff-04f37d1d5ad7
:abel

# ╔═╡ 8475b689-6841-4609-bbce-94b79bd8b58b
false, true

# ╔═╡ f3a0b996-8b3a-487e-978a-5fa5d63614b5
[3, 4, 5]

# ╔═╡ 13d5d7c4-b18a-4de2-8cca-26a353c39f43
A = [1 2 3;
	4 5 6.0
]

# ╔═╡ 4384f719-4e2f-4ab4-9847-6a99d293a0b0
A'

# ╔═╡ 2a6be3c8-ac00-45cf-b3d2-08460bca8685
for x in [1, 2, 3]
	print(x)
	print(" ")
	println(x ^ 2)
end

# ╔═╡ c8863882-85d0-4053-b4c2-7dd0aebc81bd
x = 0

# ╔═╡ 278a3afd-e45f-40f0-87be-afeceb1e7d5b
if x > 0
	println("x is greater than zero")
elseif x == 0
	println("x is 0")
else
	println("x is not")
end

# ╔═╡ 4ff7b01b-88da-46a2-b927-10914cb634d7
function my_sqrt(a)
	x = 1.0
	while abs(x ^ 2 - a) > 1e-6
		x = (a / x + x) / 2
	end
end

# ╔═╡ 687eebca-7403-40e9-86dc-1f7d65869dd1
my_sqrt(2), my_sqrt(9)

# ╔═╡ 15cca799-76c9-4e52-bf16-60b9224ce927
f(x) = x^2 - 5x .+ 6

# ╔═╡ 7ee7f893-de64-40a3-a91b-5e2fae1718d1
f(1)

# ╔═╡ 39575cb2-9e0b-4154-bbf3-f753da5c806d
v * 2

# ╔═╡ dc0c177e-9618-40db-8be3-d9bf4a1bd90e
A * v

# ╔═╡ e29a8f22-8ac2-433f-a22d-a71747a2a7a1
v .+ 2

# ╔═╡ 18947cfe-8ad2-4d8f-96a8-1992b27c2c9f
f.( v )

# ╔═╡ 1f5698ab-0087-4259-b8dd-03a48fda2bee
B = [2 3; 4 5]

# ╔═╡ 962431a3-41e2-4ed5-b8b9-0fff8a5bd008
f(B)

# ╔═╡ 10c18822-7362-4418-bcf6-adb241a6bdb6
Dict(1 => "a", 10 => "b", 5 => 5)

# ╔═╡ 47bec29e-620e-4f69-91da-fb43d3ade14f
[1, true, "a"]

# ╔═╡ e57bf88a-dba6-44dc-bb70-360cb4a98b85
squares = [i ^ 2 for i in 1:5]

# ╔═╡ b9e90dd6-235e-48a0-83b8-a7bbcaf2e6ee
Dict(i => i^2 for i = 1:10)

# ╔═╡ d26e4302-87de-428e-999b-8bbe45fa31d7
squares[1]

# ╔═╡ aa24c1fc-8666-4221-96cd-15346cd1b181
squares[end]

# ╔═╡ 4ed3cc94-3a43-40ad-ab73-cd06664e33b2
squares[1:2:5]

# ╔═╡ e3b7e8b6-d391-43ca-90b1-cf73a2199d56
squares[3:end]

# ╔═╡ a14fe712-c666-4b8e-9808-d9f962e996e6
# ╠═╡ disabled = true
#=╠═╡
v = [3, 4, 5]
  ╠═╡ =#

# ╔═╡ bca188a8-0328-4048-a4dd-8cd9f617efc4
v = [0, 1, 2, 3, 4, 5]

# ╔═╡ Cell order:
# ╠═8cc82a78-dd36-11ed-2ed1-758f23cbd94f
# ╠═def6b4ad-ef24-44d4-a117-a364d1a4c125
# ╠═5b2e3d62-5203-4a36-825f-99c32d295b8c
# ╠═0b041d95-5a3c-48cb-b5e4-9a438ad780f3
# ╠═8f4aef42-661c-44b6-8e8e-fa6484c4d87e
# ╠═1b086ec6-e83d-4eb6-b8ff-04f37d1d5ad7
# ╠═8475b689-6841-4609-bbce-94b79bd8b58b
# ╠═f3a0b996-8b3a-487e-978a-5fa5d63614b5
# ╠═a14fe712-c666-4b8e-9808-d9f962e996e6
# ╠═39575cb2-9e0b-4154-bbf3-f753da5c806d
# ╠═13d5d7c4-b18a-4de2-8cca-26a353c39f43
# ╠═4384f719-4e2f-4ab4-9847-6a99d293a0b0
# ╠═dc0c177e-9618-40db-8be3-d9bf4a1bd90e
# ╠═2a6be3c8-ac00-45cf-b3d2-08460bca8685
# ╠═c8863882-85d0-4053-b4c2-7dd0aebc81bd
# ╠═278a3afd-e45f-40f0-87be-afeceb1e7d5b
# ╠═4ff7b01b-88da-46a2-b927-10914cb634d7
# ╠═687eebca-7403-40e9-86dc-1f7d65869dd1
# ╠═15cca799-76c9-4e52-bf16-60b9224ce927
# ╠═7ee7f893-de64-40a3-a91b-5e2fae1718d1
# ╠═bca188a8-0328-4048-a4dd-8cd9f617efc4
# ╠═e29a8f22-8ac2-433f-a22d-a71747a2a7a1
# ╠═18947cfe-8ad2-4d8f-96a8-1992b27c2c9f
# ╠═1f5698ab-0087-4259-b8dd-03a48fda2bee
# ╠═962431a3-41e2-4ed5-b8b9-0fff8a5bd008
# ╠═10c18822-7362-4418-bcf6-adb241a6bdb6
# ╠═47bec29e-620e-4f69-91da-fb43d3ade14f
# ╠═e57bf88a-dba6-44dc-bb70-360cb4a98b85
# ╠═b9e90dd6-235e-48a0-83b8-a7bbcaf2e6ee
# ╠═d26e4302-87de-428e-999b-8bbe45fa31d7
# ╠═aa24c1fc-8666-4221-96cd-15346cd1b181
# ╠═4ed3cc94-3a43-40ad-ab73-cd06664e33b2
# ╠═e3b7e8b6-d391-43ca-90b1-cf73a2199d56
