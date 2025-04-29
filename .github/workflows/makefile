checkov:
	checkov -d .

actionlint:
	actionlint

prettier:
	prettier --check .

prettier/fix:
	prettier --check . --write

markdownlint:
	markdownlint -c .markdown-lint.yml -i node_modules .

precommit/install:
	pre-commit install

precommit/run:
	pre-commit run --all-files

jscpd:
	jscpd -c .jscpd.json .

superlinter:
	docker-compose run superlinter

lint: actionlint prettier markdownlint jscpd
