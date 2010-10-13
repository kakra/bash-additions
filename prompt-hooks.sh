#!/bin/bash
#
# made by Kai Krakow <hurikhan77@gmail.com>
# Use as-is, no license involved

# parses the git branch of current the directory for inclusion into the
# prompt
# no parameters
parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [git:\1]/'
}

# shortens current path by compressing all but the last path component,
# keeping only the first letter after "/", ".", and "-"
# call with parameters: "<path>" <max-length>
_dir_chomp() {
	ruby -e"a='$1'.gsub(%r{^$HOME},'~');b,a=a,a.gsub(%r{([-/])(\.?[^-/.])[^-/]+([^/]*/.*)},'\\1\\2\\3')while(a.length>$2)&&(b!=a);print a"
}
