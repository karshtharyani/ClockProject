function [xMinute, yMinute] = updateMinuteHand()
    dt = datetime;
    rMinute = 8;
    minutes = round(dt.Minute);
    thetad = minutes * 6 - 90;
    xMinute = rMinute * cosd(-thetad);
    yMinute = rMinute * sind(-thetad);
end
