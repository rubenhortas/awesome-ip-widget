# ip widget
A simple widget to show the IP of an interface in the awesome window manager wibar.

![GitHub repo file count](https://img.shields.io/github/directory-file-count/rubenhortas/awesome-ip-widget)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/rubenhortas/awesome-ip-widget)
![GitHub repo size](https://img.shields.io/github/repo-size/rubenhortas/awesome-ip-widget)

![GitHub issues](https://img.shields.io/github/issues-raw/rubenhortas/awesome-ip-widget)
![GitHub closed issues](https://img.shields.io/github/issues-closed-raw/rubenhortas/awesome-ip-widget)

![GitHub pull requests](https://img.shields.io/github/issues-pr-raw/rubenhortas/awesome-ip-widget)
![GitHub closed pull requests](https://img.shields.io/github/issues-pr-closed-raw/rubenhortas/awesome-ip-widget)

![GitHub](https://img.shields.io/github/license/rubenhortas/awesome-ip-widget)

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

## Discussions
If you want ask (or answer) a question, leave an opinion or have a open-ended conversation you can create (or join) a [discussion](https://github.com/rubenhortas/awesome-ip-widget/discussions/new)

## Support

If you find this widget useful you can star this repo.
