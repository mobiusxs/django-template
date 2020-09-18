# Django Template

Deployment-ready Django project template.

## Features
1. Heroku ready
1. Docker ready
1. Bootstrap 4
1. Django-Debug-Toolbar
1. Django-Extensions
1. Wiring for Search

![Screenshot](https://i.imgur.com/NlgQgYR.png)

## Usage
1. Click `Use this template` and name the project
1. Clone to local machine
1. Create virtualenv and activate it
    ```
    python -m venv venv
    ./venv/scripts/activate 
    ```
1. Install dependencies
    ```
    pip install -r requirements.txt
    ```
1. Uses production settings by default. To change:
    1. Set environment variable; or
        ```
        DJANGO_SETTINGS_MODULE=config.settings.development
        DJANGO_SETTINGS_MODULE=config.settings.testing
        ```
    2. Specify at runtime
        ```
        python manage.py runserver --settings config.settings.development
        python manage.py runserver --settings config.settings.testing
        ```

## Heroku
1. Create `.env`
    ```
    ## CHANGE ##
    SECRET_KEY=!!!SET_SECRET_KEY!!!
    ALLOWED_HOSTS=YOUR_DOMAIN_NAME.com
   
    ## OPTIONAL ##
    ADMIN_URL=admin/
    ```
1. Create a Heroku dyno
    ```
    heroku create [optional name]
    ```
1. Set your secret key before pushing
    ```
    heroku config:set SECRET_KEY="your_secret_key"
    ```
1. Deploy
    ```
    git push heroku master
    ```
1. Create a super user
    ```
    heroku run bash
    python manage.py createsuperuser
    ```

## Docker
1. Create `.env`
    ```
    ## CHANGE ##
    DATABASE_USER=user
    DATABASE_PASS=pass
    DATABASE_NAME=database
    SECRET_KEY=!!!SET_SECRET_KEY!!!
    ALLOWED_HOSTS=localhost 0.0.0.0 :: 127.0.0.1 YOUR_DOMAIN_NAME.com
   
    ## OPTIONAL ##
    ADMIN_URL=admin/
    ```
1. Build and start containers
    ```
    docker-compose up --build
    ```
1. Migrate & createsuperuser
    ```
    docker ps
    docker exec -it <container name> python manage.py migrate
    docker exec -it <container name> python manage.py createsuperuser
    ```
1. Docker common
    ```
    # Delete all Docker files
    docker system prune -a -f --volumes
    ```