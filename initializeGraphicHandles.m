function [hFig, hAx, hToggle] = initializeGraphicHandles()
    hFig = figure('Name', 'Karsh''s Clock');
    hFig.Units = 'normalized';
    hFig.Position = [0.3 0.3 0.5 0.5];
    hFig.NumberTitle = 'off';
    hFig.MenuBar = 'None';
    hAx = axes(hFig);
    hToggle = uicontrol('Style', 'togglebutton', 'String', 'Dark', 'FontName', 'Consolas', 'FontWeight', 'bold', 'FontSize', 12);
    hToggle.Units = 'normalized';
    hToggle.Position = [0.1 0.1 0.1 0.1];
end
