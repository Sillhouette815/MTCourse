% 函数功能：非零矩阵的满秩分解
% 输入：非零矩阵
% 输出：B 列满秩矩阵;C 行满秩矩阵
% 作者：刘然
% 历史：2023.11.8
function [B,C]=func_MyFR(A)
    RA=rref(A);
    [m,n]=size(A);
    %在不确定矩阵的秩之前，给定空向量
    B_temp=[];
    C_temp=[];
    r=0;
    for i=1:m
        %定义flag，用于判断矩阵的列是否为【行最简矩阵】的单位矩阵的列，
        %若是，则可以直接得到矩阵分解B的列
        flag=1;
            for j=1:n
                if RA(i,j)==1
                    %以下检测Hermite矩阵中1元素的同列其他元素是否为0，若不为0，则该列不为单位矩阵的列
                    if norm(RA([1:i-1,i+1:m],j))~=0
                        flag=0;
                        break;
                    end
                    %反之，若该列为Hermite矩阵中的单位矩阵的列，
                    %则得到满秩分解的列满秩矩阵的第j(i=1,2,...,r)列和行满秩矩阵的第i行
                    if flag==1
                        B_temp=[B_temp,A(:,j)];
                        C_temp=[C_temp;RA(i,:)];
                    end
                end
            end
    end
    %返回列满秩矩阵和行满秩矩阵
    B=B_temp;
    C=C_temp;
end

