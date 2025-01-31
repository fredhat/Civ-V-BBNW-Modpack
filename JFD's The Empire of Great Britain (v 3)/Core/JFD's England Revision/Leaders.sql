--==========================================================================================================================	
-- Leader_Flavors
--==========================================================================================================================						
UPDATE Leader_Flavors
SET Flavor = 8
WHERE LeaderType = 'LEADER_ELIZABETH' AND FlavorType IN ('FLAVOR_HAPPINESS');
--==========================================================================================================================	
-- Leader_Traits
--==========================================================================================================================
DELETE FROM Leader_Traits WHERE LeaderType = 'LEADER_ELIZABETH';	
INSERT OR REPLACE INTO Leader_Traits 
			(LeaderType, 			TraitType)
VALUES		('LEADER_ELIZABETH', 	'TRAIT_JFD_ENGLAND');
--==========================================================================================================================				
--==========================================================================================================================