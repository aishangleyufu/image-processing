[I,map]=imread('C:\Users\c\Desktop\tuxiang.png');
I=rgb2gray(I);   
[H,W]=size(I);
M=double(I);
J=M;
for i=2:H-1
for j=2:W-1
J(i,j)=abs(M(i-1,j+1)-M(i-1,j-1)+M(i,j+1)-M(i,j-1)+M(i+1,j+1)-M(i+1,j-1))+abs(M(i+1,j-1)-M(i-1,j-1)+M(i+1,j)-M(i-1,j)+M(i+1,j+1)-M(i-1,j+1));
end;
end;
figure(1);imshow(I);title('原图');
figure(2);imshow(uint8(J));title('Prewitt处理后');
