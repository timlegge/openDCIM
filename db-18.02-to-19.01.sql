--
-- Add in new configuration item for log retention
--

INSERT INTO fac_Config set Parameter='logretention', Value='90', UnitOfMeasure='days', ValType='integer', DefaultVal='90';

-- Add an index to the fac_GenericLog to speed it up

CREATE INDEX ObjectID on fac_GenericLog (ObjectID);


--
-- Bump up the database version (uncomment below once released)
--

UPDATE fac_Config set Value="19.01" WHERE Parameter="Version";

