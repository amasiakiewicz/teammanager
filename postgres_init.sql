CREATE USER teamuser WITH PASSWORD 'teampass';
CREATE DATABASE teamdb WITH OWNER = teamuser ENCODING = 'UTF8';


CREATE USER transferuser WITH PASSWORD 'transferpass';
CREATE DATABASE transferdb WITH OWNER = transferuser ENCODING = 'UTF8';


CREATE USER playeruser WITH PASSWORD 'playerpass';
CREATE DATABASE playerdb WITH OWNER = playeruser ENCODING = 'UTF8';

