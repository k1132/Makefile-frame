.PHONY:all clean
ROOT_DIR = .

DIRS = $(ROOT_DIR)/module1 $(ROOT_DIR)/src

RM = rm
RMFLAGS = -fr

RMS = $(ROOT_DIR)/build/exes $(ROOT_DIR)/build/libs

all:
	@set -e;\
	for dir in $(DIRS);\
	do\
		$(MAKE) -C $$dir ;\
	done
	@echo ""
	@echo "complete"
	@echo ""	

clean:
	@set -e;\
	for dir in $(DIRS);\
	do\
		$(MAKE) clean -C $$dir ;\
	done
	$(RM) $(RMFLAGS) $(RMS) 
	@echo ""
	@echo "complete"
	@echo ""	

	
