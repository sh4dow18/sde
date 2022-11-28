# Qtile Configuration File
# http://www.qtile.org/

# Created by Sh4dow18
# My Github: https://www.github.com/sh4dow18
# My Computing Spanish Youtube Channel: Sh4dow18 Proyect
# My Website: https://sh4dow18.github.io

from typing import List  

from libqtile import bar, layout, widget
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy

super_key = "mod4"
alt_key = "mod1"
terminal = "/snap/bin/alacritty"

keys = [
    Key([super_key], "j", lazy.layout.down(), desc="Move focus down"),
    Key([super_key], "k", lazy.layout.up(), desc="Move focus up"),

    Key([super_key, "shift"], "j", lazy.layout.shuffle_down(), desc="Move window down"),
    Key([super_key, "shift"], "k", lazy.layout.shuffle_up(), desc="Move window up"),

    Key([super_key], "Return", lazy.spawn(terminal), desc="Launch terminal"),
    Key([super_key], "z", lazy.spawn("rofi -show run"), desc="Open Rofis Menu"),

    Key([alt_key], "Tab", lazy.next_layout(), desc="Toggle between layouts"),
    Key([alt_key], "w", lazy.window.kill(), desc="Kill focused window"),

    Key([alt_key], "f", lazy.spawn("firefox"), desc="Open Firefox"),
    Key([alt_key], "c", lazy.spawn("code"), desc="Open Visual Studio Code"),
    Key([alt_key], "s", lazy.spawn("scrot"), desc="Make a Screenshot"),

    Key([super_key, "control"], "r", lazy.restart(), desc="Restart Qtile"),
    Key([super_key, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile")
]

groups = [Group(i) for i in ["", "", "", "", "爵",""]]
for i, j in enumerate(groups):
    actual_key = str(i+1)
    keys.extend([
        Key([alt_key], actual_key, lazy.group[j.name].toscreen()),
        Key([alt_key, "shift"], actual_key, lazy.window.togroup(j.name)),
    ])

layouts = [
    layout.Max(),
    layout.MonadTall()
]

widget_defaults = dict(
    font='UbuntuMono Nerd Font Bold',
    fontsize=14,
    padding=3
)
extension_defaults = widget_defaults.copy()

screens = [
    Screen(
        bottom=bar.Bar(
            [
                widget.GroupBox(
                    borderwidth=5,
                    inactive=["#ffffff", "#ffffff"],
                    this_current_screen_border=["037bfc", "037bfc"],
                    highlight_method='block',
                    margin_y=3.2,
                    fontsize=35,
                    font='sans',
                ),
                widget.TextBox(
                    text="Window:"
                ),
                widget.WindowName(
                    foreground="037bfc"
                ),
                widget.CurrentLayout(
                    fontsize=16
                ),
                widget.Systray(),
                widget.Clock(
                    format='%d-%m-%Y %a %I:%M %p',
                ),
                widget.Image(
                    filename="~/.wallpapers/logo.png"
                )
            ],
            24,
        ),
    ),
]

mouse = []

dgroups_key_binder = None
dgroups_app_rules = []
main = None
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating(float_rules=[
    *layout.Floating.default_float_rules,
    Match(wm_class='confirmreset'),
    Match(wm_class='makebranch'),
    Match(wm_class='maketag'),
    Match(wm_class='ssh-askpass'),
    Match(title='branchdialog'),
    Match(title='pinentry'),
])
auto_fullscreen = True
focus_on_window_activation = "smart"

wmname = "LG3D Sh4dow's Qtile"
