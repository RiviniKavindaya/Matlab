function I = autoContrast(I)

if length(size(I))==3
    I=rgb2gray(I);
end
[M,N]=size(I);
alow=min(min(I));
ahigh=max(max(I));
amin=0;
amax=255;
for x=1:M
    for y=1:N
        a=I(x,y);
        a1=amin+(a-alow)*((amax-amin)/(ahigh-alow));
        I(x,y)=a1;
    end
end