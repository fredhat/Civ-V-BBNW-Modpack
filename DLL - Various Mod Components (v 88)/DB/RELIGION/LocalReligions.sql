ALTER TABLE Religions
  ADD LocalReligion INTEGER DEFAULT 0;

INSERT INTO CustomModDbUpdates(Name, Value) VALUES('RELIGION_LOCAL_RELIGIONS', 1);