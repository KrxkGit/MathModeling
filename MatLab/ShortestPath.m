clear
clc

%%定义图节点
s = [1,2,2,1,1,3,3,3,4,6,4,4,5,9,11,12,9,10,11,12,6,8];
t = [2,3,4,4,5,8,9,4,5,7,7,6,6,11,12,6,10,13,13,13,13,9];

G = graph(s,t); %画图
%T = minspantree(G); %最小生成树（更简洁，但也丢失信息）
T = G;
myplot = plot(T,"LineWidth",2);

%%求最短路径
[Ps,ds] = shortestpath(T,1,13,"Method","unweighted"); %起点到终点
highlight(myplot,Ps,"EdgeColor",'red');
[Pm,dm] = shortestpath(T,1,9,"Method","unweighted"); %起点到挖矿
highlight(myplot,Pm,"EdgeColor",'green');
[Pe,de] = shortestpath(T,9,13,"Method","unweighted"); %挖矿到终点
highlight(myplot,Pe,"EdgeColor",'magenta');