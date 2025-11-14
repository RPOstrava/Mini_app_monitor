from flask import Flask
from datetime import datetime

app = Flask(__name__)
visits = 0

@app.route('/')
def home():
    global visits
    visits += 1
    return f"""
    <h1>Mini App Monitor</h1>
    <p>Aktuální čas: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}</p>
    <p>Počet přístupů: {visits}</p>
    """

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
