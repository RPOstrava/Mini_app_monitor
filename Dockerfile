# Python image jako základ
FROM python:3.11-slim

# Pracovní adresář
WORKDIR /app

# Zkopírujeme soubor s požadavky do kontejneru
COPY app/requirements.txt .

# Nainstalujeme Python balíčky definované v requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Zkopírujeme zbytek aplikace do pracovního adresáře
COPY app/ .

# Otevřeme port 5000, na kterém Flask běží
EXPOSE 5000

# Definujeme příkaz, který se spustí při startu kontejneru
CMD ["python", "app.py"]
