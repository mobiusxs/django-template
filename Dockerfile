FROM python:3

# Copy only requirements.txt first for cache optimization
COPY requirements.txt /code/

# Move to the code dir and install requirements
WORKDIR /code
RUN pip install -r requirements.txt

# Copy the rest of the files to the container
COPY . /code

# Collect static files to /staticfiles
RUN python3 manage.py collectstatic --no-input

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONBUFFERED 1
ENV DEBUG 0
ENV DATABASE_URL postgres://username:password@db:5432/database
ENV SECRET_KEY !!!SET_SECRET_KEY!!!

# Run gunicorn on startup
CMD ["gunicorn", "config.wsgi:application", "--bind", ":8000"]