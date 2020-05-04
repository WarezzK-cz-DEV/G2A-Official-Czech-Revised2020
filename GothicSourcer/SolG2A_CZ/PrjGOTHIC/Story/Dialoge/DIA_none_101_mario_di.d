
instance DIA_NONE_101_MARIO_DI_EXIT(C_INFO)
{
	npc = none_101_mario_di;
	nr = 999;
	condition = dia_none_101_mario_di_exit_condition;
	information = dia_none_101_mario_di_exit_info;
	permanent = TRUE;
	description = DIALOG_ENDE;
};


func int dia_none_101_mario_di_exit_condition()
{
	return TRUE;
};

func void dia_none_101_mario_di_exit_info()
{
	AI_StopProcessInfos(self);
};


instance DIA_NONE_101_MARIO_DI_JOB(C_INFO)
{
	npc = none_101_mario_di;
	nr = 4;
	condition = dia_none_101_mario_di_job_condition;
	information = dia_none_101_mario_di_job_info;
	permanent = TRUE;
	description = "M� jedine�nou p��le�itost dok�zat sv� schopnosti v boji.";
};


func int dia_none_101_mario_di_job_condition()
{
	if((Npc_IsDead(undeaddragon) == FALSE) && (ORKSTURMDI == FALSE))
	{
		return TRUE;
	};
};

func void dia_none_101_mario_di_job_info()
{
	AI_Output(other,self,"DIA_NONE_101_MARIO_DI_Job_15_00");	//M� jedine�nou p��le�itost dok�zat sv� schopnosti v boji.
	AI_Output(self,other,"DIA_NONE_101_MARIO_DI_Job_07_01");	//Pomalu. V�echno m� sv�j �as.
	AI_Output(other,self,"DIA_NONE_101_MARIO_DI_Job_15_02");	//Hmm. P�esn� to jsem od tebe �ekal.
	AI_Output(self,other,"DIA_NONE_101_MARIO_DI_Job_07_03");	//Jen po�kej.
};


instance DIA_NONE_101_MARIO_DI_AMBUSH(C_INFO)
{
	npc = none_101_mario_di;
	nr = 4;
	condition = dia_none_101_mario_di_ambush_condition;
	information = dia_none_101_mario_di_ambush_info;
	important = TRUE;
};


func int dia_none_101_mario_di_ambush_condition()
{
	if(ORKSTURMDI == TRUE)
	{
		return TRUE;
	};
};

func void dia_none_101_mario_di_ambush_info()
{
	AI_Output(self,other,"DIA_NONE_101_MARIO_DI_ambush_07_00");	//Poj� bl�. Tak, p��teli. Te� mi uka�, co m�.
	AI_Output(other,self,"DIA_NONE_101_MARIO_DI_ambush_15_01");	//Co t�m mysl�?
	AI_Output(self,other,"DIA_NONE_101_MARIO_DI_ambush_07_02");	//Je to prost�. P�n t� u� m� dost.
	AI_Output(self,other,"DIA_NONE_101_MARIO_DI_ambush_07_03");	//M�l jsem t� zab�t u� d��v. Ale j� a m� p��tel� tu chybu hned naprav�me.
	Info_ClearChoices(dia_none_101_mario_di_ambush);
	Info_AddChoice(dia_none_101_mario_di_ambush,DIALOG_ENDE,dia_none_101_mario_di_ambush_ambush);
	b_giveplayerxp(XP_MARIO_AMBUSH);
	MIS_MARIO_AMBUSH = LOG_SUCCESS;
};

func void dia_none_101_mario_di_ambush_ambush()
{
	AI_StopProcessInfos(self);
	b_attack(self,other,AR_SUDDENENEMYINFERNO,1);
	skeleton_mario1.aivar[AIV_ENEMYOVERRIDE] = FALSE;
	skeleton_mario2.aivar[AIV_ENEMYOVERRIDE] = FALSE;
	skeleton_mario3.aivar[AIV_ENEMYOVERRIDE] = FALSE;
	skeleton_mario4.aivar[AIV_ENEMYOVERRIDE] = FALSE;
};


instance DIA_MARIO_DI_PICKPOCKET(C_INFO)
{
	npc = none_101_mario_di;
	nr = 900;
	condition = dia_mario_di_pickpocket_condition;
	information = dia_mario_di_pickpocket_info;
	permanent = TRUE;
	description = PICKPOCKET_80;
};


func int dia_mario_di_pickpocket_condition()
{
	return c_beklauen(71,110);
};

func void dia_mario_di_pickpocket_info()
{
	Info_ClearChoices(dia_mario_di_pickpocket);
	Info_AddChoice(dia_mario_di_pickpocket,DIALOG_BACK,dia_mario_di_pickpocket_back);
	Info_AddChoice(dia_mario_di_pickpocket,DIALOG_PICKPOCKET,dia_mario_di_pickpocket_doit);
};

func void dia_mario_di_pickpocket_doit()
{
	b_beklauen();
	Info_ClearChoices(dia_mario_di_pickpocket);
};

func void dia_mario_di_pickpocket_back()
{
	Info_ClearChoices(dia_mario_di_pickpocket);
};

