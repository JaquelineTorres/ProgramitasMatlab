close all;clear all;clc
%%
reglones=5000;
filas=29;

Left=zeros(reglones,filas);
Right=zeros(reglones,filas);
columnafinal=1;

for c = 2:30
%         
                  LeftOpen = readtable("Left"+c+"_01"+".txt");
                  RightOpen = readtable("Right"+c+"_01"+".txt");
                  
                  Left1=LeftOpen.Var3(:,1);
                  Left(:,columnafinal)=Left1;
                 
                  Right1=RightOpen.Var3(:,1);
                  Right(:,columnafinal)=Right1;
                  
                  columnafinal=columnafinal+1;
                
end

% addpath '/Users/jaque/Downloads/SeisLab_2'
% addpath '/Users/jaque/Downloads/SeisLab_2/S4M/Geophysics_2.01'
% 
% LEFT = read_segy_file('Left02_01.sgy');
% RIGHT = read_segy_file('Right02_01.sgy');
% 
% s_compare(LEFT,RIGHT);