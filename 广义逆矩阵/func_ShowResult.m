% 函数功能：显示线性方程组的结构
% 历史：2023.12.7
function func_ShowResult(A,x,b,Type)
if Type=="Com"
disp("相容线性方程组及其极小范数解为：")
end
if Type=="Con"
disp("矛盾线性方程组及其极小范数最小二乘解为：")
end
A
x
b
end