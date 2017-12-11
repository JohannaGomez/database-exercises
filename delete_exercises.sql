USE codeup_test_db;

# Make sure to put appropriate captions before each SELECT.
# Write SELECT statements for each query.
# Convert the SELECT statements to DELETE.

# Albums released after 1991
SELECT '# Albums released after 1991' AS '';
SELECT * FROM albums WHERE release_date > 1991;
DELETE FROM albums WHERE release_date > 1991;


# Albums with the genre 'disco'
SELECT '# Albums with the genre ''disco''' AS '';
SELECT * FROM albums WHERE genre = 'disco';
DELETE FROM albums WHERE genre = 'disco';

# Albums by 'Whitney Houston' (...or maybe an artist of your choice)
SELECT 'Albums by Meat Loat' AS '';
SELECT * FROM albums WHERE artist = 'Meat Loaf';
DELETE FROM albums WHERE artist = 'Meat Loaf';



# Use the MySQL command line client to make sure your records really were removed.
# Commit your changes after each step and push to GitHub.