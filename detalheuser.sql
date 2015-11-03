SPOOL DETALHEUSER.TXT
COL USERNAME FORMAT A20
COL ACCOUNT_STATUS FORMAT A20 HEAD "STATUS"
COL PROFILE FORMAT A20 HEAD "PERFIL"
COL "DEFAULT" FORMAT A20 HEAD "DFLT TABLESPACE"
COL TEMPORARIA FORMAT A20 HEAD "TEMP TABLESPACE"
SET COLSEP "@"
SELECT USERNAME, ACCOUNT_STATUS || DECODE(LOCK_DATE,NULL,NULL, ' IN ' ||LOCK_DATE) ACCOUNT_STATUS,
       PROFILE, DEFAULT_TABLESPACE "DEFAULT", TEMPORARY_TABLESPACE TEMPORARIA
FROM DBA_USERS ORDER BY ACCOUNT_STATUS DESC, USERNAME
/
SPOOL OFF
SET COLSEP " "

