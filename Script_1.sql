SELECT
    p.project_name,
    u.full_name,
    SUM(w.work_duration) AS total_minutes
FROM WorklogFact w
JOIN TaskFact t ON w.task_id = t.task_id
JOIN ProjectDim p ON t.project_id = p.project_id
JOIN UserDim u ON w.user_id = u.user_id
GROUP BY GROUPING SETS (
    (p.project_name, u.full_name),
    (p.project_name),
    ()
);
