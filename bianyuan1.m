u=imread('C:\Users\c\Desktop\tuxiang.png');
u=rgb2gray(u);   
imwrite(u,'fangzi�Ҷ�ͼ.bmp'); 
f=u;
F=double(f); 
U=double(u); 
[H,W]=size(u); 
uSobel=u; 

for i=2:H-1    
 for j=2:W-1 
     Gx=(U(i+1,j-1)+ U(i+1,j)+F(i+1,j+1))-(U(i-1,j-1)+U(i-1,j)+F(i-1,j+1));    
   Gy=(U(i-1,j+1)+U(i,j+1)+F(i+1,j+1))-(U(i-1,j-1)+U(i,j-1)+F(i+1,j-1));     
uSobel(i,j)=sqrt(Gx^2+Gy^2); 
end     
 end 
figure(1);
imshow(f);
title('ԭͼ'); 
figure(2);
imshow(im2uint8(uSobel));
title('Sobel��Ե���');
