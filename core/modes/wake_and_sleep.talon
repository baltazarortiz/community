#defines the commands that sleep/wake Talon
mode: all
-
^(welcome back)+$:
    user.mouse_wake()
    user.history_enable()
    user.talon_mode()
    user.run_rpc_command("cursorless.toggleDecorations", true)

^sleep all | drowse [<phrase>]$:
    user.switcher_hide_running()
    user.history_disable()
    user.homophones_hide()
    user.help_hide()
    user.mouse_sleep()
    speech.disable()
    user.engine_sleep()
    mode.disable("noise")
    user.run_rpc_command("cursorless.toggleDecorations", false)

^talon sleep | drowse [<phrase>]$:
    speech.disable()
    mode.disable("noise")
    user.run_rpc_command("cursorless.toggleDecorations", false)

^(talon wake)+$:
    speech.enable()
    user.run_rpc_command("cursorless.toggleDecorations", true)

^(talon parrot wake)+$:
    speech.enable()
    mode.enable("noise")
    user.run_rpc_command("cursorless.toggleDecorations", true)