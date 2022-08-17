# postgresql

## install

```Debian
sudo apt-get --purge remove postgresql\*
dpkg -l | grep postgres
sudo apt install postgresql
```

```Manjaro
uins postgresql
sudo rm -rf /var/lib/postgres

systemctl status postgresql.service
journalctl -xeu postgresql.service

su - postgres -c "initdb --locale en_US.UTF-8 -D '/var/lib/postgres/data'"
systemctl start postgresql
```

## commands

database

```db
createdb test
psql test
dropdb test
```

table

```db
CREATE TABLE weather(
    city            varchar(80),
    temp_lo         int,           -- 最低温度
    temp_hi         int,           -- 最高温度
    prcp            real,          -- 湿度
    date            date
);

DROP TABLE weather;
```

values

```db
INSERT INTO weather (city, temp_lo, temp_hi, prcp, date)
    VALUES ('San Francisco', 43, 57, 0.0, '1994-11-29');

COPY weather FROM '/home/user/weather.txt';
```

check from a table

```db
SELECT * RROM weather;

SELECT city, (temp_hi+temp_lo)/2 AS temp_avg, date FROM weather;

SELECT * FROM weather
    WHERE city = 'San Francisco' AND prcp > 0.0;

SELECT * FROM weather
    ORDER BY city;

SELECT * FROM weather
    ORDER BY city, temp_lo;

SELECT DISTINCT city
    FROM weather;

SELECT DISTINCT city
    FROM weather
    ORDER BY city;
```

check from multi tables

```db
SELECT *
    FROM weather, cities
    WHERE city = name;
```
