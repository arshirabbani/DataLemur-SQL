-- signup confirmation rate --
SELECT 
    ROUND((1.0 * SUM(CASE WHEN signup_action = 'Confirmed' THEN 1 ELSE 0 END))/ COUNT(*),2)
FROM emails
LEFT JOIN texts
ON texts.email_id = emails.email_id
WHERE signup_action IS NOT NULL;
