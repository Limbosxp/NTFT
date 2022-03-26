clc;clear;
%% 参数
% 导入数据
load DemoData.mat
tt = (0:length(sig)-1)/fs;
%% NTFT变换
% 设置变换范围
Frqs = -25:fs/length(sig):25;
% 设置窗口宽度
win_len = 20;
coefs = ntft(sig,Frqs,win_len,fs,"Hanning","F");
% coefs = ntft(sig);
figure(1)
pcolor(tt,Frqs,abs(coefs))
shading interp;
colormap('jet');
colorbar
title('NTFT时频谱')
xlabel('Time')
ylabel('频率f / (Hz)')