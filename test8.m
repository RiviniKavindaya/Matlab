I=imread('.\images\lenna.png');
subplot(2,3,1);imshow(I);title('original image');

se=strel('line',7,7);
dilate=imdilate(I,se);
subplot(2,3,2);imshow(dilate);title('Dilate image');

erode=imerode(I,se);
subplot(2,3,3);imshow(erode);title('Eroded image');

open=imopen(I,se);
subplot(2,3,4);imshow(open);title('opened image');

close=imclose(I,se);
subplot(2,3,5);imshow(close);title('closed image');
