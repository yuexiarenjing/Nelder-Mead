function fx = lv_eq( x)
%  t = [10,8, 14, 17, 15, 22, 19, 27, 35, 40];
t = [ 9, 12, 11, 4, 7, 2, 5, 8, 5, 7, 1, 6, 1, 9, 4, 1, 3, 3, 6, 1, 11, 33, 7, 91, 2, 1 ];
 n = numel(t);
s1 = 0; s2 = 0;
for i = 1 : n
    s1 = s1 + log(x(1) + x(2) * i);
    s2 = s2 + log(x(1) + x(2) * i + t(i));
end
F(1) = (n / x(3)) + s1 - s2;
F(1) = F(1) ^ 2;

s1 = 0; s2 = 0;
for i = 1 : n
    s1 = s1 + 1 / (x(1) + x(2) * i);
    s2 = s2 + 1 / (x(1) + x(2) * i + t(i));
end
s1 = x(3) * s1;
s2 = (x(3) + 1) * s2;
F(2) = s1 - s2;
F(2) = F(2) ^ 2;

s1 = 0; s2 = 0;
for i = 1 : n
    s1 = s1 + i / (x(1) + x(2) * i);
    s2 = s2 + i / (x(1) + x(2) * i + t(i));
end
s1 = x(3) * s1;
s2 = (x(3) + 1) * s2;
F(3) = s1 - s2;
F(3) = F(3) ^ 2;

fx = F(1) + F(2) + F(3);
end

