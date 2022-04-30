# ip widget
A simple widget to show the ip of an interface in awesome window manager wibar

## Installation

Clone the repo under your widgets folder: 
  - If you are using a custom theme: ~/.config/awesome/widgets
  - If you are using a default theme: /usr/share/awesome/lib/

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
