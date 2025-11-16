--To check my dataset
select * from car;

--To check the best performing models and make
select top 10 make, sellingprice from car

--To check unique data in columns
select distinct vin from car
select vin,
count(vin) as vin_count
from car
group by vin

--To check the first and last year
select odometer
where odometer between 200000 and 699999

--To check nulls in my columns
select saledate from updated_car_sales.public.car
where saledate is null;

--

select
coalesce(try_to_timestamp(saledate, 'DY MON DD YYYY HH:MI:SS'),('2000-01-01 00:00:00') )as new_sale_date,
dayname(new_sale_date) as day_name,
monthname(new_sale_date) as month_name,
hour(new_sale_date) hour_of_the_day,
    COALESCE(make, 'Unknown') AS make,
    COALESCE(body, 'Unknown') AS body,
    Coalesce (mmr,0) As new_mmr,
    coalesce (odometer,0) as mileage,
    coalesce (sellingprice,0) as total_revenue,
    (total_revenue - new_mmr) as profit_margin, 

    case
    when mileage < 150000 then 'low mileage'
    when mileage between 150001 and 300000 then 'medium mileage'
    else 'high mileage'
    end as carmileage,

    Case
    when year between 1982 and 1990 then '1980s'
    when year between 1991 and 1999 then '1990s'
    when year between 2000 and 2009 then '2000s'
    else '2010s'
    end as year_group,

    case
    when total_revenue - new_mmr >150000 then 'high_margin'
    when total_revenue - new_mmr between 50000 and 149000 then 'medium_margin'
    else 'low_margin'
    end as performance_tiers,
    
    case
    when transmission='automatic' then 'automatic'
    when transmission ='manual' then 'manual'
    else 'unknown'
    end as transmission,
    
   case
   when state like 'a%'or state like 'c%'or state like'f%'or state like 'g%'or state like 'h%' then 'north'
   when state like 'i%'or state like'l%'or state like'm%'or state like'n%' then 'east'
   when state like 'o%'or state like'p%'or state like 'q%'or state like's%'or state like't%'  
   then 'west'
   when state like 'u%'or state like 'v%'or state like 'w%' then 'south'
   else 'unknown'
   end as region,

   case 
   when model RLIKE '^[0-9]+$' then 'unknown'
        when model is null then 'unknown'
        else model
    end as model,
    
    case
when hour_of_the_day between '6' and '11' then 'morning'
when hour_of_the_day between'12' and '18' then 'afternoon'
else 'evening'
end as time_classification,
   
from updated_car_sales.public.car
order by profit_margin desc;