%应用pinv函数求解线性方程组的解，然后进行简单验证
clear;clc;
N=50;

[ComA1,Comb1]=func_GenerateLinearEquation("Com");
[ComA2,Comb2]=func_GenerateLinearEquation("Com");
Comx1=pinv(ComA1)*Comb1;
Comx2=pinv(ComA2)*Comb2;
func_ShowResult(ComA1,Comx1,Comb1,"Com");
Y1=func_Check(ComA1,Comx1,N);
disp(['验证正确比例',num2str(Y1),'/',num2str(N)]);
func_ShowResult(ComA2,Comx2,Comb2,"Com");
Y2=func_Check(ComA2,Comx2,N);
disp(['验证正确比例',num2str(Y2),'/',num2str(N)]);


[ConA1,Conb1]=func_GenerateLinearEquation("Con");
[ConA2,Conb2]=func_GenerateLinearEquation("Con");
Conx1=pinv(ConA1)*Conb1;
Conx2=pinv(ConA2)*Conb2;
func_ShowResult(ConA1,Conx1,Conb1,"Con");
Y11=func_Check(ConA1,Conx1,N);
disp(['验证正确比例',num2str(Y11),'/',num2str(N)]);
func_ShowResult(ConA2,Conx2,Conb2,"Con");
Y22=func_Check(ConA2,Conx2,N);
disp(['验证正确比例',num2str(Y22),'/',num2str(N)]);

%%应用满秩分解简单计算
A=[2 1 0 2;0 0 1 2;2 1 1 4]
[F,G]=func_MyFR(A);
F_temp=F'*F;
G_temp=G*G';
A_inv=87.*(G'*G_temp^(-1)*F_temp^(-1)*F')

