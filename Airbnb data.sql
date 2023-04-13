SELECT * FROM projectportfolio.ab_nyc_2019;

#Neighborhood with more reviews.
SELECT neighbourhood, SUM(number_of_reviews)
FROM ab_nyc_2019
group by neighbourhood
ORDER BY SUM(number_of_reviews) DESC;

# average Pricing per neighborhood groups.
SELECT neighbourhood_group, room_type, AVG(price) AS AVG_price
FROM ab_nyc_2019
GROUP BY room_type, neighbourhood_group
ORDER BY neighbourhood_group ASC;

#house with the highest reviews.
SELECT name, host_name, SUM(number_of_reviews) AS Reviews
FROM ab_nyc_2019
GROUP BY name, host_name
ORDER BY Reviews DESC;

#Room types with more traffic in terms of availability and neighborhood.
SELECT room_type, neighbourhood, COUNT(availability_365) AS AVAILABILITY
FROM ab_nyc_2019
GROUP BY room_type, neighbourhood
ORDER BY AVAILABILITY;

#Host with the highest listing.
SELECT DISTINCT host_name AS single_host_name, calculated_host_listings_count
FROM ab_nyc_2019
ORDER BY calculated_host_listings_count DESC
LIMIT 1;


#Neighborhood with the most airbnbs.
SELECT neighbourhood, COUNT(neighbourhood) AS Total_neighbourhood
FROM ab_nyc_2019
GROUP BY neighbourhood
ORDER BY Total_neighbourhood DESC
LIMIT 1;
