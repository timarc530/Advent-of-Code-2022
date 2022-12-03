total = 0
subtotal = 0
for i = 1:length(caloryList)
    if isnan(caloryList(i))
        % add entry to total
        subtotal = 0;
    else
        subtotal = subtotal + caloryList(i);
    end
end
    total
    