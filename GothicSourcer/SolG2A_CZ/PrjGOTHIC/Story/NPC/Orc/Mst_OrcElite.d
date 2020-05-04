
prototype MST_DEFAULT_ORCELITE(C_NPC)
{
	name[0] = "Elitn� sk�et";
	guild = GIL_ORC;
	aivar[AIV_MM_REAL_ID] = ID_ORCELITE;
	voice = 18;
	level = 45;
	attribute[ATR_STRENGTH] = 125;
	attribute[ATR_DEXTERITY] = 225;
	attribute[ATR_HITPOINTS_MAX] = 450;
	attribute[ATR_HITPOINTS] = 450;
	attribute[ATR_MANA_MAX] = 0;
	attribute[ATR_MANA] = 0;
	protection[PROT_BLUNT] = 160;
	protection[PROT_EDGE] = 160;
	protection[PROT_POINT] = 160;
	protection[PROT_FIRE] = 160;
	protection[PROT_FLY] = 160;
	protection[PROT_MAGIC] = 100;
	hitchance[NPC_TALENT_1H] = 100;
	hitchance[NPC_TALENT_2H] = 100;
	hitchance[NPC_TALENT_BOW] = 100;
	hitchance[NPC_TALENT_CROSSBOW] = 100;
	damagetype = DAM_EDGE;
	fight_tactic = FAI_ORC;
	senses = SENSE_HEAR | SENSE_SEE;
	senses_range = PERC_DIST_ORC_ACTIVE_MAX;
	aivar[AIV_MM_FOLLOWTIME] = FOLLOWTIME_MEDIUM;
	aivar[AIV_MM_FOLLOWINWATER] = FALSE;
};

func void b_setvisuals_orcelite()
{
	Mdl_SetVisual(self,"Orc.mds");
	Mdl_SetVisualBody(self,"Orc_BodyElite",DEFAULT,DEFAULT,"Orc_HeadWarrior",DEFAULT,DEFAULT,-1);
};


instance ORCELITE_ROAM(MST_DEFAULT_ORCELITE)
{
	b_setvisuals_orcelite();
	EquipItem(self,itmw_2h_orcsword_02);
	start_aistate = zs_mm_allscheduler;
	aivar[AIV_MM_ROAMSTART] = ONLYROUTINE;
};

instance ORCELITE_REST(MST_DEFAULT_ORCELITE)
{
	b_setvisuals_orcelite();
	EquipItem(self,itmw_2h_orcsword_02);
	start_aistate = zs_mm_allscheduler;
	aivar[AIV_MM_RESTSTART] = ONLYROUTINE;
};

instance ORKELITE_ANTIPALADINORKOBERST(MST_DEFAULT_ORCELITE)
{
	name[0] = "Sk�et� velitel";
	attribute[ATR_STRENGTH] = 140;
	attribute[ATR_DEXTERITY] = 120;
	attribute[ATR_HITPOINTS_MAX] = 400;
	attribute[ATR_HITPOINTS] = 400;
	b_setvisuals_orcelite();
	EquipItem(self,itmw_schlachtaxt);
	CreateInvItems(self,itri_orcelitering,1);
	CreateInvItems(self,itwr_map_orcelite_mis,1);
	CreateInvItems(self,itru_palfullheal,1);
	start_aistate = zs_mm_allscheduler;
	aivar[AIV_MM_RESTSTART] = ONLYROUTINE;
};

instance ORCELITE_ANTIPALADIN(MST_DEFAULT_ORCELITE)
{
	name[0] = NAME_ANTIPALDIN;
	b_setvisuals_orcelite();
	EquipItem(self,itmw_2h_orcaxe_04);
	CreateInvItems(self,itri_orcelitering,1);
	start_aistate = zs_mm_allscheduler;
	aivar[AIV_MM_RESTSTART] = ONLYROUTINE;
};

instance ORCELITE_ANTIPALADIN1(MST_DEFAULT_ORCELITE)
{
	name[0] = NAME_ANTIPALDIN;
	guild = GIL_ORC;
	id = 111;
	voice = 18;
	flags = 0;
	npctype = NPCTYPE_MAIN;
	aivar[AIV_ENEMYOVERRIDE] = TRUE;
	b_setvisuals_orcelite();
	EquipItem(self,itmw_2h_orcaxe_04);
	CreateInvItems(self,itri_orcelitering,1);
	start_aistate = zs_mm_rtn_dragonrest;
	aivar[AIV_MM_RESTSTART] = ONLYROUTINE;
};

instance ORCELITE_ANTIPALADIN2(MST_DEFAULT_ORCELITE)
{
	name[0] = NAME_ANTIPALDIN;
	id = 112;
	guild = GIL_ORC;
	aivar[AIV_ENEMYOVERRIDE] = TRUE;
	b_setvisuals_orcelite();
	EquipItem(self,itmw_2h_orcaxe_04);
	CreateInvItems(self,itri_orcelitering,1);
	start_aistate = zs_mm_rtn_dragonrest;
	aivar[AIV_MM_RESTSTART] = ONLYROUTINE;
};

instance ORCELITE_ANTIPALADIN3(MST_DEFAULT_ORCELITE)
{
	name[0] = NAME_ANTIPALDIN;
	id = 113;
	guild = GIL_ORC;
	aivar[AIV_ENEMYOVERRIDE] = TRUE;
	b_setvisuals_orcelite();
	EquipItem(self,itmw_2h_orcaxe_04);
	CreateInvItems(self,itri_orcelitering,1);
	start_aistate = zs_mm_rtn_dragonrest;
	aivar[AIV_MM_RESTSTART] = ONLYROUTINE;
};

instance ORKELITE_ANTIPALADINORKOBERST_DI(MST_DEFAULT_ORCELITE)
{
	name[0] = "Sk�et� plukovn�k";
	attribute[ATR_STRENGTH] = 150;
	attribute[ATR_DEXTERITY] = 150;
	attribute[ATR_HITPOINTS_MAX] = 450;
	attribute[ATR_HITPOINTS] = 450;
	b_setvisuals_orcelite();
	aivar[AIV_ENEMYOVERRIDE] = TRUE;
	EquipItem(self,itmw_2h_orcaxe_04);
	CreateInvItems(self,itke_orkknastdi_mis,1);
	CreateInvItems(self,itri_orcelitering,1);
	start_aistate = zs_mm_allscheduler;
	aivar[AIV_MM_ORCSITSTART] = ONLYROUTINE;
};

instance ORCELITE_DIOBERST1_REST(MST_DEFAULT_ORCELITE)
{
	aivar[AIV_ENEMYOVERRIDE] = TRUE;
	b_setvisuals_orcelite();
	EquipItem(self,itmw_2h_orcaxe_04);
	start_aistate = zs_mm_allscheduler;
	aivar[AIV_MM_RESTSTART] = ONLYROUTINE;
};

instance ORCELITE_DIOBERST2_REST(MST_DEFAULT_ORCELITE)
{
	aivar[AIV_ENEMYOVERRIDE] = TRUE;
	b_setvisuals_orcelite();
	EquipItem(self,itmw_2h_orcaxe_04);
	start_aistate = zs_mm_allscheduler;
	aivar[AIV_MM_RESTSTART] = ONLYROUTINE;
};

instance ORCELITE_DIOBERST3_REST(MST_DEFAULT_ORCELITE)
{
	aivar[AIV_ENEMYOVERRIDE] = TRUE;
	b_setvisuals_orcelite();
	EquipItem(self,itmw_2h_orcaxe_04);
	start_aistate = zs_mm_allscheduler;
	aivar[AIV_MM_RESTSTART] = ONLYROUTINE;
};

