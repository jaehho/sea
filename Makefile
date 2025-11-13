.SILENT:
.IGNORE:
.PHONY:

# Colors
C_PURPLE := \033[1;35m
C_CYAN   := \033[36m
C_NONE   := \033[0m

help: ## Show this help message
	@echo "Available targets:"
	@echo "=================="
	@grep -E '(^[a-zA-Z_-]+:.*?## .*$$|^# Section: )' $(MAKEFILE_LIST) | \
	  awk 'BEGIN {FS=":.*?## "}; \
	       /^# Section:/ {gsub("^# Section: ",""); print "\n$(C_PURPLE)" $$0 "$(C_NONE)"}; \
	       /^[a-zA-Z_-]+:/ {printf "  $(C_CYAN)%-20s$(C_NONE) %s\n", $$1, $$2}'

# sync-notebooks: ## Sync all notebooks and auto-pair if needed
# 	@echo "Syncing all notebooks..."
# 	@for nb in notebooks/*.ipynb; do \
# 		echo "Syncing $$nb"; \
# 		out=$$(jupytext --sync "$$nb" 2>&1 || true); \
# 		printf "%s\n" "$$out"; \
# 		echo "$$out" | grep -q "is not a paired notebook" && { \
# 			echo "Pairing $$nb then re-syncing"; \
# 			jupytext --set-formats ipynb,py "$$nb"; \
# 			jupytext --sync "$$nb"; \
# 		}; \
# 	done
