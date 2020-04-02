img = zeros(2, 10);
for i = 1:2:10 % 10-10 kep kinyerese mobiltelefonok es kompok
    jpgFilename = strcat('cell', num2str(i), '.jpg');
    img(i) = imread(jpgFilename);
    jpgFilename = strcat('ferry', num2str(i), '.jpg');
    img(i + 1) = imread(jpgFilename);
end
y1 = img(1); % vart erdemeny szetvalasztas celjabol
w = zeros(10); 
for i = 1:10 % sulyzok inicializalasa
    w(i) = rand(3);
end
for i = 1:100 % Atadjuk a kepeket es a sulyzokat a tanito algoritmusnak  
    [w, y] = Tanitas(w, img, y1);
end

y
