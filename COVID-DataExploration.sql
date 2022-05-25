select * from CovidDB..CovidDeaths
order by 3,4

--Select data that we are going to be using and order by location and date
Select Location, date, total_cases, new_cases, total_deaths, population
From CovidDB..CovidDeaths
order by 1,2

--Looking at Total Cases vs Total Deaths

--How many cases are there in this country and then how many deaths do they have for their entires cases
-- We want to know the percentage of people who are dying , who actually get infected 
Select Location, date, total_cases, total_deaths, (total_deaths/total_cases)
From CovidDB..CovidDeaths
order by 1,2