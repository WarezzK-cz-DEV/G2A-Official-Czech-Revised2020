
instance DIA_SONJA_EXIT(C_INFO)
{
	npc = vlk_436_sonja;
	nr = 999;
	condition = dia_sonja_exit_condition;
	information = dia_sonja_exit_info;
	permanent = TRUE;
	description = DIALOG_ENDE;
};


func int dia_sonja_exit_condition()
{
	return TRUE;
};

func void dia_sonja_exit_info()
{
	AI_StopProcessInfos(self);
};


instance DIA_SONJA_PICKPOCKET(C_INFO)
{
	npc = vlk_436_sonja;
	nr = 900;
	condition = dia_sonja_pickpocket_condition;
	information = dia_sonja_pickpocket_info;
	permanent = TRUE;
	description = PICKPOCKET_60_FEMALE;
};


func int dia_sonja_pickpocket_condition()
{
	return c_beklauen(58,70);
};

func void dia_sonja_pickpocket_info()
{
	Info_ClearChoices(dia_sonja_pickpocket);
	Info_AddChoice(dia_sonja_pickpocket,DIALOG_BACK,dia_sonja_pickpocket_back);
	Info_AddChoice(dia_sonja_pickpocket,DIALOG_PICKPOCKET,dia_sonja_pickpocket_doit);
};

func void dia_sonja_pickpocket_doit()
{
	b_beklauen();
	Info_ClearChoices(dia_sonja_pickpocket);
};

func void dia_sonja_pickpocket_back()
{
	Info_ClearChoices(dia_sonja_pickpocket);
};


instance DIA_SONJA_STANDARD(C_INFO)
{
	npc = vlk_436_sonja;
	condition = dia_sonja_standard_condition;
	information = dia_sonja_standard_info;
	important = TRUE;
	permanent = TRUE;
};


func int dia_sonja_standard_condition()
{
	if(Npc_IsInState(self,zs_talk) && (MIS_ANDRE_REDLIGHT != LOG_RUNNING))
	{
		return TRUE;
	};
};

func void dia_sonja_standard_info()
{
	if(self.aivar[AIV_TALKEDTOPLAYER] == FALSE)
	{
		AI_Output(self,other,"DIA_Sonja_STANDARD_16_00");	//Jestli se chce� pobavit, promluv si s Bromorem.
	}
	else if((other.guild == GIL_DJG) && (SONJA_SAYS == FALSE))
	{
		AI_Output(self,other,"DIA_Sonja_STANDARD_16_01");	//To je probl�m v�s chlap� - rad�i byste vra�dili sk�ety, ne� zatloukli h�eb�k.
		SONJA_SAYS = TRUE;
	}
	else
	{
		AI_Output(self,other,"DIA_Sonja_STANDARD_16_02");	//A jestli se r�d s n�k�m vybavuje�, najdi si babu a o�e� se s n�.
	};
	AI_StopProcessInfos(self);
};

