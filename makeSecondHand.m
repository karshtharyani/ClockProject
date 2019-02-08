function secondHand = makeSecondHand(hFig, hAx)
    rSecond = 8;
    hold(hAx, 'on');
    secondHand = plot(hAx, [0, rSecond], [0, 0], 'k-');
    hold(hAx, 'off');
end
