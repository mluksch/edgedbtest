CREATE MIGRATION m1ginwzyfdfl7xlzkxapamu2difs7wnmret6egxldacgjalr43ge4a
    ONTO m1fq5agic5ispzyoxblsby3nca2f4on74gwthtw3kdle3vbwfdx45q
{
  ALTER TYPE chapter1::Location RENAME TO default::Location;
  ALTER TYPE chapter1::Person RENAME TO default::Person;
  ALTER TYPE chapter1::Travel RENAME TO default::Travel;
  DROP MODULE chapter1;
};
