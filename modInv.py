def mod_inv(a:int,b:int) -> int:
    v = [b,a]
    l = 2
    while v[l-1] != 0:
        v.append(v[l-2] % v[l-1])
        l += 1
    if v[l-2] != 1:
        print(f"Cannot perform a modular inverse: gcd = {v[l-2]}")
        return None
    else:
        for i in range(l-2,0,-1):
            v[i] = (1 - v[i+1]*v[i-1]) // v[i]
        return (v[1] % b)
