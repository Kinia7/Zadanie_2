# Użyj oficjalnego obrazu Pythona 3.11 jako bazowego
FROM python:3.11

# Ustawiamy zmienną środowiskową
ENV APP_HOME /app

# Ustawiamy katalog roboczy wewnątrz kontenera
WORKDIR $APP_HOME

# Kopiujemy inne pliki do katalogu roboczego kontenera
COPY . .

# Instalujemy zależności wewnątrz kontenera
RUN pip install -r requirements.txt

# Oznaczamy port, na którym aplikacja działa wewnątrz kontenera
EXPOSE 5000

# Uruchomiamy naszą aplikację wewnątrz kontenera
ENTRYPOINT ["python", "app.py"]
