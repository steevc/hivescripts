select a.name, a.post_count, a.last_vote_time,
JSON_VALUE(json_metadata,'$.profile.location'),
a.json_metadata, a.recovery_account 
from Accounts a
where a.json_metadata like '%location%' --and a.json_metadata not like '%Ukraine%'
and 
JSON_VALUE(json_metadata,'$.profile.location') like '%england%'
and a.last_vote_time  > '2021'
order by name