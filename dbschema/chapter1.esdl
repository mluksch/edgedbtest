module default {
    type Location {
        required property name -> str
    }

    type Travel {
        required link from -> Location {
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

    type Person {
        required property name -> str
    }
}
