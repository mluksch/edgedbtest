CREATE MIGRATION m1pbvyzpqww7eqcd3nxobrb2azd47kkx3wrap7e65rjjuahdtlcviq
    ONTO m1vgnh4xgcg57yg5or5x77yoi7k2xmoql423uinvmnwionizljh55a
{
  ALTER TYPE default::Person {
      CREATE PROPERTY travel_size := (SELECT
          std::count(default::Travel)
      FILTER
          (default::Travel.person = default::Person)
      );
  };
};
