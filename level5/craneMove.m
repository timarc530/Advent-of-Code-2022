function [ moveFrom, moveTo ] = reverser( moveFrom, moveTo, moveCount )
%REVERSER removes the last N characters (specified by moveCount) of moveFrom and appends it to moveTo
%   
toMove = moveFrom(end - moveCount + 1:end);
moveTo = strcat(moveTo, toMove);
moveFrom = moveFrom(1:end-moveCount);

end

