#-----------------------------------------------------------------------------
# File    : makefile
# Contents: build MEX files and install cpuinfo-m by adding the relevant
#           directories to the Matlab path
#           NB: tested with Matlab R2011b
#
# Author  : Kristian Loewe
#-----------------------------------------------------------------------------

THISDIR = $(CURDIR)
INSTALLCMD = addpath('$(CURDIR)/cpuinfo-m'); savepath

MATLABROOT = $(dir $(realpath $(shell which matlab)))
MATLAB = $(realpath $(MATLABROOT))/matlab
MEX = $(realpath $(MATLABROOT))/mex

all:
	@if [ -e "$(MEX)" ]; then \
	  $(MAKE) -C cpuinfo/src \
	  $(MAKE) -C cpuinfo-m/src; \
	else \
	  echo "Error: mex not found."; \
	  echo "You may have to add MATLABROOT/bin to your path."; \
	fi;

install:
	@if [ -e "$(MATLAB)" ]; then \
	  $(MATLAB) -nodisplay -nojvm -nosplash -r \
	  "try; $(INSTALLCMD); catch; quit; end; quit;" > /dev/null; \
	else \
	  echo "Error: matlab not found."; \
	  echo "You may have to add MATLABROOT/bin to your path."; \
	fi;
