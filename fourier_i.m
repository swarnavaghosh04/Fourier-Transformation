# Imaginary Fourier Transform
function ret = fourier_i (f, x, zi)
    width = (x(numel(x)) - x(1)) / numel(x);
    for i=1:numel(zi)
        temp = 0;
        for j=1:numel(x)
            temp += f(j)*sin(2*pi*x(j)*zi(i));
            endfor;
        ret(i) = temp*width;
        endfor;
endfunction
