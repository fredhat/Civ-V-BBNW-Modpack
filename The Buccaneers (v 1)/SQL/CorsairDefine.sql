INSERT INTO ArtDefine_UnitInfos
		(Type,								DamageStates,	Formation)
SELECT	('ART_DEF_UNIT_BUCCANEER_CORSAIR'), 3, 				Formation
FROM ArtDefine_UnitInfos WHERE Type = 'ART_DEF_UNIT_XP_PRIVATEER';
	
INSERT INTO ArtDefine_UnitInfoMemberInfos
		(UnitInfoType, 						UnitMemberInfoType, 						NumMembers)
VALUES	('ART_DEF_UNIT_BUCCANEER_CORSAIR', 	'ART_DEF_UNIT_MEMBER_BUCCANEER_CORSAIR', 	1);
	
INSERT INTO ArtDefine_UnitMemberCombats
		(UnitMemberType, 							EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation)
SELECT	('ART_DEF_UNIT_MEMBER_BUCCANEER_CORSAIR'), 	EnableActions, DisableActions, MoveRadius, ShortMoveRadius, ChargeRadius, AttackRadius, RangedAttackRadius, MoveRate, ShortMoveRate, TurnRateMin, TurnRateMax, TurnFacingRateMin, TurnFacingRateMax, RollRateMin, RollRateMax, PitchRateMin, PitchRateMax, LOSRadiusScale, TargetRadius, TargetHeight, HasShortRangedAttack, HasLongRangedAttack, HasLeftRightAttack, HasStationaryMelee, HasStationaryRangedAttack, HasRefaceAfterCombat, ReformBeforeCombat, HasIndependentWeaponFacing, HasOpponentTracking, HasCollisionAttack, AttackAltitude, AltitudeDecelerationDistance, OnlyTurnInMovementActions, RushAttackFormation
FROM ArtDefine_UnitMemberCombats WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_XP_PRIVATEER';

INSERT INTO ArtDefine_UnitMemberCombatWeapons
		(UnitMemberType, 							"Index", SubIndex, ID, VisKillStrengthMin, VisKillStrengthMax, ProjectileSpeed, ProjectileTurnRateMin, ProjectileTurnRateMax, HitEffect, HitEffectScale, HitRadius, ProjectileChildEffectScale, AreaDamageDelay, ContinuousFire, WaitForEffectCompletion, TargetGround, IsDropped, WeaponTypeTag, WeaponTypeSoundOverrideTag)
SELECT	('ART_DEF_UNIT_MEMBER_BUCCANEER_CORSAIR'), 	"Index", SubIndex, ID, VisKillStrengthMin, VisKillStrengthMax, ProjectileSpeed, ProjectileTurnRateMin, ProjectileTurnRateMax, HitEffect, HitEffectScale, HitRadius, ProjectileChildEffectScale, AreaDamageDelay, ContinuousFire, WaitForEffectCompletion, TargetGround, IsDropped, WeaponTypeTag, WeaponTypeSoundOverrideTag
FROM ArtDefine_UnitMemberCombatWeapons WHERE UnitMemberType = 'ART_DEF_UNIT_MEMBER_XP_PRIVATEER';

INSERT INTO ArtDefine_UnitMemberInfos
		(Type, 										Scale, ZOffset, Domain, Model,				MaterialTypeTag, MaterialTypeSoundOverrideTag)
SELECT	('ART_DEF_UNIT_MEMBER_BUCCANEER_CORSAIR'),	Scale, ZOffset, Domain, ('corsair.fxsxml'), MaterialTypeTag, MaterialTypeSoundOverrideTag
FROM ArtDefine_UnitMemberInfos WHERE Type = 'ART_DEF_UNIT_MEMBER_XP_PRIVATEER';

INSERT INTO ArtDefine_StrategicView
		(StrategicViewType, 				TileType, Asset)
SELECT	('ART_DEF_UNIT_BUCCANEER_CORSAIR'), TileType, ('sv_corsair.dds')
FROM ArtDefine_StrategicView WHERE StrategicViewType = 'ART_DEF_UNIT_XP_PRIVATEER';
