[I,map]=imread('Q:\8.jpg');
[M,N]=size(I);
F=fft2(I);%���и���Ҷ�任
fftshift(F); %���Ҷ�ͼ��Ķ�ά������Frourier�任����Ƶ�ʳɷ��Ƶ�Ƶ�׵�����
Dcut=100;
D0=30; %����D0
for u=1:M
for v=1:N
D(u,v)=sqrt(u^2+v^2);
BUTTERH(u,v)=1/(1+(sqrt(2)-1)*(D0/Dcut)^2); %������˹�˲����ĺ���
end
end
BUTTERG=BUTTERH.*F;
BUTTERfiltered=ifft2(BUTTERG); %���ж�ά����ɢ��Fourier�任��ȡ������ʵ��ת��Ϊ�޷���8λ����
subplot(121)
imshow(I);
title('Դͼ')
subplot(122)
imshow(BUTTERfiltered,map)
title('������˹��ͨ�˲����ͼ��')
