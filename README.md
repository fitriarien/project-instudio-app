# project-instudio-app
#### Link: [Project Instudio App](https://github.com/fitriarien/project-instudio-app.git)

Rescratched code: [Instudio Project Server](https://github.com/fitriarien/instudio-project-server-rescratch.git)

“instudio” is an application that can be used to order interior design service and maintain the database easily.
- The admin can use this application to maintain product, image, and order.
- The customer can use this application to view product, order, pay, etc.
#### This application has 2 version:
- Web app for admin
- Mobile app for customer

## Features
### Mobile app for customer
- Register
- Login
- View Product
- View & Update Profile
- Order & View Order
- View Order Detail & Payment
- Pay (dummy payment)
### Web app for admin
- Register
- Login
- Update Product (add, edit, & delete)
- Update Image (upload & delete)
- Update Order
## Technology
### Server
- Java
- Springboot framework
- MySQL 
- Firebase Storage
- Postman API
- JWT (JSON Web Token)
### Client
- Javascript
- React.js
- React Native
- Tailwind CSS
- Expo Go
## UML & ER Diagram
#### Recommendation: open with diagrams.net
[UML & ER Diagram Link](https://drive.google.com/file/d/1k8whAKLqa_59Mr_iOKoVFmSUzA0Rqvp8/view?usp=sharing)

## How to
### Import SQL Dump
1. Create a new database on server
2. Navigate to SQL dump file
3. Import the SQL dump file using this command
```
mysql -u username -p database_name < designorderdb.sql
```
4. Enter MySQL user password
### Run Server App (Back End)
1. Open spring-boot-interior-design-business-apps with IDE such as IntelliJ IDEA
2. Open application.properties file and fill in the spring.datasource.password column
3. Run SpringBootInteriorBusinessApps.java
### Run Web Client App
1. Open interior-business-app with IDE such as Visual Studio Code
2. Open terminal
3. Install dependencies using this command
```
npm install
```
4. Run apps using this command
```
npm start
```
### Run Expo Mobile Client App
1. Open InteriorBusinessApp with IDE such as Visual Studio Code
2. Open terminal
3. Install dependencies using this command
```
npm install
```
4. Run apps using this command
```
npm start
```
   or this command
```
npx expo start
```
