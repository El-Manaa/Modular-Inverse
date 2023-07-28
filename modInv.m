function y = modInv(a,b)
    v = [b a];
    l = 2;
    while v(l) != 0
        v = [v mod(v(l-1),v(l))];
        l = l + 1;
    endwhile
    if v(l-1) != 1
        printf("Cannot perform a modular inverse: gcd = %d\n",v(l-1));
        y = nan;
    else
        for i = (l-2):-1:2;
            v(i) = (1 - v(i+1)*v(i-1)) / v(i);
        endfor
        y = mod(v(2),b);
    endif
endfunction
