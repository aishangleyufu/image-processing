clc;
close all
clear all
I=imread('C:\Users\c\Desktop\tuxiang.png');
subplot(2,2,1)
imshow(I);title('原图')
BW2 = edge(I, 'sobel',[] ,'horizontal');
subplot(2,2,2)
imshow(BW2),title('用sobel算子为水平方向')
BW3 = edge(I, 'sobel',[],  'vertical' );
subplot(2,2,3)
imshow(BW3),title('用sobel算子为垂直方向 ')
BW4= edge(I, 'sobel',[],'both'  );
subplot(2,2,4)
imshow(BW4),title('用sobel算子为水平和垂直方向 ')

