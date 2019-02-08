function hourHand = makeSecondHand(hFig, hAx, theme)
    rHour = 4;
    hold(hAx, 'on');
    hourHand = plot(hAx, [0, rHour], [0, 0], [theme, '-'], 'LineWidth', 4);
    hold(hAx, 'off');
end
