# volumeDisplay.widget

An [Übersicht](http://tracesof.net/uebersicht/) widget that displays a customizable system volume bar on the Desktop. You will need to install Übersicht first before you can use this widget. 

Once Übersicht is installed, download the [zip file](volumeDisplay.widget.zip) of the widget and move the unzipped folder into the Widgets Folder which can be found by clicking on the Übersicht icon in the menu bar.

*Screen shot - Bright Theme*
![Example Screenshot of widget](ScreenShot.png)
*Shown with [iTunesNowPlaying widget](https://github.com/ctakemoto/iTunesNowPlaying.widget)*

Below is what the volume bar looks like at full volume and when muted.

![Example Screenshot of widget](ScreenShot_FullVol.png)
![Example Screenshot of widget](ScreenShot_Mute.png)

## Options

The widget can be customized by changing the options found at the top of the *index.coffee* file.

### widgetEnable

Easily choose to display or hide the widget by changing the value. Set widgetEnable to true to display it, and false to disable.

### theme

Change the look of the bar by changing the theme. There are currently three different themes available:

**Bright**
![Example Screenshot of widget](ScreenShot_Bright.png)

**Pastel**
![Example Screenshot of widget](ScreenShot_Pastel.png)

**Dark**
![Example Screenshot of widget](ScreenShot_Dark.png)

### barOpacity

Change the translucency of the bar. 1 makes the bar fully opaque and 0 makes it fully translucent.

### barMaxWidth


### vPosition & hPosition

Change the vertical and horizontal position of the widget by changing the values of vPosition and hPostion respectively. vPostion can be set to 'top', 'center', or 'bottom' and hPosition can be set to 'left', 'center', or 'right'.

### vOffset & hOffset

To further customize the position change the values of vOffset and hOffset. For example, to display the widget slightly higher on the screen than the center, set vPosition to 'center' and adjust vOffset until it's in the desired location.

### orientation

Change the orientation of the volume bar to either 'horizontal' or 'vertical'