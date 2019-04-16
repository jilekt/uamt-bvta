function myFcn
% MYFCN Modify M matrix.
%   author: Tomas Jilek <jilekt()feec.vutbr.cz>

if ~evalin('caller', 'exist(''M'', ''var'')');
    error('myTbx:myFcn:variableNotFound', 'Variable M does not exist!')
end

assignin('caller', 'M', fliplr(evalin('caller', 'M')));

end
