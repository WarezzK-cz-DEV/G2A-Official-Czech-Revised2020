
func void b_closetopics_yoly()
{
	b_closetopic(TOPIC_ADDON_PICKFORCONSTANTINO,0,MIL_310_SCHONMALREINGELASSEN,3);
	b_closetopic(TOPIC_ADDON_GREG_NW,MIS_ADDON_GREG_RAKECAVE,ENTERED_ADDONWORLD,3);
	b_closetopic(TOPIC_ADDON_ORNAMENT,0,ENTERED_ADDONWORLD,3);
	b_closetopic(TOPIC_ADDON_RINGOFWATER,RANGERMEETINGRUNNING,0,3);
	b_closetopic(TOPIC_ADDON_HOLRIORDIAN,MIS_ADDON_SATURAS_BRINGRIORDIAN2ME,0,3);
	b_closetopic(TOPIC_ADDON_CAVALORNTHEHUT,0,TOPIC_END_CAVALORNTHEHUT,6);
	b_closetopic(TOPIC_ADDON_KILLBRAGO,MIS_ADDON_CAVALORN_KILLBRAGO,0,3);
	b_closetopic(TOPIC_ADDON_BANDITTRADER,MIS_VATRAS_FINDTHEBANDITTRADER,0,6);
	b_closetopic(TOPIC_ADDON_MISSINGPEOPLE,0,SKLAVEN_FLUCHT,6);
	b_closetopic(TOPIC_ADDON_WHOSTOLEPEOPLE,MIS_ADDON_VATRAS_WHEREAREMISSINGPEOPLE,0,6);
	b_closetopic(TOPIC_ADDON_BRINGRANGERTOLARES,MIS_LARES_BRINGRANGERTOME,0,4);
	b_closetopic(TOPIC_ADDON_KDW,0,ENTERED_ADDONWORLD,4);
	b_closetopic(TOPIC_ADDON_TELEPORTSNW,0,SCUSED_ALLNWTELEPORSTSTONES,6);
	b_closetopic(TOPIC_ADDON_RANGERHELPKDF,MIS_ADDON_DARON_GETSTATUE,TOPIC_END_RANGERHELPKDF,2);
	b_closetopic(TOPIC_ADDON_RANGERHELPSLD,SLD_AUFNAHME,TOPIC_END_RANGERHELPSLD,2);
	b_closetopic(TOPIC_ADDON_RANGERHELPMIL,MIL_AUFNAHME,0,2);
	b_closetopic(TOPIC_ADDON_STONEPLATES,0,PLAYER_TALENT_FOREIGNLANGUAGE,4);
	b_closetopic(TOPIC_ADDON_FARIMSFISH,MIS_ADDON_FARIM_PALADINFISCH,0,6);
	b_closetopic(TOPIC_ADDON_LUCIA,0,TOPIC_END_LUCIA,6);
	b_closetopic(TOPIC_ADDON_EROL,MIS_ADDON_EROL_BANDITSTUFF,0,4);
	b_closetopic(TOPIC_ADDON_JOE,0,TOPIC_END_JOE,4);
	b_closetopic(TOPIC_ADDON_BROMORSGOLD,MIS_BROMOR_LUCIASTOLEGOLD,0,6);
	b_closetopic(TOPIC_ADDON_BALTRAMSKIPTRADE,0,TOPIC_END_BALTRAMSKIPTRADE,6);
	b_closetopic(TOPIC_ADDON_TELEPORTSADW,0,SC_ADW_ACTIVATEDALLTELEPORTSTONES,6);
	b_closetopic(TOPIC_ADDON_SKLAVEN,0,SKLAVEN_FLUCHT,6);
	b_closetopic(TOPIC_ADDON_RAVENKDW,0,RAVENISDEAD,4);
	b_closetopic(TOPIC_ADDON_RELICTS,0,SATURAS_SCBROUGHTALLTOKEN,4);
	b_closetopic(TOPIC_ADDON_LANCE,0,TOPIC_END_LANCE,6);
	b_closetopic(TOPIC_ADDON_HOUSESOFRULERS,MIS_RIORDIAN_HOUSESOFRULERS,RAVENISDEAD,6);
	b_closetopic(TOPIC_ADDON_CANYONORCS,0,TOPIC_END_CANYONORCS,6);
	b_closetopic(TOPIC_ADDON_BDTRUESTUNG,0,MIS_GREG_SCOUTBANDITS,6);
	b_closetopic(TOPIC_ADDON_QUARHODRON,0,SATURAS_KNOWSHOW2GETINTEMPEL,4);
	b_closetopic(TOPIC_ADDON_KAMMERN,0,RAVENISDEAD,4);
	b_closetopic(TOPIC_ADDON_KLAUE,0,BELIARSWEAPONUPGRATED,4);
	b_closetopic(TOPIC_ADDON_KLAUE,0,TOPIC_END_KLAUE,4);
	b_closetopic(TOPIC_ADDON_FLUT,0,TOPIC_END_FLUT,4);
	b_closetopic(TOPIC_ADDON_VATRASABLOESUNG,0,VATRASCANLEAVETOWN_KAP3,4);
	b_closetopic(TOPIC_BRONKOEINGESCHUECHTERT,MIS_SEKOB_BRONKO_EINGESCHUECHTERT,0,6);
	b_closetopic(TOPIC_BALTHASARSSCHAFE,MIS_BALTHASAR_BENGARSWEIDE,0,6);
	if((hero.guild != GIL_NONE) && (hero.guild != GIL_SLD) && (hero.guild != GIL_DJG))
	{
		Log_SetTopicStatus(TOPIC_BALTHASARSSCHAFE,LOG_OBSOLETE);
	};
	b_closetopic(TOPIC_AKILSSLDSTILLTHERE,0,TOPIC_END_AKILSSLDSTILLTHERE,6);
	b_closetopic(TOPIC_WETTSAUFEN,MIS_RUKHAR_WETTKAMPF,0,6);
	b_closetopic(TOPIC_GAANSCHNAUBI,MIS_GAAN_SNAPPER,0,6);
	b_closetopic(TOPIC_GROMASKTEACHER,0,GROM_TEACHANIMALTROPHY,6);
	b_closetopic(TOPIC_DRAGOMIRSARMBRUST,MIS_DRAGOMIRSARMBRUST,0,6);
	b_closetopic(TOPIC_KILLLIGHTHOUSEBANDITS,MIS_JACK_KILLLIGHTHOUSEBANDITS,0,6);
	b_closetopic(TOPIC_TORLOF_DMT,MIS_TORLOF_DMT,0,6);
	b_closetopic(TOPIC_HANNARETRIEVELETTER,MIS_HANNARETRIEVELETTER,0,6);
	b_closetopic(TOPIC_MARCOSJUNGS,MIS_MARCOS_JUNGS,0,6);
	b_closetopic(TOPIC_BUSTER_KILLSHADOWBEASTS,MIS_BUSTER_KILLSHADOWBEASTS_DJG,0,6);
	b_closetopic(TOPIC_ULTHAR_HEILESCHREINE_PAL,MIS_ULTHAR_HEILESCHREINE_PAL,0,6);
	b_closetopic(TOPIC_DEMENTOREN,0,TOPIC_END_DEMENTOREN,999);
	b_closetopic(TOPIC_INNOSEYE,0,TOPIC_END_INNOSEYE,4);
	b_closetopic(TOPIC_TRAITORPEDRO,0,SCFOUNDPEDRO,999);
	b_closetopic(TOPIC_SEKOBDMT,0,TOPIC_END_SEKOBDMT,6);
	b_closetopic(TOPIC_AKILSCHAFDIEBE,MIS_AKIL_SCHAFDIEBE,0,6);
	b_closetopic(TOPIC_HEALHILDA,MIS_HEALHILDA,0,6);
	b_closetopic(TOPIC_MALETHSGEHSTOCK,0,TOPIC_END_MALETHSGEHSTOCK,6);
	b_closetopic(TOPIC_BENGARALLEIN,MIS_GETMALAKBACK,0,6);
	b_closetopic(TOPIC_BENGARALLEIN,MIS_BENGARSHELPINGSLD,0,6);
	b_closetopic(TOPIC_MINENANTEILE,0,TOPIC_END_MINENANTEILE,6);
	b_closetopic(TOPIC_RICHTERLAKAI,MIS_LEE_JUDGERICHTER,0,6);
	b_closetopic(TOPIC_KILLHOSHPAK,MIS_KILLHOSHPAK,0,6);
	b_closetopic(TOPIC_URSHAK,0,URSHAK_SUCKED,6);
	b_closetopic(TOPIC_DRACHENJAGD,0,MIS_ALLDRAGONSDEAD,5);
	b_closetopic(TOPIC_LOBARTSORKPROBLEM,0,TOPIC_END_LOBARTSORKPROBLEM,6);
	b_closetopic(TOPIC_SYLVIOKILLICEGOLEM,MIS_DJG_SYLVIO_KILLICEGOLEM,TOPIC_END_SYLVIOKILLICEGOLEM,6);
	b_closetopic(TOPIC_DRAGONHUNTER,0,MIS_ALLDRAGONSDEAD,5);
	b_closetopic(TOPIC_ANGARSAMULETT,0,DJG_ANGARGOTAMULETT,5);
	b_closetopic(TOPIC_JANBECOMESSMITH,MIS_JANBECOMESSMITH,0,6);
	b_closetopic(TOPIC_FERROSSWORD,MIS_FERROSSWORD,0,6);
	b_closetopic(TOPIC_DRACHENEIER,0,TOPIC_END_DRACHENEIER,6);
	b_closetopic(TOPIC_DRACHENEIERNEORAS,MIS_NEORAS_DRAGONEGG,0,6);
	b_closetopic(TOPIC_ORCELITE,0,TOPIC_END_ORCELITE,6);
	b_closetopic(TOPIC_KILLTROLLBLACK,MIS_RAOUL_KILLTROLLBLACK,0,6);
	b_closetopic(TOPIC_DAR_BRINGORCELITERING,MIS_DAR_BRINGORCELITERING,0,6);
	b_closetopic(TOPIC_FOUNDVINOSKELLEREI,0,FOUNDVINOSKELLEREI,6);
	b_closetopic(TOPIC_BRUTUSMEATBUGS,0,TOPIC_END_BRUTUSMEATBUGS,6);
	b_closetopic(TOPIC_GEROLDGIVEFOOD,MIS_GEROLDGIVEFOOD,0,6);
	b_closetopic(TOPIC_SENGRATH_MISSING,0,TOPIC_END_SENGRATH_MISSING,6);
	b_closetopic(TOPIC_TALBIN_RUNS,0,TOPIC_END_TALBIN_RUNS,6);
	b_closetopic(TOPIC_KEROLOTHSGELDBEUTEL,0,TOPIC_END_KEROLOTHSGELDBEUTEL,6);
	b_closetopic(TOPIC_BUCHHALLENVONIRDORATH,0,MIS_SCKNOWSWAYTOIRDORATH,6);
	b_closetopic(TOPIC_BRINGROSIBACKTOSEKOB,MIS_BRINGROSIBACKTOSEKOB,0,6);
	b_closetopic(TOPIC_ROSISFLUCHT,MIS_ROSISFLUCHT,0,6);
	b_closetopic(TOPIC_HEALRANDOLPH,MIS_HEALRANDOLPH,0,6);
	b_closetopic(TOPIC_HALLENVONIRDORATH,0,UNDEADDRAGONISDEAD,999);
	b_closetopic(TOPIC_MYCREW,0,UNDEADDRAGONISDEAD,999);
};

