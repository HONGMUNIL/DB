USE study;

insert into data_b_tb
values 
	(default, '111'),
	(default, '222'),
	(default, '333');


insert into data_a_tb
values 
	(default, 'aaa', 1),
	(default, 'bbb', 1),
	(default, 'ccc', 2),
	(default, 'ddd', 3),
	(default, 'eee', 3);
    
    
select
	*
from
	data_b_tb b
    left outer join data_a_tb a on(a.data_b_id = b.data_b_id);
    
delete
from
	data_b_tb
where
	data_b_value = '111';
    

insert into data_b_tb
values 
	(default, '555');
    
    
select *
from data_c_tb;

select *
from data_d_tb;


# Transaction

select @@autocommit;
set autocommit = 0;

insert into data_b_tb
values (default, '777');


commit;

select * from data_b_tb;


start transaction;  #transaction 멕이는법 커밋이나 롤백 가능

insert into data_b_tb
values (default, '5050');

update
	data_b_tb
set
	data_b_value = '999'
where
	data_b_value = '777';
    
rollback; #수정하기 전으로 돌아감, 커밋하고나선 롤백 불가능

savepoint aa;

rollback to aa;

commit;




























