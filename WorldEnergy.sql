-- The aim of this project is to analyse the energy in the world fossil and renewable. 
-- We want to know which country contributes the most for the global warming and for renewable energy

-- First we will check country by GDP (Gross domestic product) in 2016
SELECT * FROM dbo.ID
Where not country = 'world' and year = 2016 and gdp is not null
order by gdp desc

-- Now the population in 2016
SELECT * FROM dbo.ID
Where country not in ('world','Africa','europe','north america') and year = 2016 
order by population desc

-- Primary Energy consumption in 2019
SELECT * FROM dbo.Other
WHERE iso_code is not null and year = 2019
ORDER BY primary_energy_consumption desc

-- Lets now study the renewables

-- Top renewables producer in 2019
Select country, renewables_electricity From dbo.Renewables
Where not (iso_code is null or renewables_electricity is null) and country !='world' and year = 2019
order by renewables_electricity desc

-- Top renewables producer per capita in 2019
Select country, renewables_elec_per_capita From dbo.Renewables
Where not (iso_code is null or renewables_electricity is null) and country !='world' and year = 2019
order by renewables_elec_per_capita desc

-- And fossil fuels also

-- Top fossil fuels producers in 2019
SELECT country,year,fossil_electricity From dbo.Fossil
Where not (iso_code is null or fossil_electricity is null) and country !='world' and year = 2019
order by fossil_electricity desc

-- Top fossil fuel consumption
SELECT country,fossil_fuel_consumption From dbo.Fossil
Where not (iso_code is null or fossil_fuel_consumption is null) and country !='world' and year = 2019
order by fossil_fuel_consumption desc

-- Checking top oil, coal and gas consumers
Select oil.country, oil_consumption, coal_consumption, gas_consumption  
From dbo.Oil as oil
Join dbo.Gas as gas
	on oil.country = gas.country
	and oil.year = gas.year
Join dbo.Coal as coal
	on oil.country = coal.country
	and oil.year = coal.year 
where not(gas_consumption is null or coal_consumption is null or oil_consumption is null) and 
oil.country not in('world','Africa','europe','north america','asia pacific', 'middle east', 'south&central america', 'cis') 
and oil.year = 2019
order by oil_consumption desc

-- Checking top solar, wind and hydro consumers per capita
Select solar.country, solar_elec_per_capita, wind_elec_per_capita, hydro_elec_per_capita 
From dbo.Solar as solar
Join dbo.Wind as wind
	on solar.country = wind.country
	and solar.year = wind.year
Join dbo.Hydro as hydro
	on solar.country = hydro.country
	and solar.year = hydro.year
where not(solar_elec_per_capita is null and wind_elec_per_capita is null and hydro_elec_per_capita is null) and
solar.country not in('world','Africa','europe','north america','asia pacific', 'middle east', 'south&central america', 'cis')
and solar.year=2019
order by hydro_elec_per_capita desc

-- Comparing Fossil Vs Renewables in 2019
With FossilVsRenewable (country, year, fossil_electricity, renewables_electricity, FossilVsRenewable)
as 
(Select fossil.country, fossil.year, fossil_electricity, renewables_electricity, renewables_electricity/fossil_electricity as FossilVsRenewable
From dbo.Fossil as fossil
Join dbo.Renewables as renew
	on fossil.country = renew.country
	and fossil.year = renew.year
Where not (fossil_electricity = 0 or renewables_electricity = 0) and fossil.year = 2019
)
Select country, fossil_electricity, renewables_electricity, FossilVsRenewable
From FossilVsRenewable
order by FossilVsRenewable desc