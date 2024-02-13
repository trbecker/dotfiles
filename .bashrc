# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
unset rc

export EDITOR=vim

for src in ${HOME}/.bashrc.d/*.enabled ; do
	source ${src}
done

function bashrc_enable {
	if [ -f ${HOME}/.bashrc.d/$1 ] ; then
		ln -sf ${HOME}/.bashrc.d/$1 ${HOME}/.bashrc.d/$1.enabled
	fi
}

function bashrc_disable {
	if [ -f ${HOME}/.bashrc.d/$1.enabled ] ; then
		rm -fr ${HOME}/.bashrc.d/$1.enabled
	fi
}
