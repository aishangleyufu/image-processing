clc;
close all
clear all
I=imread('C:\Users\c\Desktop\tuxiang.png');
subplot(2,2,1)
imshow(I);title('ԭͼ')
BW2 = edge(I, 'sobel',[] ,'horizontal');
subplot(2,2,2)
imshow(BW2),title('��sobel����Ϊˮƽ����')
BW3 = edge(I, 'sobel',[],  'vertical' );
subplot(2,2,3)
imshow(BW3),title('��sobel����Ϊ��ֱ���� ')
BW4= edge(I, 'sobel',[],'both'  );
subplot(2,2,4)
imshow(BW4),title('��sobel����Ϊˮƽ�ʹ�ֱ���� ')

