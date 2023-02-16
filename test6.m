IBG=imread('.\images\sea1.jpg');
IFG=imread('.\images\boat.png');
a=0.8;
J=alphablend(IFG,IBG,a);
subplot(1,3,1);imshow(IBG);hold on;subplot(1,3,2);imshow(IFG);hold on;subplot(1,3,3);imshow(J);