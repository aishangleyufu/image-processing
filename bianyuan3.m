X=imread('C:\Users\c\Desktop\tuxiang.png');  
X=rgb2gray(X);   
figure(1);
imshow(X); 
title('原图'); 
b=size(X); 
X=double(X);  
f=[-1 -1 -1;-1 8 -1;-1 -1 -1;];   %用八领域 
g=[1 2 1;2 4 2;1 2 1;];        %模糊用的算子 
Y=zeros(b); 
for(i=2:b(1)-1)      
  for(j=2:b(2)-1)         
    Y(i,j)=X(i,j)*g(2,2)+X(i+1,j)*g(3,2)+X(i,j+1)*g(2,3)+X(i+1,j+1)*g(3,3)+X(i+1,j-1)*g     (3,1)+X(i-1,j+1)*g(1,3)+X(i-1,j-1)*g(1,1)+X(i-1,j)*g(1,2)+X(i,j-1)*g(2,1);      
    end; 
  end;  
Y=mat2gray(Y/16);  
Z=zeros(b); 
for(i=2:b(1)-1)      
   for(j=2:b(2)-1)        
     Z(i,j)=Y(i,j)*f(2,2)+Y(i+1,j)*f(3,2)+Y(i,j+1)*f(2,3)+Y(i+1,j+1)*f(3,3)+Y(i+1,j-1)*f     (3,1)+Y(i-1,j+1)*f(1,3)+Y(i-1,j-1)*f(1,1)+Y(i-1,j)*f(1,2)+Y(i,j-1)*f(2,1);      
   end; 
end; 
figure(2);
imshow(Z); 
title('laplace边缘检测');
