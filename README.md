# Welcome to my Energy Project!


![MainImage](https://user-images.githubusercontent.com/92873282/139446825-9e8bf779-fda4-4403-8587-f28d6153d3ea.jpg)

## Objective
The objective in this project is to use SQL, PowerBI and Python to Analyze and extract information from this dataset.
We will analyse the energy in the world fossil and renewable with the purpose to know which country contributes the most for the global warming and renewable energy.


## SQL
I will Azure Data Studio to bring my queries to life.

First we will check top countrys by gdp (Gross domestic product) in 2016(2016 because our dataset is not complete for the year 2019)

![QGDP](https://user-images.githubusercontent.com/92873282/139448999-d4d44ea6-ebe9-43e4-a3ba-f7efc22b0aa2.png)
![QRGDP](https://user-images.githubusercontent.com/92873282/139449394-7887f404-8e1a-4216-96a9-842092b68b5c.png)

We also need to know the population<br>

![QPOP](https://user-images.githubusercontent.com/92873282/139449883-473bac30-d0b8-4aa8-b14d-257aade35800.png)
![QRPOP](https://user-images.githubusercontent.com/92873282/139450292-d2423877-14b8-4539-89cd-d60317bf98b4.png)

After theese inicial queries we can already see that the top countrys in pop and GDP are the same. This have an explanation labour is a factor of production and with an increase in the labour force, due to population growth, the total output may increase causing the GDP to increase

Ok now we will query energy related information, starting with the primary energy consumption countrys

![QEnergyConsumption](https://user-images.githubusercontent.com/92873282/139453678-7fb51e84-61d6-4f9e-a961-1a34d81f901e.jpg)<br>![QFossilConsumption](https://user-images.githubusercontent.com/92873282/139473595-2c2823ce-1637-498d-98a1-ba78b86ae6e4.png)

![QREnergyConsumption](https://user-images.githubusercontent.com/92873282/139454261-652b3b1e-a503-40ab-a906-7c476efe0244.jpg)

### Lets now study renewable energy

Top renewable energy producing country

![QTopProducingCountry](https://user-images.githubusercontent.com/92873282/139455016-82f1afb4-f2f4-49a7-bb75-3ee45f5cec8c.png)
![QRTopProducingCountry](https://user-images.githubusercontent.com/92873282/139455398-0a89bd61-8659-4c92-99a8-7de6686580e8.png)

For me its more important to check top producing renewable energy country per capita so i will take a peak at that

![QTopProducingCountryPerCapita](https://user-images.githubusercontent.com/92873282/139455862-0828df1c-cdfa-42a5-ab73-6be4c1ac8372.png)
![QRTopProducingCountryPerCapita](https://user-images.githubusercontent.com/92873282/139456285-1122defd-188e-4b87-8b1c-188b06d5cdb2.png)

With this we have a paradigm shift. Now we have Iceland, Norway and Canada as top renewable electricy producer per capita.

### Fossil Fuels

Top fossil fuel consumption

![QFossilConsumption](https://user-images.githubusercontent.com/92873282/139473614-ed1b25a2-3787-49e0-a386-4c3e870cb6ca.png)
![QRFossilConsumption](https://user-images.githubusercontent.com/92873282/139473932-da754f9e-0d0c-414a-be9e-1e598fdfa052.png)

The objective now is to take a step further in my sql knowledgle and show some joins.
Lets now compare Oil, Gas, and Coal consumers

![QOilCoalGasConsumptiom](https://user-images.githubusercontent.com/92873282/139474959-1c1e40c6-3c52-492e-99b2-33ab278ceca8.png)
![QROilCoalGasConsumptiom](https://user-images.githubusercontent.com/92873282/139475127-c6bb72f8-54b1-4b73-99c7-17a6acec5d98.png)


We will now compare renewable electricity per capita using joins.

![QSolarWindHydroConsumption](https://user-images.githubusercontent.com/92873282/139475654-f702adfc-57ce-4e41-a294-5887c989e821.png)
![QRSolarWindHydroConsumption](https://user-images.githubusercontent.com/92873282/139475783-52cdec51-5f37-477c-a4d8-e1d44c99aac0.png)

And our final query we will be using CTE and Joins to compare Fossil Vs Renewable. Please take note that we will divide renewable electricity with fossil electricity so we can have a comparable number

![QCTE](https://user-images.githubusercontent.com/92873282/139476190-4668b174-fd8f-496b-97b0-a88b3143f4ee.png)
![QRCTE](https://user-images.githubusercontent.com/92873282/139476306-7dfe73a9-b121-471e-9cb6-f40b29bbc733.png)

We have so much more to analyse but it will be information heavy and i think i already showed the essential. So the SQL part of the project end here. 


## Power BI
