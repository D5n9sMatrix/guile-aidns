#!/usr/bin/r

# Display One or More Text Files

# Description
# Display one or more (plain) text files, in a platform specific way, typically via a ‘pager’.

# Usage
# file.show(..., header = rep("", nfiles),
#           title = "R Information",
#           delete.file = FALSE, pager = getOption("pager"),
#           encoding = "")

# Arguments
# ...	
# one or more character vectors containing the names of the files to be displayed. 
# Paths with have tilde expansion.

# header	
# character vector (of the same length as the number of files specified in ...) 
# giving a header for each file being displayed. Defaults to empty strings.

# title	
# an overall title for the display. If a single separate window is used for the display, 
# title will be used as the window title. If multiple windows are used, their titles 
# should combine the title and the file-specific header.

# delete.file	
# should the files be deleted after display? Used for temporary files.

# pager	
# the pager to be used: not used on all platforms

# encoding	
# character string giving the encoding to be assumed for the file(s).

# Details
# This function provides the core of the R help system, but it can be 
# used for other purposes as well, such as page.

# How the pager is implemented is highly system-dependent.

# The basic Unix version concatenates the files (using the headers) 
# to a temporary file, and displays it in the pager selected by the 
# pager argument, which is a character vector specifying a system 
# command (a full path or a command found on the PATH) to run on 
# the set of files. The ‘factory-fresh’ default is to use 
# ‘R_HOME/bin/pager’, which is a shell script running the 
# command-line specified by the environment variable PAGER 
# whose default is set at configuration, usually to less. 
# On a Unix-alike more is used if pager is empty.

# Most GUI systems will use a separate pager window for each file, 
# and let the user leave it up while R continues running. The selection 
# of such pagers could either be done using special pager names being 
# intercepted by lower-level code (such as "internal" and "console" on 
# Windows), or by letting pager be an R function which will be called 
# with arguments (files, header, title, delete.file) corresponding to 
# the first four arguments of file.show and take care of interfacing 
# to the GUI.

# The R.app GUI on macOS uses its internal pager irrespective of the 
# setting of pager.

# Not all implementations will honour delete.file. In particular, 
# using an external pager on Windows does not, as there is no way 
# to know when the external application has finished with the file.

# Author(s)
# Ross Ihaka, Brian Ripley.

# See Also
# files, list.files, help; RShowDoc call file.show() for type = "text". 
# Consider getOption("pdfviewer") and e.g., system for displaying pdf 
# files.

# file.edit.

# Examples
file.show(file.path(R.home("doc"), "COPYRIGHTS"))