CREATE USER __USER__ WITH PASSWORD '__PASS__'
CREATE ROLE __USER__ WITH SUPERUSER LOGIN PASSWORD '__PASS__';
CREATE DATABASE __DATABASE__ WITH OWNER __USER__ ENCODING 'utf-8';

CREATE USER stusr WITH SUPERUSER LOGIN PASSWORD 'phdy.lt_2'; --phdy.lt!2
CREATE ROLE stuser WITH SUPERUSER LOGIN PASSWORD 'phdy.lt_2';
CREATE DATABASE searchtelligence WITH OWNER stuser ENCODING 'utf-8';
GRANT ALL PRIVILEGES ON DATABASE searchtelligence to stuser;

-- CREATE DATABASE database OWNER role;
-- createdb -O rolename dbname

# create user and grant ownership
sudo -u postgres psql -c "CREATE USER __USER__ WITH PASSWORD '__PASS__';"
sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE __DATABASE__ to __USER__;"
sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON TABLE __TABLE__ TO __USER__;" # pg8
sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO __USER__;" # pg9

# create database and grant access
sudo -u postgres psql -c "CREATE DATABASE __DATABASE__ WITH OWNER __USER__ ENCODING 'utf-8';"

# add owner to a database
sudo -u postgres psql -c "ALTER DATABASE __DATABASE__ OWNER TO __USER__;"

