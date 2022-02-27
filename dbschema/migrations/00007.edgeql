CREATE MIGRATION m1ci4izhbnkaprdntqfgcpgdmttwqpyx4i6li3krtfkslxttjcwyea
    ONTO m1hzzjpjepqmrgakncknyqmgjisqh2rff2nzzv2bkps7us5qcjnciq
{
  ALTER TYPE default::Person {
      CREATE LINK travels := (.<person[IS default::Travel]);
  };
  ALTER TYPE default::Person {
      DROP PROPERTY travel_size;
  };
};
