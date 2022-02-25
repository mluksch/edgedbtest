module chapter1 {
    type Location {
        required property name -> str
    }

    type Travel {
        required link from -> Location,
        required link to -> Location,
        required property departure -> datetime,
        required link person -> Person,
    }

    type Person {
        required property name -> str
    }
}
