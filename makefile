.PHONY:all clean

##
PWD_DIR=$(shell pwd)
SRC_DIR=$(PWD_DIR)/src
OBJ_DIR=$(PWD_DIR)/obj
MAIN_DIR=$(PWD_DIR)/main
LIB_DIR=$(PWD_DIR)/lib
INC_DIR=$(PWD_DIR)/inc

##
CC=gcc
CFLAG=-Wall -g -I$(INC_DIR) -I/data/cap/c/package/php-5.6.29 -I/data/cap/c/package/php-5.6.29/Zend -I/data/cap/c/package/php-5.6.29/TSRM

##
export PWD_DIR SRC_DIR OBJ_DIR MAIN_DIR LIB_DIR INC_DIR CC CFLAG
 
##
all:
	#make -C $(SRC_DIR)
	make -C $(MAIN_DIR)
	make -C $(OBJ_DIR)

##
clean:
	$(RM) -rf $(OBJ_DIR)/*.o
	$(RM) app
