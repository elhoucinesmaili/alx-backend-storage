-- This SQL script creates an index called idx_name_first on the table names using the first letter of the name column
CREATE INDEX idx_name_first ON names(name(1));
