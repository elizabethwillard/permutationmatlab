%Author: Elizabeth Willard
%Date: 10/23/2020

clc;
clear all
%% Calculate the number of inversions, and collect 1000 data points then 
%distribute that over a density graph, by using the Distribution Filter
%package through MatLab

inv = 0;
sum = 0;
avgs = zeros(1,100);
x = length(avgs);
P = [4 3 1 2];
    for k = length(P):-1:2
        f = find(k==P);
        inv = inv + k - f;
        P(f) = [];     
    end

%% Calculate all possible permutations
 
v = [1 2 3 4];
permu = perms(v);

%% In order to get the distribution plot, go to Apps --> Distribution Filter
%Make sure to use Display type: Density + Then click on the data you want 
%in the variable inv
