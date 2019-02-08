function [xSecond, ySecond] = updateSecondHand()
    dt = datetime;
    rSecond = 8;
    seconds = round(dt.Second);
    thetad = seconds * 6 - 90;
    xSecond = rSecond * cosd(-thetad);
    ySecond = rSecond * sind(-thetad);
end
