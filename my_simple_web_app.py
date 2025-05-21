from flask import Flask
from flask import request
app = Flask(__name__)

@app.route("/hello")
def hello():
    return "hello"

@app.route("/my_value")
def simple():
    name=request.args.get("q")
    return f"Let see {name}"
@app.route("/posty",methods=["POST"])
def posty():
    data = request.json
    return {"It was echo and it said":data}

app.run(host="0.0.0.0",debug=True,port=5000)