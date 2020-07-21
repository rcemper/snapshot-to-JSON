 ~~~
 This is a coding example working on IRIS 2020.2
 It will not be kept in sync with new versions      
 It is also NOT serviced by InterSystems Support !   
~~~ 
This is a sample to use %JSON.Adaptor class available in IRIS
to produce a snapshot of your object.

The sample consists of 2 classes that are variations of what was
known in Caché/SAMPLES as Sample.Person.
Be aware that the possibilities are limited by %JSON.Adapter
and how you make use of it.

Once in place you create some test data by Populate().  
You select an object and take a snapshot.
You apply changes to your object take another snapshot.
And see the difference.

BINGO!

