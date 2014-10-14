select e.*, a.name, a.award_date from employee e 
join award a on a.employee_id = e.id
join 
  ( select employee_id, max(award_date) as last_award_date 
    from award 
    group by employee_id
  ) tmp 
  on tmp.employee_id = e.id
where a.award_date = tmp.last_award_date;
