CREATE MIGRATION m1slsxw7yqsu7ugh2sss2jsscengkc4z2zvtfnhabjnttdfeuczfrq
    ONTO m1pbvyzpqww7eqcd3nxobrb2azd47kkx3wrap7e65rjjuahdtlcviq
{
  ALTER TYPE default::Person {
      ALTER PROPERTY travel_size {
          USING (std::count((SELECT
              default::Travel
          FILTER
              (default::Travel.person = default::Person)
          )));
      };
  };
};
