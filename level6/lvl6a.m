clc % clears the terminal
%input = 'zcfzfwzzqfrljwzlrfnpqdbhtmscgvjw';
input = input_data{1};

for i=4:length(input)
    c1 = count(input(i-3:i),input(i-3));
    c2 = count(input(i-3:i),input(i-2));
    c3 = count(input(i-3:i),input(i-1));
    %c4 = count(input(i-3:i),input(i)); % no need to cound the last one.. if the
    %first three are 1 then the last one must be
    
    if c1 == 1 && c2 == 1 && c3 == 1
        disp(i)
        break
    end
end