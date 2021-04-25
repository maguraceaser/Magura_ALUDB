/* Creating Users */

--  Roles
CREATE ROLE 'alu_admin', 'alu_registrar', 'alu_dean';

-- Assign Privileges to Roles
GRANT SELECT ON alu_db.* TO 'alu_dean';
GRANT SELECT, INSERT, UPDATE, DELETE ON alu_db.* TO 'alu_registrar';
GRANT ALL ON alu_db.* TO 'alu_admin';