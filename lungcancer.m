T = load('survey lung cancer1.csv');
%preprocessing the data and splitting training and test data
Dtr = T(:,1:278);
Dte = T(:,279:309);
Xtr = zeros(14,278);
m = zeros(1,14);
v = zeros(1,14);
for i = 1:14
   xi = Dtr(i,:);
   m(i) = mean(xi);
   v(i) = sqrt(var(xi));
   Xtr(i,:) = (xi - m(i))/v(i);
end
Xte = zeros(14,31);
for i = 1:14
   xi = Dte(i,:);
   Xte(i,:) = (xi - m(i))/v(i);
end
ytr = Dtr(15,:);
yte = Dte(15,:);
%training the model
w0 = zeros(1,15);
Dtr = [Xtr;ytr];
mu = 0;
K = 10;
ws = grad_d_lung('f_lung','g_lung',w0',Dtr, mu, K);
ws = ws';
%checking the accuracy of the model training model
indp = find(ytr>0);
indn = find(ytr<0);
E =zeros(2,length(Xtr));
for i = 1:length(Xtr)
   xi = [Xtr(:,i);1];
   % ti = sign(ws'*xi);
   eval(['ti = sign(ws','*xi);']);
   ind = -ti/2+1.5;
   E(ind,i)=1;
end
E1 = E(:,indp);
c1 = sum(E1')';
E2 = E(:,indn);
c2 = sum(E2')';
C1 = [c1 c2];
eval(['Confusion_Matrix_Train_Data','=[c1 c2]'])
eval(['accuracy','=(C1(1)+C1(4))/(C1(1)+C1(2)+C1(3)+C1(4))'])
%checking the accuracy of the model test model
indp = find(yte>0);
indn = find(yte<0);
M =zeros(2,length(Xte));
for i = 1:length(Xte)
   xi = [Xte(:,i);1];
   % ti = sign(ws'*xi);
   eval(['ti = sign(ws','*xi);']);
   ind = -ti/2+1.5;
   M(ind,i)=1;
end
M1 = M(:,indp);
c3 = sum(M1')';
M2 = M(:,indn);
c4 = sum(M2')';
C2 = [c3 c4];
eval(['Confusion_Matrix_Test_Data','=[c3 c4]'])
eval(['accuracy','=(C2(1)+C2(4))/(C2(1)+C2(2)+C2(3)+C2(4))'])


