function [r,c] = fourier_cmpx (f, x, zi)
    width = (x(numel(x)) - x(1)) / numel(x);
    for i=1:numel(zi)
        rtemp = 0;
        ctemp = 0;
        for j=1:numel(x)
            temp = 2*pi*x(j)*zi(i);
            rtemp += f(j)*cos(temp);
            ctemp += f(j)*sin(temp);
            endfor;
        r(i) = rtemp*width;
        c(i) = ctemp*width;
        endfor;
endfunction