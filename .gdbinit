set breakpoint pending on

# destination on the right side
set disassembly-flavor intel

#set mem inaccessible-by-default off

shell if [ ! -d ~/.cache/.gdb_history ] ; then rm -rf ~/.cache/.gdb_history ; mkdir -p ~/.cache/.gdb_history ; fi
set history filename ~/.cache/.gdb_history
set history save on
set history expansion on
set history size 100000
set history remove-duplicates 1

# Pretty Printing
set print pretty on
set print object on
set print static-members off
set print vtbl on
set print demangle on
set print sevenbit-strings off
set print asm-demangle on
set print frame-arguments all
set print object on

# Disable pager and let gdb never pause output
set pagination off
set height 0
set width 0

set confirm off

# Show info from which files symbols are loaded from
set verbose on

set prompt \01\033[32m\002>> \001\033[0m\002

# Source project local .gdbinit file.
set auto-load safe-path /
