# vservice

*1)At the path : .\vservice\src\main\resources there is a Service.SQL script to create the schema and the table and populate it
*2)Go to the directory vservice and use: mvn package
*3)Go to the directory vservice\target 
*4)Use java -jar vservice-0.0.1-SNAPSHOT.jar
*5)Server will start at port 8081

*6)Using postman with the apposed URLS u will get the following json responses


*`URL:localhost:8081/VService/api/product`
Reponse:Inserts an object to the database 

*`URL:localhost:8081/VService/api/product/findByName/{name}`
Response:Retrieves object by name

*`URL:localhost:8081/VService/api/product/{code}`
Response:Retrieves object by code

*`URL:localhost:8081/VService/api/product/deactivate/{code}`
Response:Deactivates the object from the database

*`URL:localhost:8081/VService/api/product/priceDesc`
Response:Retrieves objects ordered by price descending

*`URL:localhost:8081/VService/api/product/priceAsc`
Response:Retrieves objects ordered by price ascending
