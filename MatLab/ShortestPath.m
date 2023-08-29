clear
clc

s = [1,2,2,1,1,3,3,3,4,6,4,4,5,9,11,12,9,10,11,12,6,8];
t = [2,3,4,4,5,8,9,4,5,7,7,6,6,11,12,6,10,13,13,13,13,9];

G = graph(s,t);
myplot = plot(G,"LineWidth",2);

[Ps,ds] = shortestpath(G,1,13,"Method","unweighted"); %起点到终点
highlight(myplot,Ps,"EdgeColor",'red');
[Pm,dm] = shortestpath(G,1,9,"Method","unweighted"); %起点到挖矿
highlight(myplot,Pm,"EdgeColor",'green');
