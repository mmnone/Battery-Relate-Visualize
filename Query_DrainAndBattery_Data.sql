SELECT
    q.title AS title,
    q.body AS post_body,
    COALESCE(u.display_name, q.owner_display_name) AS owner_username,
    q.tags AS tags,
    q.view_count AS view_count,
    q.favorite_count AS favourite_count,
    q.score AS post_score,
    q.creation_date AS creation_date,
    q.last_activity_date AS last_activity_date,
    q.answer_count AS answer_count,
    q.comment_count AS comment_count,
    q.accepted_answer_id AS accepted_answer,
    a.id AS answer_id,
    a.body AS answer_body,
    a.score AS answer_score,
    a.favorite_count AS answer_favorite_count,
    a.comment_count AS answer_comment_count,
    a.creation_date AS answer_create_date,
    a.last_activity_date AS answer_last_activity,
    COALESCE(au.display_name, a.owner_display_name) AS answer_owner_username,
    c.text AS comment_body,
    c.score AS comment_score,
    c.creation_date AS comment_create_date,
    COALESCE(cu.display_name, c.user_display_name) AS comment_owner_username
FROM 
    `bigquery-public-data.stackoverflow.posts_questions` q
LEFT JOIN 
    `bigquery-public-data.stackoverflow.posts_answers` a 
ON 
    q.id = a.parent_id
LEFT JOIN 
    `bigquery-public-data.stackoverflow.comments` c 
ON 
    a.id = c.post_id
LEFT JOIN 
    `bigquery-public-data.stackoverflow.users` u 
ON 
    q.owner_user_id = u.id
LEFT JOIN 
    `bigquery-public-data.stackoverflow.users` au 
ON 
    a.owner_user_id = au.id
LEFT JOIN 
    `bigquery-public-data.stackoverflow.users` cu 
ON 
    c.user_id = cu.id
WHERE 
    (
      (q.title LIKE '%drain%' AND q.title LIKE '%battery%') OR
      (q.body LIKE '%drain%' AND q.body LIKE '%battery%')
    )
ORDER BY 
    title;
