%% Author: Karsh Tharyani
% The following script will load a clock.
% The basic clock will render a dial with the three hands(minutes, seconds, and
% hour)

%% reset the clock and timer
resetClock();
load gong;
alarmSound = y;
t = timer;
t.ExecutionMode = 'fixedSpacing';

%% make the dial and all other static graphic and their properties
[hFig, hAx, hToggle, hAlarm] = initializeGraphicHandles();
alarmTime = {0, 0};

[dial, dialText, dialCenter, dialTicks] = makeDial(hFig, hAx);
secondHand = makeSecondHand(hFig, hAx);
hourHand = makeHourHand(hFig, hAx);
minuteHand = makeMinuteHand(hFig, hAx);
hAlarm{1}.Callback = 'alarmTime{1} = str2num(hAlarm{1}.String);';
hAlarm{2}.Callback = 'alarmTime{2} = str2num(hAlarm{2}.String);';
hToggle.Callback = {@toggleTheme, ...
    hFig, hAx, secondHand, minuteHand, hourHand, dial, dialText, dialCenter,...
    dialTicks};
t.TimerFcn = {@updateClock, hFig, hAx, secondHand, hourHand, minuteHand, alarmTime, alarmSound};
start(t);

