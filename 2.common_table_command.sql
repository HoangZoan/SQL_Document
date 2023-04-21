-- CUSTOM DATA TYPES & DOMAINS
CREATE DOMAIN Rating SMALLINT CHECK (VALUE > 0 AND VALUE <= 5);
CREATE TYPE Feedback (
    student_id UUID,
    rating Rating,
    feedback TEXT
);

-- CREATE TABLE
CREATE TABLE subject_test (
    subject_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    "name" TEXT NOT NULL,
    "description" TEXT
);

/* For uuid usage */
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- TABLE CONSTRAINT
CREATE TABLE feedback (
    student_id UUID NOT NULL REFERENCES student(student_id),
    course_id UUID NOT NULL REFERENCES course(course_id),
    feedback TEXT,
    rating Rating,
    CONSTRAINT pk_feedback PRIMARY KEY (student_id, course_id)
);

-- ALTER TABLE
ALTER TABLE student ADD COLUMN email TEXT;

-- CREATING A VIEW
CREATE VIEW view_name as querry;