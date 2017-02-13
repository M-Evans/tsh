# Makefile for the CS:APP Shell Lab

TEAM = NOBODY
VERSION = 1
HANDINDIR = /afs/cs/academic/class/15213-f02/L5/handin
DRIVER = ./sdriver.pl
TSH = ./tsh
TSHREF = ./tshref
TSHARGS = "-p"
CC = gcc
CFLAGS = -Wall -O2
TRACE_FILE_DIR = trace
FILES = $(TSH) ./myspin ./mysplit ./mystop ./myint

all: $(FILES)

##################
# Handin your work
##################
handin:
	cp tsh.c $(HANDINDIR)/$(TEAM)-$(VERSION)-tsh.c


##################
# Regression tests
##################

testall: all
	test/testall.sh

# Run tests using the student's shell program
test01:
	$(DRIVER) -t $(TRACE_FILE_DIR)/trace01.txt -s $(TSH) -a $(TSHARGS)
test02:
	$(DRIVER) -t $(TRACE_FILE_DIR)/trace02.txt -s $(TSH) -a $(TSHARGS)
test03:
	$(DRIVER) -t $(TRACE_FILE_DIR)/trace03.txt -s $(TSH) -a $(TSHARGS)
test04:
	$(DRIVER) -t $(TRACE_FILE_DIR)/trace04.txt -s $(TSH) -a $(TSHARGS)
test05:
	$(DRIVER) -t $(TRACE_FILE_DIR)/trace05.txt -s $(TSH) -a $(TSHARGS)
test06:
	$(DRIVER) -t $(TRACE_FILE_DIR)/trace06.txt -s $(TSH) -a $(TSHARGS)
test07:
	$(DRIVER) -t $(TRACE_FILE_DIR)/trace07.txt -s $(TSH) -a $(TSHARGS)
test08:
	$(DRIVER) -t $(TRACE_FILE_DIR)/trace08.txt -s $(TSH) -a $(TSHARGS)
test09:
	$(DRIVER) -t $(TRACE_FILE_DIR)/trace09.txt -s $(TSH) -a $(TSHARGS)
test10:
	$(DRIVER) -t $(TRACE_FILE_DIR)/trace10.txt -s $(TSH) -a $(TSHARGS)
test11:
	$(DRIVER) -t $(TRACE_FILE_DIR)/trace11.txt -s $(TSH) -a $(TSHARGS)
test12:
	$(DRIVER) -t $(TRACE_FILE_DIR)/trace12.txt -s $(TSH) -a $(TSHARGS)
test13:
	$(DRIVER) -t $(TRACE_FILE_DIR)/trace13.txt -s $(TSH) -a $(TSHARGS)
test14:
	$(DRIVER) -t $(TRACE_FILE_DIR)/trace14.txt -s $(TSH) -a $(TSHARGS)
test15:
	$(DRIVER) -t $(TRACE_FILE_DIR)/trace15.txt -s $(TSH) -a $(TSHARGS)
test16:
	$(DRIVER) -t $(TRACE_FILE_DIR)/trace16.txt -s $(TSH) -a $(TSHARGS)

# Run the tests using the reference shell program
rtest01:
	$(DRIVER) -t $(TRACE_FILE_DIR)/trace01.txt -s $(TSHREF) -a $(TSHARGS)
rtest02:
	$(DRIVER) -t $(TRACE_FILE_DIR)/trace02.txt -s $(TSHREF) -a $(TSHARGS)
rtest03:
	$(DRIVER) -t $(TRACE_FILE_DIR)/trace03.txt -s $(TSHREF) -a $(TSHARGS)
rtest04:
	$(DRIVER) -t $(TRACE_FILE_DIR)/trace04.txt -s $(TSHREF) -a $(TSHARGS)
rtest05:
	$(DRIVER) -t $(TRACE_FILE_DIR)/trace05.txt -s $(TSHREF) -a $(TSHARGS)
rtest06:
	$(DRIVER) -t $(TRACE_FILE_DIR)/trace06.txt -s $(TSHREF) -a $(TSHARGS)
rtest07:
	$(DRIVER) -t $(TRACE_FILE_DIR)/trace07.txt -s $(TSHREF) -a $(TSHARGS)
rtest08:
	$(DRIVER) -t $(TRACE_FILE_DIR)/trace08.txt -s $(TSHREF) -a $(TSHARGS)
rtest09:
	$(DRIVER) -t $(TRACE_FILE_DIR)/trace09.txt -s $(TSHREF) -a $(TSHARGS)
rtest10:
	$(DRIVER) -t $(TRACE_FILE_DIR)/trace10.txt -s $(TSHREF) -a $(TSHARGS)
rtest11:
	$(DRIVER) -t $(TRACE_FILE_DIR)/trace11.txt -s $(TSHREF) -a $(TSHARGS)
rtest12:
	$(DRIVER) -t $(TRACE_FILE_DIR)/trace12.txt -s $(TSHREF) -a $(TSHARGS)
rtest13:
	$(DRIVER) -t $(TRACE_FILE_DIR)/trace13.txt -s $(TSHREF) -a $(TSHARGS)
rtest14:
	$(DRIVER) -t $(TRACE_FILE_DIR)/trace14.txt -s $(TSHREF) -a $(TSHARGS)
rtest15:
	$(DRIVER) -t $(TRACE_FILE_DIR)/trace15.txt -s $(TSHREF) -a $(TSHARGS)
rtest16:
	$(DRIVER) -t $(TRACE_FILE_DIR)/trace16.txt -s $(TSHREF) -a $(TSHARGS)


# clean up
clean:
	rm -f $(FILES) *.o *~


