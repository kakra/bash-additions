#!/bin/bash
#
# made by Kai Krakow <hurikhan77@gmail.com>
# Use as-is, no license involved

# parses the git branch of current the directory for inclusion into the
# prompt
# no parameters
parse_git_branch() {
	if [ -x "$(type -p git)" ]; then
		git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [git:\1]/'
	fi
}

# shortens current path by compressing all but the last path component,
# keeping only the first letter after "/", ".", and "-"
# call with parameters: "<path>" <max-length>
_dir_chomp() {
	if [ -x "$(type -p ruby)" ]; then
		ruby -e"a='$1'.gsub(%r{^$HOME},'~');b,a=a,a.gsub(%r{([-/])(\.?[^-/.])[^-/]+([^/]*/.*)},'\\1\\2\\3')while(a.length>$2)&&(b!=a);print ' ',a"
	else
		echo -n " ${PWD/#$HOME/~}"
	fi
}
