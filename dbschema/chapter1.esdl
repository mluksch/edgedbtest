module default {
    # Each "type" corresponds to a table
    # (but tables are an implementation detail underneath anyway)
    type Location {
        # "property" are fields with primitive types
        # "required" means: mandatory value (by default values are optional)
        required property name -> str
    }

    type Travel {
        # "link" are links to other types (aka foreign keys)
        # A "link" can have its own special properties as well.
        required link from -> Location {
            # Cascade on delete:
            # if target of link (here: Location) is deleted: "on target delete"
            # delete source of link (here Travel): "delete source"
            on target delete delete source
        };
        required link to -> Location {
            on target delete delete source
        };
        required property departure -> datetime;
        required link person -> Person {
            on target delete delete source
        };
    }

    #type Person {
    #    required property name -> str;
    #    link travels := .<person[IS Travel]
    #}

    type Person {
        required property name -> str;
        property travel_count := count(
            (Select Travel filter .person = Person)
        );
    }

    type Animal { 
        link owner -> Person;
        property food -> array<str>;
        multi property drinks -> str;
    }
}
