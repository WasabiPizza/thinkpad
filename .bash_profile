# .bash_profile

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc

export XDG_RUNTIME_DIR=/run/user/$(id -u)
if ! test -d "${XDG_RUNTIME_DIR}"; then
    mkdir "${XDG_RUNTIME_DIR}"
    chmod 0700 "${XDG_RUNTIME_DIR}"
fi

if [ "$(tty)" = "/dev/tty1" ]; then
	exec dbus-run-session sway
fi
