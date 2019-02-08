function [hFig, hAx, hToggle, hAlarm] = initializeGraphicHandles()
    hFig = figure('Name', 'Karsh''s Clock');
    hFig.NumberTitle = 'off';
    hFig.MenuBar = 'None';
    hAx = axes(hFig);
    hToggle = uicontrol(hFig, 'Style', 'pushbutton', 'String', 'Dark', 'FontName', 'Consolas', 'FontWeight', 'bold', 'FontSize', 12);
    hToggle.Units = 'normalized';
    hToggle.Position = [0.1 0.1 0.1 0.1];
    hAx.Units = 'normalized';
    hAx.Position = [0.2 0.25 0.7 0.7];
    hAlarm = {uicontrol(hFig, 'Style', 'edit', 'Units', 'normalized', 'String', 'HH'), ...
            uicontrol(hFig, 'Style', 'edit', 'Units', 'normalized', 'String', 'MM')};
    for i = 1:length(hAlarm)
        hAlarm{i}.FontName = 'Consolas';
        hAlarm{i}.FontSize = 12;
        hAlarm{i}.FontWeight = 'bold';
    end
    hold(hAx, 'on');
    alarmText = uicontrol(hFig, 'Style', 'text');
    alarmText.String = 'Alarm';
    alarmText.Units = 'normalized';
    alarmText.Position = [0.1, 0.40, 0.1, 0.1];
    alarmText.FontName = 'Consolas';
    alarmText.FontSize = 12;
    alarmText.FontWeight = 'bold';
    hold(hAx, 'off');
    hAlarm{1}.Position = [0.1 0.3 0.1 0.1];
    hAlarm{2}.Position = [0.2 0.3 0.1 0.1];
end
