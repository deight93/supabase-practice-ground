CREATE TABLE
    employees
(
    id         bigint PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    name       text,
    email      text,
    created_at timestamptz DEFAULT now()
);
