function J=alphablend(IFG,IBG,a)
if length(size(IFG))==3
    IFG=rgb2gray(IFG);
end

[M,N]=size(IFG);
J=IFG;
for i=1:M
    for j=1:N
        J(i,j)=a*IBG(i,j)+(1-a)*IFG(i,j);
    end
end
