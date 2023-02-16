 I1=imread('.\images\Lena.png');
 h1=histrogram(I1);
 H1=cumHist(h1);
 I2=eqHist(H1,I1);
 h2=histrogram(I2);
 H2=cumHist(h2);
 subplot(1,4,1);imshow(I1);hold on;subplot(1,4,2);bar(H1);hold on;subplot(1,4,3);imshow(I2);hold on;subplot(1,4,4);bar(H2)