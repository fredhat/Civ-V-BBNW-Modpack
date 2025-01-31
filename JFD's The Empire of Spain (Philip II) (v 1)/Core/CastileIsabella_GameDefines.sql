--==========================================================================================================================
-- BUILDINGS
--==========================================================================================================================
-- BuildingClasses
--------------------------------
INSERT INTO BuildingClasses 
		(Type, 											DefaultBuilding)
VALUES	('BUILDINGCLASS_JFD_CASTILE_DUMMY_GOLDEN_AGE',	'BUILDING_JFD_CASTILE_DUMMY_GOLDEN_AGE');
--------------------------------
-- Buildings
--------------------------------
INSERT INTO Buildings 															
		(Type,											BuildingClass,									Cost,	PrereqTech,	MinAreaSize,	FaithCost,	NukeImmune,		NeverCapture,	GreatWorkCount,	GoldenAge,		IconAtlas,		PortraitIndex)
VALUES	('BUILDING_JFD_CASTILE_DUMMY_GOLDEN_AGE',		'BUILDINGCLASS_JFD_CASTILE_DUMMY_GOLDEN_AGE',	-1,		null,		-1,				-1,			1,				1,				-1,				1,				'BW_ATLAS_1',	63);
--==========================================================================================================================	
-- PROMOTIONS
--==========================================================================================================================	
-- UnitPromotions
------------------------------
INSERT INTO UnitPromotions 
		(Type, 							Description, 								Help, 										Sound, 				CannotBeChosen, LostWithUpgrade,	PortraitIndex, 	IconAtlas, 			PediaType, 			PediaEntry)
VALUES	('PROMOTION_JFD_TREASURE_SHIP', 'TXT_KEY_PROMOTION_JFD_TREASURE_SHIP',		'TXT_KEY_PROMOTION_JFD_TREASURE_SHIP_HELP', 'AS2D_IF_LEVELUP', 	1, 				1,					59, 			'ABILITY_ATLAS', 	'PEDIA_ATTRIBUTES', 'TXT_KEY_PROMOTION_JFD_TREASURE_SHIP');
--==========================================================================================================================
-- UNITS
--==========================================================================================================================
-- Units
--------------------------------
INSERT OR REPLACE INTO Units 	
			(Class, 	Type, 					 	PrereqTech, RangedCombat, 	Range, Special, Combat, 	Cost, 		FaithCost, RequiresFaithPurchaseEnabled, Moves, 	CombatClass, Domain, DefaultUnitAI, Description, 					 	Civilopedia, 								Strategy, 										Help, 									Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, NumExoticGoods,	RangedCombatLimit, CombatLimit, XPValueDefense, UnitArtInfo, 					 	UnitFlagIconOffset, 	UnitFlagAtlas,							PortraitIndex, 	IconAtlas,						MoveRate)
SELECT		 Class,		('UNIT_JFD_TREASURE_SHIP'), PrereqTech, RangedCombat+2,	Range, Special, Combat+3,	Cost+15,	FaithCost, RequiresFaithPurchaseEnabled, Moves-1, 	CombatClass, Domain, DefaultUnitAI, ('TXT_KEY_UNIT_JFD_TREASURE_SHIP'), ('TXT_KEY_CIV5_JFD_TREASURE_SHIP_TEXT'), 	('TXT_KEY_UNIT_JFD_TREASURE_SHIP_STRATEGY'),   ('TXT_KEY_UNIT_HELP_JFD_TREASURE_SHIP'), Pillage, MilitarySupport, MilitaryProduction, IgnoreBuildingDefense, Mechanized, AdvancedStartCost, 1,				RangedCombatLimit, CombatLimit, XPValueDefense, ('ART_DEF_UNIT_JFD_TREASURE_SHIP'), 0,					 	('JFD_UNIT_FLAG_TREASURE_SHIP_ATLAS'),	2, 				('JFD_SPAIN_PHILIP_II_ATLAS'),	MoveRate
FROM Units WHERE (Type = 'UNIT_FRIGATE');

UPDATE Units 
SET Help = 'TXT_KEY_UNIT_HELP_JFD_CONQUISTADOR', Strategy = 'TXT_KEY_UNIT_JFD_CONQUISTADOR_STRATEGY', GoodyHutUpgradeUnitClass = null
WHERE Type = 'UNIT_SPANISH_CONQUISTADOR';
--------------------------------
-- UnitGameplay2DScripts
--------------------------------
INSERT INTO UnitGameplay2DScripts 	
		(UnitType, 						SelectionSound, FirstSelectionSound)
