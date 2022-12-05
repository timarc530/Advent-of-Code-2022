% build stacks
crates = {'BZT','VHTDN','BFMB','TJGWVQL','WDGPVFQM','VZQGHFS','ZSNRLTCW','ZHWDJNRM','MQLFDS'};
% read input instructions
fid = fopen('instructions.txt');
tline = fgetl(fid);
while ischar(tline)
    disp(tline);
    
    moveData = regexp(tline,'\d*','Match');
    moveCount = str2double(moveData(1));
    moveFrom = str2double(moveData(2));
    moveTo = str2double(moveData(3));
    
    [crates{moveFrom}, crates{moveTo}] = craneMove(crates{moveFrom}, crates{moveTo}, moveCount);

    tline = fgetl(fid);
end
fclose(fid);
