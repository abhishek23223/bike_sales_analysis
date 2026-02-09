select * from bike_Sale limit 50;


--best 5 performing brands by average resale value
select brand, 
		ROUND(AVG(resale_price)::NUMERIC,2) as avg_resale_price
from bike_sale
group by brand
order by avg_resale_price desc
limit 5;


-- every petrol bikes
select brand,
model from bike_Sale
where fuel_type = 'Petrol';


-- distinct brands
select DISTINCT brand from bike_sale;


-- number of bike by owner type
select owner_type ,
count(*) as bike_counts
from bike_sale
group by owner_type
order by bike_counts desc;


-- Compare average resale price between Tier 1 and Tier 2 cities.
select city_tier,
ROUND(AVG(resale_price::numeric),2) as avg_resale_price
from bike_sale
where city_tier in ('Tier 1' , 'Tier 2')
group by city_tier
order by avg_resale_price desc;


-- Find average depreciation by fuel type.
select fuel_type,
ROUND(AVG(depreciation)::numeric,2) as avg_depreciation
from bike_sale
group by fuel_type
order by avg_depreciation desc;


-- Find models whose resale price is above overall average.
select model,
resale_price
from bike_Sale
where resale_price >(
	select avg(resale_price) from bike_Sale
)


-- Rank brands by average resale price.
select brand,
ROUND(AVG(resale_price)::NUMERIC,2) as avg_resale_price,
DENSE_RANK() OVER(ORDER BY avg(resale_price) desc) as brand_ranking
from bike_sale
group by brand;


-- Find top 3 models in each brand by resale price.
with top_models as (
select brand , 
model, resale_price,
row_number() over(partition by brand order by resale_price desc) as bike_rank
from bike_sale
)

select brand , model , resale_price, bike_rank
from top_models
where bike_rank<=3


-- Find percentage contribution of each state to total sales.
select state,
round(sum(resale_price)::numeric,2) as total_sales,
round(sum(resale_price)::numeric * 100/ sum(sum(resale_price)::numeric) over(),2) as contribution_percentage
from bike_sale
group by state
order by contribution_percentage desc

--



