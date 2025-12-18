SELECT
    p.project_name,
    pr.priority_name,
    COUNT(t.task_id) AS task_count
FROM TaskFact t
JOIN ProjectDim p ON t.project_id = p.project_id
JOIN PriorityDim pr ON t.priority_id = pr.priority_id
GROUP BY ROLLUP (p.project_name, pr.priority_name)
ORDER BY p.project_name;
