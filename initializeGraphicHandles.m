function [hFig, hAx, hToggle] = initializeGraphicHandles()
    hFig = figure('Name', 'Karsh''s Clock');
    hFig.NumberTitle = 'off';
    hFig.MenuBar = 'None';
    hAx = axes(hFig);
    hToggle = uicontrol('Style', 'togglebutton', 'String', 'Dark', 'FontName', 'Consolas', 'FontWeight', 'bold', 'FontSize', 12);
    hToggle.Units = 'normalized';
    hToggle.Position = [0.1 0.1 0.1 0.1];
    hAx.Units = 'normalized';
    hAx.Position = [0.2 0.2 0.7 0.7];
end
