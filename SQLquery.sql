USE vanguard;
SELECT client_id, visit_id, variation,
	   TIMESTAMPDIFF(MINUTE, MIN(date_time), MAX(date_time)) AS minutes_spent
FROM df_final_web_cleaned
GROUP BY visit_id, variation, client_id
ORDER BY minutes_spent DESC;