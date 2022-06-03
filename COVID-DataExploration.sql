select * from CovidDB..CovidDeaths
order by 3,4

--Select data that we are going to be using and order by location and date
Select Location, date, total_cases, new_cases, total_deaths, population
From CovidDB..CovidDeaths
order by 1,2

--Looking at Total Cases vs Total Deaths

----How many cases are there in this country and then how many deaths do they have for their entires cases
----We want to know the percentage of people who are dying , who actually get infected 

-- Shows likelihood of dying if you contract covid in yor country
Select Location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 AS DeathPercentage
From CovidDB..CovidDeaths
Where location like '%peru%'
order by 1,2

-- Looking at Total Cases vs Population
---- It show us what percentage of population has gotten covid
Select Location, date, population, total_cases, (total_cases/population)*100 AS DeathPercentage
From CovidDB..CovidDeaths
Where location like '%peru%'
order by 1,2