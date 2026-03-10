include("ising_physics.jl")

# シミュレーションのパラメータ
L = 10  # 格子サイズ

# 格子の初期化
spins = initialize_ising_lattice(L)

println("Initial lattice:")
display(spins)

# エネルギーと磁化の計算
e = energy(spins)
m = magnetization(spins)

println("Initial energy: ", e)
println("Initial magnetization: ", m)
