close all;
clear all;

im = imread('Matriculas/matricula.jpg');
imgray = rgb2gray(im);
imbin = imbinarize(imgray);  %im2bw(imgray);
im = edge(imgray, 'prewitt');

Iprops=regionprops(im,'BoundingBox','Area', 'Image');
area = Iprops.Area;
count = numel(Iprops);
maxa= area;
boundingBox = Iprops.BoundingBox;
for i=1:count
   if maxa<Iprops(i).Area
       maxa=Iprops(i).Area;
       boundingBox=Iprops(i).BoundingBox;
   end
end    

im = imcrop(imbin, boundingBox);
im = bwareaopen(~im, 500); 

 [h, w] = size(im);

imshow(im);

Iprops=regionprops(im,'BoundingBox','Area', 'Image'); 
count = numel(Iprops);
noPlaca=[]; 

for i=1:count
   ow = length(Iprops(i).Image(1,:));
   oh = length(Iprops(i).Image(:,1));
   if ow<(h/2) & oh>(h/3)
       letra=Leitura_letras(Iprops(i).Image);
       noPlaca=[noPlaca letra] 
   end
end