SELECT	'UNIT_JFD_TREASURE_SHIP',		SelectionSound, FirstSelectionSound
FROM UnitGameplay2DScripts WHERE UnitType = 'UNIT_FRIGATE';	
--------------------------------
-- Unit_AITypes
--------------------------------
INSERT INTO Unit_AITypes 	
		(UnitType, 						UnitAIType)
SELECT	'UNIT_JFD_TREASURE_SHIP',		UnitAIType
FROM Unit_AITypes WHERE UnitType = 'UNIT_FRIGATE';
--------------------------------
-- Unit_YieldFromKills
--------------------------------
INSERT INTO Unit_YieldFromKills 	
			(UnitType, 					YieldType, 			Yield)
VALUES		('UNIT_JFD_TREASURE_SHIP', 	'YIELD_GOLD', 		100);
--------------------------------	
-- Unit_ResourceQuantityRequirements
--------------------------------	
INSERT INTO Unit_ResourceQuantityRequirements 	
		(UnitType, 						ResourceType)
SELECT	'UNIT_JFD_TREASURE_SHIP',		ResourceType
FROM Unit_ResourceQuantityRequirements WHERE UnitType = 'UNIT_FRIGATE';
--------------------------------
-- Unit_ClassUpgrades
--------------------------------	
INSERT INTO Unit_ClassUpgrades 	
		(UnitType, 						UnitClassType)
SELECT	'UNIT_JFD_TREASURE_SHIP',		UnitClassType
FROM Unit_ClassUpgrades WHERE UnitType = 'UNIT_FRIGATE';
--------------------------------
-- Unit_Flavors
--------------------------------
INSERT INTO Unit_Flavors 	
		(UnitType, 						FlavorType, Flavor)
SELECT	'UNIT_JFD_TREASURE_SHIP',		FlavorType, Flavor
FROM Unit_Flavors WHERE UnitType = 'UNIT_FRIGATE';
--------------------------------
-- Unit_FreePromotions
--------------------------------
INSERT INTO Unit_FreePromotions 	
		(UnitType, 						PromotionType)
SELECT	'UNIT_JFD_TREASURE_SHIP',		PromotionType
FROM Unit_FreePromotions WHERE UnitType = 'UNIT_FRIGATE';

INSERT INTO Unit_FreePromotions 	
		(UnitType, 						PromotionType)
VALUES	('UNIT_JFD_TREASURE_SHIP',		'PROMOTION_SELL_EXOTIC_GOODS'),
		('UNIT_JFD_TREASURE_SHIP',		'PROMOTION_JFD_TREASURE_SHIP');
--------------------------------
-- Unit_UniqueNames
--------------------------------
DELETE FROM Unit_UniqueNames WHERE UnitType = 'UNIT_SPANISH_CONQUISTADOR';
INSERT INTO Unit_UniqueNames
		(UnitType,                      UniqueName)
