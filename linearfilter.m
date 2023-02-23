function I=linearfilter(I,F)
if(length(size(I))==3)
    I=rgb2gray(I);
end
[M,N]=size(I);
[k,l]=size(F);
K=(k-1)/2;
L=(l-1)/2;
J = I ;%obtain a copy of I
for x=(K+1):(M-K)
    for y=(L+1):(N-L)
        s=0;
        for i=-K:K
            for j=-L:L
                p=J(x+i,y+i)*F(K+i+1,L+j+1);
                s=s+uint32(p);
            end
        end
        q=s/(K*L);
        I(x,y)=q;
    end
end

