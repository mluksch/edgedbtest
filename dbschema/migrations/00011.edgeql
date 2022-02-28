CREATE MIGRATION m13yidbbgq33occf553q27tndgrtzle4durpz2s2lgei2d2ncdexpa
    ONTO m1eobtzbwct7eyv3n5bmzotbqxf5em4vpnu5d73jrmdty4udmogveq
{
  ALTER TYPE default::Animal {
      CREATE MULTI PROPERTY drinks -> std::str;
  };
};
