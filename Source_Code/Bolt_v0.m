%% simple tool to obtain force-elongation of a single bolt for steel joint design
% Ashkan Shahbazian
clc; clear ; close all;
%% Inputs
% bolt
f0=0; % N | pretension load
a2=0.9;
fub=1000; % N/mm2 | Nominal value of the the ultimate tensile strength
As=459; % mm2 | effective tensile area of the bolt
E=210000; %N/mm2 | Elastic modulus
% bolt head
h_bolthead=17; % mm | thickness of the bolt head
% nut
h_nut=23.8; % mm | thickness of the nut
% clampe length
Sigma_t=48; % mm | clamp length
%% Outputs
% stiffness
Lb=Sigma_t+(h_bolthead+h_nut)*0.5; % mm
k10=1.6*As*E/Lb; %N/mm
k0=1000*k10;
k1=k10;
k2=0.1*k10;
k3=0.02*k10;
K_p_1=[k0 k1 k2 k3];
K_p_0=[k1 k2 k3];

% force
Ft=fub*As; %N
f1=0.85*Ft; %N
f2=a2*Ft; %N

% ultimate deflection
delta_0=0;
delta_1=f1/k1;
delta_2=(f2-f1)/k2+delta_1;
delta_u=0.1*Sigma_t;

delta_p_1=[0 delta_0 delta_1 delta_2 delta_u];
delta_p_0=[0 delta_1 delta_2 delta_u];
% ultimate force
fu=k3*(delta_u-delta_2)+f2;

f_p_1=[0 f0 f1 f2 fu];
f_p_0=[0 f1 f2 fu];

% summary
if f0==0;
   delta=delta_p_0;
   K=K_p_0/1000;
   F=f_p_0/1000;
else
   delta=delta_p_1;
   K=K_p_1/1000;
   F=f_p_1/1000;
end

plot (delta, F, '-ok',...
    'LineWidth',2,...
    'MarkerSize',6,...
    'MarkerEdgeColor','k',...
    'MarkerFaceColor',[0,0,0]);
grid on; box on; axis square;
title('Single bolt behaviour');
xlabel('\delta (mm)');
ylabel('Force (kN)');
final=[delta' F'];
text(max(delta)/2, max(F)/2, ['', num2str(final)],'BackgroundColor',[.8 0.7 .8],'Margin',1); % display


