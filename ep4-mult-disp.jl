### A Pluto.jl notebook ###
# v0.19.24

using Markdown
using InteractiveUtils

# ╔═╡ 4a84f0fa-90a3-4352-89db-16cfc00667f2
begin
	function bad_quadratic_roots(a, b, c)
		Δ = b^2 - 4a * c

		if Δ ≥ 0
			r = √Δ
			return (-b + r) / 2a, (-b - r) / 2a
		else
			r = √Complex(Δ)
			return (-b + r) / 2a, (-b - r) / 2a
		end
	end
end

# ╔═╡ 0658995e-9216-4614-a85a-ecdf2f318cfc
begin
	#² = \\^2[TAB]
	"""
		ax² + bx + c = 0

	Δ = b² - 4ac
	x = (-b ± √Δ) / 2a

	"""
	function quadratic_roots(a :: Real, b :: Real, c :: Real)
		Δ = b^2 - 4a * c

		if Δ ≥ 0
			r = √Δ
			return (-b + r) / 2a, (-b - r) / 2a
		else
			error("Not real")
		end
	end

	function quadratic_roots(a, b, c)
		Δ = b^2 - 4a * c
		r = √Δ
		return (-b + r) / 2a, (-b - r) / 2a
	end
end

# ╔═╡ 1fc11f70-13b9-4542-9a46-483828fd363f
quadratic_roots(1, -5, 6)

# ╔═╡ 65e46af7-46d4-46c2-aeef-254c7b472386
quadratic_roots(1, 4, 4)

# ╔═╡ 97de50c9-0ec0-476e-901d-a007414a2128
quadratic_roots(Complex(1), -5, 6)

# ╔═╡ ca25d0a1-402c-41f2-b89a-6a2a1b7bc0fc
quadratic_roots(1, 0, 1)

# ╔═╡ e651acb7-013d-4b9c-a602-5ba29e4d591f
quadratic_roots(Complex(1), 0, 1)

# ╔═╡ 1067ffba-5b05-4539-b1f1-d6900a86ba2c
@code_warntype bad_quadratic_roots(1, -5, 6)

# ╔═╡ 61e20b8f-2510-430f-8b41-15c833d48ab3
@code_warntype quadratic_roots(Complex(1), -5, 6)

# ╔═╡ Cell order:
# ╠═4a84f0fa-90a3-4352-89db-16cfc00667f2
# ╠═0658995e-9216-4614-a85a-ecdf2f318cfc
# ╠═1fc11f70-13b9-4542-9a46-483828fd363f
# ╠═65e46af7-46d4-46c2-aeef-254c7b472386
# ╠═97de50c9-0ec0-476e-901d-a007414a2128
# ╠═ca25d0a1-402c-41f2-b89a-6a2a1b7bc0fc
# ╠═e651acb7-013d-4b9c-a602-5ba29e4d591f
# ╠═1067ffba-5b05-4539-b1f1-d6900a86ba2c
# ╠═61e20b8f-2510-430f-8b41-15c833d48ab3
