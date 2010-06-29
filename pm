    #!/bin/bash
    #Script Name: pm

    #Examples:
    #pm i weechat / pm ins weechat / pm install weechat
    #pm r weechat / pm rem weechat / pm remove weechat

    case $1 in
    i | ins | install)
    sudo pacman -S $2
    ;;
    s | search)
    pacman -Ss
    ;;
    r | rem | remove)
    sudo pacman -R $2
    ;;
    n | info | information)
    pacman -Si $2
    ;;
    o | owns)
    pacman -Qo $(which $2)
    ;;
    c | clean)
    sudo pacman -Sc
    ;;
    f | fullclean)
    sudo pacman -Scc
    ;;
    u | upd | update)
    sudo pacman -Syy
    sudo pacman -Syu
    ;;
    h | help)
    echo '
 Usage: pm [OPTIONS] ARGUMENTS
 This script is a pacman script that assists the user
 with only the most basic command usage.

 [OPTIONS]

 h | help                 Shows this help message
 i | ins | install        Install a package
 r | rem | remove         Remove a package
 n | info | information   Information about a package
 c | clean                Clean package cache of not-installed packages
 f | fullclean            Clean the entire package cache
 u | upd | update         Update all packages
 o | owns                 Find what program belongs to which package
 s | search               Search for a package

 SAMPLES:

 If you want to know what package cp (copy) is packaged in, you would simply type this:
	pm o cp
 when before this script, you would type this:
	pacman -Qo $(which cp)

 To run a full system update with updated repositories, you simple do:
	pm u OR pm upd OR pm update
 when prior to the script, you would do:
	sudo pacman -Syy; sudo pacman -Syu'

    ;;
    esac
