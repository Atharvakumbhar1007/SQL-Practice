use sprk_morning;
select * from employee;
delimiter $
create procedure sort_employee(
	sort_column varchar(100),
	sort_dir varchar(30)
)
begin
	# call sort_employee("salary","ASC")
    # "select * from employee order by salary asc"
    if sort_dir is NULL or trim(sort_dir) = "" then
		set sort_dir = "ASC";
	end if;
    
    
	set @query = concat("select * from employee order by ",
		sort_column," ",sort_dir);
	prepare statement from @query;
    execute statement;
    
    deallocate prepare statement;

end $

delimiter ;

call sort_employee("salary","ASC");
call sort_employee("salary","DESC");
call sort_employee("date_of_birth","ASC");
call sort_employee("date_of_birth","DESC");

call sort_employee("salary", null);
call sort_employee("salary", "");
call sort_employee("salary", "      " );
call sort_employee("emp_name", "      " );