VALUES  ('UNIT_SPANISH_CONQUISTADOR',   'TXT_KEY_GREAT_PERSON_JFD_CASTILE_CONQUISTADOR_1'),
		('UNIT_SPANISH_CONQUISTADOR',   'TXT_KEY_GREAT_PERSON_JFD_CASTILE_CONQUISTADOR_2'),
		('UNIT_SPANISH_CONQUISTADOR',   'TXT_KEY_GREAT_PERSON_JFD_CASTILE_CONQUISTADOR_3'),
		('UNIT_SPANISH_CONQUISTADOR',   'TXT_KEY_GREAT_PERSON_JFD_CASTILE_CONQUISTADOR_4'),
		('UNIT_SPANISH_CONQUISTADOR',   'TXT_KEY_GREAT_PERSON_JFD_CASTILE_CONQUISTADOR_5'),
		('UNIT_SPANISH_CONQUISTADOR',   'TXT_KEY_GREAT_PERSON_JFD_CASTILE_CONQUISTADOR_6'),
		('UNIT_SPANISH_CONQUISTADOR',   'TXT_KEY_GREAT_PERSON_JFD_CASTILE_CONQUISTADOR_7'),
		('UNIT_SPANISH_CONQUISTADOR',   'TXT_KEY_GREAT_PERSON_JFD_CASTILE_CONQUISTADOR_8'),
		('UNIT_SPANISH_CONQUISTADOR',   'TXT_KEY_GREAT_PERSON_JFD_CASTILE_CONQUISTADOR_9'),
		('UNIT_SPANISH_CONQUISTADOR',   'TXT_KEY_GREAT_PERSON_JFD_CASTILE_CONQUISTADOR_10'),
		('UNIT_SPANISH_CONQUISTADOR',   'TXT_KEY_GREAT_PERSON_JFD_CASTILE_CONQUISTADOR_11'),
		('UNIT_SPANISH_CONQUISTADOR',   'TXT_KEY_GREAT_PERSON_JFD_CASTILE_CONQUISTADOR_12'),
		('UNIT_SPANISH_CONQUISTADOR',   'TXT_KEY_GREAT_PERSON_JFD_CASTILE_CONQUISTADOR_13'),
		('UNIT_SPANISH_CONQUISTADOR',   'TXT_KEY_GREAT_PERSON_JFD_CASTILE_CONQUISTADOR_14'),
		('UNIT_SPANISH_CONQUISTADOR',   'TXT_KEY_GREAT_PERSON_JFD_CASTILE_CONQUISTADOR_15'),
		('UNIT_SPANISH_CONQUISTADOR',   'TXT_KEY_GREAT_PERSON_JFD_CASTILE_CONQUISTADOR_16'),
		('UNIT_SPANISH_CONQUISTADOR',   'TXT_KEY_GREAT_PERSON_JFD_CASTILE_CONQUISTADOR_17'),
		('UNIT_SPANISH_CONQUISTADOR',   'TXT_KEY_GREAT_PERSON_JFD_CASTILE_CONQUISTADOR_18'),
		('UNIT_SPANISH_CONQUISTADOR',   'TXT_KEY_GREAT_PERSON_JFD_CASTILE_CONQUISTADOR_19'),
		('UNIT_SPANISH_CONQUISTADOR',   'TXT_KEY_GREAT_PERSON_JFD_CASTILE_CONQUISTADOR_20'),
		('UNIT_SPANISH_CONQUISTADOR',   'TXT_KEY_GREAT_PERSON_JFD_CASTILE_CONQUISTADOR_21'),
		('UNIT_SPANISH_CONQUISTADOR',   'TXT_KEY_GREAT_PERSON_JFD_CASTILE_CONQUISTADOR_22'),
		('UNIT_SPANISH_CONQUISTADOR',   'TXT_KEY_GREAT_PERSON_JFD_CASTILE_CONQUISTADOR_23'),
		('UNIT_SPANISH_CONQUISTADOR',   'TXT_KEY_GREAT_PERSON_JFD_CASTILE_CONQUISTADOR_24'),
		('UNIT_SPANISH_CONQUISTADOR',   'TXT_KEY_GREAT_PERSON_JFD_CASTILE_CONQUISTADOR_25');
--==========================================================================================================================	
-- LEADERS
--==========================================================================================================================	
-- Leader_Traits
--------------------------------		
UPDATE Leader_Traits
SET TraitType = 'TRAIT_JFD_CASTILE'
WHERE LeaderType = 'LEADER_ISABELLA';	
--==========================================================================================================================	
-- TRAITS
--==========================================================================================================================	
-- Traits
--------------------------------	
INSERT INTO Traits 
		(Type, 					Description, 					ShortDescription,					NaturalWonderFirstFinderGold,	NaturalWonderSubsequentFinderGold,	NaturalWonderYieldModifier,	NaturalWonderHappinessModifier)
VALUES	('TRAIT_JFD_CASTILE',	'TXT_KEY_TRAIT_JFD_CASTILE',	'TXT_KEY_TRAIT_JFD_CASTILE_SHORT',	300,							100,								50,							50);
--==========================================================================================================================	
-- CIVILIZATIONS
--==========================================================================================================================	
-- Civilizations
--------------------------------		
INSERT INTO Civilizations 	
		(Type, 							Description,						ShortDescription,						Adjective,								DerivativeCiv,			Civilopedia, 						CivilopediaTag, 			 DefaultPlayerColor,		 ArtDefineTag, ArtStyleType, ArtStyleSuffix, ArtStylePrefix, IconAtlas,						PortraitIndex,	AlphaIconAtlas,				SoundtrackTag,  MapImage, 							DawnOfManQuote,							DawnOfManAudio,	DawnOfManImage)
