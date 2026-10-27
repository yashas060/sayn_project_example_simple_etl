-- this SQL query will be compiled using Jinja
-- the user_prefix parameter is compiled based on the value in the profile used at execution time

SELECT j.id AS joke_id
     , j.type AS joke_type
     , j.text as txt_field1
     , j.text_translated as txt_field2
     , j.translation_type as txt_field3
     , LENGTH(j.text) AS text_length
     , LENGTH(j.text_translated) AS text_translated_length
     , CASE WHEN LENGTH(j.text_translated) > LENGTH(j.text) THEN 1 ELSE 0 END flag_text_translated_length_longer

FROM {{user_prefix}}logs_jokes_translated j
