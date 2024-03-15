# ECommerce Website with PHP and MySQL
![image](https://github.com/rajeshcse02/ecomm-php/assets/115474222/ba47c783-2671-4f88-aa80-d20c821b043c)


This repository contains code for an eCommerce website built using PHP and MySQL.

## Running the Website Locally

### Step 1: Clone the Repository
Clone this repository using the following command:

`git clone https://github.com/your-username/your-repository.git`


### Step 2: Install XAMPP
Download and install XAMPP from the internet. Start the Apache Tomcat server and MySQL in the XAMPP application.

### Step 3: Move Project Folder
Extract the project zip folder cloned from Git and move the project folder to the XAMPP directory:

`C:\xampp\htdocs<PROJECT_FOLDER>`


### Step 4: Set Up Database
1. Open `localhost/phpmyadmin` in your browser.
2. Create a new database called `shop_db`.
3. Import the SQL file `shop_db.sql` located in the project folder into the `shop_db` database.

### Step 5: Run the Website
Open your browser and navigate to `localhost/<PROJECT_FOLDER>` to view and interact with the website.

## Deployment on AWS EC2 Instance

### Step 1: Create an EC2 Instance
1. Open your AWS Console and go to EC2.
2. Create a new instance (Linux, Ubuntu, or Windows).
3. Download the key pair file for authentication.

### Step 2: Configure Security Groups
1. Allow all traffic in inbound rules for the EC2 instance.
2. Manage security groups and firewall settings as needed.

### Step 3: Connect to EC2 Instance
1. Download the RDP client .exe file for Windows instances.
2. Use the key pair file for authentication and connect to the instance.

### Step 4: Set Up XAMPP and MySQL
1. Download and install XAMPP and MySQL on the EC2 instance.
2. Follow the steps to configure and start the servers on localhost (EC2 instance).

### Step 5: Access the Website
Copy the Public IPv4 address of the EC2 instance and paste it into your browser to view the website.

## Hosting
My website is hosted on an AWS EC2 Instance. You can access it [here](http://13.57.214.50/rajesh_ecom/home.php).

## Contributing
If you'd like to contribute to this project, please fork the repository and submit a pull request.

