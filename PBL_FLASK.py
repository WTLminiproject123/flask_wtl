from flask import Flask, render_template, request
from flask_sqlalchemy import SQLAlchemy
from flask_mail import Mail
import json
from datetime import datetime

with open('config.json', 'r') as c:
    params = json.load(c)["params"]

local_server = True

app=Flask(__name__,template_folder='template')
app.static_folder = 'static'
app.config.update(
    MAIL_SERVER = 'smtp.gmail.com',
    MAIL_PORT = '465',
    MAIL_USE_SSL = True,
    MAIL_USERNAME = params['gmail-user'],
    MAIL_PASSWORD=  params['gmail-password']
)
mail = Mail(app)
if(local_server):
    app.config['SQLALCHEMY_DATABASE_URI'] = params['local_uri']
else:
    app.config['SQLALCHEMY_DATABASE_URI'] = params['prod_uri']

db = SQLAlchemy(app)


class Contacts(db.Model):
    '''
    sno, name email phone_no, msg, date
    '''
    sno = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(80), nullable=False)
    email = db.Column(db.String(20), nullable=False)
    phone_no = db.Column(db.String(12), nullable=False)
    msg = db.Column(db.String(120), nullable=False)
    date = db.Column(db.String(12), nullable=True)
#
# class posts(db.Model):
#     '''
#     sno, name email phone_no, msg, date
#     '''
#     sno = db.Column(db.Integer, primary_key=True)
#     title = db.Column(db.String(80), nullable=False)
#     slug = db.Column(db.String(25), nullable=False)
#     content = db.Column(db.String(120), nullable=False)
#     date = db.Column(db.String(12), nullable=True)

@app.route("/")
def home():
    # posts = posts.query.filter_by().all()[0:params['no_of_posts']]
    # return render_template('wtl.html', params=params, posts=posts)
    return render_template('wtl.html', params=params)


@app.route("/forum")
def forum():
    return render_template('forum.html', params=params)


# @app.route("/post/<string:post_slug>", methods=['GET'])
# def post_route(post_slug):
#     post= posts.query.filter_by(slug=post_slug).first()
#     return render_template('post.html', params=params,post=post)

# @app.route("/contactus.html" , methods = ['GET', 'POST'])
# def contact():
#     if(request.method=='POST'):
#         name = request.form.get('name')
#         email = request.form.get('email')
#         phone = request.form.get('phone')
#         message = request.form.get('message')
#         entry = Contacts(name=name,email = email,phone_no = phone, msg = message, date= datetime.now() )
#         db.session.add(entry)
#         db.session.commit()
#         # mail.send_message('New message from ' + name,
#         #                   sender=email,
#         #                   recipients=[params['gmail-user']],
#         #                   body=message + "\n" + phone
#         #                   )
#     return render_template("contactus.html", params=params)
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
        # mail.send_message('New message from ' + name,
        #                   sender=email,
        #                   recipients=[params['gmail-user']],
        #                   body=message + "\n" + phone
        #                   )
    return render_template('contactus.html', params=params)

@app.route("/profile")
def profile():
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



app.run(debug=True)


