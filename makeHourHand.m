function hourHand = makeSecondHand(hFig, hAx)
    rHour = 4;
    hold(hAx, 'on');
    hourHand = plot(hAx, [0, rHour], [0, 0], 'k-', 'LineWidth', 4);
    hold(hAx, 'off');
end
