# Copyright (c) 2010 Aldo Cortesi
# Copyright (c) 2010, 2014 dequis
# Copyright (c) 2012 Randall Ma
# Copyright (c) 2012-2014 Tycho Andersen
# Copyright (c) 2012 Craig Barnes
# Copyright (c) 2013 horsik
# Copyright (c) 2013 Tao Sauvage
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in # all copies or substantial portions of the Software.  # # THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR # IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
import os
import re
import socket
import subprocess

from libqtile import qtile
from libqtile.config import Click, Drag, Group, Key, Match, Screen, KeyChord
from libqtile import bar, layout, widget, hook
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal

from typing import List  # noqa: F401

mod = "mod4"
myTerm = "st"
myBrowser = "qutebrowser"
# terminal = guess_terminal()

keys = [
    # Essentials key
    Key([mod], "Return", lazy.spawn(myTerm), desc="Launch terminal"),
    Key([mod, "shift"], "Return", lazy.layout.toggle_split(), desc="Toggle between split and unsplit sides of stack"),
    Key([mod], "r", lazy.spawncmd(), desc="Spawn a command using a prompt widget"),
    Key([mod], "w", lazy.window.kill(), desc="Kill focused window"),
    Key([mod, "control"], "r", lazy.restart(), desc="Restart Qtile"),
    Key([mod, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile"),

    # Toggle Layouts
    Key([mod], "t", lazy.next_layout(), desc="Toggle between layouts"),


    # function key
    Key([mod], "d", lazy.spawn("dmenu_run -c -l 20")),
    Key([mod], "e", lazy.spawn("ibus emoji")),

    # Application binding
    KeyChord([mod], "p", [
        Key([], "b", lazy.spawn(myBrowser)),
        Key([], "f", lazy.spawn("firefox")),
        Key([], "p", lazy.spawn("pavucontrol")),
        Key([], "g", lazy.spawn("gedit")),
        Key([], "s", lazy.spawn("pamac-manager")),
        ]),

    # Switch focus of monitors (dual/triple set up)
    Key([mod], "period", lazy.next_screen(), desc="Move focus to next monitor"),
    Key([mod], "comma", lazy.prev_screen(), desc="Move focus to prev monitor"),
    Key([mod], "a", lazy.to_screen(0), desc="Move focus to monitor 1"),
    Key([mod], "b", lazy.to_screen(1), desc="Move focus to monitor 2"),
    Key([mod], "c", lazy.to_screen(2), desc="Move focus to monitor 3"),


    # Window controls
    Key([mod], "n", lazy.layout.normalize(), desc="normalize window size"),
    Key([mod], "m", lazy.layout.maximize()),
    Key([mod], "f", lazy.window.toggle_fullscreen()),
    Key([mod, "shift"], "f", lazy.window.toggle_floating()),

    Key([mod], "s", lazy.layout.next(), desc="Move window focus to other window"),
    Key([mod, "mod1"], "h", lazy.layout.previous(), desc="Move window focus to other window"),

    # Key([mod], "h", lazy.layout.left(), desc="Move focus to left"),
    # Key([mod], "l", lazy.layout.right(), desc="Move focus to right"),
    Key([mod], "j", lazy.layout.down(), desc="Move focus to down"),
    Key([mod], "k", lazy.layout.up(), desc="Move focus to up"),

    Key([mod, "shift"], "j", 
        lazy.layout.shuffle_down(), 
        lazy.layout.section_down(),
        desc="Move windows down in current stack"
        ),
    Key([mod, "shift"], "k", 
        lazy.layout.shuffle_up(), 
        lazy.layout.section_up(),
        desc="Move windows up in current stack"
        ),

    # Resize Layout
    Key([mod, "control"], "l",
        lazy.layout.grow(),
        lazy.layout.increase_nmaster()
        ),
    Key([mod, "control"], "h",
        lazy.layout.shrink(),
        lazy.layout.decrease_nmaster()
        ),

    # Treetab controls
    Key([mod, "shift"], "h",
        lazy.layout.move_left(),
        desc="Move up a section in treetab"
        ),
    Key([mod, "shift"], "l",
        lazy.layout.move_right(),
        desc="Move down a section in treetab"
        ),

    #Stack Control
    Key([mod, "shift"], "Tab",
        lazy.layout.rotate(),
        lazy.layout.flip(),
        desc="Switch which side main pane occupies"
        ),
    Key([mod, "shift"], "space",
        lazy.layout.toggle_split(),
        desc="Toggle between split and unsplit sides of stack"
        ),

    # Emacs programs launched using the KeyChord


    

]

#Original-------------
groups = [
        Group("1", label='DEV', layout='monadtall'),
        Group("2", label='WWW', layout='monadtall'),
        Group("3", label='SYS', layout='monadtall'),
        Group("4", label='DOC', layout='monadtall'),
        Group("5", label='VBOX', layout='monadtall'),
        Group("6", label='CHAT', layout='monadtall'),
        Group("7", label='MUSC', layout='monadtall'),
        Group("8", label='VID', layout='monadtall'),
        Group("9", label='GFX', layout='monadtall')
        ]

for i in groups:
    keys.extend([ # mod1 + letter of group = switch to group
        Key([mod], i.name, lazy.group[i.name].toscreen(),
            desc="Switch to group {}".format(i.name)),

        # mod1 + shift + letter of group = switch to & move focused window to group
        Key([mod, "shift"], i.name, lazy.window.togroup(i.name, switch_group=True),
            desc="Switch to & move focused window to group {}".format(i.name)),
        # Or, use below if you prefer not to switch to that group.
        # # mod1 + shift + letter of group = move focused window to group
        # Key([mod, "shift"], i.name, lazy.window.togroup(i.name),
        #     desc="move focused window to group {}".format(i.name)),
    ])

layout_theme = {
        "margin": 8,
        "border_width": 1,
        #"border_focus": "#e1acff",
        "border_focus": "#50DB3D",
        "border_normal": "#4c566a"
        }

layouts = [
    layout.MonadTall(margin=8, border_width=1, border_focus="#50DB3D", border_normal="#4c566a"), # layout.MonadWide(**layout_theme),
    layout.Max(**layout_theme),
    #layout.Columns(border_focus_stack=['#d75f5f', '#8f3d3d'], border_width=4),
    layout.Stack(num_stacks=2, **layout_theme),
    layout.Floating(**layout_theme),
    # Try more layouts by unleashing below layouts.
    # layout.Stack(num_stacks=2),
    # layout.Bsp(),
    # layout.Matrix(),
    # layout.MonadTall(),
    # layout.MonadWide(),
    layout.RatioTile(**layout_theme),
    # layout.Tile(),
    # layout.TreeTab(
    #    font = "Ubuntu",
    #    fontsize = 10,
    #    sections = ["FIRST", "SECOND", "THIRD", "FOURTH"],
    #    section_fontsize = 10,
    #    border_width = 2,
    #    bg_color = "1c1f24",
    #    active_bg = "c678dd",
    #    active_fg = "000000",
    #    inactive_bg = "a9a1e1",
    #    inactive_fg = "1c1f24",
    #    padding_left = 0,
    #    padding_x = 0,
    #    padding_y = 5,
    #    section_top = 10,
    #    section_bottom = 20,
    #    level_shift = 8,
    #    vspace = 3,
    #    panel_width = 150
    #    ),
    # layout.VerticalTile(),
    # layout.Zoomy(),
]

###### BAR COLORS #####

colors = [["#282c34", "#282c34"], # panel background 
          ["#3d3f4b", "#434758"], # background for current screen tab
          ["#ffffff", "#ffffff"], # font color for group names
          ["#ff5555", "#ff5555"], # border line color for current tab
          ["#74438f", "#74438f"], # border line color for 'other tabs' and color for 'odd widgets'
          ["#2BB000", "#2BB000"], # color for the 'even widgets'
          ["#309F1C", "#309F1C"], # window name
          ["#2BBA36", "#2BBA36"]] # backbround for inactive screens

prompt = "{0}@{1}: ".format(os.environ["USER"], socket.gethostname())

widget_defaults = dict(
    font='Hack NF',
    fontsize=12,
    padding=2,
    background=colors[2]
)
extension_defaults = widget_defaults.copy()

def init_widgets_list():
   widgets_list = [
                     widget.Sep(
                         linewidth = 0,
                         padding = 6,
                         foreground = colors[1],
                         background = colors[0]
                         ),
                     widget.Image( 
                         background = "#282c34",
                         filename = "~/icon/python_icon.png",
                         scale = "False",
                         mouse_callbacks = {'Button1': lambda: qtile.cmd_spawn(myTerm)}
                         ),
                     widget.Sep( 
                         linewidth = 0,
                         padding = 6,
                         foreground = colors[2],
                         background = colors[0]
                         ),
                     widget.GroupBox( 
                         font = "Hack NF", 
                         fontsize = 10,
                         margin_y = 3,
                         margin_x = 0,
                         padding_y = 6,
                         padding_x = 3,
                         borderwidth = 3,
                         active = colors[2],
                         inactive = colors[7],
                         rounded = False,
                         highlight_color = colors[1],
                         highlight_method = "block",
                         this_current_screen_border = colors[6],
                         this_screen_border = colors [4],
                         other_current_screen_border = colors[6],
                         other_screen_border = colors[4],
                         foreground = colors[2],
                         background = colors[0]
                         ),
                     widget.Sep( 
                         linewidth = 0,
                         padding = 20,
                         foreground = colors[2],
                         background = colors[0]
                         ),
                     widget.TextBox(
                             text = "📌",
                             padding = 2,
                             # foreground = colors[2],
                             background = colors[0],
                             ),
                     widget.Prompt(
                         prompt = prompt,
                         font = "Hack NF",
                         padding = 10,
                         foreground = colors[2],
                         background = colors[0]
                         ),
                     widget.Sep( 
                         linewidth = 0,
                         padding = 40,
                         foreground = colors[2],
                         background = colors[0]
                         ),
                     widget.WindowName( 
                             foreground = colors[2],
                             background = colors[0],
                             padding = 0
                             ),
                     widget.Systray(
                             foreground = colors[2],
                             background = colors[0],
                             padding = 5
                             ),
                     widget.Sep(
                             linewidth = 0,
                             padding = 6,
                             foreground = colors[0],
                             background = colors[0]
                             ),
                     widget.CPU(
                             background = colors[0],
                             foreground = colors[2],
                             ),
                     widget.Sep(
                             linewidth = 1,
                             padding = 6,
                             foreground = colors[5],
                             background = colors[0]
                             ),
                     widget.TextBox(
                             text = "🔔",
                             padding = 2,
                             foreground = colors[2],
                             background = colors[0],
                             fontsize = 14
                             ),
                     widget.CheckUpdates(
                             update_interval = 1800,
                             distro = "Arch_checkupdates",
                             display_format = "{updates} Updates",
                             mouse_callbacks = {'Button1': lambda: qtile.cmd_spawn(myTerm + ' -e sudo pacman -Syu')}, 
                             foreground = colors[2],
                             background = colors[0]
                             ),
                     widget.Sep(
                         linewidth = 1,
                         padding = 6,
                         foreground = colors[5],
                         background = colors[0]
                         ),
                     widget.TextBox(
                             text = "🎵",
                             foreground = colors[2],
                             background = colors[0],
                             padding = 0
                             ),
                     widget.Volume(
                             foreground = colors[2],
                             background = colors[0],
                             padding = 5),
                     widget.Sep(
                         linewidth = 1,
                         padding = 6,
                         foreground = colors[5],
                         background = colors[0]
                         ),
                     widget.CurrentLayoutIcon(
                             # custom_icon_paths = [os.path.expanduser("~/icon/python_icon.png")],
                             foreground = colors[0],
                             background = colors[0],
                             padding = 0,
                             scale = 0.7
                             ),
                     widget.CurrentLayout(
                             foreground = colors[2],
                             background = colors[0],
                             padding = 5
                             ),
                     widget.Sep(
                         linewidth = 1,
                         padding = 6,
                         foreground = colors[5],
                         background = colors[0]
                         ),
                     widget.TextBox(
                             text = "✅",
                             foreground = colors[2],
                             background = colors[0],
                             padding = 0
                             ),
                     widget.WindowCount(
                         foreground = colors[2],
                         background = colors[0]
                             ),
                     widget.Sep(
                         linewidth = 1,
                         padding = 6,
                         foreground = colors[2],
                         background = colors[0]
                         ),
                     widget.TextBox(
                             text = "📅",
                             foreground = colors[2],
                             background = colors[0],
                             padding = 0
                             ),
                     widget.Clock(
                             foreground = colors[2],
                             background = colors[0],
                             format = "%A, %B %d - %H:%M "
                             ),
                   ]
   return widgets_list

def init_widgets_screen1():
     widgets_screen1 = init_widgets_list()
     del widgets_screen1[7:8]               # Slicing removes unwanted widgets (systray) on Monitors 1,3
     return widgets_screen1

def init_widgets_screen2():
    widgets_screen2 = init_widgets_list()
    return widgets_screen2                 # Monitor 2 will display all widgets in widgets_list

def init_screens():
    return [Screen(top=bar.Bar(widgets=init_widgets_screen1(), opacity=1.0, size=20)),
            Screen(top=bar.Bar(widgets=init_widgets_screen2(), opacity=1.0, size=20)),
            Screen(top=bar.Bar(widgets=init_widgets_screen1(), opacity=1.0, size=20))]

if __name__ in ["config", "__main__"]:
    screens = init_screens()
    widgets_list = init_widgets_list()
    widgets_screen1 = init_widgets_screen1()
    widgets_screen2 = init_widgets_screen2()

def window_to_prev_group(qtile):
    if qtile.currentWindow is not None:
        i = qtile.groups.index(qtile.currentGroup)
        qtile.currentWindow.togroup(qtile.groups[i - 1].name)

def window_to_next_group(qtile):
    if qtile.currentWindow is not None:
        i = qtile.groups.index(qtile.currentGroup)
        qtile.currentWindow.togroup(qtile.groups[i + 1].name)

def window_to_previous_screen(qtile):
    i = qtile.screens.index(qtile.current_screen)
    if i != 0:
        group = qtile.screens[i - 1].group.name
        qtile.current_window.togroup(group)

def window_to_next_screen(qtile):
    i = qtile.screens.index(qtile.current_screen)
    if i + 1 != len(qtile.screens):
        group = qtile.screens[i + 1].group.name
        qtile.current_window.togroup(group)

def switch_screens(qtile):
    i = qtile.screens.index(qtile.current_screen)
    group = qtile.screens[i - 1].group
    qtile.current_screen.set_group(group)

mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(),
         start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(),
         start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front())
]


