
b = zeros(4*4,1);
b(1) = 1.0;
b(3) = -1.0;
x_gs = gs2d(b, b*0, 100, 4, 4);
x_rbgs = rbgs2d(b, b*0, 100, 4, 4);

A=[-4  1  0  1  1  0  0  0  0  0  0  0  1  0  0  0;
    1 -4  1  0  0  1  0  0  0  0  0  0  0  1  0  0;
    0  1 -4  1  0  0  1  0  0  0  0  0  0  0  1  0;
    1  0  1 -4  0  0  0  1  0  0  0  0  0  0  0  1;
    1  0  0  0 -4  1  0  1  1  0  0  0  0  0  0  0;
    0  1  0  0  1 -4  1  0  0  1  0  0  0  0  0  0;
    0  0  1  0  0  1 -4  1  0  0  1  0  0  0  0  0;
    0  0  0  1  1  0  1 -4  0  0  0  1  0  0  0  0;
    0  0  0  0  1  0  0  0 -4  1  0  1  1  0  0  0;
    0  0  0  0  0  1  0  0  1 -4  1  0  0  1  0  0;
    0  0  0  0  0  0  1  0  0  1 -4  1  0  0  1  0;
    0  0  0  0  0  0  0  1  1  0  1 -4  0  0  0  1;
    1  0  0  0  0  0  0  0  1  0  0  0 -4  1  0  1;
    0  1  0  0  0  0  0  0  0  1  0  0  1 -4  1  0;
    0  0  1  0  0  0  0  0  0  0  1  0  0  1 -4  1;
    0  0  0  1  0  0  0  0  0  0  0  1  1  0  1 -4];

x_gs2 = gauss_seidel(A, b, b*0, 1000);
x_pcg = pcg(A, b);