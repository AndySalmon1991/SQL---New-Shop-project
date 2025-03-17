# SQL---New-Shop-project
In this project I was required to create an SQL database for a corner shop

## Brief

My goal was to introduce a new database for a cornershop, looking at having a live inventory, a product list, customer list, and inbound delivery database.

### planned overview

By discussing the database with the owner I came up with four different databases:

1- An inventory database showing productID, Description, Category, PackSize, Price and InventoryQuantity
2- An inbound delivery database showing DeliveryDate, ProductID and Quantity
3- A sales databse showing OrderDate,OrderID,ProductID, Quantity and CustomerID
4- A customer database showing CustomerID, FirstName, LastName, CustomerNumber, CustomerUPN, LoyaltyScheme and LoyaltyPoints

### Linking the databases
To link the databases i used a list of primary keys:

Customer.ID => Sales.CustomerID
Inventory.ProductID => Sales.ProductID
Inventory.ProductID => Inbound.ProductID

I also created a live calculation for the Inventory.InventoryQuantity:

Inventory.InventoryQuantity = Inbound.Quantity- Sales.Quantity

### Updating the database

upon discussion with the owner we came to the conclusion that the IT team would be responsible for updating and maintaing the database with the sales staff and finance team requiring specific databases. Furthermore I added a form system for updates, such as a new customer signing up to the loyalty scheme, to be sent through the the IT team for autoupdating.
