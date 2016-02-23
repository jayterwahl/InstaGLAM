# Schema Information

## pics
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
title       | string    | not null
url        | text      | not null
user_id   | integer   | not null, foreign key (references users), indexed

## follows
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
user_id        | integer    | not null, foreign key
pics_id        | integer    | not null, foreign key


## users
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
username        | string    | not null, indexed, unique
password_digest | string    | not null
session_token   | string    | not null, indexed, unique
