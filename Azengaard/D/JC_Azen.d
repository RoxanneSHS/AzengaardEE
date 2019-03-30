BEGIN ~JC_AZEN~

IF ~Global("JC_EnterPast","GLOBAL",1)
~ THEN BEGIN 0
SAY @0  
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 2
END

IF ~~ THEN BEGIN 1
SAY @3  
  IF ~~ THEN REPLY @2 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 3
END

IF ~~ THEN BEGIN 2
SAY @5  
  IF ~~ THEN REPLY @6 GOTO 1
  IF ~~ THEN REPLY @7 GOTO 3
END

IF ~~ THEN BEGIN 3
SAY @8  
  IF ~~ THEN REPLY @9 GOTO 5
  IF ~~ THEN REPLY @10 GOTO 4
  IF ~~ THEN REPLY @11 GOTO 4
  IF ~~ THEN REPLY @12 GOTO 5
END

IF ~~ THEN BEGIN 4 
SAY @13  
  IF ~~ THEN DO ~SetGlobal("AzenChallenge","GLOBAL",1)
		     SetGlobal("JC_EnterPast","GLOBAL",2)
		 ForceSpell(Myself,DRYAD_TELEPORT)~ EXIT
END

IF ~~ THEN BEGIN 5
SAY @14  
  IF ~~ THEN GOTO 4
END

IF ~Global("JC_EnterFuture","GLOBAL",1)
    ~ THEN BEGIN 6
SAY @15 
  IF ~~ THEN REPLY @16 GOTO 7
  IF ~~ THEN REPLY @17 GOTO 7 
END

IF ~~ THEN BEGIN 7
SAY @18 
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8
SAY @19  
  IF ~~ THEN DO ~SetGlobal("AzenChallenge","GLOBAL",2)
		     SetGlobal("JC_EnterFuture","GLOBAL",2)
		 AddXPObject(Player1,7500)
		 AddXPObject(Player2,7500)
		 AddXPObject(Player3,7500)
		 AddXPObject(Player4,7500)
		 AddXPObject(Player5,7500)
		 AddXPObject(Player6,7500)
  		 ForceSpell(Myself,DRYAD_TELEPORT)
		 CreateCreature("JC_ASSN",[390.455],0)
		 AddJournalEntry(@21,QUEST)~ EXIT
END

IF ~Global("AzenChallenge","GLOBAL",3)~ THEN BEGIN 9
SAY @20 
  IF ~~ THEN DO ~EraseJournalEntry(@21)
		     CreateCreature("JC_ASSN",[2105.1465],0)		 
		     CreateCreature("JC_ASSN",[2065.1505],0)
		     CreateCreature("JC_ASSN",[2305.1390],0)		 
                 CreateCreature("JC_ASSN",[2360.1380],0)
		     CreateCreature("JC_MAGE",[2185.1330],0)
		     ChangeEnemyAlly(Myself,EVILCUTOFF)
		     Enemy()~ EXIT
END
