% 函数功能：检测矩阵在一定容限下是否为零矩阵
% 输入：矩阵或向量,Tol为容差
% 输出：矩阵或向量
% 作者：刘然
% 历史：2023.11.8
function B=func_Iszero(B,Tol)
[r,c]=size(B);
for i=1:r
    for j=1:c
        if abs(B(i,j))<Tol
            B(i,j)=0;
        end
    end
end
end