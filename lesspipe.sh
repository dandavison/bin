#!/bin/sh

pygmentize -g "$1"

# case "$1" in
#    *.awk|*.el|*.groff|*.java|*.js|*.m4|*.php|*.pl|*.pm|*.pod|*.sh|\
#    *.ad[asb]|*.asm|*.inc|*.[ch]|*.[ch]pp|*.[ch]xx|*.cc|*.hh|\
#    *.lsp|*.l|*.pas|*.p|*.xml|*.xps|*.xsl|*.axp|*.ppd|*.pov|\
#    *.diff|*.patch|*.py|*.R|*.rb|*.sql|*.ebuild|*.eclass)
#       pygmentize "$1" ;;
#    *) exit 0;;
# esac
