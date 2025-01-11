set @celeb_id = 1;
set @newName = 'Bartu Pacal';
call mbti_schema.UpdateCelebName(@celeb_id, @newName);
select @celeb_id, @newName;

select *
from celebs
where id=1;