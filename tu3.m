[I,map]=imread('Q:\8.jpg');
[M,N]=size(I);
F=fft2(I);%进行傅里叶变换
fftshift(F); %将灰度图像的二维不连续Frourier变换的零频率成分移到频谱的中心
Dcut=100;
D0=30; %定义D0
for u=1:M
for v=1:N
D(u,v)=sqrt(u^2+v^2);
BUTTERH(u,v)=1/(1+(sqrt(2)-1)*(D0/Dcut)^2); %巴特罗斯滤波器的函数
end
end
BUTTERG=BUTTERH.*F;
BUTTERfiltered=ifft2(BUTTERG); %进行二维反离散的Fourier变换后，取复数的实部转化为无符号8位整数
subplot(121)
imshow(I);
title('源图')
subplot(122)
imshow(BUTTERfiltered,map)
title('巴特罗斯低通滤波后的图像')
