A script to install ansible on a testbed node, so that that node can be used as an ansible control machine.

This tries to be generic, by detecting the Linux distribution and then using the distributions package manager to install ansible.
It will likely fail on many testbed nodes for which it was not tested.

