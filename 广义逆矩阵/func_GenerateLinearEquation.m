% 函数功能：生成线性方程组
% 输入：Type：线性方程组的类型，Com为相容，Con为矛盾
% 输出：矩阵A，向量b，形如Ax=b的方程组
% 作者：刘然
% 历史：2023.12.7
function    [A,b]=func_GenerateLinearEquation(Type)


   while 1
        R=ceil(10*rand);
        C=ceil(10*rand);
        A=ceil(100.*rand(R,C));
        b=ceil(10.*rand(R,1));
        test=A*pinv(A)*b-b;
        if Type=="Com"
        if func_Iszero(test,max(size(A))*eps(norm(A)))==0
            break;
        else
            continue;
        end
        end
        if Type=="Con"
        if func_Iszero(test, max(size(A))*eps(norm(A)))~=0
            break;
        else
            continue;
        end
        end
   end
end