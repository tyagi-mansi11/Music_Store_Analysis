#Level: Easy

/*Q1: Who is the senior most employee based on job title?*/

select * from employee
order by levels desc
limit 1;

/*Q2: Which countries have the most invoices?*/

select count(*)as count, billing_country from invoice
group by billing_country
order by count desc;

/*Q3: What are top 3 values of total invoices*/

select total from invoice
order by total desc
limit 3;

/*Q4: Which city has the best customers? We would like to throw a promotional Music Festival in the city we made the most money. 
Write a query that returns one city that has the highest sum of invoice totals. 
Return both the city name & sum of all invoice totals*/

select sum(total) as total_invoice, billing_city from invoice
group by billing_city
order by total_invoice desc
limit 1;



