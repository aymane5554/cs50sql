# From the Deep

In this problem, you'll write freeform responses to the questions provided in the specification.

## Random Partitioning

reasons to adopt this approch :
the observations will be evenly distributed so none of the servers will be overloaded.
reasons to not adopt this aproch :
The researcher will need to run the query on all of the boats to get the data wich makes querying slower.
## Partitioning by Hour

reasons to adopt this approch :
The researcher will not need to run the query on all of the boats to get the data wich makes querying a bit faster.
reasons to not adopt this aproch :
the observations will not be evenly distributed This could create an overload on some server.
## Partitioning by Hash Value

reasons to adopt this approch :
the observations will be evenly distributed so none of the servers will be overloaded.
the researcher dont nedd to query all boats to search specific observation.
reasons to not adopt this aproch :
the values are not ranged , the reseacher will need to query all boats to get the query for all observations between midnight and 1am

