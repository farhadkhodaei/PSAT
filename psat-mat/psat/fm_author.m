function fig = fm_author(enter)
% FM_AUTHOR create a splash window with the author's pic
%
% FM_AUTHOR(CODE)
%
%Author:    Federico Milano
%Date:      11-Nov-2002
%Version:   1.0.0
%
%E-mail:    federico.milano@ucd.ie
%Web-site:  faraday1.ucd.ie/psat.html
%
% Copyright (C) 2002-2016 Federico Milano

global Settings Fig Path Theme

if ishandle(Fig.author), figure(Fig.author), return, end

if enter ~= 3280, return, end

h0 = figure('Units','normalized', ...
	    'Color',Theme.color02, ...
	    'Colormap',[], ...
	    'CreateFcn','Fig.author = gcf;', ...
	    'DeleteFcn','Fig.author = -1;', ...
	    'KeyPressFcn','close(gcf)', ...
	    'FileName','fm_author(3280)', ...
	    'MenuBar','none', ...
	    'Name','The author!', ...
	    'NumberTitle','off', ...
	    'PaperPosition',[18 180 576 432], ...
	    'PaperUnits','points', ...
	    'Position',sizefig(0.4,0.4*1.578), ...
	    'Resize','on', ...
	    'ResizeFcn','doresize(gcbf)', ...
	    'ToolBar','none', ...
	    'WindowButtonDownFcn','close(gcf)');

h1 = axes('Parent',h0, ...
	  'Box','on', ...
	  'CameraUpVector',[0 1 0], ...
	  'Color',Theme.color04, ...
	  'ColorOrder',Settings.color, ...
	  'Layer','top', ...
	  'Position',[0.1 0.1 0.8 0.8], ...
	  'Tag','Axes1', ...
	  'XColor',[0 0 0.5], ...
	  'XLim',[0.5 700.5], ...
	  'XLimMode','manual', ...
	  'XTickLabelMode','manual', ...
	  'XTickMode','manual', ...
	  'YColor',[0 0 0.5], ...
	  'YDir','reverse', ...
	  'YLim',[0.5 101.5], ...
	  'YLimMode','manual', ...
	  'YTickLabelMode','manual', ...
	  'YTickMode','manual', ...
	  'ZColor',[0 0 0]);
h2 = image('Parent',h1, ...
	   'CData',imread([Path.images,'misc_view.jpg'],'jpg'), ...
	   'Tag','Axes1Image1', ...
	   'XData',[1 700], ...
	   'YData',[1 101]);

if nargout > 0, fig = h0; end