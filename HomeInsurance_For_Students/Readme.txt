1.Changes to application
-HomeownerBO.java


2.Changes to Database



3.Changes from ChangeRequirementDocuments
From the database schema, QuoteID from Quote table is the main ID used to supply the QuoteID fields for Location, Homeowner, Property table.
Therefore, location, homeowner, and property servlets will only store user data inside session until QuoteID is generated which is at the end of propertyServlet file in the doPost method.
After the Quote is generated inside the table, the application will grab the newly created QuoteID from the table and store that within the application.
The QuoteID is then distributed and overwrites all QuoteiD values inside location, homeowner and property
Then location, homeowner, and property objects that will contain the session user values will be inserted into the database.
Each QuoteID is generated inside the database as unique and incremented so each QuoteID will be unique to that user data and property data.

4.ServiceNow
Incident
INC0010003
INC0010004
Problems # -> Change #
PRB0040015 -> CHG0030008
PRB0040003 -> CHG0030002
PRB0040001 -> CHG0030001