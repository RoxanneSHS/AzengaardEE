BEGIN ~JC_SARE~

IF ~Global("AzenChallenge","GLOBAL",1)
~ THEN BEGIN 0
  SAY @0 
  IF ~~ THEN REPLY @1 GOTO 1
  IF ~~ THEN REPLY @2 GOTO 9
  IF ~Gender(LastTalkedToBy,MALE)
~ THEN REPLY @3 GOTO 2
  IF ~~ THEN REPLY @4 GOTO 4
  IF ~~ THEN REPLY @5 GOTO 5
  IF ~Gender(LastTalkedToBy,FEMALE)
~ THEN REPLY @3 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @6  
      =
      @7  
  IF ~~ THEN REPLY @8 GOTO 7
  IF ~Gender(LastTalkedToBy,MALE)
~ THEN REPLY @9 GOTO 2
  IF ~~ THEN REPLY @10 GOTO 5
  IF ~Gender(LastTalkedToBy,FEMALE)
~ THEN REPLY @9 GOTO 3
END

IF ~~ THEN BEGIN 2
  SAY @11
      =
      @12 
  IF ~~ THEN DO ~ActionOverride("JC_ANGE",Enemy())
ActionOverride("JC_SEMA",Enemy())
ActionOverride("JC_TAZO",Enemy())
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @13 
      =
      @14 
  IF ~~ THEN DO ~ActionOverride("JC_ANGE",Enemy())
ActionOverride("JC_SEMA",Enemy())
ActionOverride("JC_TAZO",Enemy())
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @15 
  IF ~~ THEN REPLY @16 GOTO 6
  IF ~Gender(LastTalkedToBy,MALE)
~ THEN REPLY @17 GOTO 2
  IF ~Gender(LastTalkedToBy,FEMALE)
~ THEN REPLY @17 GOTO 3
  IF ~~ THEN REPLY @18 GOTO 8
END

IF ~~ THEN BEGIN 5
  SAY @19 
      =
      @14 
  IF ~~ THEN DO ~ActionOverride("JC_ANGE",Enemy())
ActionOverride("JC_SEMA",Enemy())
ActionOverride("JC_TAZO",Enemy())
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @20 
      =
      @14 
  IF ~~ THEN DO ~ActionOverride("JC_ANGE",Enemy())
ActionOverride("JC_SEMA",Enemy())
ActionOverride("JC_TAZO",Enemy())
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @21  
      =
      @14 
  IF ~~ THEN DO ~ActionOverride("JC_ANGE",Enemy())
ActionOverride("JC_SEMA",Enemy())
ActionOverride("JC_TAZO",Enemy())
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @22  
      =
      @14 
  IF ~~ THEN DO ~ActionOverride("JC_ANGE",Enemy())
ActionOverride("JC_SEMA",Enemy())
ActionOverride("JC_TAZO",Enemy())
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 9 
SAY @23 
  IF ~~ THEN REPLY @24 GOTO 1
  IF ~Gender(LastTalkedToBy,MALE)
~ THEN REPLY @25 GOTO 2
  IF ~Gender(LastTalkedToBy,FEMALE)
~ THEN REPLY @25 GOTO 3
END