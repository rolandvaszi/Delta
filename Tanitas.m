function [w, y] = Tanitas(w, x, y1)
alpha = 0.9; %tanitasi rata
epoch = 20; 
for k = 1:epoch
    transponalt = x(k, :)'; % transzponaltat szamolunk
    d = y1(k); % 
    sum = w*transponalt; % osszegzes
    y = 1/(1+exp(-sum)); % osszeg aktivalasa szigmoiddal
    hiba = d - y; % hiba kiszamitasa
    delta = y*(1-y)*hiba; % delta ertek meghatarozasa
    nw = alpha*delta*transponalt; % uj sulyzo mertek meghatarozas
    for i = 1:20
        w(i) = w(i) + nw(i); % sulyzok kiszamolasa a hiba alapjan
    end
end
end