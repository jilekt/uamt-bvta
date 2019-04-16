function [varargout] = meanstd(varargin)
% MEANSTD Mean and std values for multiple input arguments.
%   author: Tomas Jilek <jilekt()feec.vutbr.cz>

varargout = cell(size(varargin) .* [1 2]);

for i = 1:nargin
    varargout{2*i-1} = mean(varargin{i});
    varargout{2*i}   = std(varargin{i});
end
