SUMMARY
=======

These are some bash tools I collected over time and which I use on different
computers. To ease sharing this on multiple computers I started publishing
this on [Github][] - thus sharing it with the public.

Please look at the source of each file for licensing information. If not noted
otherwise it is to be used as-is - no guaranties implied.


USAGE INSTRUCTIONS
==================

Usage instruction come in form of short examples. Please modify for your own
needs. It should be pretty straight forward.

prompt-hooks.sh
---------------

Add the following line to your local or system-wide `bashrc`:

    source .../path/to/prompt-hooks.sh

Modify your `PS1` variable in the following or similar way - as it fits you:

    PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] $(_dir_chomp "$(pwd)" 20)\[\033[01;37m\]$(parse_git_branch)\[\033[01;34m\] \$\[\033[00m\] '


AUTHOR
======

Written and maintained by Kai Krakow <hurikhan77@gmail.com>,
http://hurikhan77.wordpress.com/.

Feel free to contribute on [Github][].

[Github]: http://github.com/kakra/bash-additions "bash-additions on Github"