SELECT	'CIVILIZATION_JFD_CASTILE',		'TXT_KEY_CIV_JFD_CASTILE_DESC',		'TXT_KEY_CIV_JFD_CASTILE_SHORT_DESC',	'TXT_KEY_CIV_JFD_CASTILE_ADJECTIVE',	'CIVILIZATION_SPAIN',	'TXT_KEY_CIV5_JFD_CASTILE_TEXT_1', 	'TXT_KEY_CIV5_JFD_CASTILE',  'PLAYERCOLOR_JFD_CASTILE',  ArtDefineTag, ArtStyleType, ArtStyleSuffix, ArtStylePrefix, 'JFD_SPAIN_PHILIP_II_ATLAS',	0,				'JFD_CASTILE_ALPHA_ATLAS',	'Spain', 		'Viregel_MapSpainIsabella512.dds',	'TXT_KEY_CIV5_DAWN_JFD_CASTILE_TEXT',	DawnOfManAudio,	'Janboruta_Isabella_DOM.dds'
FROM Civilizations WHERE Type = 'CIVILIZATION_SPAIN';
--------------------------------	
-- Civilization_CityNames
--------------------------------	
INSERT INTO Civilization_CityNames 
		(CivilizationType, 				CityName)
VALUES	('CIVILIZATION_JFD_CASTILE', 	'TXT_KEY_CITY_NAME_JFD_CASTILE_1'),
		('CIVILIZATION_JFD_CASTILE', 	'TXT_KEY_CITY_NAME_JFD_CASTILE_2'),
		('CIVILIZATION_JFD_CASTILE', 	'TXT_KEY_CITY_NAME_JFD_CASTILE_3'),
		('CIVILIZATION_JFD_CASTILE', 	'TXT_KEY_CITY_NAME_JFD_CASTILE_4'),
		('CIVILIZATION_JFD_CASTILE', 	'TXT_KEY_CITY_NAME_JFD_CASTILE_5'),
		('CIVILIZATION_JFD_CASTILE', 	'TXT_KEY_CITY_NAME_JFD_CASTILE_6'),
		('CIVILIZATION_JFD_CASTILE', 	'TXT_KEY_CITY_NAME_JFD_CASTILE_7'),
		('CIVILIZATION_JFD_CASTILE', 	'TXT_KEY_CITY_NAME_JFD_CASTILE_8'),
		('CIVILIZATION_JFD_CASTILE', 	'TXT_KEY_CITY_NAME_JFD_CASTILE_9'),
		('CIVILIZATION_JFD_CASTILE', 	'TXT_KEY_CITY_NAME_JFD_CASTILE_10'),
		('CIVILIZATION_JFD_CASTILE', 	'TXT_KEY_CITY_NAME_JFD_CASTILE_11'),
		('CIVILIZATION_JFD_CASTILE', 	'TXT_KEY_CITY_NAME_JFD_CASTILE_12'),
		('CIVILIZATION_JFD_CASTILE', 	'TXT_KEY_CITY_NAME_JFD_CASTILE_13'),
		('CIVILIZATION_JFD_CASTILE', 	'TXT_KEY_CITY_NAME_JFD_CASTILE_14'),
		('CIVILIZATION_JFD_CASTILE', 	'TXT_KEY_CITY_NAME_JFD_CASTILE_15'),
		('CIVILIZATION_JFD_CASTILE', 	'TXT_KEY_CITY_NAME_JFD_CASTILE_16'),
		('CIVILIZATION_JFD_CASTILE', 	'TXT_KEY_CITY_NAME_JFD_CASTILE_17'),
		('CIVILIZATION_JFD_CASTILE', 	'TXT_KEY_CITY_NAME_JFD_CASTILE_18'),
		('CIVILIZATION_JFD_CASTILE', 	'TXT_KEY_CITY_NAME_JFD_CASTILE_19'),
		('CIVILIZATION_JFD_CASTILE', 	'TXT_KEY_CITY_NAME_JFD_CASTILE_20'),
		('CIVILIZATION_JFD_CASTILE', 	'TXT_KEY_CITY_NAME_JFD_CASTILE_21'),
		('CIVILIZATION_JFD_CASTILE', 	'TXT_KEY_CITY_NAME_JFD_CASTILE_22'),
		('CIVILIZATION_JFD_CASTILE', 	'TXT_KEY_CITY_NAME_JFD_CASTILE_23'),
		('CIVILIZATION_JFD_CASTILE', 	'TXT_KEY_CITY_NAME_JFD_CASTILE_24'),
		('CIVILIZATION_JFD_CASTILE', 	'TXT_KEY_CITY_NAME_JFD_CASTILE_25'),
		('CIVILIZATION_JFD_CASTILE', 	'TXT_KEY_CITY_NAME_JFD_CASTILE_26'),
		('CIVILIZATION_JFD_CASTILE', 	'TXT_KEY_CITY_NAME_JFD_CASTILE_27'),
		('CIVILIZATION_JFD_CASTILE', 	'TXT_KEY_CITY_NAME_JFD_CASTILE_28'),
		('CIVILIZATION_JFD_CASTILE', 	'TXT_KEY_CITY_NAME_JFD_CASTILE_29'),
		('CIVILIZATION_JFD_CASTILE', 	'TXT_KEY_CITY_NAME_JFD_CASTILE_30'),
		('CIVILIZATION_JFD_CASTILE', 	'TXT_KEY_CITY_NAME_JFD_CASTILE_31'),
		('CIVILIZATION_JFD_CASTILE', 	'TXT_KEY_CITY_NAME_JFD_CASTILE_32'),
		('CIVILIZATION_JFD_CASTILE', 	'TXT_KEY_CITY_NAME_JFD_CASTILE_33'),
		('CIVILIZATION_JFD_CASTILE', 	'TXT_KEY_CITY_NAME_JFD_CASTILE_34'),
		('CIVILIZATION_JFD_CASTILE', 	'TXT_KEY_CITY_NAME_JFD_CASTILE_35'),
		('CIVILIZATION_JFD_CASTILE', 	'TXT_KEY_CITY_NAME_JFD_CASTILE_36'),
		('CIVILIZATION_JFD_CASTILE', 	'TXT_KEY_CITY_NAME_JFD_CASTILE_37'),
		('CIVILIZATION_JFD_CASTILE', 	'TXT_KEY_CITY_NAME_JFD_CASTILE_38'),
		('CIVILIZATION_JFD_CASTILE', 	'TXT_KEY_CITY_NAME_JFD_CASTILE_39'),
		('CIVILIZATION_JFD_CASTILE', 	'TXT_KEY_CITY_NAME_JFD_CASTILE_40');
