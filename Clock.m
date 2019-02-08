%% Author: Karsh Tharyani
% The following script will load a clock.
% The basic clock will render a dial with the three hands(minutes, seconds, and
% hour)

%% reset the clock and timer
resetClock();
t = timer;
t.ExecutionMode = 'fixedSpacing';

%% make the dial and all other static graphic and their properties
[hFig, hAx, hToggle] = initializeGraphicHandles();

[dial, dialText, dialCenter, dialTicks] = makeDial(hFig, hAx);
secondHand = makeSecondHand(hFig, hAx);
hourHand = makeHourHand(hFig, hAx);
minuteHand = makeMinuteHand(hFig, hAx);
hToggle.Callback = {@toggleTheme, ...
    hFig, hAx, secondHand, minuteHand, hourHand, dial, dialText, dialCenter, dialTicks};
t.TimerFcn = {@updateClock, hFig, hAx, secondHand, hourHand, minuteHand};
start(t);

