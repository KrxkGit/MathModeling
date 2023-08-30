function [changed_p, unchanged_p] = Three_doors(n)
    disp(["三门问题 测试规模", num2str(n)]);
    a = 0; %不改变注意赢的次数
    b = 0; %改变主意赢的次数
    c = 0; %没有获奖的次数
    for i = 1:n
        x = randi([1, 3]);
        y = randi([1, 3]);
        change = randi([0, 1]);
        if x == y
            if change == 0
                a = a + 1; b = b + 0; c = c + 0;
            else
                c = c + 1;
            end
        else
            if change ~= 0
                a = a + 0; b = b + 1;
            else
                c = c + 1;
            end
        end
    end
    changed_p = b / n;
    unchanged_p = a / n;
    disp(["改变主意后赢的概率： ", num2str(changed_p)]);
    disp(["不改变主意后赢的概率： ", num2str(unchanged_p)]);
    disp(["失败概率： ", num2str(c/n)]);
end