from flask import Flask,render_template


app=Flask(__name__)

@app.route("/")

def index():
      return render_template("login.html")

@app.route("/button_click")
def button_click():
    print("button clicked")
    return "Button clicked..."

if __name__=="__main__":
    app.run("/")