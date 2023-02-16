I=imread('.\images\japan.png');
if length(size(I))==3
    I=rgb2gray(I);
end
p1=edge(I,'Prewitt');
p2=edge(I,'Sobel');
p3=edge(I,'Roberts');
p4=edge(I,'canny');
p5=edge(I,'log');

subplot(3,2,1);imshow(I);hold on;subplot(3,2,2);imshow(p1);hold on;subplot(3,2,3);imshow(p2);hold on;subplot(3,2,4);imshow(p3);hold on;subplot(3,2,5);imshow(p4);hold on;subplot(3,2,6);imshow(p5)