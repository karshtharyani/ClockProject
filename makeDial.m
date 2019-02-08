function [dial] = makeDial(hFig, hAx, theme)
    if(strcmp(theme, 'k'))
        hFig.Color = 'w';
        hAx.Color = 'w';
    else
        hFig.Color = 'k';
        hAx.Color = 'k';
    end
    % make a circular dial
    theta = 0:0.01:2*pi;
    thetaMarks = [0:pi/6:2*pi];
    r = 10;
    x = r * cos(theta);
    y = r * sin(theta);
    dial = plot(hAx, x, y, [theme, '-'], 'LineWidth', 2);
    axis(hAx, 'equal');
    box(hAx, 'off');
    hAx.Visible = 'off';
    thetaLegend = [0 pi/2 pi 3*pi / 2];
    rLegend = 8;
    xLegend = rLegend * cos(thetaLegend);
    yLegend = rLegend * sin(thetaLegend);
    text(hAx, xLegend, yLegend, {'III', 'XII', 'IX', 'VI'}, ...
    'FontName', 'Courier New', 'FontWeight', 'bold', 'FontSize', 11, ...
    'horizontalAlignment', 'center');
    hold(hAx, 'on');
    plot(hAx, 0, 0, 'o', 'MarkerFaceColor', theme);
    xStartMark = 0.9 * r * cos(thetaMarks);
    yStartMark = 0.9 * r * sin(thetaMarks);
    xEndMark = r * cos(thetaMarks);
    yEndMark = r * sin(thetaMarks);
    for i = 1:length(xStartMark)
        plot(hAx, [xStartMark(i), xEndMark(i)], [yStartMark(i), yEndMark(i)],[theme, '-'])
    end
    hold(hAx, 'off');
end
