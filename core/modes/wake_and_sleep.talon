#defines the commands that sleep/wake Talon
mode: all
-
^(welcome back)+$:
    user.mouse_wake()
    user.history_enable()
    user.talon_mode()

^sleep all | drowse [<phrase>]$:
    user.switcher_hide_running()
    user.history_disable()
    user.homophones_hide()
    user.help_hide()
    user.mouse_sleep()
    speech.disable()
    user.engine_sleep()
    mode.disable("noise")

^talon sleep | drowse [<phrase>]$:
    speech.disable()
    mode.disable("noise")

^(talon wake)+$:
    speech.enable()

^(talon parrot wake)+$:
    speech.enable()
    mode.enable("noise")