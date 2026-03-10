function magnetization(spins)
    return sum(spins) / length(spins)
end

function energy(spins)
    L = size(spins, 1)
    e = 0
    for i in 1:L, j in 1:L
        e -= spins[i, j] * spins[mod1(i + 1, L), j]
        e -= spins[i, j] * spins[i, mod1(j + 1, L)]
    end
    return e
end

"""
    initialize_ising_lattice(L::Int)

L x L の2次元イジング格子の状態を初期化します。

# 引数
- `L::Int`: 格子の一辺のサイズ。

# 戻り値
- `Matrix{Int}`: 各要素がランダムに +1 または -1 で初期化された L x L の行列。
"""
function initialize_ising_lattice(L::Int)
    return rand([-1, 1], L, L)
end
