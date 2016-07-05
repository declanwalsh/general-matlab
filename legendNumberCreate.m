% Function that takes a vector and converts it into a cell of strings containing the numbers for use in a Matlab legend
% Author: Declan Walsh
% Last Modified: 15/06/2016

% Arguments
% vec = vector of numbers to convert to string
% prec (optional) = number of significant figures to store numbers to

% Return Values
% strLegend = cell of strings that have converted numbers

function [ strLegend ] = legendNumberCreate( vec, precUser )

    % check inputs
    if(nargin == 1)
        prec = 2; % default to 2 sig figs if not states
    elseif(nargin == 2)
        prec = precUser;
    else
        error('Incorrect number of arguments entered - must be 1 or 2');
    end

    sizeVec = size(vec);

    assert(sizeVec(2) == 1, 'Only a column vector can be used by this function');

    % cell to store string results
    strLegend = cell(sizeVec);
    
    for i = 1:sizeVec(1)
        strLegend{i} = num2str(vec(i), prec);
    end
    
end

