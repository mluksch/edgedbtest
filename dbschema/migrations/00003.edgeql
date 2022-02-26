CREATE MIGRATION m1vgnh4xgcg57yg5or5x77yoi7k2xmoql423uinvmnwionizljh55a
    ONTO m1ginwzyfdfl7xlzkxapamu2difs7wnmret6egxldacgjalr43ge4a
{
  ALTER TYPE default::Travel {
      ALTER LINK from {
          ON TARGET DELETE  DELETE SOURCE;
      };
  };
  ALTER TYPE default::Travel {
      ALTER LINK person {
          ON TARGET DELETE  DELETE SOURCE;
      };
  };
  ALTER TYPE default::Travel {
      ALTER LINK to {
          ON TARGET DELETE  DELETE SOURCE;
      };
  };
};
