I=imread('.\images\Lena.png');
 J=binarising(I,128);
 subplot(1,3,1);imshow(I);hold on;subplot(1,3,2);imshow(J);subplot(1,3,3);bar(J);