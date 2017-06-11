% this code is to fit the flow and pressure at inspiration and expiration
% with time . it shows 95% interval. there are 16 output files (4 .mat
% files and 12 .txt files)
load Combine.mat;

A=b9p_pin;  %change
B=b9p_tin;  %change
C=b9p_fin;  %change
D=b9p_pex;  %change
E=b9p_tex;  %change
F=b9p_fex;  %change

name1='b9p';  %change

fitresult=createFit_b9p_pin(B,A);  %change function name
x=B;
%pin = predint(fitresult,x,0.95,'functional','on');
pin = predint(fitresult,x,0.95,'observation','off');
for i=1:size(pin,1)
    ave_pin(i)=(pin(i,1)+pin(i,2))/2;
end
ave_pin=ave_pin';

savefile=sprintf('%s_pin.mat',name1)
save(savefile,'pin')

savefile=sprintf('%s_pin_lower.txt',name1)
fid = fopen(savefile, 'wt'); 
for i=1:size(pin,1)
fprintf(fid, '%g\n', pin(i,1)); 
end
fclose(fid)

savefile=sprintf('%s_pin_upper.txt',name1)
fid = fopen(savefile, 'wt'); 
for i=1:size(pin,1)
fprintf(fid, '%g\n', pin(i,2)); 
end
fclose(fid)

savefile=sprintf('%s_pin_ave.txt',name1)
fid = fopen(savefile, 'wt'); 
for i=1:size(ave_pin,1)
fprintf(fid, '%g\n', ave_pin(i,1)); 
end
fclose(fid)


fitresult=createFit_b9p_fin(B,C);  %change function name
x=B;
%fin = predint(fitresult,x,0.95,'functional','on');
fin = predint(fitresult,x,0.95,'observation','off');

for i=1:size(fin,1)
    ave_fin(i)=(fin(i,1)+fin(i,2))/2;
end
ave_fin=ave_fin';
savefile=sprintf('%s_fin.mat',name1)
save(savefile,'fin')

savefile=sprintf('%s_fin_lower.txt',name1)
fid = fopen(savefile, 'wt'); 
for i=1:size(fin,1)
fprintf(fid, '%g\n', fin(i,1)); 
end
fclose(fid)

savefile=sprintf('%s_fin_upper.txt',name1)
fid = fopen(savefile, 'wt'); 
for i=1:size(fin,1)
fprintf(fid, '%g\n', fin(i,2)); 
end
fclose(fid)

savefile=sprintf('%s_fin_ave.txt',name1)
fid = fopen(savefile, 'wt'); 
for i=1:size(ave_fin,1)
fprintf(fid, '%g\n', ave_fin(i,1)); 
end
fclose(fid)

fitresult=createFit_b9p_pex(E,D);  %change function name
x=E;
%pex = predint(fitresult,x,0.95,'functional','on');
pex = predint(fitresult,x,0.95,'observation','off');
for i=1:size(pex,1)
    ave_pex(i)=(pex(i,1)+pex(i,2))/2;
end
ave_pex=ave_pex';
savefile=sprintf('%s_pex.mat',name1)
save(savefile,'pex')

savefile=sprintf('%s_pex_lower.txt',name1)
fid = fopen(savefile, 'wt'); 
for i=1:size(pex,1)
fprintf(fid, '%g\n', pex(i,1)); 
end
fclose(fid)

savefile=sprintf('%s_pex_upper.txt',name1)
fid = fopen(savefile, 'wt'); 
for i=1:size(pex,1)
fprintf(fid, '%g\n', pex(i,2)); 
end
fclose(fid)

savefile=sprintf('%s_pex_ave.txt',name1)
fid = fopen(savefile, 'wt'); 
for i=1:size(ave_pex,1)
fprintf(fid, '%g\n', ave_pex(i,1)); 
end
fclose(fid)


fitresult=createFit_b9p_fex(E,F);  %change function name
x=E;
%fex = predint(fitresult,x,0.95,'functional','on');
fex = predint(fitresult,x,0.95,'observation','off');
for i=1:size(fex,1)
    ave_fex(i)=(fex(i,1)+fex(i,2))/2;
end
ave_fex=ave_fex';
savefile=sprintf('%s_fex.mat',name1)
save(savefile,'fex')

savefile=sprintf('%s_fex_lower.txt',name1)
fid = fopen(savefile, 'wt'); 
for i=1:size(fex,1)
fprintf(fid, '%g\n', fex(i,1)); 
end
fclose(fid)

savefile=sprintf('%s_fex_upper.txt',name1)
fid = fopen(savefile, 'wt'); 
for i=1:size(fex,1)
fprintf(fid, '%g\n', fex(i,2)); 
end
fclose(fid)


savefile=sprintf('%s_fex_ave.txt',name1)
fid = fopen(savefile, 'wt'); 
for i=1:size(ave_fex,1)
fprintf(fid, '%g\n', ave_fex(i,1)); 
end
fclose(fid)

clear