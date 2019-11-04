
# vservice

* At the path:  .\vservice\src\main\resources there is a Service.sql script to create the schema and the table and populate it
* Go to the directory vservice and use: mvn package
* Go to the directory vservice\target 
* Use java -jar vservice-0.0.1-SNAPSHOT.jar
* Server will start at port 8081

* Using postman with the apposed URLS u will get the following json responses


*`URL:localhost:8081/VService/api/product`
Reponse- Inserts an object to the database 

*`URL:localhost:8081/VService/api/product/findByName/{name}`
Response - Retrieves object by name

*`URL:localhost:8081/VService/api/product/{code}`
Response - Retrieves object by code

*`URL:localhost:8081/VService/api/product/deactivate/{code}`
Response - Deactivates the object from the database

*`URL:localhost:8081/VService/api/product/priceDesc`
Response - Retrieves objects ordered by price descending

*`URL:localhost:8081/VService/api/product/priceAsc`
Response - Retrieves objects ordered by price ascending
