# ip widget
A simple widget to show the IP of an interface in awesome window manager wibar

## Screenshots

![Screenshot](https://github.com/rubenhortas/awesome-ip-widget/blob/main/screenshots/awesome-ip-widget-screenshot.jpeg)

## Installation and configuration

Clone the repo under your widgets folder: 
  - If you are using a custom theme: ~/.config/awesome/widgets/
  - If you are using a default theme: /usr/share/awesome/lib/ (requires root privileges)

Edit _awesome-ip-widget/ip.lua_ and set your interface name

```lua
local interface = "enp0s3" --Change enp0s3 for your interface name
```


Edit your _lua.rc_ file and add the following
  - If you are using a custom theme: ~/.config/awesome/rc.lua
  - If you are using a default theme: /etc/xdg/awesome/lua.rc (requires root privileges)

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

## Troubleshooting

In case of any problem create an [issue](https://github.com/rubenhortas/awesome-ip-widget/issues/new)

## Support

If you find this widget useful you can star this repo.
