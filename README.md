# Django Template

Deployment-ready Django project template.

![Screenshot](https://github.com/mobiusxs/django-template/blob/master/screenshot.png?raw=true)


## Usage
1. Click `Use this template` and name the project
1. Clone to local machine
1. Create virtualenv and activate it
1. `pip install -r requirements.txt`

## Deploy
1. `python manage.py generate_secret_key`
1. `heroku create [optional name]`
1. `heroku config:set SECRET_KEY=[your secret ket here]`
1. `git push heroku master`

## Features
1. Django-Debug-Toolbar
1. Bootstrap
1. Search
1. Heroku ready
