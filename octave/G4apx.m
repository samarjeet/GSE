function [y] = G4apx(qx,qy,qz);

    a = 0.763007592378452;
    b = 1.07032574095488;
    q = sqrt(qx.^2+qy.^2+qz.^2);
    p = (-126*a*(b-1) + 126*b-125)/163296;
    y = q.^-2 + p*q.^4;
    
end

