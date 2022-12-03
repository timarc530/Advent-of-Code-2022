searchSpace = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
inputs = inputs3;

prioritySum = 0;
for i = 1:length(inputs)
    % silly test for odd length
    %if mod(inputs{i},2) == 1
    %    sprintf('oh god its odd')
    %end
    match = false;
    j = 1;
    %left = inputs{i}(1:length(inputs{i})/2);
    %right = inputs{i}(1 + length(inputs{i})/2:end);
    while match == false && j < 53
        if contains(left,searchSpace(j)) && contains(right,searchSpace(j))
            match = true;
            prioritySum = prioritySum + j;
        end
        j = j + 1;
    end
end
prioritySum
        
    
