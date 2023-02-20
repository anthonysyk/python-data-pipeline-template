venv:
	python3 -m venv venv

deps:
	source venv/bin/activate && \
	pip install -r requirements.txt

save-deps:
	source venv/bin/activate && \
	pip freeze > requirements.txt && \
	make clean-deps

clean-deps:
	sed -i.backup '/@ file/d' requirements.txt && \
	rm requirements.txt.backup

compose-up:
	docker-compose up --build -d mongo mongo-express && docker-compose logs -f

compose-down:
	docker-compose down --remove-orphans

.PHONY: venv deps save-deps clean-deps compose-up compose-down