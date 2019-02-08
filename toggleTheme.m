function toggleTheme(hObj, eventData, ...
    hFig, hAx, secondHand, minuteHand, hourHand, dial, dialText, dialCenter, dialTicks)
    if strcmp(hObj.String, 'Dark')
        hObj.String = 'Light';
        hFig.Color = 'k';
        hAx.Color = 'k';
        secondHand.Color = 'w';
        minuteHand.Color = 'w';
        hourHand.Color = 'w';
        dial.Color = 'w';
        for i = 1:length(dialText)
            dialText(i).Color = 'w';
        end
        for i = 1:length(dialTicks)
            dialTicks(i).Color = 'w';
        end
        dialCenter.MarkerFaceColor = 'w';
    else
        hObj.String = 'Dark';
        hFig.Color = 'w';
        hAx.Color = 'w';
        secondHand.Color = 'k';
        minuteHand.Color = 'k';
        hourHand.Color = 'k';
        dial.Color = 'k';
        for i = 1:length(dialText)
            dialText(i).Color = 'k';
        end
        for i = 1:length(dialTicks)
            dialTicks(i).Color = 'k';
        end
        dialCenter.MarkerFaceColor = 'k';
    end
end
