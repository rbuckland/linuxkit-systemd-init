# linuxkit-systemd-init

This repo is an experimentation in building a linuxkit distro based on ubuntu, with systemd.

Why bother with systemd ? 

systemd gives us a massive library of useful and predictable tooling for management and ops of an os.

- network setup. the systemd-networkd config is some of the best and predictable and documented there is
- resolved - same as above, amazingl concise and non-surprising
- journalctl and friends - all logging and debug / traceability
- mounts - mount targets ,.. wait on .. filesystem
- startup times .. oh man where do you start.

Linuxkit's basic init (which I am sure will enrich overtime) .. is too simplistic.

For real world critical environments, we need good management tools, even over immutable operating systems.

## Goal

The goal of this repo is to build a linuxkit that is systemd