--------------------------------	
-- Civilization_FreeBuildingClasses
--------------------------------			
INSERT INTO Civilization_FreeBuildingClasses 
		(CivilizationType, 				BuildingClassType)
SELECT	'CIVILIZATION_JFD_CASTILE', 	BuildingClassType
FROM Civilization_FreeBuildingClasses WHERE CivilizationType = 'CIVILIZATION_SPAIN';
--------------------------------		
-- Civilization_FreeTechs
--------------------------------			
INSERT INTO Civilization_FreeTechs 
		(CivilizationType, 				TechType)
SELECT	'CIVILIZATION_JFD_CASTILE', 	TechType
FROM Civilization_FreeTechs WHERE CivilizationType = 'CIVILIZATION_SPAIN';
--------------------------------	
-- Civilization_FreeUnits
--------------------------------		
INSERT INTO Civilization_FreeUnits 
		(CivilizationType, 				UnitClassType, Count, UnitAIType)
SELECT	'CIVILIZATION_JFD_CASTILE', 	UnitClassType, Count, UnitAIType
FROM Civilization_FreeUnits WHERE CivilizationType = 'CIVILIZATION_SPAIN';
--------------------------------	
-- Civilization_Leaders
--------------------------------		
INSERT INTO Civilization_Leaders 
		(CivilizationType, 				LeaderheadType)
VALUES	('CIVILIZATION_JFD_CASTILE',	'LEADER_ISABELLA');
--------------------------------	
-- Civilization_UnitClassOverrides 
--------------------------------		
DELETE FROM Civilization_UnitClassOverrides WHERE CivilizationType = 'CIVILIZATION_JFD_CASTILE';
INSERT INTO Civilization_UnitClassOverrides 
		(CivilizationType, 				UnitClassType, 				UnitType)
VALUES	('CIVILIZATION_JFD_CASTILE', 	'UNITCLASS_FRIGATE',		'UNIT_JFD_TREASURE_SHIP'),
		('CIVILIZATION_JFD_CASTILE', 	'UNITCLASS_KNIGHT',			'UNIT_SPANISH_CONQUISTADOR');
--------------------------------	
-- Civilization_Religions
--------------------------------	
INSERT INTO Civilization_Religions 
		(CivilizationType, 				ReligionType)
SELECT	'CIVILIZATION_JFD_CASTILE', 	ReligionType
FROM Civilization_Religions WHERE CivilizationType = 'CIVILIZATION_SPAIN';
--------------------------------	
-- Civilization_SpyNames
--------------------------------	
INSERT INTO Civilization_SpyNames 
		(CivilizationType, 				SpyName)
SELECT	'CIVILIZATION_JFD_CASTILE', 	SpyName
FROM Civilization_SpyNames WHERE CivilizationType = 'CIVILIZATION_SPAIN';
--==========================================================================================================================
--==========================================================================================================================