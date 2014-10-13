select ac.LAB_ACCT_KEY, p.* 
from PROVIDER p
join LOCATION_PROVIDER lp on lp.PROV_KEY = p.PROV_KEY
join LAB_ACCOUNT_LOCATION ac on ac.LOC_KEY = lp.LOC_KEY
where ac.LAB_ACCT_KEY=20;
