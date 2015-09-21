insert into EG_MODULE (ID,NAME,ENABLED,CONTEXTROOT,PARENTMODULE,DISPLAYNAME,ORDERNUMBER) VALUES (NEXTVAL('SEQ_EG_MODULE'),'WorksScheduleOfRateMaster','true',null,(select id from eg_module where name = 'WorksMasters'),'Schedule Of Rate', 5);
-- Create Schedule Of Rate --
Insert into EG_ACTION (ID,NAME,URL,QUERYPARAMS,PARENTMODULE,ORDERNUMBER,DISPLAYNAME,ENABLED,CONTEXTROOT,VERSION,CREATEDBY,CREATEDDATE,LASTMODIFIEDBY,LASTMODIFIEDDATE,APPLICATION) values (NEXTVAL('SEQ_EG_ACTION'),'Create Schedule Of Rate','/masters/scheduleOfRate-newform.action',null,(select id from EG_MODULE where name = 'WorksScheduleOfRateMaster'),1,'Create Schedule Of Rate','true','egworks',0,1,now(),1,now(),(select id from eg_module  where name = 'Works Management'));
Insert into eg_roleaction (roleid, actionid) values ((select id from eg_role where name = 'Super User'),(select id from eg_action where name ='Create Schedule Of Rate' and contextroot = 'egworks'));