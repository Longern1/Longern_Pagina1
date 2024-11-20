from flask import Flask, render_template, request, jsonify
import mysql.connector

app = Flask(__name__)


db_config = {
    'host': 'localhost',
    'user': 'root',
    'password':'',
    'database': 'longern'
}

@app.route('/')
def index():
    return render_template('Longern.html')  

@app.route('/camisetas')
def camisetas():
    return render_template('Camisetas.html')  

@app.route('/pago')
def pago():
    return render_template('pago.html')  
@app.route('/process-payment', methods=['POST'])
def process_payment():

    data = request.get_json()

    full_name = data.get('fullName')
    cedula = data.get('cedula')
    city = data.get('city')
    address = data.get('address')
    payment_method = data.get('paymentMethod')
    cart = data.get('cart')


    cursor = None
    conn = None

 
    try:
        conn = mysql.connector.connect(**db_config)  
        cursor = conn.cursor()
        cursor.execute('''
            INSERT INTO payments (full_name, cedula, city, address, payment_method, cart_details)
            VALUES (%s, %s, %s, %s, %s, %s)
        ''', (full_name, cedula, city, address, payment_method, str(cart)))  
        conn.commit()
        return jsonify({'status': 'success'}), 200  
    except Exception as e:
        return jsonify({'status': 'error', 'message': str(e)}), 500  
    finally:

        if cursor:
            cursor.close()
        if conn:
            conn.close()

if __name__ == '__main__':
    app.run(debug=True)
