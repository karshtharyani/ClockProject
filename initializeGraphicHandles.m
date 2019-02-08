function [hFig, hAx] = initializeGraphicHandles()
    hFig = figure('Name', 'Karsh''s Clock');
    hFig.Color = 'white';
    hFig.NumberTitle = 'off';
    hFig.MenuBar = 'None';
    hAx = axes(hFig);
end
