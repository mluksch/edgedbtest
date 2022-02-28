CREATE MIGRATION m1eobtzbwct7eyv3n5bmzotbqxf5em4vpnu5d73jrmdty4udmogveq
    ONTO m1koabnkgtniedpjrmro22q33niwgzkmzulbmhpqczk65vktb66jza
{
  CREATE TYPE default::Animal {
      CREATE LINK owner -> default::Person;
      CREATE PROPERTY food -> array<std::str>;
  };
};
