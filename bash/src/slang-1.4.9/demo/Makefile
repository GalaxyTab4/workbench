# Generated automatically from Makefile.in by configure.
# -*- sh -*-

#---------------------------------------------------------------------------
# Choose a C compiler.  It must understand prototypes.
#-----------------------------------------------------------------------------
CC = gcc
CFLAGS = -g -O2 -fno-strength-reduce
LDFLAGS =  
#-----------------------------------------------------------------------------
# Location where object files are placed (Absolute path)
#-----------------------------------------------------------------------------
OBJDIR = /home/sub77/workbench/bash/src/slang-1.4.9/demo/objs
SRCDIR = /home/sub77/workbench/bash/src/slang-1.4.9/demo
#-----------------------------------------------------------------------------
# Directory where the various libraries are located.
#-----------------------------------------------------------------------------
SLANG_INCLUDE = $(SRCDIR)/../src#             location of slang.h
SLANG_LIB = $(SLANG_INCLUDE)/$(ARCH)objs#     location of libslang.a

#---------------------------------------------------------------------------
# Other libraries
#---------------------------------------------------------------------------
TCAPLIB =  -ldl 
#TCAPLIB = -ltermcap

#----------------------------------------------------------------------------
# End of user configuration
#----------------------------------------------------------------------------

SHELL = /bin/sh
OTHERSTUFF = useropen pager keypad smgtest
CONFIG_H = config.h

ALL_CFLAGS = $(CFLAGS) -Dunix -I$(SLANG_INCLUDE)

COMPILE_CMD = $(CC) -c $(ALL_CFLAGS)
EXECLIBS = -L$(SLANG_LIB) -lslang -lm $(TCAPLIB)
EXECDEPS = $(SLANG_LIB)/libslang.a
DOT_O_DEPS = demolib.c

#---------------------------------------------------------------------------
all: $(OBJDIR) $(CONFIG_H) $(OTHERSTUFF)

$(CONFIG_H) : $(SLANG_LIB)/libslang.a ../src/config.h
	/bin/cp ../src/config.h $(CONFIG_H)
$(SLANG_LIB)/libslang.a :
	cd ../src; $(MAKE)
#
$(OBJDIR):
	@mkdir $(OBJDIR)
#---------------------------------------------------------------------------
# Housekeeping
#---------------------------------------------------------------------------
# The symlinks target is for my own private use.  It simply creates the object
# directory as a symbolic link to a local disk instead of an NFS mounted one.
symlinks:
	-/bin/rm -f $(ARCH)objs
	mkdir -p $(HOME)/sys/$(ARCH)/objs/slang/demo
	ln -s $(HOME)/sys/$(ARCH)/objs/slang/demo $(ARCH)objs
clean:
	-/bin/rm -f $(OBJDIR)/* *~
distclean: clean
	-/bin/rm -rf $(OBJDIR) Makefile
#---------------------------------------------------------------------------
# Everything else from configure script
#---------------------------------------------------------------------------

useropen : $(OBJDIR)/useropen
	@echo useropen created in $(OBJDIR)
$(OBJDIR)/useropen : $(OBJDIR)/useropen.o $(useropen_DEPS) $(EXECDEPS)
	$(CC) -o $(OBJDIR)/useropen $(LDFLAGS) $(OBJDIR)/useropen.o $(useropen_LIBS) $(EXECLIBS)
$(OBJDIR)/useropen.o : $(SRCDIR)/useropen.c $(DOT_O_DEPS) $(useropen_O_DEP)
	cd $(OBJDIR); $(COMPILE_CMD) $(useropen_INC) $(EXECINC) $(SRCDIR)/useropen.c

pager : $(OBJDIR)/pager
	@echo pager created in $(OBJDIR)
$(OBJDIR)/pager : $(OBJDIR)/pager.o $(pager_DEPS) $(EXECDEPS)
	$(CC) -o $(OBJDIR)/pager $(LDFLAGS) $(OBJDIR)/pager.o $(pager_LIBS) $(EXECLIBS)
$(OBJDIR)/pager.o : $(SRCDIR)/pager.c $(DOT_O_DEPS) $(pager_O_DEP)
	cd $(OBJDIR); $(COMPILE_CMD) $(pager_INC) $(EXECINC) $(SRCDIR)/pager.c

keypad : $(OBJDIR)/keypad
	@echo keypad created in $(OBJDIR)
$(OBJDIR)/keypad : $(OBJDIR)/keypad.o $(keypad_DEPS) $(EXECDEPS)
	$(CC) -o $(OBJDIR)/keypad $(LDFLAGS) $(OBJDIR)/keypad.o $(keypad_LIBS) $(EXECLIBS)
$(OBJDIR)/keypad.o : $(SRCDIR)/keypad.c $(DOT_O_DEPS) $(keypad_O_DEP)
	cd $(OBJDIR); $(COMPILE_CMD) $(keypad_INC) $(EXECINC) $(SRCDIR)/keypad.c

smgtest : $(OBJDIR)/smgtest
	@echo smgtest created in $(OBJDIR)
$(OBJDIR)/smgtest : $(OBJDIR)/smgtest.o $(smgtest_DEPS) $(EXECDEPS)
	$(CC) -o $(OBJDIR)/smgtest $(LDFLAGS) $(OBJDIR)/smgtest.o $(smgtest_LIBS) $(EXECLIBS)
$(OBJDIR)/smgtest.o : $(SRCDIR)/smgtest.c $(DOT_O_DEPS) $(smgtest_O_DEP)
	cd $(OBJDIR); $(COMPILE_CMD) $(smgtest_INC) $(EXECINC) $(SRCDIR)/smgtest.c

