(
        export TEXTDOMAIN=wifi-check

        . gettext.sh

        if [ ! -x /usr/sbin/rfkill ] || [ ! -c /dev/rfkill ]; then
                exit 0
        fi

        if ! /usr/sbin/rfkill list wifi | grep -q "Soft blocked: yes" ; then
                exit 0
        fi

        echo
        /usr/bin/gettext -s "Wi-Fi is currently blocked by rfkill."
        /usr/bin/gettext -s "Use raspi-config to set the country before use."
        echo
)
