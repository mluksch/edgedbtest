import edgedb
import datetime
import pprint
import sys

client = edgedb.create_client(database="chapter1")

if len(sys.argv) > 1 and sys.argv[1] == "insert":
    client.execute("""
Insert Travel {
    # fields are set by assignment "field := value"
    # you can reference links on the fly by the return value of an insert-statement:
    from := (Insert Location { name := "Buda Pesth" }),
    to := (Insert Location { name := "Bistritz" }),
    departure := std::datetime_current(),
    person := (Insert Person { name := "Jonathan Harker" })
}               
""")

result = client.query("""
   Select Person {
       name,
       # In Select-statements field properties are being accessed by
       # "link: \{ field \}" 
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