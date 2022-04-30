local wibox = require("wibox")
local awful = require("awful")
local watch = require("awful.widget.watch")
local gears = require("gears")

-- Configure the interface
local interface = "enp0s3"

local command = string.format("ip addr show %s | grep -oE '[[:digit:].]{2,3}[[:digit:].]{2,3}[[:digit:].]{2,3}[[:digit:]]{2,3}/' | cut -d'/' -f1", interface)

-- Create the text widget
local ip_text = wibox.widget{
	font = "sans 12",
	widget = wibox.widget.textbox,
}

-- Create the background widget
local ip_widget = wibox.widget.background()
ip_widget:set_widget(ip_text) -- Put the text inside of it

-- Set the colors and some text
ip_widget:set_fg("#ffffff") -- White text
ip_text:set_text("")

local ip = ""

gears.timer {
	timeout	 = 10, -- seconds
	call_now	 = true,
	autostart = true,
	callback	 = function()
		awful.spawn.easy_async_with_shell(string.format('bash -c "%s"', command),
			function(stdout, stderr, reason, exit_code)
				ip = string.gsub(stdout, "[\n\r]", "")

				if(ip ~= "") then
					ip_text.text = string.format(" %s ", ip)
				else
					ip_text.text = string.format("%s down", interface)
				end
		end)
	end
}

--Export the widget
return ip_widget
