from flask import Flask
app = Flask(__name__)


@app.route("/")
def index():
  return """
  <h1>Hello Docker</h1>
  <p>A relatively braindead way to get python/Flask running in Docker</p>
  """

if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0')
