function I=binarising(I,thresh)
if length(size(I)==3)
    I=rgb2gray(I);
end
[M,N]=size(I);
for x=1:M
    for y=1:N
        a=I(x,y);
        if a<thresh
            a=0;
        else
            a=255;
            end
        end
        I(x,y)=a;
    end
end