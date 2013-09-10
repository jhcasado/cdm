CDM: The Console Display Manager
================================

This version of CDM will use a common .xinitrc script for the X programs
and will not clear the screen.

Invocation
----------

To run cdm, use

    $ cdm [RCFILE]

cdm tries to source configuration files in this order, and uses the first
existing one:

    [RCFILE specified on command line]
    $HOME/.cdmrc
    /etc/cdmrc

To autostart cdm when you log in your account, copy the content of
/usr/share/doc/cdm/cdm-profile.sh to the tail of your shell profile (~/.profile,
~/.bashrc, etc.).

    # To avoid potential situation where cdm(1) crashes on every TTY, here we
    # default to execute cdm(1) on tty1 only, and leave other TTYs untouched.
    if [[ "$(tty)" == '/dev/tty1' ]]; then
        [[ -n "$CDM_SPAWN" ]] && return
        # Avoid executing cdm(1) when X11 has already been started.
        [[ -z "$DISPLAY$SSH_TTY$(pgrep xinit)" ]] && cdm
    fi

Customisation
-------------

See /etc/cdmrc for examples.


Copying
-------

Copyright (C) 2009-2012, Daniel J Griffiths <dgriffiths@ghost1227.com>
Thanks to:

    Andrwe          beta-testing and submitting the fix for the all
                    important X incrementation function
    brisbin33       code cleanup
    tigrmesh        finding a critical issue with the gnome-session handler
    Profjim         several incredibly useful patches
    lambchops468    consolekit and hibernation patches
    CasperVector    Massive rearchitecturing and code sanitation

Licensed under GPLv2+

