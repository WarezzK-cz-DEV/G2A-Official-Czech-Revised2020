
func int b_teachplayertalenttakeanimaltrophy(var C_NPC slf,var C_NPC oth,var int trophy)
{
	var int kosten;
	kosten = b_getlearncosttalent(oth,NPC_TALENT_TAKEANIMALTROPHY,trophy);
	if(oth.lp < kosten)
	{
		PrintScreen(PRINT_NOTENOUGHLEARNPOINTS,-1,-1,FONT_SCREENSMALL,2);
		b_say(slf,oth,"$NOLEARNNOPOINTS");
		return FALSE;
	};
	oth.lp = oth.lp - kosten;
	Log_CreateTopic(TOPIC_TALENTANIMALTROPHY,LOG_NOTE);
	b_logentry(TOPIC_TALENTANIMALTROPHY,"Nyn� dok�u:");
	if(trophy == TROPHY_TEETH)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_TEETH] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"...z�skat zuby r�zn�ch zv��at.");
	};
	if(trophy == TROPHY_CLAWS)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_CLAWS] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"...vyjmout zabit�m �elm�m dr�py.");
	};
	if(trophy == TROPHY_FUR)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_FUR] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"...stahovat ko�e�iny.");
	};
	if(trophy == TROPHY_REPTILESKIN)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_REPTILESKIN] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"...stahovat ko�e�iny z je�t�r�.");
	};
	if(trophy == TROPHY_HEART)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_HEART] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"...vyjmout srdce d�mon�m a golem�m.");
	};
	if(trophy == TROPHY_SHADOWHORN)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_SHADOWHORN] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"...z�skat roh ze st�nov�ch �elem.");
	};
	if(trophy == TROPHY_FIRETONGUE)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_FIRETONGUE] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"...vyjmout jazyk ohniv�m je�t�r�m.");
	};
	if(trophy == TROPHY_BFWING)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFWING] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"...odd�lit krvav�m mouch�m k��dla.");
	};
	if(trophy == TROPHY_BFSTING)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_BFSTING] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"...vyjmout krvav�m mouch�m �ihadla.");
	};
	if(trophy == TROPHY_MANDIBLES)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_MANDIBLES] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"...vyjmout nestv�r�m kusadla.");
	};
	if(trophy == TROPHY_CRAWLERPLATE)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_CRAWLERPLATE] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"...z�skat krun��e d�ln�ch �erv�.");
	};
	if(trophy == TROPHY_DRGSNAPPERHORN)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_DRGSNAPPERHORN] = TRUE;
		b_logentry(TOPIC_TALENTANIMALTROPHY,"...vyjmout rohy dra��m ch�apavc�m.");
	};
	if(trophy == TROPHY_DRAGONSCALE)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_DRAGONSCALE] = TRUE;
		CreateInvItems(swampdragon,itat_dragonscale,12);
		CreateInvItems(rockdragon,itat_dragonscale,12);
		CreateInvItems(firedragon,itat_dragonscale,12);
		CreateInvItems(icedragon,itat_dragonscale,12);
		b_logentry(TOPIC_TALENTANIMALTROPHY,"...z�skat �upiny z t�l mrtv�ch drak�.");
	};
	if(trophy == TROPHY_DRAGONBLOOD)
	{
		PLAYER_TALENT_TAKEANIMALTROPHY[TROPHY_DRAGONBLOOD] = TRUE;
		CreateInvItems(swampdragon,itat_dragonblood,2);
		CreateInvItems(rockdragon,itat_dragonblood,2);
		CreateInvItems(firedragon,itat_dragonblood,2);
		CreateInvItems(icedragon,itat_dragonblood,2);
		b_logentry(TOPIC_TALENTANIMALTROPHY,"...z�skat krev z mrtv�ho draka.");
	};
	PrintScreen(PRINT_LEARNTAKEANIMALTROPHY,-1,-1,FONT_SCREEN,2);
	Npc_SetTalentSkill(oth,NPC_TALENT_TAKEANIMALTROPHY,1);
	return TRUE;
};

