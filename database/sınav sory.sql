insert into sub_categories (sub_cat_id, subcategory)
values(1,'Doctor');

update celebs
set name = "bartu paçal"
where id=42;

select * from celebs where id=42;

delete from sub_categories 
where sub_cat_id = 1;

select * from sub_categories;

select c.name
from celebs c
join categories cs on c.categories_cat_id = cs.cat_id
where category="Sports";


select cs.category, count(c.name)
from celebs c
join categories cs on c.categories_cat_id = cs.cat_id
group by cs.category;

