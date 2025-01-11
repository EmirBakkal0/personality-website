set @name = 'Adolf Hitler';
set @letters = '';
call mbti_schema.GetCelebPersonalityByName(@name, @letters);
select @name, @letters;
