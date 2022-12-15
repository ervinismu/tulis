help: ## This help dialog
help h:
	@IFS=$$'\n' ; \
	help_lines=(`fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##/:/'`); \
	printf "%-30s %s\n" "Command" "Description" ; \
	printf "%-30s %s\n" "-------" "-----------" ; \
	for help_line in $${help_lines[@]}; do \
		IFS=$$':' ; \
		help_split=($$help_line) ; \
		help_command=`echo $${help_split[0]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
		help_info=`echo $${help_split[2]} | sed -e 's/^ *//' -e 's/ *$$//'` ; \
		printf '\033[36m'; \
		printf "%-30s %s" $$help_command ; \
		printf '\033[0m'; \
		printf "%s\n" $$help_info; \
	done

run: ## Running local development server.
run:
	@echo "=================="
	@echo "RUN"
	@echo "=================="
	mix phx.server

init-db: ## Init DB. For example, create DB if not exist
init-db:
	@echo "=================="
	@echo "INIT DB"
	@echo "=================="
	@mix ecto.create

init-env: ## Setup env vars based on .env.sh file
init-env:
	@echo "=================="
	@echo "INIT ENV"
	@echo "=================="
	@source .env.sh
