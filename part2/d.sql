-- Below is a dummy query, if we leave it empty then the SQLITE package will throw a non-readable error
-- Change the query to pass the test :)
SELECT
 users.first_name, users.last_name 
FROM favorites 
JOIN users ON users.id = favorites.user_id
JOIN dogs on dogs.id = favorites.dog_id
where dogs.name = 'Zoey';