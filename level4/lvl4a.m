overlapCount = 0;
for i = 1:length(elf1)
    firstElf  = str2double(strsplit(elf1{i},'-'));
    secondElf = str2double(strsplit(elf2{i},'-'));
    if (firstElf(1) == secondElf(1) || firstElf(2) == secondElf(2))...
        || (firstElf(1) < secondElf(1) && firstElf(2) > secondElf(2))...
        || (secondElf(1) < firstElf(1) && secondElf(2) > firstElf(2))
        overlapCount = overlapCount + 1;
    end
end
overlapCount