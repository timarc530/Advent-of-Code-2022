searchSpace = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
inputs = inputs3;
groupSize = 3;
prioritySum = 0;
for i = 1:groupSize:length(inputs) 
    % silly test for odd length
    %if mod(inputs{i},2) == 1
    %    sprintf('oh god its odd')
    %end
    match = false;
    j = 1;
    member1 = inputs{i};
    member2 = inputs{i+1};
    member3 = inputs{i+2};
    
    while match == false && j < length(searchSpace) + 1
        if contains(member1,searchSpace(j)) && contains(member2,searchSpace(j)) && contains(member3,searchSpace(j))
            match = true;
            prioritySum = prioritySum + j;
        end
        j = j + 1;
    end
end
prioritySum
        
    
