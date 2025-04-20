# 1. Use an official lightweight Python image
FROM python:3.12-slim

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy requirements and install
COPY app/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Copy the app code into the container
COPY app/ ./app

# 5. Expose port 5000 to the outside
EXPOSE 5000

# 6. Run the app using gunicorn
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app.app:app"]
