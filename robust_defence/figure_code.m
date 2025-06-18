ax= gca;
ax.Color = 'w';
ax.FontSize=20;
ax.FontWeight = 'bold';
ax.XLim = [0 5];
ax.YLim = [-1.3 1.3];
% ax.YLimMode = 'auto';
% ax.YLimitMethod = 'padded';
ax.XColor = 'k';
ax.YColor = 'k';
ax.XLabel.String = 't [s]';
ax.XLabel.FontSize = 20;
ax.XLabel.FontWeight = 'bold';
ax.YLabel.String = 'velocità [m/s]';
ax.YLabel.FontSize = 20;
ax.YLabel.FontWeight = 'bold';
ax.OuterPosition = [0 0 1 1];

line = findobj('Type','line');
% line(2).LineStyle = '-';
line(1).LineStyle = '-';
% line(2).Color = 'k';
% line(2).LineWidth = 3;
line(1).Color = 'k';
line(1).LineWidth = 3;

legend = findobj('Type', 'Legend');
legend(1).Color = 'w';
legend(1).Location = 'northeast';
legend(1).FontSize = 20;
legend(1).FontWeight = 'bold';
legend(1).TextColor = 'k';
legend(1).EdgeColor = 'k';
legend(1).LineWidth = 1;

pan = findobj('Type', 'UIPanel');
pan.BackgroundColor = 'w';