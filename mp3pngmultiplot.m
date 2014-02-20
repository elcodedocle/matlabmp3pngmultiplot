function [] = mp3pngmultiplot( filenames, outputfilename, varargin )
%mp3pngmultiplot plots and outputs a png of the plot of size(filenames,1) mp3 files
%   Usage example:
%      filenames =  char('file1.mp3','file2.mp3','file3.mp3',..., 'fileN.mp3');
%      mp3pngmultiplot (filenames, 'output.png');
%
%   Advanced usage example:
%      filenames =  char('file1.mp3','file2.mp3','file3.mp3',..., 'fileN.mp3');
%      outputfilename = 'output.png';
%      PaperUnits = 'centimeters';
%      %#centimeters units:
%        X = 42.0;                  %# A3 paper size
%        Y = 29.7;                  %# A3 paper size
%        xMargin = 1;               %# left/right margins from page borders
%        yMargin = 1;               %# bottom/top margins from page borders
%        xSize = X - 2*xMargin;     %# figure size on paper (widht & hieght)
%        ySize = Y - 2*yMargin;     %# figure size on paper (widht & hieght)
%      PaperSize = [X Y];
%      PaperPosition = [xMargin yMargin xSize ySize];
%      PaperOrientation = 'portrait';
%      mp3pngmultiplot (filenames, outputfilename, PaperUnits, PaperSize, PaperPosition, PaperOrientation);
%
%   Note PaperUnits, PaperSize, PaperPosition and PaperOrientation are optional parameters, so you can call the function with just the first one, two or three, or all or none of them.

    f = figure;
    N = size(filenames,1);
    nVarargs = length(varargin);
    %# figure size printed on paper (exported to .png file)
    if (nVarargs>0)
        set(f, 'PaperUnits',varargin{1})
    end
    if (nVarargs>1)
        set(f, 'PaperSize',varargin{2})
    end
    if (nVarargs>2)
        set(f, 'PaperPosition',varargin{3})
    end
    if (nVarargs>3)
        set(f, 'PaperOrientation',varargin{4})
    end
    for i=1:N
        d2 = mp3read(filenames(i,:));
        fi = subplot (N,1,i);
        x = 0:1/length(d2):1;
        brightness = (floor((N-i)/8)+1)/(floor((N-1)/8)+1);
        if (mod(i,8)==0)
            color=[1,0.5,0];
        elseif (mod(i,7)==0) 
            color=[0,0.5,1];
        else 
            color = [mod(floor((i)/2),2),mod(floor(floor((i)/2)/2),2),mod(i,2)];
        end
        color = color*brightness;
        plot (x(2:end),d2,'Color',color);
        title (fi,filenames(i,:))
    end
    saveas(f, outputfilename,'png');
end

