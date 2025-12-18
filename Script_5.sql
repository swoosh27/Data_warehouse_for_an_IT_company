SELECT
    p.project_name,
    AVG(t.closed_date - t.created_date) AS avg_duration,
    RANK() OVER (
        ORDER BY AVG(t.closed_date - t.created_date)
    ) AS speed_rank
FROM TaskFact t
JOIN ProjectDim p ON t.project_id = p.project_id
WHERE t.closed_date IS NOT NULL
GROUP BY p.project_name;
