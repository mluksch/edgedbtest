CREATE MIGRATION m1hzzjpjepqmrgakncknyqmgjisqh2rff2nzzv2bkps7us5qcjnciq
    ONTO m1slsxw7yqsu7ugh2sss2jsscengkc4z2zvtfnhabjnttdfeuczfrq
{
  ALTER TYPE default::Person {
      ALTER PROPERTY travel_size {
          USING (std::count((SELECT
              default::Travel
          FILTER
              (.person = default::Person)
          )));
      };
  };
};
