from flask import Flask, render_template, request,session,url_for,redirect
from flask_sqlalchemy import SQLAlchemy
from flask_mail import Mail, Message
# from flask_login import current_user,UserMixin
# from flask_login import LoginManager
import json
from datetime import datetime


with open('config.json', 'r') as c:
    params = json.load(c)["params"]

local_server = True

app=Flask(__name__,template_folder='template')
app.static_folder = 'static'
app.secret_key='super-secret-key'
app.config.update(
    MAIL_SERVER = 'smtp.gmail.com',
    MAIL_PORT = '465',
    MAIL_USE_SSL = True,
    MAIL_USE_TLS=False,
    MAIL_USERNAME = 'techforgood4@gmail.com',
    MAIL_PASSWORD='ygbojcjtgwqtamfz'
)

mail = Mail(app)
if(local_server):
    app.config['SQLALCHEMY_DATABASE_URI'] = params['local_uri']
else:
    app.config['SQLALCHEMY_DATABASE_URI'] = params['prod_uri']

# login_manager = LoginManager()
# login_manager.init_app(app)
db = SQLAlchemy(app)

class Contacts(db.Model):

    sno = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(80), nullable=False)
    email = db.Column(db.String(20), nullable=False)
    phone_no = db.Column(db.String(12), nullable=False)
    msg = db.Column(db.String(120), nullable=False)
    date = db.Column(db.String(12), nullable=True)

class Volunteer(db.Model):

    sno = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(80), nullable=False)
    email = db.Column(db.String(20), nullable=False)
    phone_no = db.Column(db.String(12), nullable=False)
    msg = db.Column(db.String(120), nullable=False)
    date = db.Column(db.String(12), nullable=True)

class Requests(db.Model):
    sno = db.Column(db.Integer, primary_key=True)
    email = db.Column(db.String(20), nullable=False)
    title = db.Column(db.String(80))
    content = db.Column(db.String(120))
    date = db.Column(db.String(12), nullable=True)


class Users(db.Model):
    name = db.Column(db.String(80))
    email = db.Column(db.String(120), primary_key=True)
    password = db.Column(db.String(80))

@app.route("/" , methods =['GET', 'POST'])
def login():
    if request.method == "POST":
        email = request.form["email"]
        password = request.form["password"]
        login = Users.query.filter_by(email=email, password=password).first()
        if login is not None:
            return render_template("wtl.html")
    return render_template("login.html")

@app.route("/register" , methods =['GET', 'POST'])
def register():
    if request.method == "POST":
        name=request.form["name"]
        email = request.form["email"]
        password = request.form["password"]
        register = Users(name=name ,email=email, password=password)
        db.session.add(register)
        db.session.commit()
        return render_template("wtl.html")
    return render_template("registeration.html")


@app.route("/home")
def home():
    return render_template('wtl.html', params=params)

@app.route("/login_validation", methods=['GET','POST'])
def login_validation():
    email=request.form.get('email')
    password=request.form.get('password')
    return "{} and {}".format(email,password)

@app.route("/forum", methods = ['GET', 'POST'])
def forum():
    if (request.method =='POST'):
        title=request.form.get('title')
        message=request.form.get('message')
        email = request.form.get('email')
        req=Requests(email=email,title=title,content=message,date=datetime.now())
        db.session.add(req)
        db.session.commit()
    allreqs=Requests.query.all()
    return render_template('forum.html', allreqs=allreqs)

@app.route("/contactus.html" , methods = ['GET', 'POST'])
def contact():
    if(request.method=='POST'):
        name = request.form.get('name')
        email = request.form.get('email')
        phone = request.form.get('phone')
        message = request.form.get('message')
        entry = Contacts(name=name, phone_no = phone, msg = message, date= datetime.now(),email = email )
        db.session.add(entry)
        db.session.commit()
        msg = Message('Hello', sender='techforgood4@gmail.com', recipients=[email])
        msg.body = "Hello Flask message sent from Flask-Mail"
        mail.send(msg)
    return render_template('contactus.html', params=params)

@app.route("/profile")
def profile():
    # if current_user.is_authenticated:
    #     user = Users.query.filter_by(username=current_user.name).first()
    #     print(user.name)
    #     print(user.email)
    return render_template('profile.html', params=params)


@app.route("/Needer.html")
def needer():
    return render_template('Needer.html',params=params)


@app.route("/Volunteer.html")
def volunteer():
    return render_template('Volunteer.html',params=params)


@app.route("/ngo_form2.html")
def ngo():
    return render_template('ngo_form2.html',params=params)

@app.route("/dashboard",methods=['GET','POST'])
def dashboard():
    if 'user' in session and session['user']==params['admin_user']:
        allreqs = Requests.query.all()
        return render_template('dashboard.html', params=params, allreqs=allreqs)
    if request.method=="POST":
        username=request.form.get('username')
        password=request.form.get('password')
        if (username==params['admin_user'] and password==params['admin_password']):
            session ['user']= username
            allreqs=Requests.query.all()
            return render_template('dashboard.html',params=params,allreqs=allreqs)
        else:
            return render_template("admin.html")
    else:
        return render_template("admin.html")

@app.route("/logout")
def logout():
    session.pop('user')
    return render_template('login.html')


@app.route('/delete/<int:sno>', methods=['GET', 'POST'])
def delete(sno):
    request = Requests.query.get(sno)
    db.session.delete(request)
    db.session.commit()
    return redirect(url_for('dashboard'))

# @app.route('/sendemail', methods=['GET', 'POST'])
# def sentemail(email):
#     if(request.method=='POST'):
#         name = request.form.get('name')
#         email = request.form.get('email')
#         phone = request.form.get('phone')
#         message = request.form.get('message')
#         entry = Volunteer(name=name, phone_no = phone, msg = message, date= datetime.now(),email = email )
#         db.session.add(entry)
#         db.session.commit()
#         msg = Message('Hello', sender='techforgood4@gmail.com', recipients=[email])
#         msg.body = "Hello Flask message sent from Flask-Mail"
#         mail.send(msg)
#     return render_template('forum.html', params=params)

@app.route('/send_email/<string:email>',methods=['GET','POST'])
def send_email(email):
    name = request.form['name']
    sender = request.form['email']
    phone = request.form['phone']
    message = request.form['message']
    # Create a message object with the form data
    msg = Message('New Response', sender='techforgood4@gmail.com', recipients=[email])
    msg.body = f'Name: {name}\nEmail: {sender}\nPhone: {phone}\nMessage: {message}'
    mail.send(msg)
    msg1 = Message('New Response', sender='techforgood4@gmail.com', recipients=[sender])
    msg1.body = "Your Request is send succesfully"
    mail.send(msg1)
    return 'Email sent successfully'

app.run(debug=True)


