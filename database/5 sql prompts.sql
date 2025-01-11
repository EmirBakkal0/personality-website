use mbti_schema;

#2-Calculate the average percentage for each MBTI letter preference across all celebrities.
SELECT
 AVG (l.letter_1_percentage) AS avg_letter_1,
 AVG (l.letter_2_percentage) AS avg_letter_2,
 AVG (l.letter_3_percentage) AS avg_letter_3,
 AVG (l.letter_4_percentage) AS avg_letter_4
 FROM letter l;

#3-Find the minimum and maximum number of votes for the 'four_letter' MBTI types
SELECT MIN(l.four_letter_total_voted) AS min_votes, MAX(l.four_letter_total_voted) AS max_votes
FROM letter l;

#4-Count the number of celebrities in each category (e.g., Sports, Entertainment).
SELECT 
	cs.category, 
    COUNT(c.name) AS celebrity_count
FROM categories cs
JOIN celebs c on c.categories_cat_id = cs.cat_id
GROUP BY category
ORDER BY celebrity_count DESC;


#5-Sum up the total votes for each enneagram type.
SELECT et.enneagram, sum(et.enneagram_total_voted) as total_votes
FROM enneagram_types et
GROUP BY et.enneagram;


#10-What is the average tritype_total_voted for the Classic Pop & Contemporary subcategory?
SELECT AVG(t.tritype_total_voted) AS avg_tritype_total
from tritype_types t
JOIN celebs c ON c.id = t.celebs_id
JOIN sub_categories s ON c.sub_categories_sub_cat_id= s.sub_cat_id
WHERE s.subcategory = 'Classic Pop & Contemporary';