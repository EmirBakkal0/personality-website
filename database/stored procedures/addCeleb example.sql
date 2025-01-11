set @cel_id = 2;
set @cel_name = 'Ahmet Veli';
set @cel_cat_id = 5;
set @cel_sub_cat_id = 11;
call mbti_schema.AddCeleb(@cel_id, @cel_name, @cel_cat_id, @cel_sub_cat_id);
select @cel_id, @cel_name, @cel_cat_id, @cel_sub_cat_id;
