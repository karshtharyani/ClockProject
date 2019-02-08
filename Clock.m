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

defaultTheme = 'k'; %black on white
dial = makeDial(hFig, hAx, defaultTheme);
secondHand = makeSecondHand(hFig, hAx, defaultTheme);
hourHand = makeHourHand(hFig, hAx, defaultTheme);
minuteHand = makeMinuteHand(hFig, hAx, defaultTheme);

t.TimerFcn = {@updateClock, hFig, hAx, secondHand, hourHand, minuteHand};
start(t);

