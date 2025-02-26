from flask import Flask, request, render_template
import mysql.connector
import os
 
app = Flask(__name__)
 
def get_db_connection():
    return mysql.connector.connect(
        host='localhost',
        user='root',
        password='arkan@riyasat',
        database='python'
    )
 
@app.route('/')
def form():
    return render_template('index.html')
 
@app.route('/submit', methods=['POST'])
def submit():
    title = request.form['title']
    author = request.form['author']
    year = request.form['year']
    genre = request.form['genre']
    image = request.files['image']
 
    if image:
        image_data = image.read()
 
    connection = get_db_connection()
    cursor = connection.cursor()
    insert_query = "INSERT INTO books (title, author, year_published, genre, image) VALUES (%s, %s, %s, %s, %s)"
    cursor.execute(insert_query, (title, author, year, genre, image_data))
    connection.commit()
    cursor.close()
    connection.close()
 
    return "Data inserted successfully!"
 
if __name__ == '__main__':
    app.run(debug=True)