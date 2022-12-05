function [ moveFrom, moveTo ] = reverser( moveFrom, moveTo )
%REVERSER takes the last character of moveFrom and appends it to moveTo
%   
toMove = moveFrom(end);
moveTo(end+1) = toMove;
moveFrom = moveFrom(1:end-1);

end

