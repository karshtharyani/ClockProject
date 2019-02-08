function updateClock(~, ~, hFig, hAx, secondHand, hourHand, minuteHand, alarmTime, alarmSound)
    % update second hand
    [newXSecond, newYSecond] = updateSecondHand();
    secondHand.XData = [0 newXSecond];
    secondHand.YData = [0 newYSecond];

    % update hour hand
    [newXHour, newYHour] = updateHourHand();
    hourHand.XData = [0 newXHour];
    hourHand.YData = [0 newYHour];

    % update minute hand
    [newXMinute, newYMinute] = updateMinuteHand();
    minuteHand.XData = [0 newXMinute];
    minuteHand.YData = [0 newYMinute];

    currentTime = datetime;
    if(currentTime.Hour == alarmTime{1} && currentTime.Minute == alarmTime{2})
        disp('here');
        play(alarmSound);
    end

end
