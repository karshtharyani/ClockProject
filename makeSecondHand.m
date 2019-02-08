function secondHand = makeSecondHand(hFig, hAx, theme)
    rSecond = 8;
    hold(hAx, 'on');
    secondHand = plot(hAx, [0, rSecond], [0, 0], [theme, '-']);
    hold(hAx, 'off');
end
