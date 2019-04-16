function o = isint(value)
%ISINT True for integer values.
%   ISINT(X) returns an array that contains 1's where
%   the elements of X are integer value and 0's where they aren't.
%   author: Tomas Jilek <jilekt()feec.vutbr.cz>

o = rem(value, 1) == 0;

end
