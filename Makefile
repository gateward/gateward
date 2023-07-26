dev: 
	docker-compose up -d
	npm run start &
	pipenv run python manage.py runserver

migrate: 
	pipenv run python manage.py makemigrations
	pipenv run python manage.py migrate

clean:
	docker-compose down
