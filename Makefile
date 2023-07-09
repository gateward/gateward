dev: manage.py
	docker-compose up -d
	pipenv run python manage.py runserver

migrate: manage.py
	pipenv run python manage.py makemigration
	pipenv run python manage.py migrate

clean: manage.py
	docker-compose down
