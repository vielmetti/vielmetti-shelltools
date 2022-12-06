# README
## Edward Vielmetti's shell tools

this is a collection of shell tools and dot files to follow me around,
plus some automation designed to install the latest releases of
several development tools.

the goal in all of this is to take a completely new bare metal machine,
run a handful of commands, and get a fully familiar environment with it,
all driven by files that are change controlled in git and/or secrets in
some completely suitable secrets repository. The manifests in the
root directory of this project are designed for use by `comtrya`,
and will set up the necessary files as well as install the necessary
packages.

the goal is to minimize "zero to demo on a new machine", and also
to really support setting up temporary working machines that can
be fully functional and also destroyed with complete confidence of
no loss of data.

To install, first install `comtrya` per package directions, then

`comtrya -d https://github.com/vielmetti/vielmetti-shelltools apply`

Note that this is only really supposed to work for me, and that you
may need to make (extensive) changes to get it to work for you.

## manifests in the top level directory

The bootstrap process currently involves installing `comtrya`, installing
git, cloning this repo, and then running comtrya from the top of
that repo. For the moment I'm only targeting Ubuntu 20.04.

The manifests provided should do the following when they are done:

* secrets.yml - when secrets are supported, bootstrap them here
* dotfiles.yml - set up dot files in root directory
* github.yml - pull down a complete set of source trees
* bindir.yml - install utilities from files/bin
* ubuntu.yml - install packages from the standard ubuntu repos
* ubuntu-languages.yml - install latest versions of compilers from PPA or packages
* ubuntu-tailscale.yml - set up private networking
* ubuntu-equinix-metal.yml - cli tools to support setting up a new metal machine

## secrets

At some point along the way, bootstrapping may be possible for secrets
like SSH keys, Github tokens, cloud provider API keys and the like.
Not yet.

## dotfiles

I should have customizations at least for git and vim here.

## github

I'm usually working on some source code, and the installation
should support pulling down all that code at load time.
Really it should support any git repository.

## bindir

Originally this repo was all about collecting random small shell scripts
and I'm including them here for completeness.


### randomness

* randomline, pick-eight - generates random sets of lines from a file.
these end up being just `shuf` with wrappers, but that wasn't always the case.
and I have to be sure to install `shuf` if it's not already there.

### time

* day - prettyprints a day in the past or future
* isodate - print a date in ISO week format
* wikidayblock - generates a block of dates (in socialtext wiki format) in past and future
* month-num-to-name.sh - helper script for date formatting

## packages

Package manifests will be designed to be installed with `comtrya`, tbd
exactly on how the repo will be laid out to support that. 

I would dearly love to have suitable automation to get the
latest versions of some key compilers installed, particularly
`go` and `rust`, especially on Ubuntu where the system 
compilers are not the latest.
