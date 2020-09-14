# Django Template

Deployment-ready Django project template.

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

## Deploy
1. Generate a secret key before deploying
    ```
    python manage.py generate_secret_key
    ```
1. Create a Heroku dyno
    ```
    heroku create [optional name]
    ```
1. Set your secret key before pushing
    ```
    heroku config:set SECRET_KEY=[your secret ket here]
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

## Features
1. Django-Debug-Toolbar
1. Django-Extensions
1. Bootstrap 4
1. Wiring for Search
1. Heroku ready
