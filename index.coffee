#A customizable volume bar 

#Edit the values of these options to customize the look of your volume bar
options =
  widgetEnable: true			#true to enable the widget, false to disable
  theme: 'pastel' 				#theme options: 'pastel', 'dark', or 'bright'
  barOpacity: '.6'				#1 for full opacity, 0 for completely transparent
  barMaxWidth: '600px'			#the width of the bar when at full volume
  barHeight: '10px'				#the height of the bar
  vPosition: 'center'			#verticle position of the bar, options: 'top', 'center', 'bottom'
  hPosition: 'center'			#horizontal position of the bar, options: 'left', 'center', 'right'
  vOffset: '0px'				#offset the position of the widget vertically from default options, positive numbers shift the widget up
  hOffset: '0px'				#offset the position of the widget horizontally from default options, positive numbers shift the widget left
  orientation: 'horizontal'		#options: 'vertical' or 'horizontal'


command: "osascript volumeDisplay.widget/volumeDisplay.scpt"

refreshFrequency: '500'

options : options

render: (_) -> """
	<div id="container">
		<div class="bar"></div>	
	</div>
"""

update: (output, domEl) ->
	widget_display = $(domEl)

	if @options.widgetEnable
		width = output.trim()+'%'
		widget_display.find('.bar').css('width', width)
	else
		widget_display.hide()


style: """
	pastel_purple = #ccb5fc
	pastel_pink = #f4bdf7
	pastel_yellow = #fff49b
	pastel_green = #a0f2a4

	dark_purple = #250333
	dark_pink = #400122
	dark_yellow = #4A4104
	dark_green = #044A0B

	bright_purple = #830CF0
	bright_pink = #FA0C65
	bright_yellow = #CEFA0C
	bright_green = #28B200

	bg_color = rgba(0,0,0,.3)


	if #{options.theme} == pastel
		color1 = pastel_purple
		color2 = pastel_pink
		color3 = pastel_yellow
		color4 = pastel_green
	else if #{options.theme} == dark
		color1 = dark_purple
		color2 = dark_pink
		color3 = dark_yellow
		color4 = dark_green
	else
		color1 = bright_purple
		color2 = bright_pink
		color3 = bright_yellow
		color4 = bright_green



	if #{options.vPosition} == center
		top: calc(50% - #{options.vOffset})
	else if #{options.vPosition} == top
		top: calc(5% - #{options.vOffset})
	else
		bottom: calc(5% - #{options.vOffset})

	if #{options.hPosition} == center
		left: calc(50% -  #{options.hOffset})
	else if #{options.hPosition} == left && #{options.orientation} == horizontal
		left: calc(5% - (#{options.hOffset} - #{options.barMaxWidth}/2))
	else if #{options.hPosition} == left
		left: calc(5% - (#{options.hOffset} - #{options.barHeight}/2))
	else if #{options.hPosition} == right && #{options.orientation} == horizontal
		right: calc(5% - (#{options.hOffset} - #{options.barMaxWidth}/2))
	else
		right: calc(5% - (#{options.hOffset} - #{options.barHeight}/2))
		

	if #{options.orientation} == vertical
		transform: rotate(-90deg)


	#container
		height: #{options.barHeight}
		width: #{options.barMaxWidth}
		border-radius: 5px
		background-color: bg_color
		margin: calc((#{options.barHeight}/2)*-1) 0px 0px calc((#{options.barMaxWidth}/2)*-1)
		position: absolute

	.bar
		border-radius: 5px
		height: #{options.barHeight}
		width: 90%
		background: linear-gradient(to right, color1, color2, color3, color4)
		opacity: #{options.barOpacity}

		



"""