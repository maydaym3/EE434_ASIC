#!/bin/bash
###############################################################################
# Innovus Source Script
####
# Major Edits:
# YYYY-MM-DD
# 2016-07-24	Luke Renaud (lrenaud), first draft
# 2018-04-05	apg, changed from INNOVUS15 to INNOVUS17
# 2018-04-13	lrenaud, changed from INNOVUS## to INNOVUS name to ease futre updates.
###############################################################################
if [[ $ICTOOLS == "" ]]; then
	echo "`basename $BASH_SOURCE`: ERROR: ICTOOLS isn't defined!"
	echo "    Please source ictools_generic.sh, before sourcing this script."
	return
fi

# First add the port for this product's license
source $ICTOOLS/sh/license-add.sh 27012

##### RC Core Setup
# Define the current product
if [[ $INNOVUS_HOME == "" ]]; then
	export INNOVUS_HOME=`readlink -f ${ICTOOLS}/cadence/INNOVUS`
else
	echo "`basename $BASH_SOURCE`: Using given INNOVUS_HOME=${INNOVUS_HOME}"
fi

### Add this install's path information for the cadence binaries, but only if
### they aren't already present.
toolkit_manpages=$INNOVUS_HOME/share/innovus/man:$INNOVUS_HOME/share/timinglibutil/man
toolkit_path=$INNOVUS_HOME/bin:$INNOVUS_HOME/tools/bin

# Add manpages
if [[ $MANPATH != *$toolkit_manpages* ]]; then
	if [[ $MANPATH == "" ]]; then
		export MANPATH=$toolkit_manpages
	else
		export MANPATH=$toolkit_manpages:$MANPATH
	fi
fi

# Add binaries
source $ICTOOLS/sh/path-strip.sh "$toolkit_path"
export PATH=$PATH:$toolkit_path

