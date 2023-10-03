function mod_inv(a,b)
    v = [a;b];
    l = 2;
    while v[l] != 0
        push!(v,v[l-1] % v[l]);
        l += 1;
    end
    if v[l-1] != 1
        println("Cannot perform modular inverse : gcd = $(v[l-1])")
        return NaN
    else
        for i in (l-2):-1:2
            v[i] = (1 - v[i-1]*v[i+1])/v[i];
        end
        y = v[2] % b;
    end
end
