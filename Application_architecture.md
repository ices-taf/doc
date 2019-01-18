___[DRAFT]___
# Structure of the TAF application

The TAF application (accessible via taf.ices.dk) is composed of different 'layers' or components.  
* The web application, written largely in javascript using AngularJS, accesses all its data from a locally hosted repository layer.
* The repository layer, links to the file system, github, and the worker layer, to perform CRUD operations on the TAF repositories
* The workers simply run R code utilising a FIFO task queue

Below is a bit more information on the responsibilities of each component.

