% AE 321 Homework 5 problem 2

% A weight is hung off of a bar made of an elastic and viscoelastic
% material, find the length at various times.
A = .02; %m^2
weight = 10*9.81; %kg
E0 = 2e6;
E1 = 4e6;
tau = 200;
Eelastic = 4*10^6;

time = 1000; %variable time

sigma = weight/A;

strain_visc = sigma/E0 + sigma/E1*(1 - exp(-time/tau));
strain_elas = 1/Eelastic * sigma;

L2_visc = sqrt(strain_visc*2 + 1)*.5;
L2_elas = sqrt(strain_elas*2 + 1)*.5;

length_new = L2_visc + L2_elas

