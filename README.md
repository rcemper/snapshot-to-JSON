This is a sample to use %JSON.Adaptor class available in IRIS  
to produce a snapshot of your object.  

The sample consists of 2 classes that are variations of what was  
known in Caché/SAMPLES as Sample.Person.   
Be aware that the possibilities are limited by %JSON.Adapter   
and how you make use of it.   

Once in place you create some test data by Populate().  
You select an object and take a snapshot using %JSONExportToString();     

You apply changes to your object take another snapshot.
And see the difference.

For better visualization package #ZPretty# is applied 
BINGO!
### Prerequisites
Make sure you have [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) and [Docker desktop](https://www.docker.com/products/docker-desktop) installed.
### Installation
Clone/git pull the repo into any local directory 
```
$ git clone https://github.com/rcemper/snapshot-to-JSON.git
```
To build and start the container run:
```
$ docker compose up -d && docker compose logs -f
```
To open IRIS Terminal do:
```
$ docker-compose exec iris iris session iris
USER>
```
or using **iTerm**
```
http://localhost:42773/iterm/
```
To access IRIS System Management Portal
```
http://localhost:42773/csp/sys/UtilHome.csp
```
### How to use it
From Terminal in namespace USER just start
```
USER>do ^demo
obj=2@json.Person  ; <OREF,refs=1>
+----------------- general information ---------------
|      oref value: 2
|      class name: json.Person
|           %%OID: $lb("3","json.Person")
| reference count: 1
+----------------- attribute values ------------------
|       %Concurrency = 1  <Set>
|                DOB = 54951
|               Name = "Nelson,Xavier Y."
|                SSN = "273-10-9656"
+----------------- swizzled references ---------------
|   i%FavoriteColors = ""
|i%FavoriteColors(1) = "Red"
|i%FavoriteColors(2) = "Red"
|   r%FavoriteColors = ""  <Set>
|             i%Home = $lb("7510 Franklin Avenue","Albany","TX",96425)  <Set>
|             r%Home = ""  <Set>
+--------------- calculated references ---------------
|               MyId   <Get>
+-----------------------------------------------------

snap2="{""Name"":""Nelson,Xavier Y."",""SSN"":""273-10-9656"",""DOB"":""2017-06-17"",""Home"":{""Street"":""7510 Franklin Avenue"",""City"":""Albany"",""State"":""TX"",""Zip"":""96425""},""FavoriteColors"":[""Red"",""Red""],""MyId"":3}"
###############
{
  "Name":"Nelson,Xavier Y.",
  "SSN":"273-10-9656",
  "DOB":"1991-06-14",
  "Home":{
    "Street":"7510 Franklin Avenue",
    "City":"Albany",
    "State":"TX",
    "Zip":"96425"
  },
  "FavoriteColors":[
    "Red",
    "Red"
  ],
  "MyId":3
}

{
  "Name":"Nelson,Xavier Y.",
  "SSN":"273-10-9656",
  "DOB":"2017-06-17",
  "Home":{
    "Street":"7510 Franklin Avenue",
    "City":"Albany",
    "State":"TX",
    "Zip":"96425"
  },
  "FavoriteColors":[
    "Red",
    "Red"
  ],
  "MyId":3
}
USER>
```
[Article in DC](https://community.intersystems.com/post/snapshot-json)     
