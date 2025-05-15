# Makefile to extract all .tgz files in data/

DATA_DIR := data
TGZ_FILES := $(wildcard $(DATA_DIR)/*.tgz)

.PHONY: extract clean

extract:
	@echo "Extracting .tgz files in $(DATA_DIR)/..."
	@for file in $(TGZ_FILES); do \
		echo "Extracting $$file..."; \
		tar -xvzf $$file -C $(DATA_DIR); \
	done
	@echo "Extraction complete."

clean:
	@echo "Removing extracted files from $(DATA_DIR)/..."
	@rm -rf $(DATA_DIR)/jpg $(DATA_DIR)/segmim 
	@echo "Cleaned."