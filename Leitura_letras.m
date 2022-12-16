function letra=readLetter(snap)

load NewTemplates 
snap=imresize(snap,[42 24]); 
rec=[ ];

for n=1:length(NewTemplates)
    cor=corr2(NewTemplates{1,n},snap); 
    rec=[rec cor]; 
end

ind=find(rec==max(rec));
display(ind);

% Letras.
if ind==1 || ind==2
    letra='A';
elseif ind==3 || ind==4
    letra='B';
elseif ind==5
    letra='C';
elseif ind==6 || ind==7
    letra='D';
elseif ind==8
    letra='E';
elseif ind==9
    letra='F';
elseif ind==10
    letra='G';
elseif ind==11
    letra='H';
elseif ind==12
    letra='I';
elseif ind==13
    letra='J';
elseif ind==14
    letra='K';
elseif ind==15
    letra='L';
elseif ind==16
    letra='M';
elseif ind==17
    letra='N';
elseif ind==18 || ind==19
    letra='O';
elseif ind==20 || ind==21
    letra='P';
elseif ind==22 || ind==23
    letra='Q';
elseif ind==24 || ind==25
    letra='R';
elseif ind==26
    letra='S';
elseif ind==27
    letra='T';
elseif ind==28
    letra='U';
elseif ind==29
    letra='V';
elseif ind==30
    letra='W';
elseif ind==31
    letra='X';
elseif ind==32
    letra='Y';
elseif ind==33
    letra='Z';
    %*-*-*-*-*
% Numeros.
elseif ind==34
    letra='1';
elseif ind==35
    letra='2';
elseif ind==36
    letra='3';
elseif ind==37 || ind==38
    letra='4';
elseif ind==39
    letra='5';
elseif ind==40 || ind==41 || ind==42
    letra='6';
elseif ind==43
    letra='7';
elseif ind==44 || ind==45
    letra='8';
elseif ind==46 || ind==47 || ind==48
    letra='9';
else
    letra='0';
end
end