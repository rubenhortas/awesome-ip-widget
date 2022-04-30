# ip widget
A simple widget to show the ip of an interface in awesome window manager wibar

## Screenshot

![Screenshot](https://github.com/rubenhortas/awesome-ip-widget/blob/main/awesome-ip-widget-screenshot.jpeg)

## Installation

Clone the repo under your widgets folder: 
  - If you are using a custom theme: ~/.config/awesome/widgets/
  - If you are using a default theme: /usr/share/awesome/lib/

Edit _awesome-ip-widget/ip.lua_ and set your interface name

```lua
local interface = "enp0s3"
```


Edit your _lua.rc_ file and add the following
  - If you are using a custom theme: ~/.config/awesome/rc.lua
  - If you are using a default theme: /usr/share/awesome/themes/_yourSelectedThemeName_/lua.rc

```lua
local ip_widget = require("awesome-ip-widget.ip")

...
s.mytasklist, -- Middle widget
{ -- Right widgets
  layout = wibox.layout.fixed.horizontal,
	...
	ip_widget,
	...
},
```

Restart awesome ;)
