% 函数功能：检测线性方程组的解是否为较小、以至于极小范数解。
% 输入：A：系数矩阵；x：解向量；N：检测次数
% 输出：Y：成功比例
% 作者：刘然
% 历史：2023.12.7
function Y=func_Check(A,x,N)
    r=length(x);
    i=0;
    for k=1:N
        y=10.*rand(r,1); 
        x_all=x+(eye(r)-pinv(A)*A)*y;
        check=norm(x_all)-norm(x);
        if check>=0||abs(check)<1e-13
            i=i+1;
        end
    end
    Y=i;
end