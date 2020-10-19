
for c = 2:30
    for c2 = 1:8
        
            try
                Open1=readtable("Left"+c+"_0"+c2+".txt");
                Open2=readtable("Right"+c+"_0"+c2+".txt");

                Left1=Open1(:,[1,3]);
                Right1=Open2(:,[1,3]);
                
                Lefttiempo=Left1.Var1(:,1);
                Lefttiempo=Lefttiempo*0.001;
                
                
                Righttiempo=Right1.Var1(:,1);
                Righttiempo=Righttiempo*0.001;
                
                figure
                hold;grid on;
                plot(Lefttiempo,Left1.Var3,'r');xlabel('Tiempo [s]'); 
                plot(Righttiempo,Right1.Var3,'b');title({c;c2});
                legend({'Left','Right'})
                pause()
         catch ME
             
            end 
         close;
    end  
end
