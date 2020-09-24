function ret = fourier_real (f, x, zi)
    width = (x(numel(x)) - x(1)) / numel(x);
    for i=1:numel(zi)
        temp = 0;
        for j=1:numel(x)
            temp += f(j)*cos(2*pi*x(j)*zi(i));
            endfor;
        ret(i) = temp*width;
        endfor;
endfunction
