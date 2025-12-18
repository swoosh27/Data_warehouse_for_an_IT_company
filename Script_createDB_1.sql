CREATE TABLE ProjectDim (
    project_id INTEGER PRIMARY KEY,
    project_name VARCHAR(100) NOT NULL
);

CREATE TABLE UserDim (
    user_id INTEGER PRIMARY KEY,
    full_name VARCHAR(150) NOT NULL
);

CREATE TABLE PriorityDim (
    priority_id INTEGER PRIMARY KEY,
    priority_name VARCHAR(50) NOT NULL
);

CREATE TABLE StatusDim (
    status_id INTEGER PRIMARY KEY,
    status_name VARCHAR(50) NOT NULL
);

CREATE TABLE SprintDim (
    sprint_id INTEGER PRIMARY KEY,
    sprint_name VARCHAR(50),
    start_date DATE,
    end_date DATE
);
