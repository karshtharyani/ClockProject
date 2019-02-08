function [dial, dialText, dialCenter, dialTicks] = makeDial(hFig, hAx)
    % make a circular dial
    dialTicks = [];
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
    dialText = text(hAx, xLegend, yLegend, {'III', 'XII', 'IX', 'VI'}, ...
    'FontName', 'Courier New', 'FontWeight', 'bold', 'FontSize', 11, ...
    'horizontalAlignment', 'center');
    hold(hAx, 'on');
    dialCenter = plot(hAx, 0, 0, 'o', 'MarkerFaceColor', 'k');
    xStartMark = 0.9 * r * cos(thetaMarks);
    yStartMark = 0.9 * r * sin(thetaMarks);
    xEndMark = r * cos(thetaMarks);
    yEndMark = r * sin(thetaMarks);
    for i = 1:length(xStartMark)
        dialTicks = [dialTicks, plot(hAx, [xStartMark(i), xEndMark(i)], [yStartMark(i), yEndMark(i)],'k-')];
    end
    hold(hAx, 'off');
end
