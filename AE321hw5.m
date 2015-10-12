m7075.data = csvread('2024.csv',27);
m1045.data = csvread('1045.csv',27);

m7075.time = m7075.data(:,1);
m7075.extension = m7075.data(:,2);
m7075.load = m7075.data(:,3);
m7075.strain = m7075.data(:,4);
m7075.area = 40.1515;  %mm

m1045.time = m1045.data(:,1);
m1045.extension = m1045.data(:,2);
m1045.load = m1045.data(:,3);
m1045.strain = m1045.data(:,4);
m1045.area = 39.9272; %mm

figure(1);
subplot(2,1,1); plot(m7075.strain,m7075.load);xlabel('strain');ylabel('stress');title('7075');axis([0 .21 0 21000]);
subplot(2,1,2); plot(m1045.strain,m1045.load);xlabel('strain');ylabel('stress');title('1045');axis([0 .18 0 40000]);

max(m1045.load); %UTC
max(m7075.load); %UTC

x = m7075.strain(9:24);
y = m7075.load(9:24);
x\y; %E

q = m1045.strain(1:78);
r = m1045.load(1:78);
q\r; %E
