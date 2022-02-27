CREATE MIGRATION m1523dm3l3wuas34kwpqbnvpstu4mygix3ippl5mirilvqndtgdoua
    ONTO m1ci4izhbnkaprdntqfgcpgdmttwqpyx4i6li3krtfkslxttjcwyea
{
  CREATE TYPE default::Person2 {
      CREATE REQUIRED PROPERTY name -> std::str;
      CREATE PROPERTY travel_count := (std::count((SELECT
          default::Travel
      FILTER
          (.person = default::Person)
      )));
  };
};
