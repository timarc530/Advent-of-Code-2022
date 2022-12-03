total = [];
subtotal = 0;
for i = 1:length(caloryList)
    if isnan(caloryList(i))
        % add entry to total
        total(length(total) + 1) = subtotal;
        subtotal = 0;
    else
        subtotal = subtotal + caloryList(i);
    end
end
    total = sort(total','descend');
    sum(total(1:3))
    