clc % clears the terminal
%input = 'zcfzfwzzqfrljwzlrfnpqdbhtmscgvjw';
input = input_data{1};
flagLength = 14;

for i=flagLength:length(input)
    chunk = input(i - flagLength + 1:i);
    if length(unique(chunk)) == length(chunk)
        disp(i);
        break
    end
end