dgroups_key_binder = None
dgroups_app_rules = []  # type: List
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False

floating_layout = layout.Floating(float_rules=[
    # Run the utility of `xprop` to see the wm class and name of an X client.
    *layout.Floating.default_float_rules,
    Match(wm_class='confirmreset'),  # gitk
    Match(wm_class='makebranch'),  # gitk
    Match(wm_class='maketag'),  # gitk
    Match(wm_class='ssh-askpass'),  # ssh-askpass
    Match(title='branchdialog'),  # gitk
])

auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True

# If things like steam games want to auto-minimize themselves when losing
# focus, should we respect this or not?
auto_minimize = True

# The application that should autostart every time Qtile is started
@hook.subscribe.startup_once
def autostart():
    home = os.path.expanduser('~/.config/qtile/autostart.sh')
    subprocess.call([home])

# XXX: Gasp! We're lying here. In fact, nobody really uses or cares about this
# string besides java UI toolkits; you can see several discussions on the
# mailing lists, GitHub issues, and other WM documentation that suggest setting
# this string if your java app doesn't work correctly. We may as well just lie
# and say that we're a working one by default.
#
# We choose LG3D to maximize irony: it is a 3D non-reparenting WM written in
# java that happens to be on java's whitelist.
wmname = "LG3D"
