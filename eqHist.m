function I=eqHist(H,I)
l=length(H);
k=256;

if length(size(I))==3
    I=rgb2gray(I);
end
[M,N]=size(I);

for i=1:M
    for j=1:N
        a=I(i,j);
        b=floor((H(a)*(k-1))/(M*N));
        I(i,j)=b;
    end
end
