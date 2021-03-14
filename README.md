# README
## Edward Vielmetti's shell tools

this is a collection of shell tools and dot files to follow me around,
plus some automation designed to install the latest releases of
several development tools.

the goal in all of this is to take a completely new bare metal machine,
run a handful of commands, and get a fully familiar environment with it,
all driven by files that are change controlled in git and/or secrets in
some completely suitable secrets repository.

### randomness

* randomline, pick-eight - generates random sets of lines from a file.
these end up being just `shuf` with wrappers, but that wasn't always the case.
and I have to be sure to install `shuf` if it's not already there.

### time

* day - prettyprints a day in the past or future
* isodate - print a date in ISO week format
* wikidayblock - generates a block of dates (in socialtext wiki format) in past and future
* month-num-to-name.sh - helper script for date formatting

### dotfiles

I should have customizations at least for git and vim here.

## packages

Package manifests will be designed to be installed with `comtrya`, tbd
exactly on how the repo will be laid out to support that. 

I would dearly love to have suitable automation to get the
latest versions of some key compilers installed, particularly
`go` and `rust`, especially on Ubuntu where the system 
compilers are not the latest.
