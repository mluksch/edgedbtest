CREATE MIGRATION m1koabnkgtniedpjrmro22q33niwgzkmzulbmhpqczk65vktb66jza
    ONTO m1523dm3l3wuas34kwpqbnvpstu4mygix3ippl5mirilvqndtgdoua
{
  ALTER TYPE default::Person {
      DROP LINK travels;
  };
  ALTER TYPE default::Person {
      CREATE PROPERTY travel_count := (std::count((SELECT
          default::Travel
      FILTER
          (.person = default::Person)
      )));
  };
  DROP TYPE default::Person2;
};
