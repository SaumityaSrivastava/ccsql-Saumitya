insert  into t_agent
values('SFFS', 'RAJ', 'RAJ@GMAIL.COM', 'pune', 123, 5000);
insert  into t_agent
values('MSSF', ' AJAY ', ' AJAY@GMAIL.COM ', 'chennai', 123, 80);
insert  into t_agent
values('SDMF', ' RAMU ', ' RAMU@GMAIL.COM ', 'pune', 123, 4000);
insert  into t_agent
values('SDFG', ' RAJESH ', ' RAJESH@GMAIL.COM ', 'pune', 123, 6000);
select *
from t_agent;

UPDATE T_AGENT 
SET     TARGET_POLICY_SUM =  CASE  
                        WHEN AGENT_CITY = 'PUNE' AND AGENT_ID LIKE ‘M%’ THEN 400000 
                        WHEN AGENT_CITY = ‘CHENNAI’ AND AGENT_ID LIKE ‘M%’ THEN 250000 
                        ELSE TARGET_POLICY_SUM
                    END 
WHERE   AGENT_CITY IN ('PUNE', 'CHENNAI',)

