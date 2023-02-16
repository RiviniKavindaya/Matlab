function I=invert(I)
if length(size(I))==3
    I=rgb2gray(I);
end
[M,N]=size(I);
amax=255;
for x=1:M
    for y=1:N
        b=amax-I(x,y)
        
        I(x,y)=b;
    end
end