#!/bin/sh

# PROVIDE: octoprint
# REQUIRE: DAEMON

$_rc_subr_loaded . /etc/rc.subr

name="octoprint"
rcvar=$name
command="@PREFIX@/bin/octoprint-3.7"
pidfile="/tmp/$name.pid"
procname="@PREFIX@/bin/python3.7"
command_args="daemon start"

load_rc_config $name
run_rc_command "$1"
