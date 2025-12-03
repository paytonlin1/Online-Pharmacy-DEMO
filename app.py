from flask import Flask, render_template

# TEMPLATE
app = Flask(__name__)
# Add info here
# app.config['MYSQL_HOST'] = ''
# app.config['MYSQL_USER'] = ''
# app.config['MYSQL_PASSWORD'] = ''
# app.config['MYSQL_DB'] = ''

@app.route('/')
def home():
    return render_template('home.html')
if __name__ == '__main__':
    app.run()
    
@app.route('/doctor')
def doctor_page():
    return render_template('doctor.html')

@app.route('/patient')
def doctor_page():
    return render_template('patient.html')

@app.route('/pharmacist')
def doctor_page():
    return render_template('pharmacist.html')