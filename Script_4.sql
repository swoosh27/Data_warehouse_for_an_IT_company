SELECT
    u.full_name,
    w.work_date,
    w.work_duration,
    SUM(w.work_duration) OVER (
        PARTITION BY u.user_id
        ORDER BY w.work_date
    ) AS cumulative_minutes
FROM WorklogFact w
JOIN UserDim u ON w.user_id = u.user_id
ORDER BY u.full_name, w.work_date;
