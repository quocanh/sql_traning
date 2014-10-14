a) LOCATION_PROVIDER table has PROV_KEY and LOC_KEY
b) LAB_ACCOUNT_LOCATION has LOC_KEY and LAB_ACCT_KEY
c) PROVIDER table has all info for a PROVIDER
So we need to join those 3 tables as the following

select ac.LAB_ACCT_KEY, p.* 
from PROVIDER p
join LOCATION_PROVIDER lp on lp.PROV_KEY = p.PROV_KEY
join LAB_ACCOUNT_LOCATION ac on ac.LOC_KEY = lp.LOC_KEY
where ac.LAB_ACCT_KEY=20;
