show databases;
create database motors;

ALTER DATABASE `motors`  DEFAULT COLLATE utf8mb4_general_ci ;

USE motors;
show tables;

create table parts
( streeing varchar(45), 
  gear varchar(45), 
  suspension varchar(50));
  show tables;
  select * from parts;
  
  ALTER TABLE parts
  modify column gear varchar(50);
  drop table parts;
  drop database motors;
  SHOW databases;
  
  
  
  
  