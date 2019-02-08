function [xHour, yHour] = updateHourHand()
    dt = datetime;
    rHour = 4;
    hours = round(dt.Hour);
    minutes = round(dt.Minute);
    thetad = hours * 30;
    thetad = thetad + minutes * 0.5 - 90;
    xHour = rHour * cosd(-thetad);
    yHour = rHour * sind(-thetad);
end
