function I=contrast(I,C)

if length(size(I)==3)
    I=rgb2gray(I);
end
[M,N]=size(I);
for x=1:M
    for y=1:N
        b=I(x,y)*C;
        if b>255
            b=255;
        else if b<0
                b=0;
            end
        end
        I(x,y)=b;
    end
end
