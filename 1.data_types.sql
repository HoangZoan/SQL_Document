-- TEXT 
CREATE TABLE text_variation (
    fixed char(4),
    variable varchar(20),
    unlimited text
);

-- NUMBER
CREATE TABLE number_variation (
    small SMALLINT, -- from -32,768 to 32,767
    int_num INT, -- from -2 mil+ to 2 mil+
    big_int BIGINT, -- enormous
    four float4, -- about 6 digits precision
    eight float8, -- about 15 digits precision
    big decimal -- unlimited
);

-- ARRAY
CREATE TABLE array (
    "text" text[];
);

INSERT INTO array VALUES (
    ARRAY ['text 1', 'text 2']
);