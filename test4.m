I=imread('.\images\Lena.png');
if length(size(I))==3
    I=rgb2gray(I);
end
p=edge(I,'prewitt');
subplot(1,2,1);imshow(I);hold on;subplot(1,2,2);imshow(p);