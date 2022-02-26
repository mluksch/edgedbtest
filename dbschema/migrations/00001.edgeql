CREATE MIGRATION m1fq5agic5ispzyoxblsby3nca2f4on74gwthtw3kdle3vbwfdx45q
    ONTO initial
{
  CREATE MODULE chapter1 IF NOT EXISTS;
  CREATE TYPE chapter1::Location {
      CREATE REQUIRED PROPERTY name -> std::str;
  };
  CREATE TYPE chapter1::Person {
      CREATE REQUIRED PROPERTY name -> std::str;
  };
  CREATE TYPE chapter1::Travel {
      CREATE REQUIRED LINK from -> chapter1::Location;
      CREATE REQUIRED LINK to -> chapter1::Location;
      CREATE REQUIRED LINK person -> chapter1::Person;
      CREATE REQUIRED PROPERTY departure -> std::datetime;
  };
};
