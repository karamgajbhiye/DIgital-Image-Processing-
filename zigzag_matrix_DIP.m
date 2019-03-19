 

Input=[1 2 3 4; 5 6 7 8 ;9 10 11 12; 13 14 15 16];%%giving input matrix
disp(Input);
out=toZigzag(Input);
output=transpose(out);%%output matrix
disp(output)


% function to transform a matrix to the zigzag format
function y=toZigzag(x)

[row,col]=size(x);%%calculating size of matrix

if row~=col
disp('toZigzag() fails!! Must be a square matrix!!');%%checking whether given matrix is square or not.
return;
end

y=zeros(row*col,1);%%taking a dummy matrix of zeros
count=1;
for i=1:row
if mod(i,2)==0
for j=i:-1:1
y(count)=x(j,i+1-j);
count=count+1;
end
else
for j=1:i
y(count)=x(j,i+1-j);
count=count+1;
end
end
end

if mod(row,2)==0
flip=1;
else
flip=0;
end

for i=row+1:2*row-1
if mod(flip,2)==0
for j=row:-1:i+1-row
y(count)=x(j,i+1-j);
count=count+1;
end
else
for j=row:-1:i+1-row
y(count)=x(i+1-j,j);
count=count+1;
end
end
flip=flip+1;
end
end
