local wibox = require("wibox")
local awful = require("awful")
local watch = require("awful.widget.watch")
local gears = require("gears")
local beautiful = require("beautiful")

local interface = "enp0s3" -- Set the interface name here

-- Configure widget appearance
local ip_widget_font = beautiful.font -- Set the font here (family, name, size...) e.g. "sans 12"
local ip_widget_fg_color = "#ffffff"

local command = string.format("ip addr show %s | grep -oE '([[:digit:]]{1,3}.){3}[[:digit:]]{1,3}/' | cut -d'/' -f1 | head -n1", interface)

-- Create the text widget
local ip_widget = wibox.widget{
    {
        font = ip_widget_font,
        widget = wibox.widget.textbox,
    },
    fg = ip_widget_fg_color,
    widget = wibox.container.background,
}

gears.timer {
    timeout   = 10, -- seconds
    call_now  = true,
    autostart = true,
    callback  = function()
        awful.spawn.easy_async_with_shell(string.format('bash -c "%s"', command),
            function(stdout, stderr, reason, exit_code)
                ip = string.gsub(stdout, "[\n\r]", "")

                if(ip ~= "") then
                    ip_widget.widget.text = string.format(" %s ", ip)
                else
                    ip_widget.widget.text = string.format("%s down", interface)
                end
        end)
    end
}

-- Export the widget
return ip_widget
