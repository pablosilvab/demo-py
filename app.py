from flask import Flask, jsonify
import os
import json

app = Flask(__name__)

@app.route('/')
def home():
    return jsonify({"message": "Hello World"})

@app.route('/tvshows')
def tvshows():
    filename = os.path.join(app.static_folder, 'tvshows.json')
    with open(filename) as tvshows:
        data = json.load(tvshows)
    return jsonify(data)

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')