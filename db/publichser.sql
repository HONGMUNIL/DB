select
    bt.publisher_id,
    pt.publisher_name,
    count(bt.book_id) as book_count
from
	book_tb bt
left outer join author_tb at on at.author_id = bt.author_id
left outer join category_tb ct on ct.category_id = bt.category_id
left outer join publisher_tb pt on pt.publisher_id = bt.publisher_id
group by
	bt.publisher_id,
	pt.publisher_name
having
	book_count > 10
order by
	bt.publisher_id
    limit 0, 10

    