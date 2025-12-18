CREATE TABLE TaskFact (
    task_id INTEGER PRIMARY KEY,
    project_id INTEGER REFERENCES ProjectDim(project_id),
    user_id INTEGER REFERENCES UserDim(user_id),
    priority_id INTEGER REFERENCES PriorityDim(priority_id),
    sprint_id INTEGER REFERENCES SprintDim(sprint_id),
    created_date DATE,
    closed_date DATE
);

CREATE TABLE StatusHistoryFact (
    status_history_id SERIAL PRIMARY KEY,
    task_id INTEGER REFERENCES TaskFact(task_id),
    status_id INTEGER REFERENCES StatusDim(status_id),
    change_date DATE
);

CREATE TABLE WorklogFact (
    worklog_id SERIAL PRIMARY KEY,
    task_id INTEGER REFERENCES TaskFact(task_id),
    user_id INTEGER REFERENCES UserDim(user_id),
    work_date DATE,
    work_duration INTEGER
);
