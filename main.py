import edgedb
import datetime
import pprint
import sys

client = edgedb.create_client()

if sys.argv[1] == "insert":
    client.execute("""
Insert Travel {
    from := (Insert Location { name := "Buda Pesth" }),
    to := (Insert Location { name := "Bistritz" }),
    departure := std::datetime_current(),
    person := (Insert Person { name := "Jonathan Harker" })
}               
""")

result = client.query("""
   Select Person {
       name,
       travel := .<person[IS Travel] {
           from: {
               name
           },
           to: {
               name
           },
           departure
       }
   } filter .name = <str>$name
""", name="Jonathan Harker")

pprint.pprint(result)