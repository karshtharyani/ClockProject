function minuteHand = makeMinuteHand(hFig, hAx, theme)
    rMinute = 8;
    hold(hAx, 'on');
    minuteHand = plot(hAx, [0, rMinute], [0, 0], [theme, '-'], 'LineWidth', 2);
    hold(hAx, 'off');
end
