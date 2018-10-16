CREATE TABLE employees (
    employee_id         varchar(10)                NOT NULL,
    first_name        varchar(15)             NOT NULL,
    last_name         varchar(15)            NOT NULL,
    email            varchar(30)            NOT NULL,
    phone_number      int(11)                NOT NULL,
    hire_date         varchar(20)          NOT NULL,
    job_id           varchar(5)             NOT NULL,
    salary           int(6)                 NOT NULL,
    commisson_pct     int(10)                 NOT NULL,
    manager_id       varchar(10)              NOT NULL,
    department_id     varchar(10)              NOT NULL
    PRIMARY KEY (employee_id),
    FOREIGN KEY (job_id) REFERENCES jobs(job_id)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;


 CREATE TABLE departments (
  departments_id        int(11) UNSIGNED              NOT NULL,
  department_name       varchar(30)                   NOT NULL,
  manager_id            int(11) UNSIGNED DEFAULT      NULL,
  location_id           int(11) UNSIGNED DEFAULT      NULL,
  PRIMARY KEY (department_id),
  FOREIGN KEY (location_id) REFERENCES locations(location_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE job_history (
    employee_id   varchar(10)   NOT NULL,
    start_date    date         NOT NULL,
    end_date      date         NOT NULL,
    job_id        varchar(10)   NOT NULL,
    department_id varchar(10)   NOT NULL
    PRIMARY KEY (start_date),
    FOREIGN KEY () REFERENCES locations()
);ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE jobs (
    job_id      varchar(10)     NOT NULL,
    job_title   varchar(10)     NOT NULL,
    min_salary  varchar(10)     NOT NULL,
    max_salary  varchar(10)     NOT NULL,
    PRIMARY KEY (job_id),
    FOREIGN KEY () REFERENCES locations()
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE locations (
    location_id         varchar(20)     NOT NULL,
    street_address      varchar(20)     NOT NULL,
    postal_code         varchar(20)     NOT NULL,
    city                varchar(20)     NOT NULL,
    state_province      varchar(20)     NOT NULL,
    country_id          varchar(20)     NOT NULL,
    PRIMARY KEY (location_id),
    FOREIGN KEY (country_id) REFERENCES countries(country_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE countries (
    country_id          varchar(20)     NOT NULL,
    country_name        varchar(30)     NOT NULL,
    region_id           varchar(20)     NOT NULL,
    PRIMARY KEY (country_id),
    FOREIGN KEY (region_id) REFERENCES locations(region_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE regions (
    region_id           varchar(20)     NOT NULL,
    region_name         varchar(30)     NOT NULL
    PRIMARY KEY (region_id)
    FOREIGN KEY () REFERENCES locations()
)ENGINE=InnoDB DEFAULT CHARSET=utf8;