SELECT
    p.project_name,
    s.sprint_name,
    COUNT(t.task_id) AS task_count
FROM TaskFact t
JOIN ProjectDim p ON t.project_id = p.project_id
JOIN SprintDim s ON t.sprint_id = s.sprint_id
GROUP BY CUBE (p.project_name, s.sprint_name);
