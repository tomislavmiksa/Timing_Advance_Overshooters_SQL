-- ExelResults{Sheet=TA_REPORT;Cell=A3}


select ROW_NUMBER() over (partition by Operator ORDER BY Cid), 
       * 
from NEW_RAN_TA_2019_AGGR
where ECI_TAC is not null and Call_Start_Time is not null
order by Cid