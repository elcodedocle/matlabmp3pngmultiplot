Matlab MP3 PNG multiplot v0.4
=============================

####*create .png waveform colored graphs from .mp3 files in Matlab*

 Copyright (C) 2013 Gael Abadin<br/>
 License: [MIT Expat](https://github.com/elcodedocle/matlabmp3pngmultiplot/blob/master/LICENSE)

 ![PNG image generated using mp3pngmultiplot](http://i.imgur.com/QOChM0t.png "This is a png image generated from multiple mp3 sources using mp3pngmultiplot Matlab tool")

 
##Usage example:

```matlab
filenames = char('file1.mp3','file2.mp3','file3.mp3','file4.mp3');

mp3pngmultiplot (filenames, 'output.png');
```

##Advanced usage example:

```matlab
filenames = char('file1.mp3',..., 'fileN.mp3');
outputfilename = 'output.png';
PaperUnits = 'centimeters';
X = 42.0;
Y = 29.7;
xMargin = 1;
yMargin = 1;
xSize = X - 2*xMargin;
ySize = Y - 2*yMargin;
PaperSize = [X Y];
PaperPosition = [xMargin yMargin xSize ySize];
PaperOrientation = 'portrait';

mp3pngmultiplot (filenames, outputfilename, PaperUnits, PaperSize, PaperPosition, PaperOrientation);
```


see `help mp3pngmultiplot` for help; follow [this link](http://www.mathworks.com/help/matlab/ref/figure_props.html) for more info on PaperUnits, PaperSize, PaperPosition and PaperOrientation figure parameters affecting the figure display and size of the generated png.

##History

* v0.1 First prototype
* v0.2 Added different colors for each waveform plot
* v0.3 + support for png output sizing using optional graph dimension parameters, + fix graph color matches background color, + > 8 different waveform graph colors

##Acknowledgements

* The LAME developers team

* Dan Ellis for his nice mp3readwrite cross platform LAME wrapper library for Matlab

##Donations

If you find this project useful, please consider donating any amount (even 1 USD helps!) to keep updates and more projects like this coming:

bitcoin: 17W11XjofAZoQgT52dRGMvdXJTBpnf73vt  
dogecoin: DDftBG9yMG3cpmHpYaKE1hGuoWdHHbUgUC  
paypal: http://goo.gl/vTuOG5
