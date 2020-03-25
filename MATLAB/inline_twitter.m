clear
close all
im = imread('indian2.png');
N = 300;
im = squeeze(im(round(end/2)-N+1:end/2 +N,round(end/2)-N+1:end/2 +N,1));

for n = 1 : 100
    im0 = zeros(size(im));
    im0( 1+mod(n,2):2:end,: ) = im(1+mod(n,2):2:end,:);
    imshow(im0)
end