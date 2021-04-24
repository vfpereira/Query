CREATE TABLE IF NOT EXISTS projects (
    id BIGINT  unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS projects_efforts (
    id BIGINT  unsigned  NOT NULL AUTO_INCREMENT,
    project_id BIGINT unsigned NOT NULL,
    hours INT unsigned NOT NULL,
    PRIMARY KEY(id, project_id),
    CONSTRAINT fk_project_id
    FOREIGN KEY(project_id) 
        REFERENCES projects(id)
);

