function minuteHand = makeMinuteHand(hFig, hAx)
    rMinute = 8;
    hold(hAx, 'on');
    minuteHand = plot(hAx, [0, rMinute], [0, 0], 'k-', 'LineWidth', 2);
    hold(hAx, 'off');
end
