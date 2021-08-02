SELECT Fname FROM FACULTY WHERE Rank  =  "Professor" ORDER BY Fname
SELECT T2.Name ,   T2.Score FROM GRAPES AS T1 JOIN WINE AS T2 ON T1.Grape  =  T2.Grape WHERE T1.Color  =  "White"
SELECT meter_200 ,  meter_300 FROM swimmer WHERE nationality  =  'Australia'
SELECT T1.fname FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid  =  T2.stuid JOIN dorm AS T3 ON T3.dormid  =  T2.dormid WHERE T3.dorm_name  =  'Smith Hall'
SELECT DISTINCT driverid ,  STOP FROM pitstops WHERE duration  >  (SELECT min(duration) FROM pitstops WHERE raceid  =  841)
SELECT T1.title FROM albums AS T1 JOIN artists AS T2 ON  T1.artist_id = T2.id WHERE T2.name = "Aerosmith";
SELECT T1.artist_name ,  T1.country FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name WHERE T2.resolution  >  900 GROUP BY T2.artist_name HAVING count(*)  >=  1
SELECT dept_name ,  building FROM department WHERE budget  >  (SELECT avg(budget) FROM department)
SELECT T1.Title ,  T2.AlbumID ,  COUNT(*) FROM ALBUM AS T1 JOIN TRACK AS T2 ON T1.AlbumId  =  T2.AlbumId GROUP BY T2.AlbumID
SELECT Store_Name FROM Drama_Workshop_Groups
SELECT t1.fname ,  t1.lname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid WHERE t3.title  =  "Nameless ,  Painless"
SELECT title FROM course WHERE course_id IN (SELECT T1.prereq_id FROM prereq AS T1 JOIN course AS T2 ON T1.course_id  =  T2.course_id WHERE T2.title  =  'International Finance')
SELECT DISTINCT region_name FROM region ORDER BY Label
SELECT T1.problem_description FROM problems AS T1 JOIN staff AS T2 ON T1.reported_by_staff_id = T2.staff_id WHERE T2.staff_first_name = "Christop"
SELECT id FROM trip WHERE duration  >=  (SELECT avg(duration) FROM trip WHERE zip_code  =  94103)
SELECT book_title ,  author_or_editor FROM book_club WHERE YEAR  >  1989
SELECT T1.bname FROM bank AS T1 JOIN loan AS T2 ON T1.branch_id  =  T2.branch_id GROUP BY T1.bname ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT name FROM Person WHERE gender  =  'male' ORDER BY age
SELECT Title FROM book WHERE Book_ID NOT IN (SELECT Book_ID FROM publication)
SELECT T1.Code ,  T1.Fate ,  T2.Name FROM mission AS T1 JOIN ship AS T2 ON T1.Ship_ID  =  T2.Ship_ID
SELECT billing_state ,  COUNT(*) FROM invoices WHERE billing_country  =  "USA" GROUP BY billing_state ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.invoice_date ,  T1.order_id ,  T2.order_details FROM Invoices AS T1 JOIN Orders AS T2 ON T1.order_id  =  T2.order_id
SELECT T2.student_id FROM courses AS T1 JOIN student_course_registrations AS T2 ON T1.course_id = T2.course_id WHERE T1.course_name = "statistics" ORDER BY T2.registration_date
SELECT document_type_code FROM Documents WHERE document_id = 2;
SELECT city FROM addresses WHERE city NOT IN ( SELECT DISTINCT t3.city FROM customers AS t1 JOIN customer_addresses AS t2 ON t1.customer_id  =  t2.customer_id JOIN addresses AS t3 ON t2.address_id  =  t3.address_id)
SELECT preferred_foot ,  avg(overall_rating) FROM Player_Attributes GROUP BY preferred_foot
SELECT max(T2.gradepoint) ,  min(T2.gradepoint) FROM ENROLLED_IN AS T1 JOIN GRADECONVERSION AS T2 JOIN STUDENT AS T3 ON T1.Grade  =  T2.lettergrade AND T1.StuID  =  T3.StuID WHERE T3.city_code  =  "NYC"
SELECT count(DISTINCT advisor) FROM Student
SELECT T1.Actual_Delivery_Date FROM Customer_Orders AS T1 JOIN ORDER_ITEMS AS T2 ON T1.Order_ID  =  T2.Order_ID WHERE T2.Order_Quantity  =  1
SELECT Customer_Phone FROM PERFORMERS WHERE Customer_Name  =  "Ashley"
SELECT city_code FROM student GROUP BY city_code ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM  people WHERE Age  =  35 OR Age  =  36
SELECT T1.driverid ,  T1.forename ,  T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE POSITION  =  '1' GROUP BY T1.driverid HAVING count(*)  >=  2
SELECT T1.name ,  T1.email FROM user_profiles AS T1 JOIN follows AS T2 ON T1.uid  =  T2.f1 GROUP BY T2.f1 HAVING count(*)  >  1
SELECT Name FROM team WHERE Team_id NOT IN (SELECT Team FROM match_season)
SELECT T2.title ,  T1.mID FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID GROUP BY T1.mID ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM browser AS T1 JOIN accelerator_compatible_browser AS T2 ON T1.id  =  T2.browser_id JOIN web_client_accelerator AS T3 ON T2.accelerator_id  =  T3.id WHERE T3.name  =  'CProxy' AND T2.compatible_since_year  >  1998
SELECT problem_id FROM problems WHERE date_problem_reported > "1978-06-26"
SELECT DISTINCT product_details FROM products
SELECT DISTINCT state FROM college WHERE enr  <  (SELECT max(enr) FROM college)
SELECT service_name FROM services ORDER BY service_name
SELECT count(*) FROM club_rank WHERE Total  <  10
SELECT T1.gender ,  T1.artist_name FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name ORDER BY T2.resolution LIMIT 1
SELECT max(stu_gpa) ,  avg(stu_gpa) ,  min(stu_gpa) ,  dept_code FROM student GROUP BY dept_code
SELECT employee_id FROM Employees EXCEPT SELECT Destroyed_by_Employee_ID FROM Documents_to_be_destroyed
SELECT avg(Event_Attendance) ,  max(Event_Attendance) FROM event
SELECT LOCATION FROM party ORDER BY Number_of_hosts DESC LIMIT 1
SELECT Name FROM journalist WHERE Nationality  =  "England" OR Nationality  =  "Wales"
SELECT name ,  operating_system FROM web_client_accelerator EXCEPT SELECT T1.name ,  T1.operating_system FROM web_client_accelerator AS T1 JOIN accelerator_compatible_browser AS T2 ON T2.accelerator_id  =  T1.id JOIN browser AS T3 ON T2.browser_id  =  T3.id WHERE T3.name  =  'Opera'
SELECT count(DISTINCT name) FROM PersonFriend WHERE friend NOT IN (SELECT name FROM person WHERE city  =  'Austin')
SELECT T2.Age FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID ORDER BY T1.Total_Points DESC
SELECT dname FROM department ORDER BY mgr_start_date
SELECT T2.Party FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID GROUP BY T1.Party ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.apt_type_code ,  T2.apt_number FROM Apartment_Buildings AS T1 JOIN Apartments AS T2 ON T1.building_id  =  T2.building_id WHERE T1.building_manager  =  "Kyle"
SELECT staff_id FROM Staff_Department_Assignments WHERE date_assigned_to  <  (SELECT max(date_assigned_to) FROM Staff_Department_Assignments WHERE job_title_code  =  'Clerical Staff')
SELECT count(*) FROM Ref_calendar
SELECT name FROM accounts ORDER BY name
SELECT date_became_customer FROM Customers WHERE first_name = "Carole" AND last_name = "Bernhard";
SELECT count(*) ,  affiliation FROM university WHERE enrollment  >  20000 GROUP BY affiliation
SELECT product FROM product WHERE product != (SELECT max_page_size FROM product GROUP BY max_page_size ORDER BY count(*) DESC LIMIT 1)
SELECT max(t2.active_to_date) FROM customers AS t1 JOIN customer_contact_channels AS t2 ON t1.customer_id  =  t2.customer_id WHERE t1.customer_name  =  "Tillman Ernser"
SELECT DISTINCT state FROM college WHERE enr  <  (SELECT max(enr) FROM college)
SELECT name ,  CLASS ,  rank FROM captain
SELECT T1.Color FROM GRAPES AS T1 JOIN WINE AS T2 ON T1.Grape  =  T2.Grape GROUP BY T2.Grape ORDER BY AVG(Price) DESC LIMIT 1
SELECT support_rate FROM candidate ORDER BY support_rate DESC LIMIT 3
SELECT Name FROM company ORDER BY Sales_in_Billion ASC
SELECT date_became_customer FROM customers WHERE customer_id BETWEEN 10 AND 20
SELECT department_name ,  COUNT(*) FROM employees AS T1 JOIN departments AS T2 ON T1.department_id  =  T2.department_id GROUP BY department_name
SELECT count(*) FROM Has_allergy AS T1 JOIN Allergy_type AS T2 ON T1.allergy  =  T2.allergy WHERE T2.allergytype  =  "food"
SELECT customer_status_code FROM Customers GROUP BY customer_status_code ORDER BY count(*) ASC LIMIT 1;
SELECT t3.characteristic_name FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id  =  t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id  =  t3.characteristic_id GROUP BY t3.characteristic_name HAVING count(*)  >= 2
SELECT min(Crime_rate) ,  max(Crime_rate) FROM county_public_safety
SELECT count(*) FROM Projects
SELECT DISTINCT t1.title FROM papers AS t1 JOIN authorship AS t2 ON t1.paperid  =  t2.paperid JOIN inst AS t3 ON t2.instid  =  t3.instid WHERE t3.name  =  "Indiana University"
SELECT count(*) FROM csu_fees WHERE campusfee  >  (SELECT avg(campusfee) FROM csu_fees)
SELECT T2.Name FROM body_builder AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Total DESC
SELECT T1.organisation_id ,  T1.organisation_type ,  T1.organisation_details FROM Organisations AS T1 JOIN Research_Staff AS T2 ON T1.organisation_id  =  T2.employer_organisation_id GROUP BY T1.organisation_id ORDER BY count(*) DESC LIMIT 1
SELECT apt_type_code ,  bathroom_count ,  bedroom_count FROM Apartments GROUP BY apt_type_code ORDER BY sum(room_count) DESC LIMIT 1
SELECT count(*) FROM Restaurant JOIN Type_Of_Restaurant ON Restaurant.ResID =  Type_Of_Restaurant.ResID JOIN Restaurant_Type ON Type_Of_Restaurant.ResTypeID = Restaurant_Type.ResTypeID GROUP BY Type_Of_Restaurant.ResTypeID HAVING Restaurant_Type.ResTypeName = 'Sandwich'
SELECT avg(capacity) ,  min(capacity) ,  max(capacity) FROM cinema WHERE openning_year  >=  2011
SELECT document_id , count(*) FROM Draft_Copies GROUP BY document_id HAVING count(*)  >  1;
SELECT sportname ,  count(*) FROM Sportsinfo GROUP BY sportname
SELECT investor_id ,  COUNT(*) FROM TRANSACTIONS WHERE transaction_type_code  =  "SALE" GROUP BY investor_id
SELECT Industry ,  COUNT(*) FROM Companies GROUP BY Industry
SELECT Name FROM pilot ORDER BY Name ASC
SELECT count(*) FROM club
SELECT location_code FROM Ref_locations WHERE location_name  =  "Canada"
SELECT LOCATION FROM cinema WHERE capacity  >  300 GROUP BY LOCATION HAVING count(*)  >=  2
SELECT DISTINCT T1.name ,  T1.nationality FROM architect AS T1 JOIN mill AS t2 ON T1.id  =  T2.architect_id
SELECT count(*) FROM camera_lens WHERE id NOT IN ( SELECT camera_lens_id FROM photos )
SELECT count(*) FROM device
SELECT Shop_Name FROM shop ORDER BY Open_Year DESC LIMIT 1
SELECT apt_number FROM Apartments ORDER BY room_count ASC
SELECT Official_Name FROM city WHERE Population  >  1500 OR Population  <  500
SELECT T2.name ,  T2.year FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T3.forename = "Lewis"
SELECT name FROM media_types;
SELECT LOCATION ,  count(*) FROM cinema GROUP BY LOCATION
SELECT gtype FROM Video_games GROUP BY gtype ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_type_name ,  T1.document_type_description ,  T2.Document_date FROM Ref_document_types AS T1 JOIN Documents AS T2 ON T1.document_type_code  =  T2.document_type_code
SELECT T2.document_type_name FROM All_documents AS T1 JOIN Ref_document_types AS T2 ON T1.document_type_code  =  T2.document_type_code WHERE T1.document_name  =  "How to read a book"
SELECT count(*) FROM Student WHERE city_code  =  "HKG" OR city_code  =  "CHI"
SELECT T1.Date_Claim_Made ,  T1.Claim_id FROM Claims AS T1 JOIN Settlements AS T2 ON T1.Claim_id  =  T2.Claim_id GROUP BY T1.Claim_id HAVING count(*)  >  2 UNION SELECT T1.Date_Claim_Made ,  T1.Claim_id FROM Claims AS T1 JOIN Settlements AS T2 ON T1.Claim_id  =  T2.Claim_id WHERE T1.Amount_Claimed  =  ( SELECT max(Amount_Claimed) FROM Claims )
SELECT sum(Spent) FROM Student JOIN Visits_Restaurant ON Student.StuID = Visits_Restaurant.StuID WHERE Student.Fname = "Linda" AND Student.Lname = "Smith";
SELECT * FROM airport ORDER BY International_Passengers DESC LIMIT 1
SELECT count(*) FROM train
SELECT count(*) FROM actor
SELECT T1.customer_name ,  T1.customer_phone ,  T1.customer_email FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T2.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM captain ORDER BY age DESC
SELECT T3.amenity_name FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid  =  T2.dormid JOIN dorm_amenity AS T3 ON T2.amenid  =  T3.amenid WHERE T1.dorm_name  =  'Smith Hall'
SELECT T2.title ,  avg(T1.stars) FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID GROUP BY T1.mID ORDER BY avg(T1.stars) DESC LIMIT 1
SELECT count(DISTINCT instrument) FROM instruments AS T1 JOIN Band AS T2 ON T1.bandmateid  =  T2.id WHERE T2.lastname  =  "Heilo"
SELECT T2.name FROM Certificate AS T1 JOIN Aircraft AS T2 ON T2.aid  =  T1.aid GROUP BY T1.aid ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Documents
SELECT Name FROM journalist ORDER BY Years_working ASC
SELECT Industry FROM Companies WHERE Headquarters  =  "USA" INTERSECT SELECT Industry FROM Companies WHERE Headquarters  =  "China"
SELECT Author FROM submission ORDER BY Scores ASC
SELECT customer_name ,  customer_phone FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM mailshot_customers)
SELECT avg(T2.Number_cities) FROM film_market_estimation AS T1 JOIN market AS T2 ON T1.Market_ID  =  T2.Market_ID WHERE T1.Low_Estimate  >  10000
SELECT DISTINCT allergytype FROM Allergy_type
SELECT count(*) FROM Reviewer
SELECT Customer_Name FROM Clients EXCEPT SELECT T2.Customer_Name FROM Bookings AS T1 JOIN Clients AS T2 ON T1.Customer_ID  =  T2.Client_ID
SELECT head FROM department GROUP BY departmentID ORDER BY count(departmentID) LIMIT 1;
SELECT order_id FROM shipments WHERE shipment_date > "2000-01-01"
SELECT T1.Status FROM city AS T1 JOIN farm_competition AS T2 ON T1.City_ID  =  T2.Host_city_ID GROUP BY T2.Host_city_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT CName FROM COURSE WHERE Credits  =  1
SELECT count(*) FROM products WHERE product_id NOT IN ( SELECT product_id FROM Order_items )
SELECT name FROM browser ORDER BY market_share DESC
SELECT count(*) FROM department_stores AS T1 JOIN department_store_chain AS T2 ON T1.dept_store_chain_id  =  T2.dept_store_chain_id WHERE T2.dept_store_chain_name  =  "South"
SELECT title ,  film_id FROM film WHERE rental_rate  =  0.99 INTERSECT SELECT T1.title ,  T1.film_id FROM film AS T1 JOIN inventory AS T2 ON T1.film_id  =  T2.film_id GROUP BY T1.film_id HAVING count(*)  <  3
SELECT T1.customer_details ,  T1.customer_id FROM Customers AS T1 JOIN Customer_Policies AS T2 ON T1.Customer_id  =  T2.customer_id GROUP BY T1.customer_id HAVING count(*)  >=  2 EXCEPT SELECT T1.customer_details ,  T1.customer_id FROM Customers AS T1 JOIN Customer_Policies AS T2 ON T1.Customer_id  =  T2.customer_id JOIN Claims AS T3 ON T2.policy_id  =  T3.policy_id
SELECT t2.unit_of_measure ,  t2.product_category_code FROM products AS t1 JOIN ref_product_categories AS t2 ON t1.product_category_code  =  t2.product_category_code WHERE t1.product_name  =  "chervil"
SELECT T1.name FROM storm AS T1 JOIN affected_region AS T2 ON T1.storm_id  =  T2.storm_id GROUP BY T1.storm_id HAVING count(*)  >=  2 INTERSECT SELECT T1.name FROM storm AS T1 JOIN affected_region AS T2 ON T1.storm_id  =  T2.storm_id GROUP BY T1.storm_id HAVING sum(T2.number_city_affected)  >=  10
SELECT count(*) FROM aircraft
SELECT director FROM Movie GROUP BY director HAVING count(*)  =  1
SELECT count(*) FROM addresses WHERE state_province_county  =  "Colorado"
SELECT T2.investor_id ,  T1.Investor_details FROM INVESTORS AS T1 JOIN TRANSACTIONS AS T2 ON T1.investor_id  =  T2.investor_id WHERE T2.transaction_type_code  =  "SALE" GROUP BY T2.investor_id HAVING COUNT(*)  >=  2
SELECT t1.product_name FROM products AS t1 JOIN ref_product_categories AS t2 ON t1.product_category_code  =  t2.product_category_code JOIN ref_colors AS t3 ON t1.color_code  =  t3.color_code WHERE t3.color_description  =  "white" AND t2.unit_of_measure != "Handful"
SELECT DISTINCT T1.bname FROM bank AS T1 JOIN loan AS T2 ON T1.branch_id  =  T2.branch_id
SELECT nickname FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn";
SELECT T2.Name FROM body_builder AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID
SELECT product_id ,  product_type_code FROM products ORDER BY product_price LIMIT 1
SELECT count(DISTINCT Currency_Code) FROM Drama_Workshop_Groups
SELECT DISTINCT name FROM  instructor ORDER BY name
SELECT count(*) FROM Customers WHERE customer_id NOT IN (SELECT customer_id FROM Accounts)
SELECT Reign FROM wrestler GROUP BY Reign ORDER BY COUNT(*) DESC LIMIT 1
SELECT apt_number FROM Apartments WHERE apt_type_code  =  "Flat"
SELECT count(DISTINCT card_type_code) FROM Customers_Cards
SELECT city FROM airports GROUP BY city HAVING count(*)  =  2
SELECT T2.name FROM playlist_tracks AS T1 JOIN playlists AS T2 ON T2.id = T1.playlist_id GROUP BY T1.playlist_id HAVING count(T1.track_id)  >  100;
SELECT T3.Name ,  COUNT(*) FROM news_report AS T1 JOIN event AS T2 ON T1.Event_ID  =  T2.Event_ID JOIN journalist AS T3 ON T1.journalist_ID  =  T3.journalist_ID GROUP BY T3.Name
SELECT T3.dept_name FROM course AS T1 JOIN CLASS AS T2 ON T1.crs_code  =  T2.crs_code JOIN department AS T3 ON T1.dept_code  =  T3.dept_code GROUP BY T1.dept_code ORDER BY sum(T1.crs_credit) DESC LIMIT 1
SELECT count(*) ,  flag FROM ship GROUP BY flag
SELECT account_id FROM Financial_transactions GROUP BY account_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.id FROM trip AS T1 JOIN weather AS T2 ON T1.zip_code  =  T2.zip_code GROUP BY T2.zip_code HAVING avg(T2.mean_temperature_f)  >  60
SELECT sum(number_deaths) ,  sum(damage_millions_USD) FROM storm WHERE max_speed  >  (SELECT avg(max_speed) FROM storm)
SELECT T1.Location ,  T2.Nickname FROM school AS T1 JOIN school_details AS T2 ON T1.School_ID  =  T2.School_ID
SELECT 	booking_status_code ,  COUNT(*) FROM Apartment_Bookings GROUP BY booking_status_code
SELECT T2.product_type_code ,  T2.product_name ,  T2.product_price FROM product_suppliers AS T1 JOIN products AS T2 ON T1.product_id  =  T2.product_id WHERE T1.supplier_id  =  3
SELECT budget_type_code ,  count(*) FROM Documents_with_expenses GROUP BY budget_type_code
SELECT Order_Date FROM BOOKINGS
SELECT account_id FROM Financial_transactions GROUP BY account_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT payment_method FROM customers
SELECT date_to FROM Project_Staff ORDER BY date_to DESC LIMIT 1
SELECT T2.customer_first_name ,  T1.customer_id FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id HAVING count(*)  >=  2
SELECT T2.driverid ,  T3.forename FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid  =  T3.driverid WHERE T1.name = "Australian Grand Prix" INTERSECT SELECT T2.driverid ,  T3.forename FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid  =  T3.driverid WHERE T1.name = "Chinese Grand Prix"
SELECT DISTINCT forename FROM drivers ORDER BY forename ASC
SELECT name ,  address_road ,  city FROM branch ORDER BY open_year
SELECT DISTINCT donator_name FROM endowment
SELECT Competition_type FROM competition GROUP BY Competition_type HAVING COUNT(*)  <=  5
SELECT project_id ,  project_details FROM Projects
SELECT T2.Party ,  COUNT(*) FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID GROUP BY T1.Party
SELECT YEAR FROM festival_detail WHERE LOCATION  =  'United States' INTERSECT SELECT YEAR FROM festival_detail WHERE LOCATION != 'United States'
SELECT DISTINCT t1.clubname FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid  =  t2.clubid JOIN student AS t3 ON t2.stuid  =  t3.stuid WHERE t3.advisor  =  1121
SELECT Name FROM ship WHERE Nationality != "United States"
SELECT Name ,  Score FROM WINE
SELECT min(rank) FROM review
SELECT Party FROM people ORDER BY Age ASC LIMIT 1
SELECT T3.Title FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate  =  T2.id JOIN Songs AS T3 ON T3.SongId  =  T1.SongId WHERE T2.firstname  =  "Marianne"
SELECT count(*) FROM student
SELECT role_description FROM ROLES WHERE role_name  =  "Proof Reader"
SELECT name_first ,  name_last FROM player WHERE death_year = '';
SELECT Fname FROM STUDENT WHERE StuID NOT IN (SELECT StuID FROM ENROLLED_IN)
SELECT home_city FROM driver GROUP BY home_city ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT * FROM employees AS T1 JOIN departments AS T2 ON T1.department_id  =  T2.department_id WHERE T1.employee_id  =  T2.manager_id
SELECT sum(amount) ,  T1.bname FROM bank AS T1 JOIN loan AS T2 ON T1.branch_id  =  T2.branch_id GROUP BY T1.bname
SELECT course_id FROM student_course_registrations WHERE student_id = 121 UNION SELECT course_id FROM student_course_attendance WHERE student_id = 121
SELECT Governor FROM party GROUP BY Governor ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM Statements
SELECT max(group_equity_shareholding) FROM operate_company
SELECT sum(T2.room_count) FROM Apartment_Facilities AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T1.facility_code  =  "Gym"
SELECT name FROM station WHERE city  =  "Palo Alto" EXCEPT SELECT end_station_name FROM trip GROUP BY end_station_name HAVING count(*)  >  100
SELECT Status ,  avg(Population) FROM city GROUP BY Status
SELECT T2.Pilot_name ,  COUNT(*) FROM pilot_record AS T1 JOIN pilot AS T2 ON T1.pilot_ID  =  T2.pilot_ID GROUP BY T2.Pilot_name HAVING COUNT(*)  >  1
SELECT YEAR FROM degrees GROUP BY YEAR ORDER BY sum(degrees) DESC LIMIT 1
SELECT fname ,  lname FROM student WHERE major != (SELECT major FROM student GROUP BY major ORDER BY count(*) DESC LIMIT 1)
SELECT Official_native_language FROM country WHERE Official_native_language LIKE "%English%"
SELECT organization_name FROM organizations WHERE organization_name LIKE "%Party%"
SELECT staff_details FROM Research_Staff ORDER BY staff_details ASC
SELECT t3.headquartered_city FROM store AS t1 JOIN store_district AS t2 ON t1.store_id  =  t2.store_id JOIN district AS t3 ON t2.district_id  =  t3.district_id GROUP BY t3.headquartered_city ORDER BY count(*) DESC LIMIT 1
SELECT avg(acc_bal) ,  acc_type FROM customer WHERE credit_score  <  50 GROUP BY acc_type
SELECT name FROM Person WHERE age  =  (SELECT max(age) FROM person)
SELECT Advisor FROM STUDENT WHERE city_code  =  "BAL"
SELECT Official_Name FROM city WHERE City_ID NOT IN (SELECT Host_city_ID FROM farm_competition)
SELECT count(*) FROM region
SELECT count(*) FROM department_stores AS T1 JOIN department_store_chain AS T2 ON T1.dept_store_chain_id  =  T2.dept_store_chain_id WHERE T2.dept_store_chain_name  =  "South"
SELECT T1.document_id FROM Documents AS T1 JOIN Documents_with_expenses AS T2 ON T1.document_id  =  T2.document_id WHERE T1.document_name LIKE '%s%'
SELECT count(*) FROM routes AS T1 JOIN airports AS T2 ON T1.dst_apid  =  T2.apid JOIN airlines AS T3 ON T1.alid  =  T3.alid WHERE T2.country  =  'Italy' AND T3.name  =  'American Airlines'
SELECT COUNT(*) FROM weather WHERE mean_humidity  >  50 AND mean_visibility_miles  >  8
SELECT name FROM student WHERE dept_name  =  'History' ORDER BY tot_cred DESC LIMIT 1
SELECT T2.firstname ,  T2.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom  =  T2.classroom WHERE T1.firstname  =  "EVELINA" AND T1.lastname  =  "BROMLEY"
SELECT T1.emp_fname ,  T2.prof_office FROM employee AS T1 JOIN professor AS T2 ON T1.emp_num  =  T2.emp_num JOIN department AS T3 ON T3.dept_code  =  T2.dept_code WHERE T3.dept_name  =  'History' AND T2.prof_high_degree  =  'Ph.D.'
SELECT team_name FROM basketball_match ORDER BY All_Home DESC
SELECT billing_country ,  SUM(total) FROM invoices GROUP BY billing_country ORDER BY SUM(total) DESC LIMIT 8;
SELECT Name ,  Other_Details FROM Staff
SELECT product_price FROM products WHERE product_id NOT IN (SELECT product_id FROM complaints)
SELECT T2.roomName FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room  =  T2.RoomId GROUP BY T1.Room ORDER BY count(*) DESC LIMIT 1;
SELECT * FROM Course_Authors_and_Tutors ORDER BY personal_name
SELECT count(*) FROM artist WHERE country  =  "Bangladesh"
SELECT t2.unit_of_measure FROM products AS t1 JOIN ref_product_categories AS t2 ON t1.product_category_code  =  t2.product_category_code WHERE t1.product_name  =  "cumin"
SELECT name FROM Reviewer UNION SELECT title FROM Movie
SELECT T3.location_name FROM All_documents AS T1 JOIN Document_locations AS T2 ON T1.document_id  =  T2.document_id JOIN Ref_locations AS T3 ON T2.location_code  =  T3.location_code WHERE T1.document_name  =  "Robin CV"
SELECT count(*) ,  sex FROM people WHERE weight  >  85 GROUP BY sex
SELECT avg(Attendance) FROM performance
SELECT min(salary) ,  dept_name FROM instructor GROUP BY dept_name HAVING avg(salary)  >  (SELECT avg(salary) FROM instructor)
SELECT count(*) FROM Apartment_Bookings
SELECT classroom ,  count(*) FROM list WHERE grade  =  "0" GROUP BY classroom
SELECT count(DISTINCT T1.name) ,  T2.Headquarter FROM products AS T1 JOIN manufacturers AS T2 ON T1.Manufacturer  =  T2.code GROUP BY T2.Headquarter
SELECT avg(height) ,  avg(weight) FROM people WHERE sex  =  'M'
SELECT first_name ,  last_name ,  salary FROM employees WHERE salary  <  6000
SELECT name FROM procedures ORDER BY cost LIMIT 3
SELECT name FROM instructor ORDER BY salary DESC LIMIT 1
SELECT count(*) FROM phone
SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id GROUP BY T1.cust_name ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT Writer FROM book GROUP BY Writer HAVING COUNT(*)  >  1
SELECT count(*) FROM Visitors WHERE Tourist_ID NOT IN ( SELECT Tourist_ID FROM Visits )
SELECT name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM school_bus)
SELECT Headquarters FROM company GROUP BY Headquarters HAVING COUNT(*)  >=  2
SELECT shipping_agent_name FROM Ref_Shipping_Agents;
SELECT max(Milliseconds) ,  min(Milliseconds) FROM TRACK
SELECT COUNT(*) FROM (SELECT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName  =  T2.cName WHERE T2.pPos  =  'mid' EXCEPT SELECT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName  =  T2.cName WHERE T2.pPos  =  'goalie')
SELECT avg(T2.gradepoint) FROM ENROLLED_IN AS T1 JOIN GRADECONVERSION AS T2 JOIN STUDENT AS T3 ON T1.Grade  =  T2.lettergrade AND T1.StuID  =  T3.StuID WHERE T3.LName  =  "Smith"
SELECT DISTINCT cName FROM college WHERE enr  >  (SELECT min(enr) FROM college WHERE state  =  'FL')
SELECT name ,  city FROM branch WHERE branch_id NOT IN (SELECT branch_id FROM membership_register_branch)
SELECT count(*) ,  classroom FROM list GROUP BY classroom
SELECT name ,  price FROM products WHERE price  >=  180 ORDER BY price DESC ,  name ASC
SELECT count(*) FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid  =  t2.clubid JOIN student AS t3 ON t2.stuid  =  t3.stuid WHERE t3.fname  =  "Tracy" AND t3.lname  =  "Kim"
SELECT T1.title ,  T1.director FROM Movie AS T1 JOIN Movie AS T2 ON T1.director  =  T2.director WHERE T1.title != T2.title ORDER BY T1.director ,  T1.title
SELECT Status ,  avg(Population) FROM city GROUP BY Status
SELECT venue ,  name FROM event ORDER BY Event_Attendance DESC LIMIT 2
SELECT building ,  count(*) FROM Faculty GROUP BY building
SELECT date_of_birth FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn";
SELECT name FROM accounts ORDER BY name
SELECT T3.activity_name FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID  =  T2.facID JOIN Activity AS T3 ON T3.actid  =  T2.actid WHERE T1.fname  =  "Mark" AND T1.lname  =  "Giuliano"
SELECT lastname FROM list WHERE classroom  =  111
SELECT T1.Royal_Family_Details ,  T2.How_to_Get_There FROM ROYAL_FAMILY AS T1 JOIN TOURIST_ATTRACTIONS AS T2 ON T1.Royal_Family_ID  =  T2.Tourist_Attraction_ID
SELECT Advisor ,  count(*) FROM STUDENT GROUP BY Advisor
SELECT T2.firstname ,  T2.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom  =  T2.classroom WHERE T1.firstname  =  "EVELINA" AND T1.lastname  =  "BROMLEY"
SELECT song_name ,  releasedate FROM song ORDER BY releasedate DESC LIMIT 1
SELECT T1.title ,  T3.name FROM course AS T1 JOIN teaches AS T2 ON T1.course_id  =  T2.course_id JOIN instructor AS T3 ON T2.id  =  T3.id WHERE YEAR  =  2008 ORDER BY T1.title
SELECT Company ,  Investor FROM entrepreneur
SELECT count(*) ,  flag FROM ship GROUP BY flag
SELECT t2.section_title FROM documents AS t1 JOIN document_sections AS t2 ON t1.document_code  =  t2.document_code WHERE t1.document_name  =  "David CV"
SELECT T3.title FROM albums AS T1 JOIN tracklists AS T2 ON T1.aid  =  T2.albumid JOIN songs AS T3 ON T2.songid  =  T3.songid WHERE t1.label  =  "Universal Music Group"
SELECT distinct(UnitPrice) FROM TRACK
SELECT T2.pName FROM  tryout AS T1 JOIN player AS T2 ON T1.pID  =  T2.pID WHERE T1.cName  =  (SELECT cName FROM college ORDER BY enr DESC LIMIT 1)
SELECT budget_type_description FROM Ref_budget_codes WHERE budget_type_code  =  "ORG"
SELECT crs_credit ,  crs_description FROM course WHERE crs_code  =  'QM-261'
SELECT name FROM channel WHERE OWNER != 'CCTV'
SELECT DISTINCT T2.pilot FROM airport AS T1 JOIN flight AS T2 ON T1.id  =  T2.airport_id WHERE T1.country  =  'United States' OR T1.name  =  'Billund Airport'
SELECT amount FROM payment ORDER BY amount DESC LIMIT 1
SELECT personal_name ,  family_name FROM Students ORDER BY family_name
SELECT T1.source_system_code ,  T2.council_tax_id FROM CMI_Cross_References AS T1 JOIN Benefits_Overpayments AS T2 ON T1.cmi_cross_ref_id  =  T2.cmi_cross_ref_id ORDER BY T2.council_tax_id
SELECT count(*) FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id  =  t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id  =  t3.characteristic_id WHERE t3.characteristic_name  =  "hot"
SELECT T2.first_name ,  T2.last_name FROM film_actor AS T1 JOIN actor AS T2 ON T1.actor_id  =  T2.actor_id GROUP BY T2.actor_id HAVING count(*)  >  30
SELECT T1.State_County FROM Addresses AS T1 JOIN Stores AS T2 ON T1.Address_ID  =  T2.Address_ID WHERE T2.Marketing_Region_Code  =  "CA"
SELECT count(*) FROM employee
SELECT T2.Store_Name FROM Bookings AS T1 JOIN Drama_Workshop_Groups AS T2 ON T1.Workshop_Group_ID  =  T2.Workshop_Group_ID WHERE T1.Status_Code  =  "stop"
SELECT DISTINCT main_industry FROM company
SELECT DISTINCT T1.file_size ,  T1.formats FROM files AS T1 JOIN song AS T2 ON T1.f_id  =  T2.f_id WHERE T2.resolution  <  800
SELECT count(*) FROM ARTIST WHERE artistid NOT IN(SELECT artistid FROM ALBUM)
SELECT avg(transaction_amount) ,  sum(transaction_amount) FROM Financial_transactions
SELECT Date_Claim_Made FROM Claims WHERE Amount_Settled  <=  ( SELECT avg(Amount_Settled) FROM Claims )
SELECT count(DISTINCT pPos) FROM tryout
SELECT max(Silver) ,  min(Silver) FROM club_rank
SELECT count(*) ,  T1.dormid FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid  =  T2.dormid WHERE T1.student_capacity  >  100 GROUP BY T1.dormid
SELECT T1.staff_id ,  T1.staff_gender FROM staff AS T1 JOIN staff_department_assignments AS T2 ON T1.staff_id  =  T2.staff_id WHERE T2.job_title_code  =  "Department Manager"
SELECT T2.Name FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistId GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T3.Date FROM member_attendance AS T1 JOIN member AS T2 ON T1.Member_ID  =  T2.Member_ID JOIN performance AS T3 ON T1.Performance_ID  =  T3.Performance_ID WHERE T2.Role  =  "Violin"
SELECT name ,  job FROM Person ORDER BY name
SELECT T2.customer_name ,  T3.city ,  T1.date_from ,  T1.date_to FROM customer_address_history AS T1 JOIN customers AS T2 ON T1.customer_id  =  T2.customer_id JOIN addresses AS T3 ON T1.address_id  =  T3.address_id
SELECT Employees.employee_name , count(*) FROM Employees JOIN Circulation_History ON Circulation_History.employee_id = Employees.employee_id GROUP BY Circulation_History.document_id , Circulation_History.draft_number , Circulation_History.copy_number ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM branch ORDER BY membership_amount DESC LIMIT 3
SELECT T1.title ,  T1.year FROM Movie AS T1 JOIN Movie AS T2 ON T1.director  =  T2.director WHERE T1.title != T2.title
SELECT t3.fname ,  t3.lname FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid  =  t2.clubid JOIN student AS t3 ON t2.stuid  =  t3.stuid WHERE t1.clubname  =  "Bootup Baltimore" AND t2.position  =  "President"
SELECT chip_model ,  screen_mode FROM phone WHERE Hardware_Model_name = "LG-P760";
SELECT DISTINCT Major FROM Student
SELECT count(*) FROM useracct
SELECT T1.outcome_description FROM Research_outcomes AS T1 JOIN Project_outcomes AS T2 ON T1.outcome_code  =  T2.outcome_code
SELECT count(*) ,  T1.project_details FROM Projects AS T1 JOIN Tasks AS T2 ON T1.project_id  =  T2.project_id GROUP BY T1.project_id
SELECT count(*) FROM authors
SELECT T1.title ,  T1.i_id FROM item AS T1 JOIN review AS T2 ON T1.i_id  =  T2.i_id GROUP BY T2.i_id ORDER BY avg(T2.rank) DESC LIMIT 1
SELECT count(*) ,  dept_name FROM student GROUP BY dept_name
SELECT T2.FirstName ,  T2.LastName FROM CUSTOMER AS T1 JOIN EMPLOYEE AS T2 ON T1.SupportRepId  =  T2.EmployeeId WHERE T1.FirstName  =  "Leonie"
SELECT T2.order_id ,  T2.order_status FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T1.customer_name = "Jeramie"
SELECT T1.Fname ,  T1.Lname FROM FACULTY AS T1 JOIN MEMBER_OF AS T2 ON T1.FacID  =  T2.FacID WHERE T2.DNO  =  520
SELECT name ,  service FROM train ORDER BY TIME
SELECT Duration FROM actor ORDER BY Age DESC LIMIT 1
SELECT * FROM employees WHERE first_name LIKE '%D%' OR first_name LIKE '%S%' ORDER BY salary DESC
SELECT DISTINCT channel_code FROM customers AS t1 JOIN customer_contact_channels AS t2 ON t1.customer_id  =  t2.customer_id WHERE t1.customer_name  =  "Tillman Ernser"
SELECT Author FROM submission WHERE Submission_ID NOT IN (SELECT Submission_ID FROM acceptance)
SELECT T1.rank ,  count(*) FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID  =  T2.advisor GROUP BY T1.rank
SELECT customer_id FROM customers WHERE customer_name LIKE "%Diana%"
SELECT count(*) FROM trip AS T1 JOIN station AS T2 ON T1.end_station_id  =  T2.id WHERE T2.city !=  "San Francisco"
SELECT sum(T2.balance) FROM accounts AS T1 JOIN savings AS T2 ON T1.custid  =  T2.custid WHERE T1.name != 'Brown'
SELECT Company FROM entrepreneur ORDER BY Money_Requested DESC
SELECT T2.name FROM assignedto AS T1 JOIN projects AS T2 ON T1.project  =  T2.code JOIN scientists AS T3 ON T1.scientist  =  T3.SSN WHERE T3.name LIKE '%Smith%'
SELECT t1.catalog_name ,  t1.date_of_publication FROM catalogs AS t1 JOIN catalog_structure AS t2 ON t1.catalog_id  =  t2.catalog_id WHERE catalog_level_number  >  5
SELECT salary FROM salary WHERE YEAR  =  2001 ORDER BY salary DESC LIMIT 3;
SELECT T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID WHERE T1.stars  =  3 INTERSECT SELECT T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID WHERE T1.stars  =  4
SELECT count(*) FROM Staff;
SELECT count(*) FROM Rooms WHERE bedType  =  "King";
SELECT forename ,  surname FROM drivers WHERE nationality = "German"
SELECT DISTINCT LOCATION FROM track
SELECT Name FROM county_public_safety WHERE County_ID NOT IN (SELECT County_ID FROM city)
SELECT product_type_code ,  avg(product_price) FROM products GROUP BY product_type_code
SELECT T1.city FROM city AS T1 JOIN temperature AS T2 ON T1.city_id  =  T2.city_id WHERE T2.Mar  <  T2.Jul INTERSECT SELECT T3.city FROM city AS T3 JOIN hosting_city AS T4 ON T3.city_id  =  T4.host_city
SELECT T1.title FROM course AS T1 JOIN SECTION AS T2 ON T1.course_id  =  T2.course_id WHERE building  =  'Chandler' AND semester  =  'Fall' AND YEAR  =  2010
SELECT count(*) FROM savings WHERE balance  >  (SELECT avg(balance) FROM savings)
SELECT dorm_name FROM dorm EXCEPT SELECT T1.dorm_name FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid  =  T2.dormid JOIN dorm_amenity AS T3 ON T2.amenid  =  T3.amenid WHERE T3.amenity_name  =  'TV Lounge'
SELECT T4.crs_description ,  T4.crs_credit FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code  =  T2.class_code JOIN student AS T3 ON T3.stu_num  =  T2.stu_num JOIN course AS T4 ON T4.crs_code  =  T1.crs_code WHERE T3.stu_lname  =  'Smithson'
SELECT date_of_transaction FROM TRANSACTIONS WHERE share_count  >=  100 OR amount_of_transaction  >=  100
SELECT T1.name ,  T1.city ,  T2.dst_apid FROM airports AS T1 JOIN routes AS T2 ON T1.apid  =  T2.dst_apid GROUP BY T2.dst_apid ORDER BY count(*) DESC LIMIT 1
SELECT count(*) ,  dept_code FROM student GROUP BY dept_code
SELECT text FROM tweets WHERE text LIKE '%intern%'
SELECT distinct(catalog_publisher) FROM catalogs WHERE catalog_publisher LIKE "%Murray%"
SELECT T1.campus ,  sum(T2.degrees) FROM campuses AS T1 JOIN degrees AS T2 ON T1.id  =  T2.campus WHERE T1.county  =  "Orange" AND T2.year  >=  2000 GROUP BY T1.campus
SELECT DISTINCT T2.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom  =  T2.classroom WHERE grade  =  5
SELECT order_id FROM shipments WHERE shipment_date > "2000-01-01"
SELECT payment_method_code ,  count(*) FROM customers GROUP BY payment_method_code
SELECT count(*) ,  formats FROM files GROUP BY formats
SELECT apt_number FROM Apartments ORDER BY room_count ASC
SELECT subject_name FROM SUBJECTS
SELECT count(*) FROM airports WHERE name LIKE '%International%'
SELECT T1.customer_id ,  T2.customer_first_name ,  T2.customer_last_name ,  count(*) FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id
SELECT avg(HS) ,  max(HS) ,  min(HS) FROM Player
SELECT count(*) FROM web_client_accelerator WHERE id NOT IN ( SELECT accelerator_id FROM accelerator_compatible_browser );
SELECT T1.emp_fname FROM employee AS T1 JOIN professor AS T2 ON T1.emp_num  =  T2.emp_num JOIN department AS T3 ON T2.dept_code  =  T3.dept_code WHERE T3.dept_name  =  'History' EXCEPT SELECT T4.emp_fname FROM employee AS T4 JOIN CLASS AS T5 ON T4.emp_num  =  T5.prof_num
SELECT title FROM course GROUP BY title HAVING count(*)  >  1
SELECT avg(HS) ,  max(HS) ,  min(HS) FROM Player
SELECT zip_code , count(*) FROM weather WHERE max_wind_Speed_mph  >=  25 GROUP BY zip_code
SELECT product_category_code FROM products WHERE product_name  =  "flax"
SELECT T3.name FROM physician AS T1 JOIN trained_in AS T2 ON T1.employeeid  =  T2.physician JOIN procedures AS T3 ON T3.code  =  T2.treatment WHERE T1.name  =  "John Wen"
SELECT t1.attribute_name ,  t1.attribute_id FROM Attribute_Definitions AS t1 JOIN Catalog_Contents_Additional_Attributes AS t2 ON t1.attribute_id  =  t2.attribute_id WHERE t2.attribute_value  =  0
SELECT T1.customer_id ,  T2.customer_first_name ,  T2.customer_last_name FROM Customers_cards AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id HAVING count(*)  >=  2
SELECT T2.city FROM Customers AS T1 JOIN Addresses AS T2 ON T1.customer_address_id = T2.address_id GROUP BY T2.city ORDER BY count(*) DESC LIMIT 1;
SELECT DISTINCT t1.product_name FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id  =  t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id  =  t3.characteristic_id WHERE t3.characteristic_name  =  "warm"
SELECT T2.theme FROM exhibition_record AS T1 JOIN exhibition AS T2 ON T1.exhibition_id  =  T2.exhibition_id WHERE T1.attendance  <  100 INTERSECT SELECT T2.theme FROM exhibition_record AS T1 JOIN exhibition AS T2 ON T1.exhibition_id  =  T2.exhibition_id WHERE T1.attendance  >  500
SELECT count(DISTINCT t3.characteristic_name) FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id  =  t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id  =  t3.characteristic_id WHERE t1.product_name  =  "sesame"
SELECT policy_type_code ,  count(*) FROM policies GROUP BY policy_type_code
SELECT count(*) FROM Lessons AS T1 JOIN Staff AS T2 ON T1.staff_id = T2.staff_id WHERE T2.first_name LIKE "%a%"
SELECT Product_Type_Code FROM Products GROUP BY Product_Type_Code HAVING COUNT(*)  >=  2
SELECT major FROM Student GROUP BY major ORDER BY count(*) DESC LIMIT 1
SELECT Date FROM performance ORDER BY Attendance DESC LIMIT 1
SELECT T1.date_order_placed FROM orders AS T1 JOIN shipments AS T2 ON T1.order_id = T2.order_id WHERE T2.invoice_number = 10
SELECT Crime_rate FROM county_public_safety ORDER BY Police_officers ASC
SELECT DISTINCT T1.Grape FROM GRAPES AS T1 JOIN WINE AS T2 ON T1.Grape  =  T2.Grape WHERE T1.Color  =  "White" AND T2.score  >  90
SELECT customer_id ,  sum(amount_paid) FROM Payments GROUP BY customer_id ORDER BY sum(amount_paid) DESC LIMIT 1
SELECT * FROM basketball_match
SELECT salary FROM salary WHERE YEAR  =  2010 UNION SELECT salary FROM salary WHERE YEAR  =  2001
SELECT County_name FROM county ORDER BY Population ASC
SELECT StuID FROM Student WHERE sex  =  'F' INTERSECT SELECT StuID FROM Sportsinfo WHERE sportname  =  "Football"
SELECT sum(stu_hrs) ,  dept_code FROM student GROUP BY dept_code
SELECT avg(rating) ,  avg(resolution) FROM song WHERE languages  =  "bangla"
SELECT DISTINCT building FROM classroom WHERE capacity  >  50
SELECT T1.lat ,  T1.long ,  T1.city FROM station AS T1 JOIN trip AS T2 ON T1.id  =  T2.start_station_id ORDER BY T2.duration LIMIT 1
SELECT code ,  name ,  min(price) FROM products GROUP BY name
SELECT DISTINCT * FROM employees AS T1 JOIN departments AS T2 ON T1.department_id  =  T2.department_id WHERE T1.employee_id  =  T2.manager_id
SELECT count(*) FROM building WHERE height_feet  >  (SELECT avg(height_feet) FROM building) OR floors  >  (SELECT avg(floors) FROM building)
SELECT advisor FROM Student GROUP BY advisor HAVING count(*)  >=  2
SELECT sum(lesson_time) FROM Lessons AS T1 JOIN Staff AS T2 ON T1.staff_id = T2.staff_id WHERE T2.first_name = "Janessa" AND T2.last_name = "Sawayn";
SELECT count(*) FROM race
SELECT T1.asset_id ,  T1.asset_details FROM Assets AS T1 JOIN Asset_Parts AS T2 ON T1.asset_id  =  T2.asset_id GROUP BY T1.asset_id HAVING count(*)  =  2 INTERSECT SELECT T1.asset_id ,  T1.asset_details FROM Assets AS T1 JOIN Fault_Log AS T2 ON T1.asset_id  =  T2.asset_id GROUP BY T1.asset_id HAVING count(*)  <  2
SELECT Famous_Release_date FROM artist ORDER BY Age DESC LIMIT 1
SELECT rank ,  sex ,  count(*) FROM Faculty GROUP BY rank ,  sex
SELECT title FROM vocals AS T1 JOIN songs AS T2 ON T1.songid  =  T2.songid GROUP BY T1.songid ORDER BY count(*) DESC LIMIT 1
SELECT t2.team_name ,  t2.ACC_Regular_Season FROM university AS t1 JOIN basketball_match AS t2 ON t1.school_id  =  t2.school_id ORDER BY t1.founded LIMIT 1
SELECT title FROM vocals AS T1 JOIN songs AS T2 ON T1.songid  =  T2.songid GROUP BY T1.songid ORDER BY count(*) DESC LIMIT 1
SELECT T1.role_description ,  T2.role_code ,  count(*) FROM ROLES AS T1 JOIN Employees AS T2 ON T1.role_code = T2.role_code GROUP BY T2.role_code;
SELECT name FROM program ORDER BY launch DESC LIMIT 1
SELECT Fname ,  Lname FROM Student
SELECT rank FROM captain WHERE CLASS  =  'Cutter' INTERSECT SELECT rank FROM captain WHERE CLASS  =  'Armed schooner'
SELECT T1.title FROM course AS T1 JOIN SECTION AS T2 ON T1.course_id  =  T2.course_id WHERE building  =  'Chandler' AND semester  =  'Fall' AND YEAR  =  2010
SELECT t1.name FROM ship AS t1 JOIN captain AS t2 ON t1.ship_id  =  t2.ship_id ORDER BY t2.age LIMIT 1
SELECT Theme FROM farm_competition ORDER BY YEAR ASC
SELECT sum(credits) ,  dept_name FROM course GROUP BY dept_name
SELECT fname ,  lname FROM Student WHERE StuID NOT IN (SELECT T1.StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy  =  T2.Allergy WHERE T2.allergytype  =  "food")
SELECT COUNT(*) FROM invoices WHERE billing_city  =  "Chicago" AND billing_state  =  "IL";
SELECT T1.Name FROM country AS T1 JOIN roller_coaster AS T2 ON T1.Country_ID  =  T2.Country_ID GROUP BY T1.Name HAVING COUNT(*)  >  1
SELECT count(*) ,  T3.school_code FROM CLASS AS T1 JOIN course AS T2 ON T1.crs_code  =  T2.crs_code JOIN department AS T3 ON T2.dept_code  =  T3.dept_code GROUP BY T3.school_code
SELECT DISTINCT t1.clubname FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid  =  t2.clubid JOIN student AS t3 ON t2.stuid  =  t3.stuid WHERE t3.city_code  =  "BAL"
SELECT DISTINCT T2.product_id FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id WHERE T1.date_order_placed >= "1975-01-01" AND T1.date_order_placed <= "1976-01-01"
SELECT avg(total_amount_purchased) ,  avg(total_value_purchased) FROM Product_Suppliers WHERE supplier_id  =  (SELECT supplier_id FROM Product_Suppliers GROUP BY supplier_id ORDER BY count(*) DESC LIMIT 1)
SELECT T2.title FROM artists AS T1 JOIN albums AS T2 ON T1.id  =  T2.artist_id WHERE T1.name LIKE '%Led%'
SELECT T2.name FROM assignedto AS T1 JOIN scientists AS T2 ON T1.scientist  =  T2.ssn
SELECT count(*) ,  T1.name FROM scientists AS T1 JOIN assignedto AS T2 ON T1.ssn  =  T2.scientist GROUP BY T1.name
SELECT name ,  TIME ,  service FROM train
SELECT student_id FROM student_course_registrations UNION SELECT student_id FROM student_course_attendance
SELECT T1.fname ,  T1.age FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid  =  T2.stuid WHERE T2.dormid NOT IN (SELECT T3.dormid FROM has_amenity AS T3 JOIN dorm_amenity AS T4 ON T3.amenid  =  T4.amenid WHERE T4.amenity_name  =  'TV Lounge')
SELECT headquarters ,  count(*) FROM company GROUP BY headquarters
SELECT T2.Store_Email_Address FROM Addresses AS T1 JOIN Drama_Workshop_Groups AS T2 ON T1.Address_ID  =  T2.Address_ID WHERE T1.State_County  =  "Alaska"
SELECT T1.title FROM albums AS T1 JOIN tracks AS T2 ON T1.id = T2.album_id GROUP BY T1.id HAVING count(T1.id)  >  10;
SELECT count(DISTINCT acc_type) FROM customer
SELECT avg(T1.Age) FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  SECRETARY_Vote WHERE T1.Sex  =  "F" AND T2.Election_Cycle  =  "Spring"
SELECT T1.customer_name FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id  =  T2.customer_id WHERE T1.payment_method_code  =  'Credit Card' GROUP BY T1.customer_id HAVING count(*)  >  2
SELECT T3.name ,  T2.title ,  T1.date ,  T1.price FROM schedule AS T1 JOIN film AS T2 ON T1.film_id  =  T2.film_id JOIN cinema AS T3 ON T1.cinema_id  =  T3.cinema_id
SELECT count(*) FROM performance AS T1 JOIN band AS T2 ON T1.bandmate  =  T2.id JOIN songs AS T3 ON T3.songid  =  T1.songid WHERE T3.Title  =  "Flash"
SELECT vehicle_flight_number ,  date ,  pilot FROM flight ORDER BY altitude ASC
SELECT T1.Product_Name FROM Products AS T1 JOIN Products_in_Events AS T2 ON T1.Product_ID  =  T2.Product_ID GROUP BY T1.Product_Name HAVING COUNT(*)  >=  2
SELECT count(DISTINCT school_id) FROM basketball_match
SELECT name FROM physician WHERE POSITION LIKE '%senior%'
SELECT order_id ,  customer_id FROM customer_orders WHERE order_status_code  =   "Cancelled" ORDER BY order_date
SELECT name FROM instructor WHERE salary  >  (SELECT min(salary) FROM instructor WHERE dept_name  =  'Biology')
SELECT t2.All_Games ,  t1.location FROM university AS t1 JOIN basketball_match AS t2 ON t1.school_id  =  t2.school_id WHERE team_name  =  'Clemson'
SELECT T2.budget_type_code ,  T2.budget_type_description ,  T1.document_id FROM Documents_with_expenses AS T1 JOIN Ref_budget_codes AS T2 ON T1.budget_type_code  =  T2.budget_type_code
SELECT min(seating) ,  max(seating) ,  avg(seating) FROM track
SELECT max(amount_outstanding) ,  min(amount_outstanding) ,  avg(amount_outstanding) FROM Customers;
SELECT count(*) FROM member WHERE address != 'Hartford'
SELECT count(DISTINCT participant_id) FROM participants_in_Events
SELECT T2.balance ,  T3.balance ,  T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid JOIN savings AS T3 ON T1.custid  =  T3.custid ORDER BY T2.balance + T3.balance DESC
SELECT name ,  LOCATION ,  number_of_platforms FROM station
SELECT Team FROM player ORDER BY Age DESC LIMIT 1
SELECT destination ,  count(*) FROM Flight GROUP BY destination
SELECT company ,  headquarters FROM company ORDER BY market_value DESC
SELECT name ,  furniture_id FROM furniture ORDER BY market_rate DESC LIMIT 1
SELECT T2.Name ,  T3.Theme FROM journal_committee AS T1 JOIN editor AS T2 ON T1.Editor_ID  =  T2.Editor_ID JOIN journal AS T3 ON T1.Journal_ID  =  T3.Journal_ID
SELECT count(DISTINCT dept_name) ,  school_code FROM department GROUP BY school_code HAVING count(DISTINCT dept_name)  <  5
SELECT count(DISTINCT rating) FROM film
SELECT Addresses.address_details FROM Addresses JOIN Documents_Mailed ON Documents_Mailed.mailed_to_address_id = Addresses.address_id WHERE document_id = 4;
SELECT T2.Name FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID
SELECT role_code FROM ROLES;
SELECT count(DISTINCT LOCATION) FROM perpetrator
SELECT DISTINCT Location_Name FROM LOCATIONS
SELECT T1.stu_fname ,  T1.stu_lname ,  T4.crs_description FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num  =  T2.stu_num JOIN CLASS AS T3 ON T2.class_code  =  T3.class_code JOIN course AS T4 ON T3.crs_code  =  T4.crs_code
SELECT TYPE FROM ship WHERE flag  =  'Panama' INTERSECT SELECT TYPE FROM ship WHERE flag  =  'Malta'
SELECT T1.organisation_type_description FROM organisation_Types AS T1 JOIN Organisations AS T2 ON T1.organisation_type  =  T2.organisation_type WHERE T2.organisation_details  =  'quo'
SELECT count(*) FROM school
SELECT DISTINCT T1.Major FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  T2.Treasurer_Vote
SELECT Name FROM mountain WHERE Height  >  5000 OR Prominence  >  1000
SELECT count(*) ,  account_id FROM Financial_transactions
SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id GROUP BY T1.cust_name HAVING count(*)  >  1
SELECT classroom FROM list GROUP BY classroom ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT language_id) FROM film
SELECT avg(age) ,  max(age) ,  sex FROM student GROUP BY sex
SELECT flno FROM Flight ORDER BY distance ASC LIMIT 3
SELECT name FROM player WHERE points  >  (SELECT avg(points) FROM player)
SELECT lname FROM faculty WHERE rank  =  'Professor' EXCEPT SELECT DISTINCT T1.lname FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID  =  T2.facID JOIN activity AS T3 ON T2.actid  =  T2.actid WHERE T3.activity_name  =  'Canoeing' OR T3.activity_name  =  'Kayaking'
SELECT DISTINCT salary FROM instructor WHERE salary  <  (SELECT max(salary) FROM instructor)
SELECT product FROM product WHERE max_page_size  =  "A4" AND pages_per_minute_color  <  5
SELECT count(*) FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  Class_Senator_Vote WHERE T1.city_code  =  "NYC" AND T2.Election_Cycle  =  "Spring"
SELECT count(DISTINCT Governor) FROM party
SELECT T2.product_name FROM view_product_availability AS T1 JOIN products_for_hire AS T2 ON T1.product_id  =  T2.product_id WHERE T1.available_yn  =  1
SELECT Winery FROM WINE ORDER BY SCORE LIMIT 1
SELECT sum(revenue) FROM manufacturers WHERE revenue  >  (SELECT min(revenue) FROM manufacturers WHERE headquarter  =  'Austin')
SELECT circuitid ,  LOCATION FROM circuits WHERE country = "France" OR country = "Belgium"
SELECT count(DISTINCT t1.title) FROM papers AS t1 JOIN authorship AS t2 ON t1.paperid  =  t2.paperid JOIN inst AS t3 ON t2.instid  =  t3.instid WHERE t3.name  =  "University of Pennsylvania"
SELECT T2.Name FROM election AS T1 JOIN representative AS T2 ON T1.Representative_ID  =  T2.Representative_ID WHERE Votes  >  10000
SELECT channel_code FROM customer_contact_channels GROUP BY channel_code HAVING count(customer_id)  <  5
SELECT min(distance) ,  avg(distance) ,  max(distance) FROM Aircraft
SELECT Draft_Pick_Number ,  Draft_Class FROM match_season WHERE POSITION  =  "Defender"
SELECT StuID FROM Student WHERE major  =  600 INTERSECT SELECT StuID FROM Sportsinfo WHERE onscholarship  =  'Y'
SELECT name FROM patient EXCEPT SELECT T1.name FROM patient AS T1 JOIN Prescribes AS T2 ON T2.Patient  =  T1.SSN JOIN Medication AS T3 ON T2.Medication  =  T3.Code WHERE T3.name  =  'Procrastin-X'
SELECT T1.Other_Item_Details FROM ORDER_ITEMS AS T1 JOIN Products AS T2 ON T1.Product_ID  =  T2.Product_ID WHERE T2.Product_price  >  2000
SELECT gender_code ,  COUNT(*) FROM Guests GROUP BY gender_code ORDER BY COUNT(*) DESC
SELECT Nominee ,  COUNT(*) FROM musical GROUP BY Nominee
SELECT clubdesc FROM club WHERE clubname  =  "Pen and Paper Gaming"
SELECT T2.cell_mobile_number FROM Student_Addresses AS T1 JOIN Students AS T2 ON T1.student_id  =  T2.student_id ORDER BY T1.monthly_rental ASC LIMIT 1
SELECT t1.name ,  t1.age FROM pilot AS t1 JOIN MATCH AS t2 ON t1.pilot_id  =  t2.winning_pilot ORDER BY t1.age LIMIT 1
SELECT employee_id ,  first_name ,  last_name ,  salary FROM employees WHERE salary  >  ( SELECT AVG (salary) FROM employees ) AND department_id IN ( SELECT department_id FROM employees WHERE first_name LIKE '%J%')
SELECT fname ,  age FROM Student WHERE StuID IN (SELECT StuID FROM Sportsinfo WHERE SportName  =  "Football" INTERSECT SELECT StuID FROM Sportsinfo WHERE SportName  =  "Lacrosse")
SELECT T1.title ,  T1.credits , T1.dept_name FROM course AS T1 JOIN prereq AS T2 ON T1.course_id  =  T2.course_id GROUP BY T2.course_id HAVING count(*)  >  1
SELECT count(DISTINCT T1.Official_native_language) FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country WHERE T2.Position  =  "Defender"
SELECT campus FROM degrees GROUP BY campus ORDER BY sum(degrees) DESC LIMIT 1
SELECT count(*) FROM Allergy_type WHERE allergytype  =  "animal"
SELECT T2.name FROM membership_register_branch AS T1 JOIN branch AS T2 ON T1.branch_id  =  T2.branch_id JOIN member AS T3 ON T1.member_id  =  T3.member_id WHERE T3.Hometown  =  'Louisville ,  Kentucky' INTERSECT SELECT T2.name FROM membership_register_branch AS T1 JOIN branch AS T2 ON T1.branch_id  =  T2.branch_id JOIN member AS T3 ON T1.member_id  =  T3.member_id WHERE T3.Hometown  =  'Hiram ,  Georgia'
SELECT avg(Enrollment) FROM school
SELECT DISTINCT T1.bname FROM bank AS T1 JOIN loan AS T2 ON T1.branch_id  =  T2.branch_id
SELECT course_id FROM student_course_registrations WHERE student_id = 121 UNION SELECT course_id FROM student_course_attendance WHERE student_id = 121
SELECT name ,  dept_name FROM student ORDER BY tot_cred
SELECT T3.stu_fname FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code  =  T2.class_code JOIN student AS T3 ON T2.stu_num  =  T3.stu_num WHERE T1.crs_code  =  'ACCT-211' AND T2.enroll_grade  =  'C'
SELECT count(*) FROM purchase AS T1 JOIN member AS T2 ON T1.member_id  =  T2.member_id WHERE T2.level  =  6
SELECT Name FROM city ORDER BY Name ASC
SELECT t1.Effective_Date FROM claims AS t1 JOIN settlements AS t2 ON t1.claim_id  =  t2.claim_id GROUP BY t1.claim_id ORDER BY sum(t2.settlement_amount) DESC LIMIT 1
SELECT T2.roomName FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room  =  T2.RoomId WHERE firstname LIKE '%ROY%'
SELECT T1.title ,  T2.inventory_id FROM film AS T1 JOIN inventory AS T2 ON T1.film_id  =  T2.film_id JOIN rental AS T3 ON T2.inventory_id  =  T3.inventory_id GROUP BY T2.inventory_id ORDER BY count(*) DESC LIMIT 1
SELECT name ,  LOCATION ,  year_opened FROM track WHERE seating  >  (SELECT avg(seating) FROM track)
SELECT count(DISTINCT POSITION) FROM player
SELECT LastName FROM CUSTOMER EXCEPT SELECT T1.LastName FROM CUSTOMER AS T1 JOIN Invoice AS T2 ON T1.CustomerId  =  T2.CustomerId WHERE T2.total  >  20
SELECT max(monthly_rental) ,  min(monthly_rental) FROM Student_Addresses
SELECT T2.Delegate FROM county AS T1 JOIN election AS T2 ON T1.County_id  =  T2.District WHERE T1.Population  <  100000
SELECT T1.emp_fname FROM employee AS T1 JOIN professor AS T2 ON T1.emp_num  =  T2.emp_num JOIN department AS T3 ON T2.dept_code  =  T3.dept_code WHERE T3.dept_name  =  'History' EXCEPT SELECT T4.emp_fname FROM employee AS T4 JOIN CLASS AS T5 ON T4.emp_num  =  T5.prof_num
SELECT count(DISTINCT dormid) FROM has_amenity
SELECT max(elevation) FROM airports WHERE country  =  'Iceland'
SELECT billing_state ,  COUNT(*) FROM invoices WHERE billing_country  =  "USA" GROUP BY billing_state;
SELECT T2.address ,  T1.email FROM customer AS T1 JOIN address AS T2 ON T2.address_id  =  T1.address_id WHERE T1.first_name  =  'LINDA'
SELECT name ,  LOCATION FROM enzyme
SELECT state FROM bank GROUP BY state ORDER BY sum(no_of_customers) DESC LIMIT 1
SELECT origin ,  destination FROM Flight WHERE price  >  300
SELECT T1.invoice_date ,  T1.order_id ,  T2.order_details FROM Invoices AS T1 JOIN Orders AS T2 ON T1.order_id  =  T2.order_id
SELECT ResName , Rating FROM Restaurant ORDER BY Rating DESC LIMIT 1;
SELECT Weight FROM people ORDER BY Height ASC LIMIT 1
SELECT Nationality FROM ship GROUP BY Nationality HAVING COUNT(*)  >  2
SELECT avg(pages_per_minute_color) FROM product
SELECT sum(T2.amount) FROM bank AS T1 JOIN loan AS T2 ON T1.branch_id  =  T2.branch_id WHERE T1.state  =  'New York'
SELECT POSITION ,  avg(Points) FROM player GROUP BY POSITION
SELECT apt_number FROM Apartments ORDER BY bedroom_count DESC LIMIT 1
SELECT name FROM races ORDER BY date DESC LIMIT 1
SELECT Name FROM GENRE
SELECT T1.city FROM city AS T1 JOIN temperature AS T2 ON T1.city_id  =  T2.city_id WHERE T2.Feb  >  T2.Jun UNION SELECT T3.city FROM city AS T3 JOIN hosting_city AS T4 ON T3.city_id  =  T4.host_city
SELECT DISTINCT characteristic_name FROM CHARACTERISTICS
SELECT count(*) FROM Customers_cards AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T2.customer_first_name  =  "Art" AND T2.customer_last_name  =  "Turcotte"
SELECT rank FROM captain EXCEPT SELECT rank FROM captain WHERE CLASS  =  'Third-rate ship of the line'
SELECT max(Account_details) FROM Accounts UNION SELECT Account_details FROM Accounts WHERE Account_details LIKE "%5%"
SELECT t3.headquartered_city FROM store AS t1 JOIN store_district AS t2 ON t1.store_id  =  t2.store_id JOIN district AS t3 ON t2.district_id  =  t3.district_id WHERE t1.store_name  =  "Blackville"
SELECT payment_date FROM payment WHERE amount  >  10 UNION SELECT T1.payment_date FROM payment AS T1 JOIN staff AS T2 ON T1.staff_id  =  T2.staff_id WHERE T2.first_name  =  'Elsa'
SELECT emp_fname ,  emp_lname FROM employee ORDER BY emp_dob LIMIT 1
SELECT DISTINCT T1.id ,  T1.name FROM station AS T1 JOIN status AS T2 ON T1.id  =  T2.station_id WHERE T2.bikes_available  >  12
SELECT Name FROM WINE ORDER BY Score LIMIT 1
SELECT name ,  price FROM Products ORDER BY price ASC LIMIT 1
SELECT DISTINCT T2.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.friend WHERE T1.age  <  (SELECT avg(age) FROM person)
SELECT T1.title ,  T1.film_id FROM film AS T1 JOIN inventory AS T2 ON T1.film_id  =  T2.film_id GROUP BY T1.film_id ORDER BY count(*) DESC LIMIT 1
SELECT dept_name ,  budget FROM department WHERE budget  >  (SELECT avg(budget) FROM department)
SELECT Chair_Name FROM festival_detail ORDER BY YEAR ASC
SELECT T2.type ,  count(*) FROM school_bus AS T1 JOIN school AS T2 ON T1.school_id  =  T2.school_id GROUP BY T2.type
SELECT asset_id ,  asset_details ,  asset_make ,  asset_model FROM Assets
SELECT T1.fname FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid  =  T2.stuid WHERE T2.dormid IN (SELECT T2.dormid FROM dorm AS T3 JOIN has_amenity AS T4 ON T3.dormid  =  T4.dormid JOIN dorm_amenity AS T5 ON T4.amenid  =  T5.amenid GROUP BY T3.dormid ORDER BY count(*) DESC LIMIT 1)
SELECT location_code FROM Document_locations GROUP BY location_code HAVING count(*)  >=  3
SELECT publisher FROM book_club WHERE YEAR  =  1989 INTERSECT SELECT publisher FROM book_club WHERE YEAR  =  1990
SELECT cust_name FROM customer EXCEPT SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id WHERE T2.loan_type  =  'Mortgages'
SELECT DISTINCT department_id FROM employees GROUP BY department_id ,  manager_id HAVING COUNT(employee_id)  >= 4
SELECT invoice_number ,  count(*) FROM Financial_transactions GROUP BY invoice_number
SELECT T1.city FROM city AS T1 JOIN hosting_city AS T2 ON T1.city_id = T2.host_city WHERE T2.year  >  2010
SELECT T2.name ,  count(*) FROM membership_register_branch AS T1 JOIN branch AS T2 ON T1.branch_id  =  T2.branch_id WHERE T1.register_year  >  2015 GROUP BY T2.branch_id
SELECT DISTINCT customer_id FROM Customer_Orders WHERE order_date  >  (SELECT min(order_date) FROM Customer_Orders WHERE order_status_code  =  "Cancelled")
SELECT T2.Player FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country WHERE T1.Country_name  =  "Indonesia"
SELECT login_name FROM Students WHERE family_name  =  "Ward"
SELECT T2.Fname ,  T2.Lname FROM Sportsinfo AS T1 JOIN Student AS T2 ON T1.StuID  =  T2.StuID GROUP BY T1.StuID ORDER BY count(*) DESC LIMIT 1
SELECT country FROM customers WHERE first_name = "Roberto" AND last_name = "Almeida";
SELECT StuID FROM Sportsinfo INTERSECT SELECT StuID FROM Plays_games
SELECT product_name FROM products WHERE product_category_code  =  "Spices"
SELECT emp_fname FROM employee WHERE emp_jobcode  =  'PROF' ORDER BY emp_dob
SELECT T2.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom  =  T2.classroom WHERE T1.firstname  =  "GELL" AND T1.lastname  =  "TAMI"
SELECT T1.Product_Name ,  COUNT(*) FROM Products AS T1 JOIN Products_in_Events AS T2 ON T1.Product_ID  =  T2.Product_ID GROUP BY T1.Product_Name
SELECT bname FROM bank WHERE state  =  'New York'
SELECT StuID ,  count(*) ,  sum(gamesplayed) FROM Sportsinfo GROUP BY StuID
SELECT name ,  open_year FROM manufacturer WHERE num_of_shops  >  10 OR Num_of_Factories  <  10
SELECT T2.customer_name FROM mailshot_customers AS T1 JOIN customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE outcome_code  =  'Order' GROUP BY T1.customer_id HAVING count(*)  >=  2
SELECT T1.duration ,  T1.file_size ,  T1.formats FROM files AS T1 JOIN song AS T2 ON T1.f_id  =  T2.f_id WHERE T2.genre_is  =  "pop" ORDER BY T2.song_name
SELECT T2.course_name FROM Course_Authors_and_Tutors AS T1 JOIN Courses AS T2 ON T1.author_id  =  T2.author_id WHERE T1.personal_name  =  "Julio"
SELECT sum(T1.amount_payment) FROM Customer_Payments AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.first_name = "Carole" AND T2.last_name = "Bernhard"
SELECT T2.course_name FROM Course_Authors_and_Tutors AS T1 JOIN Courses AS T2 ON T1.author_id  =  T2.author_id WHERE T1.personal_name  =  "Julio"
SELECT count(*) FROM Ref_locations
SELECT built_year FROM ship GROUP BY built_year ORDER BY count(*) DESC LIMIT 1
SELECT avg(age) FROM Student WHERE StuID IN ( SELECT T1.StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy  =  T2.Allergy WHERE T2.allergytype  =  "food" INTERSECT SELECT T1.StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy  =  T2.Allergy WHERE T2.allergytype  =  "animal")
SELECT DISTINCT payment_method_code FROM INVOICES
SELECT * FROM instructor ORDER BY salary
SELECT name FROM pilot WHERE pilot_id NOT IN (SELECT Winning_Pilot  FROM MATCH WHERE country  =  'Australia')
SELECT t2.color_description FROM products AS t1 JOIN ref_colors AS t2 ON t1.color_code  =  t2.color_code GROUP BY t2.color_description ORDER BY count(*) ASC LIMIT 1
SELECT sum(crs_credit) ,  dept_code FROM course GROUP BY dept_code
SELECT min(product_price) ,  max(product_price) ,  avg(product_price) FROM products
SELECT T1.project_details FROM Projects AS T1 JOIN Project_outcomes AS T2 ON T1.project_id  =  T2.project_id WHERE T2.outcome_code  =  'Paper' INTERSECT SELECT T1.project_details FROM Projects AS T1 JOIN Project_outcomes AS T2 ON T1.project_id  =  T2.project_id WHERE T2.outcome_code  =  'Patent'
SELECT count(DISTINCT sportname) FROM Sportsinfo
SELECT DISTINCT Range FROM mountain ORDER BY Prominence DESC LIMIT 3
SELECT publisher FROM book_club WHERE YEAR  =  1989 INTERSECT SELECT publisher FROM book_club WHERE YEAR  =  1990
SELECT count(DISTINCT Software_Platform) FROM device
SELECT dept_name FROM student GROUP BY dept_name ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.age FROM management AS T2 JOIN head AS T1 ON T1.head_id  =  T2.head_id WHERE T2.temporary_acting  =  'Yes'
SELECT min(age) ,  avg(age) ,  max(age) FROM Student
SELECT t1.product_name FROM products AS t1 JOIN ref_product_categories AS t2 ON t1.product_category_code  =  t2.product_category_code JOIN ref_colors AS t3 ON t1.color_code  =  t3.color_code WHERE t3.color_description  =  "white" AND t2.unit_of_measure != "Handful"
SELECT district_name FROM district ORDER BY city_population DESC LIMIT 1
SELECT name FROM program WHERE origin != 'Beijing'
SELECT T2.apt_number FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T1.booking_status_code  =  "Confirmed" INTERSECT SELECT T2.apt_number FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T1.booking_status_code  =  "Provisional"
SELECT T1.customer_id FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT flno ,  origin ,  destination FROM Flight ORDER BY origin
SELECT name ,  dates_active ,  number_deaths FROM storm WHERE number_deaths  >=  1
SELECT sum(t3.order_quantity) FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id  =  t2.customer_id JOIN order_items AS t3 ON t2.order_id  =  t3.order_id WHERE t1.customer_name  =  "Rodrick Heaney"
SELECT course_id FROM course EXCEPT SELECT course_id FROM prereq
SELECT sum(number_deaths) ,  sum(damage_millions_USD) FROM storm WHERE max_speed  >  (SELECT avg(max_speed) FROM storm)
SELECT count(*) FROM Visitors WHERE Tourist_ID NOT IN ( SELECT Tourist_ID FROM Visits )
SELECT count(*) FROM member WHERE Membership_card  =  'Black'
SELECT t2.product_details FROM order_items AS t1 JOIN products AS t2 ON t1.product_id  =  t2.product_id GROUP BY t1.product_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name ,  count(*) FROM physician AS T1 JOIN patient AS T2 ON T1.employeeid  =  T2.PCP GROUP BY T1.employeeid
SELECT T1.Title FROM Album AS T1 JOIN Track AS T2 ON T1.AlbumId  =  T2.AlbumId JOIN Genre AS T3 ON T2.GenreID  =  T3.GenreID WHERE T3.Name  =  'Reggae' INTERSECT SELECT T1.Title FROM Album AS T1 JOIN Track AS T2 ON T1.AlbumId  =  T2.AlbumId JOIN Genre AS T3 ON T2.GenreID  =  T3.GenreID WHERE T3.Name  =  'Rock'
SELECT Name FROM editor WHERE Age  >  25
SELECT dept_name ,  building FROM department ORDER BY budget DESC LIMIT 1
SELECT channel_code FROM customer_contact_channels GROUP BY channel_code HAVING count(customer_id)  <  5
SELECT T1.name ,  T1.trade_name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id  =  T1.id WHERE interaction_type  =  'inhibitor' INTERSECT SELECT T1.name ,  T1.trade_name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id  =  T1.id WHERE interaction_type  =  'activitor'
SELECT customer_id ,  customer_name FROM customers WHERE customer_address LIKE "%WY%" AND payment_method_code != "Credit Card"
SELECT avg(ticket_price) ,  min(ticket_price) ,  max(ticket_price) FROM exhibition WHERE YEAR  <  2009
SELECT Character ,  Duration FROM actor
SELECT DISTINCT form_type_code FROM forms
SELECT T1.name FROM nurse AS T1 JOIN appointment AS T2 ON T1.employeeid  =  T2.prepnurse GROUP BY T1.employeeid ORDER BY count(*) DESC LIMIT 1
SELECT name FROM scientists ORDER BY name
SELECT count(*) FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid WHERE  t1.fname  =  "Atsushi" AND t1.lname  =  "Ohori"
SELECT count(DISTINCT T1.Official_native_language) FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country WHERE T2.Position  =  "Defender"
SELECT town_city FROM customers WHERE customer_type_code  =  "Good Credit Rating" GROUP BY town_city ORDER BY count(*) LIMIT 1
SELECT Ref_Document_Status.document_status_description FROM Ref_Document_Status JOIN Documents ON Documents.document_status_code = Ref_Document_Status.document_status_code WHERE Documents.document_id = 1;
SELECT name ,  lat ,  city FROM station ORDER BY lat LIMIT 1
SELECT customer_name FROM customers WHERE payment_method != 'Cash'
SELECT T2.firstname ,  T2.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom  =  T2.classroom GROUP BY T2.firstname ,  T2.lastname ORDER BY count(*) DESC LIMIT 1
SELECT allergytype FROM Allergy_type WHERE allergy  =  "Cat"
SELECT LOCATION FROM performance GROUP BY LOCATION HAVING COUNT(*)  >=  2
SELECT TYPE ,  count(*) FROM operate_company GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name ,  T1.last_name , T1.employee_id ,  T4.country_name FROM employees AS T1 JOIN departments AS T2 ON T1.department_id  =  T2.department_id JOIN locations AS T3 ON T2.location_id  =  T3.location_id JOIN countries AS T4 ON T3.country_id  =  T4.country_id
SELECT T2.name ,  T1.team_id_winner FROM postseason AS T1 JOIN team AS T2 ON T1.team_id_winner  =  T2.team_id_br WHERE T1.year  =  2008 GROUP BY T1.team_id_winner ORDER BY count(*) DESC LIMIT 1;
SELECT T1.Position FROM match_season AS T1 JOIN team AS T2 ON T1.Team  =  T2.Team_id WHERE T2.Name  =  "Ryley Goldner"
SELECT transaction_id FROM TRANSACTIONS WHERE transaction_type_code  =  'PUR'
SELECT T2.customer_name FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id HAVING count(*)  <=  2
SELECT Product_Type_Code FROM Products WHERE Product_Price  >  4500 INTERSECT SELECT Product_Type_Code FROM Products WHERE Product_Price  <  3000
SELECT T1.driverid ,  count(*) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid GROUP BY T1.driverid HAVING count(*)  <=  30
SELECT T1.activity_name FROM Activity AS T1 JOIN Faculty_participates_in AS T2 ON T1.actID  =  T2.actID GROUP BY T1.actID ORDER BY count(*) DESC LIMIT 1
SELECT Nationality ,  COUNT(*) FROM pilot GROUP BY Nationality
SELECT count(*) ,  T3.dorm_name FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid  =  T2.stuid JOIN dorm AS T3 ON T3.dormid  =  T2.dormid WHERE T1.age  >  20 GROUP BY T3.dorm_name
SELECT T1.name FROM storm AS T1 JOIN affected_region AS T2 ON T1.storm_id  =  T2.storm_id GROUP BY T1.storm_id HAVING count(*)  >=  2 INTERSECT SELECT T1.name FROM storm AS T1 JOIN affected_region AS T2 ON T1.storm_id  =  T2.storm_id GROUP BY T1.storm_id HAVING sum(T2.number_city_affected)  >=  10
SELECT name FROM procedures WHERE cost  <  5000 INTERSECT SELECT T3.name FROM physician AS T1 JOIN trained_in AS T2 ON T1.employeeid  =  T2.physician JOIN procedures AS T3 ON T3.code  =  T2.treatment WHERE T1.name  =  "John Wen"
SELECT Famous_Title FROM artist WHERE Artist_ID NOT IN(SELECT Artist_ID FROM volume)
SELECT cloud_cover FROM weather WHERE zip_code  =  94107 GROUP BY cloud_cover ORDER BY COUNT (*) DESC LIMIT 3
SELECT T2.Shop_Name FROM stock AS T1 JOIN shop AS T2 ON T1.Shop_ID  =  T2.Shop_ID GROUP BY T1.Shop_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT first_name FROM people ORDER BY first_name
SELECT RoomId ,  roomName FROM Rooms ORDER BY basePrice DESC LIMIT 1;
SELECT avg(T3.Total_Passengers) FROM aircraft AS T1 JOIN airport_aircraft AS T2 ON T1.Aircraft_ID  =  T2.Aircraft_ID JOIN airport AS T3 ON T2.Airport_ID  =  T3.Airport_ID WHERE T1.Aircraft  =  "Robinson R-22"
SELECT T1.artist_name ,  T1.country FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name WHERE T2.resolution  >  900 GROUP BY T2.artist_name HAVING count(*)  >=  1
SELECT T2.name FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id  =  T2.id JOIN student AS T3 ON T1.s_id  =  T3.id ORDER BY T3.tot_cred DESC LIMIT 1
SELECT min(membership_amount) ,  max(membership_amount) FROM branch WHERE open_year  =  2011 OR city  =  'London'
SELECT STATEMENT_ID ,  count(*) FROM Accounts GROUP BY STATEMENT_ID
SELECT store_id FROM inventory GROUP BY store_id ORDER BY count(*) DESC LIMIT 1
SELECT billing_state ,  COUNT(*) FROM invoices WHERE billing_country  =  "USA" GROUP BY billing_state ORDER BY COUNT(*) DESC LIMIT 1;
SELECT count(DISTINCT language_id) FROM film
SELECT College FROM match_season WHERE POSITION  =  "Midfielder" INTERSECT SELECT College FROM match_season WHERE POSITION  =  "Defender"
SELECT T1.address_details FROM addresses AS T1 JOIN customer_addresses AS T2 ON T1.address_id  =  T2.address_id WHERE T2.customer_id  =  10
SELECT T1.name ,  T1.team_id FROM team AS T1 JOIN salary AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id ORDER BY avg(T2.salary) ASC LIMIT 1;
SELECT student_id FROM student_course_registrations GROUP BY student_id ORDER BY count(*) LIMIT 1
SELECT T1.activity_name ,  count(*) FROM Activity AS T1 JOIN Faculty_participates_in AS T2 ON T1.actID  =  T2.actID GROUP BY T1.actID
SELECT Status FROM city WHERE Population  >  1500 INTERSECT SELECT Status FROM city WHERE Population  <  500
SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id GROUP BY T1.cust_name HAVING count(*)  >  1
SELECT * FROM employees WHERE salary BETWEEN (SELECT MIN(salary) FROM employees) AND 2500
SELECT Software_Platform FROM device GROUP BY Software_Platform ORDER BY COUNT(*) DESC
SELECT t3.customer_details FROM claim_headers AS t1 JOIN policies AS t2 ON t1.policy_id  =  t2.policy_id JOIN customers AS t3 ON t2.customer_id  =  t3.customer_id WHERE t1.amount_piad  =  (SELECT min(amount_piad) FROM claim_headers)
SELECT COUNT(*) FROM (SELECT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName  =  T2.cName WHERE T2.pPos  =  'mid' EXCEPT SELECT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName  =  T2.cName WHERE T2.pPos  =  'goalie')
SELECT T2.dept_name FROM student AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code ORDER BY stu_gpa LIMIT 1
SELECT Sex FROM Student WHERE Fname = "Linda" AND Lname = "Smith";
SELECT T1.resident_id ,  T1.other_details ,  count(*) FROM Residents AS T1 JOIN Residents_Services AS T2 ON T1.resident_id  =  T2.resident_id GROUP BY T1.resident_id ORDER BY count(*) DESC
SELECT T1.lesson_id FROM Lessons AS T1 JOIN Staff AS T2 ON T1.staff_id = T2.staff_id WHERE T2.first_name = "Janessa" AND T2.last_name = "Sawayn" AND nickname LIKE "%s%";
SELECT founder FROM manufacturers WHERE name LIKE 'S%'
SELECT project_id FROM Documents GROUP BY project_id HAVING count(*)  >=  2
SELECT name FROM student WHERE dept_name  =  'History' ORDER BY tot_cred DESC LIMIT 1
SELECT Name FROM wrestler ORDER BY Days_held DESC
SELECT DISTINCT T1.supplier_name ,  T1.supplier_phone FROM suppliers AS T1 JOIN product_suppliers AS T2 ON T1.supplier_id  =  T2.supplier_id JOIN products AS T3 ON T2.product_id  =  T3.product_id WHERE T3.product_name  =  "red jeans"
SELECT name FROM people ORDER BY date_of_birth
SELECT Song FROM volume ORDER BY Weeks_on_Top DESC LIMIT 1
SELECT Park FROM roller_coaster ORDER BY Speed DESC LIMIT 1
SELECT name ,  address_road ,  city FROM branch ORDER BY open_year
SELECT T2.Name FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T2.Weight DESC LIMIT 1
SELECT calendar_date ,  day_Number FROM Ref_calendar
SELECT party ,  count(*) FROM driver GROUP BY party
SELECT location_code FROM Document_locations GROUP BY location_code ORDER BY count(*) DESC LIMIT 1
SELECT TYPE FROM vocals AS T1 JOIN songs AS T2 ON T1.songid  =  T2.songid JOIN band AS T3 ON T1.bandmate  =  T3.id WHERE T3.lastname  =  "Heilo" AND T2.title  =  "Der Kapitan"
SELECT count(*) FROM course WHERE course_id NOT IN (SELECT course_id FROM prereq)
SELECT name ,  job FROM Person ORDER BY name
SELECT sum(T2.balance) ,  T1.name FROM accounts AS T1 JOIN savings AS T2 ON T1.custid  =  T2.custid GROUP BY T1.name
SELECT Date_of_ceremony FROM music_festival WHERE Category  =  "Best Song" AND RESULT  =  "Awarded"
SELECT T2.customer_first_name ,  T2.customer_last_name ,  T1.customer_id FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) ASC LIMIT 1
SELECT Destruction_Authorised_by_Employee_ID ,  count(*) FROM Documents_to_be_destroyed GROUP BY Destruction_Authorised_by_Employee_ID
SELECT count(DISTINCT city) FROM stadium WHERE opening_year  <  2006
SELECT avg(t3.age) FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid  =  t2.clubid JOIN student AS t3 ON t2.stuid  =  t3.stuid WHERE t1.clubname  =  "Hopkins Student Enterprises"
SELECT T1.id ,  T1.Name FROM web_client_accelerator AS T1 JOIN accelerator_compatible_browser AS T2 ON T2.accelerator_id  =  T1.id GROUP BY T1.id HAVING count(*)  >=  2
SELECT T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid WHERE T2.balance  <  (SELECT avg(balance) FROM checking)
SELECT T3.location_name FROM All_documents AS T1 JOIN Document_locations AS T2 ON T1.document_id  =  T2.document_id JOIN Ref_locations AS T3 ON T2.location_code  =  T3.location_code WHERE T1.document_name  =  "Robin CV"
SELECT T3.stu_fname FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code  =  T2.class_code JOIN student AS T3 ON T2.stu_num  =  T3.stu_num WHERE T1.crs_code  =  'ACCT-211'
SELECT DISTINCT city_code FROM Student
SELECT avg(hours) FROM projects
SELECT DISTINCT Police_force FROM county_public_safety WHERE LOCATION != "East"
SELECT name ,  price FROM Products ORDER BY price ASC LIMIT 1
SELECT T2.Issue_Date FROM artist AS T1 JOIN volume AS T2 ON T1.Artist_ID  =  T2.Artist_ID WHERE T1.Artist  =  "Gorgoroth"
SELECT count(*) ,  country FROM airports GROUP BY country ORDER BY count(*) DESC
SELECT count(*) FROM exhibition_record AS T1 JOIN exhibition AS T2 ON T1.exhibition_id  =  T2.exhibition_id WHERE T1.attendance  >  100 OR T2.ticket_price  <  10
SELECT count(*) ,  Competition FROM MATCH GROUP BY Competition
SELECT T2.address FROM store AS T1 JOIN address AS T2 ON T1.address_id  =  T2.address_id WHERE store_id  =  1
SELECT rID FROM Rating WHERE stars != 4
SELECT min(Crime_rate) ,  max(Crime_rate) FROM county_public_safety
SELECT founded FROM university ORDER BY enrollment DESC LIMIT 1
SELECT DISTINCT T3.name FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID JOIN Reviewer AS T3 ON T1.rID  =  T3.rID WHERE T2.title  =  'Gone with the Wind'
SELECT FacID FROM Faculty EXCEPT SELECT advisor FROM Student
SELECT roomname FROM rooms WHERE baseprice BETWEEN 120 AND 150
SELECT count(DISTINCT student_id) FROM Students_in_Detention
SELECT T1.FacID ,  count(*) FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID  =  T2.advisor GROUP BY T1.FacID
SELECT T1.County_name FROM county AS T1 JOIN election AS T2 ON T1.County_id  =  T2.District GROUP BY T1.County_id HAVING COUNT(*)  >=  2
SELECT T1.outcome_description FROM Research_outcomes AS T1 JOIN Project_outcomes AS T2 ON T1.outcome_code  =  T2.outcome_code JOIN Projects AS T3 ON T2.project_id  =  T3.project_id WHERE T3.project_details  =  'sint'
SELECT nickname FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn";
SELECT Other_Details FROM LOCATIONS WHERE Location_Name  =  "UK Gallery"
SELECT eid FROM Employee EXCEPT SELECT eid FROM Certificate
SELECT cust_name FROM customer EXCEPT SELECT cust_name FROM customer WHERE acc_type  =  'saving'
SELECT T1.amenity_name FROM dorm_amenity AS T1 JOIN has_amenity AS T2 ON T1.amenid  =  T2.amenid GROUP BY T2.amenid ORDER BY count(*) DESC LIMIT 1
SELECT gender_code ,  COUNT(*) FROM Guests GROUP BY gender_code ORDER BY COUNT(*) DESC
SELECT T2.address_id ,  T1.zip_postcode FROM Addresses AS T1 JOIN Student_Addresses AS T2 ON T1.address_id  =  T2.address_id ORDER BY monthly_rental DESC LIMIT 1
SELECT T3.name ,  T3.time FROM train_station AS T1 JOIN station AS T2 ON T1.station_id  =  T2.station_id JOIN train AS T3 ON T3.train_id  =  T1.train_id WHERE T2.location  =  'London' ORDER BY T3.time DESC
SELECT avg(t3.age) FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid  =  t2.clubid JOIN student AS t3 ON t2.stuid  =  t3.stuid WHERE t1.clubname  =  "Hopkins Student Enterprises"
SELECT budget_type_code ,  count(*) FROM Documents_with_expenses GROUP BY budget_type_code
SELECT T1.Team ,  T2.Location FROM player AS T1 JOIN school AS T2 ON T1.School_ID  =  T2.School_ID
SELECT T3.dept_name  ,  T2.prof_office FROM employee AS T1 JOIN professor AS T2 ON T1.emp_num  =  T2.emp_num JOIN department AS T3 ON T2.dept_code  =  T3.dept_code WHERE T1.emp_lname  =  'Heffington'
SELECT product_name FROM Products EXCEPT SELECT T1.product_name FROM Products AS T1 JOIN Order_items AS T2 ON T1.product_id  =  T2.product_id
SELECT DISTINCT Theme FROM journal
SELECT rid FROM routes WHERE dst_apid IN (SELECT apid FROM airports WHERE country  =  'United States') AND src_apid IN (SELECT apid FROM airports WHERE country  =  'United States')
SELECT DISTINCT classroom ,  grade FROM list
SELECT T3.Name FROM repair_assignment AS T1 JOIN machine AS T2 ON T1.machine_id  =  T2.machine_id JOIN technician AS T3 ON T1.technician_ID  =  T3.technician_ID ORDER BY T2.quality_rank
SELECT class_code FROM CLASS WHERE class_room  =  'KLR209'
SELECT T2.team_id ,  T2.rank FROM home_game AS T1 JOIN team AS T2 ON T1.team_id  =  T2.team_id WHERE T1.year  =  2014 GROUP BY T1.team_id ORDER BY avg(T1.attendance) DESC LIMIT 1;
SELECT rank FROM captain EXCEPT SELECT rank FROM captain WHERE CLASS  =  'Third-rate ship of the line'
SELECT * FROM employees WHERE employee_id NOT IN (SELECT employee_id FROM job_history)
SELECT count(*) FROM airports AS T1 JOIN routes AS T2 ON T1.apid  =  T2.dst_apid WHERE T1.name  =  'John F Kennedy International Airport'
SELECT Fname ,  Lname FROM FACULTY WHERE sex  =  "M" AND Building  =  "NEB"
SELECT name FROM student WHERE id IN (SELECT id FROM takes WHERE semester  =  'Fall' AND YEAR  =  2003)
SELECT T1.project_id ,  count(*) FROM Project_Staff AS T1 JOIN Projects AS T2 ON T1.project_id  =  T2.project_id GROUP BY T1.project_id ORDER BY count(*) ASC
SELECT Location_Name FROM LOCATIONS WHERE Location_Name LIKE "%film%"
SELECT Title ,  Issues FROM book
SELECT Grape ,  Appelation FROM WINE
SELECT Name ,  Country FROM member
SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid  =  T2.stuid JOIN dorm AS T3 ON T3.dormid  =  T2.dormid WHERE T3.dorm_name  =  'Smith Hall' AND T1.sex  =  'F'
SELECT count(*) FROM Faculty WHERE Sex  =  'F' AND Rank  =  "Professor"
SELECT T2.Name FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistId WHERE T1.Title  =  "Balls to the Wall"
SELECT T1.title ,  T3.name FROM course AS T1 JOIN teaches AS T2 ON T1.course_id  =  T2.course_id JOIN instructor AS T3 ON T2.id  =  T3.id WHERE YEAR  =  2008 ORDER BY T1.title
SELECT document_type_code FROM Documents GROUP BY document_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.name ,  T1.city ,  T2.dst_apid FROM airports AS T1 JOIN routes AS T2 ON T1.apid  =  T2.dst_apid GROUP BY T2.dst_apid ORDER BY count(*) DESC LIMIT 1
SELECT t3.lname FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid  =  t2.clubid JOIN student AS t3 ON t2.stuid  =  t3.stuid WHERE t1.clubname  =  "Bootup Baltimore"
SELECT t2.date_opened ,  t2.date_closed FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id  =  t2.customer_id WHERE t1.customer_name LIKE "%Diana%"
SELECT T2.Country ,  T1.Year FROM film_market_estimation AS T1 JOIN market AS T2 ON T1.Market_ID  =  T2.Market_ID
SELECT T1.name ,  T3.balance + T2.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid JOIN savings AS T3 ON T1.custid  =  T3.custid WHERE T3.balance  <  T2.balance
SELECT ResName FROM Restaurant;
SELECT first_name FROM Teachers WHERE email_address LIKE '%man%'
SELECT payment_date FROM payment ORDER BY payment_date ASC LIMIT 1
SELECT Pilot_name FROM pilot WHERE Pilot_ID NOT IN (SELECT Pilot_ID FROM pilot_record)
SELECT County_name FROM county ORDER BY Population DESC LIMIT 1
SELECT T1.school_code FROM department AS T1 JOIN professor AS T2 ON T1.dept_code  =  T2.dept_code GROUP BY T1.school_code ORDER BY count(*) LIMIT 1
SELECT Country FROM member GROUP BY Country HAVING COUNT(*)  >  2
SELECT department_id ,  SUM(salary) FROM employees GROUP BY department_id HAVING count(*)  >=  2
SELECT DISTINCT Nominee FROM musical WHERE Award != "Tony Award"
SELECT Time_of_purchase ,  age ,  address FROM member ORDER BY Time_of_purchase
SELECT date_of_transaction FROM TRANSACTIONS WHERE transaction_type_code  =  "SALE"
SELECT cName FROM  tryout WHERE pPos  =  'mid' EXCEPT SELECT cName FROM  tryout WHERE pPos  =  'goalie'
SELECT name FROM branch ORDER BY membership_amount DESC LIMIT 3
SELECT Industry FROM Companies WHERE Headquarters  =  "USA" INTERSECT SELECT Industry FROM Companies WHERE Headquarters  =  "China"
SELECT StuID FROM Has_allergy GROUP BY StuID HAVING count(*)  >=  2
SELECT date_of_transaction FROM TRANSACTIONS WHERE share_count  >  100 OR amount_of_transaction  >  1000
SELECT DISTINCT T2.name ,  T2.friend ,  T1.age FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.friend WHERE T1.age  >  (SELECT avg(age) FROM person)
SELECT Name FROM mountain ORDER BY Height DESC LIMIT 1
SELECT Competition_type ,  COUNT(*) FROM competition GROUP BY Competition_type
SELECT count(*) FROM bank
SELECT avg(price) FROM products
SELECT name ,  trade_name FROM medicine EXCEPT SELECT T1.name ,  T1.trade_name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id  =  T1.id JOIN enzyme AS T3 ON T3.id  =  T2.enzyme_id WHERE T3.product  =  'Protoporphyrinogen IX'
SELECT BirthDate FROM EMPLOYEE WHERE City  =  "Edmonton"
SELECT company ,  rank FROM company ORDER BY Sales_billion DESC
SELECT count(*) FROM addresses WHERE state_province_county  =  "Colorado"
SELECT T2.customer_last_name ,  T1.customer_id ,  T2.phone_number FROM Orders AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT Starting_Year FROM technician ORDER BY Age DESC LIMIT 1
SELECT count(*) ,  T2.product_id FROM problems AS T1 JOIN product AS T2 ON T1.product_id = T2.product_id GROUP BY T2.product_id
SELECT apt_number FROM Apartments ORDER BY bedroom_count DESC LIMIT 1
SELECT Name FROM Projects WHERE Code NOT IN (SELECT Project FROM AssignedTo)
SELECT name FROM church EXCEPT SELECT T1.name FROM church AS T1 JOIN wedding AS T2 ON T1.church_id  =  T2.church_id WHERE T2.year  =  2015
SELECT lname ,  age FROM Student WHERE StuID IN (SELECT StuID FROM Has_allergy WHERE Allergy  =  "Milk" INTERSECT SELECT StuID FROM Has_allergy WHERE Allergy  =  "Cat")
SELECT count(*) FROM farm
SELECT Studio FROM film WHERE Director  =  "Nicholas Meyer" INTERSECT SELECT Studio FROM film WHERE Director  =  "Walter Hill"
SELECT count(*) FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid  =  t2.clubid JOIN student AS t3 ON t2.stuid  =  t3.stuid WHERE t3.fname  =  "Linda" AND t3.lname  =  "Smith"
SELECT T1.Delegate ,  T2.Party FROM election AS T1 JOIN party AS T2 ON T1.Party  =  T2.Party_ID
SELECT detention_summary FROM Detention
SELECT count(*) ,  sex FROM employee WHERE salary  <  50000 GROUP BY sex
SELECT payment_date FROM payment WHERE amount  >  10 UNION SELECT T1.payment_date FROM payment AS T1 JOIN staff AS T2 ON T1.staff_id  =  T2.staff_id WHERE T2.first_name  =  'Elsa'
SELECT Aircraft FROM aircraft WHERE Aircraft_ID NOT IN (SELECT Winning_Aircraft FROM MATCH)
SELECT Builder FROM railway ORDER BY Builder ASC
SELECT T1.title FROM albums AS T1 JOIN tracks AS T2 ON T1.id = T2.album_id GROUP BY T1.id HAVING count(T1.id)  >  10;
SELECT DISTINCT classroom FROM list WHERE grade  =  5
SELECT name ,  total_passengers FROM station WHERE LOCATION != 'London'
SELECT avg(Speed) FROM roller_coaster
SELECT emp_fname ,  emp_lname FROM employee ORDER BY emp_dob LIMIT 1
SELECT T2.name ,  avg(T1.age) FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.friend GROUP BY T2.name ORDER BY avg(T1.age) DESC LIMIT 1
SELECT Name FROM wrestler ORDER BY Days_held ASC LIMIT 1
SELECT T1.name ,  avg(trust) FROM useracct AS T1 JOIN trust AS T2 ON T1.u_id  =  T2.target_u_id GROUP BY T2.target_u_id
SELECT Name FROM TRACK WHERE Name LIKE '%you%'
SELECT eid ,  salary FROM Employee WHERE name  =  'Mark Young'
SELECT T1.Player , T1.Years_Played FROM player AS T1 JOIN team AS T2 ON T1.Team  =  T2.Team_id WHERE T2.Name  =  "Columbus Crew"
SELECT T3.manager_name FROM station_company AS T1 JOIN company AS T2 ON T1.company_id  =  T2.company_id JOIN gas_station AS T3 ON T1.station_id  =  T3.station_id WHERE T2.company  =  'ExxonMobil'
SELECT document_name FROM documents WHERE document_code NOT IN (SELECT document_code FROM document_sections)
SELECT count(*) FROM rooms WHERE roomid NOT IN (SELECT DISTINCT room FROM reservations)
SELECT customer_name FROM customers EXCEPT SELECT t1.customer_name FROM customers AS t1 JOIN first_notification_of_loss AS t2 ON t1.customer_id  =  t2.customer_id
SELECT T2.name ,  count(*) FROM exhibition AS T1 JOIN artist AS T2 ON T1.artist_id  =  T2.artist_id GROUP BY T1.artist_id
SELECT Country ,  COUNT(*) FROM climber GROUP BY Country
SELECT DName FROM DEPARTMENT WHERE Building  =  "Mergenthaler"
SELECT T2.Name FROM Grapes AS T1 JOIN WINE AS T2 ON T1.Grape  =  T2.Grape WHERE T1.Color  =  "Red" AND T2.price  >  50
SELECT min(bathroom_count) ,  max(bathroom_count) FROM Apartments
SELECT sum(revenue) ,  name FROM manufacturers GROUP BY name
SELECT Issue_Date FROM artist AS T1 JOIN volume AS T2 ON T1.Artist_ID  =  T2.Artist_ID WHERE T1.age  <=  23
SELECT Destruction_Authorised_by_Employee_ID ,  count(*) FROM Documents_to_be_destroyed GROUP BY Destruction_Authorised_by_Employee_ID
SELECT Player_name FROM player ORDER BY Votes DESC LIMIT 1
SELECT lname ,  sex FROM Student WHERE StuID IN (SELECT T1.StuID FROM Plays_games AS T1 JOIN Video_games AS T2 ON T1.GameID  =  T2.GameID WHERE T2.Gname  =  "Call of Destiny" INTERSECT SELECT T1.StuID FROM Plays_games AS T1 JOIN Video_games AS T2 ON T1.GameID  =  T2.GameID WHERE T2.Gname  =  "Works of Widenius")
SELECT count(*) FROM address WHERE district  =  'California'
SELECT AVG(T2.Price) FROM APPELLATIONS AS T1 JOIN WINE AS T2 ON T1.Appelation  =  T2.Appelation WHERE T1.County  =  "Sonoma"
SELECT DISTINCT TYPE FROM vocals
SELECT T1.campus FROM campuses AS t1 JOIN enrollments AS t2 ON t1.id  =  t2.campus WHERE t2.year  =  1956 AND totalenrollment_ay  >  400 AND FTE_AY  >  200
SELECT T1.Name FROM Tourist_Attractions AS T1 JOIN Tourist_Attraction_Features AS T2 ON T1.tourist_attraction_id  =  T2.tourist_attraction_id JOIN Features AS T3 ON T2.Feature_ID  =  T3.Feature_ID WHERE T3.feature_Details  =  'park' UNION SELECT T1.Name FROM Tourist_Attractions AS T1 JOIN Tourist_Attraction_Features AS T2 ON T1.tourist_attraction_id  =  T2.tourist_attraction_id JOIN Features AS T3 ON T2.Feature_ID  =  T3.Feature_ID WHERE T3.feature_Details  =  'shopping'
SELECT grade ,  count(DISTINCT classroom) ,  count(*) FROM list GROUP BY grade
SELECT apt_type_code FROM Apartments WHERE bathroom_count  >  1 GROUP BY apt_type_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM student WHERE sex  =  'F' AND age  <  25
SELECT T1.booking_status_code FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T2.apt_number  =  "Suite 634"
SELECT T1.account_name ,  T1.other_account_details FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T2.customer_first_name  =  "Meaghan" AND T2.customer_last_name  =  "Keeling"
SELECT card_type_code FROM Customers_cards GROUP BY card_type_code ORDER BY count(*) DESC LIMIT 1
SELECT salary FROM salary WHERE YEAR  =  2010 UNION SELECT salary FROM salary WHERE YEAR  =  2001
SELECT date FROM weather WHERE zip_code  =  94107 AND EVENTS != "Fog" AND EVENTS != "Rain"
SELECT title FROM film WHERE LENGTH  >  100 OR rating  =  'PG' EXCEPT SELECT title FROM film WHERE replacement_cost  >  200
SELECT name FROM person EXCEPT SELECT name FROM PersonFriend
SELECT T2.Name FROM Grapes AS T1 JOIN WINE AS T2 ON T1.Grape  =  T2.Grape WHERE T1.Color  =  "Red" AND T2.price  >  50
SELECT T1.text_of_notes FROM Assessment_Notes AS T1 JOIN Teachers AS T2 ON T1.teacher_id  =  T2.teacher_id WHERE T2.last_name  =  "Schuster"
SELECT f_id FROM files ORDER BY duration DESC LIMIT 1
SELECT date_became_customer FROM customers WHERE customer_id BETWEEN 10 AND 20
SELECT T3.name ,  T2.name FROM Office_locations AS T1 JOIN buildings AS T2 ON T1.building_id  =  T2.id JOIN Companies AS T3 ON T1.company_id  =  T3.id
SELECT max(date_moved_in) FROM Residents
SELECT LOCATION FROM shop WHERE Open_Year  >  2012 INTERSECT SELECT LOCATION FROM shop WHERE Open_Year  <  2008
SELECT t1.customer_name ,  t2.active_from_date FROM customers AS t1 JOIN customer_contact_channels AS t2 ON t1.customer_id  =  t2.customer_id WHERE t2.channel_code  =  'Email'
SELECT avg(long) FROM station WHERE id NOT IN (SELECT station_id FROM status GROUP BY station_id HAVING max(bikes_available)  >  10)
SELECT sum(share_count) FROM TRANSACTIONS
SELECT T4.name FROM wedding AS T1 JOIN people AS T2 ON T1.male_id  =  T2.people_id JOIN people AS T3 ON T1.female_id  =  T3.people_id JOIN church AS T4 ON T4.church_id  =  T1.church_id WHERE T2.age  >  30 OR T3.age  >  30
SELECT T1.pName FROM player AS T1 JOIN tryout AS T2 ON T1.pID  =  T2.pID WHERE T2.decision  =  'yes' AND T2.pPos  =  'striker'
SELECT Amount_Settled ,  Amount_Claimed FROM Claims ORDER BY Amount_Claimed DESC LIMIT 1
SELECT sum(revenue) ,  name FROM manufacturers GROUP BY name
SELECT max(Enrollment) FROM university
SELECT Status_Code FROM BOOKINGS GROUP BY Status_Code ORDER BY count(*) DESC LIMIT 1
SELECT LOCATION FROM station EXCEPT SELECT LOCATION FROM station WHERE number_of_platforms  >=  15
SELECT T1.emp_lname ,  T2.prof_office FROM employee AS T1 JOIN professor AS T2 ON T1.emp_num  =  T2.emp_num JOIN department AS T3 ON T2.dept_code  =  T3.dept_code WHERE T3.dept_name  =  'History'
SELECT DISTINCT Secretary_Vote FROM VOTING_RECORD WHERE ELECTION_CYCLE  =  "Fall"
SELECT document_name ,  access_count FROM documents ORDER BY access_count DESC LIMIT 1
SELECT avg(Snatch) FROM body_builder
SELECT host_city FROM hosting_city ORDER BY YEAR DESC LIMIT 1
SELECT YEAR FROM SECTION GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT COUNT (DISTINCT Publication_Date) FROM publication
SELECT YEAR ,  book_title ,  publisher FROM book_club ORDER BY YEAR DESC
SELECT COUNT(*) FROM invoices WHERE billing_city  =  "Chicago" AND billing_state  =  "IL";
SELECT Product_Price FROM Products WHERE Product_Name  =  "Dining" OR Product_Name  =  "Trading Policy"
SELECT count(*) FROM services
SELECT customer_id ,  count(*) FROM Accounts GROUP BY customer_id
SELECT count(*) FROM WINE WHERE Winery  =  "Robert Biale"
SELECT transaction_type_code ,  max(share_count) ,  min(share_count) FROM TRANSACTIONS GROUP BY transaction_type_code
SELECT title FROM course WHERE course_id IN (SELECT T1.prereq_id FROM prereq AS T1 JOIN course AS T2 ON T1.course_id  =  T2.course_id WHERE T2.title  =  'International Finance')
SELECT T3.Name FROM repair_assignment AS T1 JOIN machine AS T2 ON T1.machine_id  =  T2.machine_id JOIN technician AS T3 ON T1.technician_ID  =  T3.technician_ID WHERE T2.value_points  >  70
SELECT semester ,  YEAR FROM SECTION GROUP BY semester ,  YEAR ORDER BY count(*) DESC LIMIT 1
SELECT Student.Fname , Student.Lname FROM Student JOIN Visits_Restaurant ON Student.StuID = Visits_Restaurant.StuID GROUP BY Student.StuID ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM airlines AS T1 JOIN routes AS T2 ON T1.alid  =  T2.alid GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT Category ,  COUNT(*) FROM music_festival GROUP BY Category
SELECT T2.name ,  T2.position FROM department AS T1 JOIN physician AS T2 ON T1.head  =  T2.EmployeeID GROUP BY departmentID ORDER BY count(departmentID) LIMIT 1;
SELECT Case_burden FROM county_public_safety ORDER BY Population DESC
SELECT T2.pName FROM  tryout AS T1 JOIN player AS T2 ON T1.pID  =  T2.pID WHERE T1.cName  =  (SELECT cName FROM college ORDER BY enr DESC LIMIT 1)
SELECT T2.Name FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID WHERE T1.Investor != "Rachel Elnaugh"
SELECT T1.Shop_Details FROM SHOPS AS T1 JOIN TOURIST_ATTRACTIONS AS T2 ON T1.Shop_ID  =  T2.Tourist_Attraction_ID WHERE T2.How_to_Get_There  =  "walk"
SELECT document_name ,  access_count FROM documents ORDER BY document_name
SELECT T2.Delegate FROM county AS T1 JOIN election AS T2 ON T1.County_id  =  T2.District WHERE T1.Population  <  100000
SELECT T1.zip_postcode FROM Addresses AS T1 JOIN Staff AS T2 ON T1.address_id = T2.staff_address_id WHERE T2.first_name = "Janessa" AND T2.last_name = "Sawayn";
SELECT T1.customer_id ,  T2.customer_first_name ,  T2.customer_last_name FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT state FROM college AS T1 JOIN tryout AS T2 ON T1.cName  =  T2.cName
SELECT T3.Title FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate  =  T2.id JOIN Songs AS T3 ON T3.SongId  =  T1.SongId WHERE T2.Lastname  =  "Heilo"
SELECT cName FROM  tryout WHERE decision  =  'yes' AND pPos  =  'goalie'
SELECT course_name FROM courses ORDER BY course_name
SELECT t2.team_name FROM university AS t1 JOIN basketball_match AS t2 ON t1.school_id  =  t2.school_id WHERE enrollment  <  (SELECT avg(enrollment) FROM university)
SELECT count(*) ,  rank FROM captain GROUP BY rank
SELECT TYPE FROM ship GROUP BY TYPE ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM Faculty WHERE Rank  =  "Professor" AND building  =  "NEB"
SELECT t1.product_id ,  t2.color_description FROM products AS t1 JOIN ref_colors AS t2 ON t1.color_code  =  t2.color_code JOIN product_characteristics AS t3 ON t1.product_id  =  t3.product_id GROUP BY t1.product_id HAVING count(*)  >=  2
SELECT name ,  country FROM people WHERE age  <  (SELECT avg(age) FROM people)
SELECT T1.organisation_id ,  T1.organisation_type ,  T1.organisation_details FROM Organisations AS T1 JOIN Research_Staff AS T2 ON T1.organisation_id  =  T2.employer_organisation_id GROUP BY T1.organisation_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name ,  T1.last_name ,  T3.city FROM employees AS T1 JOIN departments AS T2 ON T1.department_id  =  T2.department_id JOIN locations AS T3 ON T2.location_id  =  T3.location_id WHERE T1.first_name LIKE '%z%'
SELECT COUNT (DISTINCT id) FROM teaches
SELECT count(DISTINCT Status_of_Thing_Code) FROM Timed_Status_of_Things
SELECT campus FROM campuses WHERE county  =  "Los Angeles"
SELECT T1.Marketing_Region_Name FROM Marketing_Regions AS T1 JOIN Stores AS T2 ON T1.Marketing_Region_Code  =  T2.Marketing_Region_Code WHERE T2.Store_Name  =  "Rob Dinning"
SELECT dept_name ,  budget FROM department WHERE budget  >  (SELECT avg(budget) FROM department)
SELECT T1.good_or_bad_customer FROM customers AS T1 JOIN discount_coupons AS T2 ON T1.coupon_id  =  T2.coupon_id WHERE T2.coupon_amount  =  500
SELECT name FROM CLub WHERE Club_ID NOT IN (SELECT Club_ID FROM player)
SELECT Hardware_Model_name ,  Company_name FROM phone WHERE Accreditation_type LIKE 'Full';
SELECT DISTINCT product_name FROM product ORDER BY product_id
SELECT DISTINCT classroom FROM list WHERE grade  =  5
SELECT DISTINCT T2.apt_number FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id WHERE T1.booking_status_code  =  "Confirmed"
SELECT Party FROM people GROUP BY Party ORDER BY COUNT(*) DESC LIMIT 1
SELECT country ,  count(*) FROM airlines GROUP BY country ORDER BY count(*) DESC
SELECT max(product_price) ,  min(product_price) ,  product_type_code FROM products GROUP BY product_type_code ORDER BY product_type_code
SELECT major ,  avg(age) ,  min(age) ,  max(age) FROM Student GROUP BY major
SELECT project_details FROM Projects WHERE organisation_id IN ( SELECT organisation_id FROM Projects GROUP BY organisation_id ORDER BY count(*) DESC LIMIT 1 )
SELECT t1.manufacturer_id ,  t1.num_of_shops FROM manufacturer AS t1 JOIN furniture_manufacte AS t2 ON t1.manufacturer_id  =  t2.manufacturer_id ORDER BY t2.Price_in_Dollar DESC LIMIT 1
SELECT lname ,  age FROM Student WHERE StuID IN (SELECT StuID FROM Has_allergy WHERE Allergy  =  "Milk" INTERSECT SELECT StuID FROM Has_allergy WHERE Allergy  =  "Cat")
SELECT T2.date_moved_in ,  T1.customer_id ,  T1.customer_details FROM Customers AS T1 JOIN Customer_Events AS T2 ON T1.customer_id  =  T2.customer_id
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.overall_rating  >  ( SELECT avg(overall_rating) FROM Player_Attributes )
SELECT T1.White ,  T2.Crime_rate FROM city AS T1 JOIN county_public_safety AS T2 ON T1.County_ID  =  T2.County_ID
SELECT T1.name ,  T1.num_employees FROM department AS T1 JOIN management AS T2 ON T1.department_id  =  T2.department_id WHERE T2.temporary_acting  =  'Yes'
SELECT T1.Aircraft FROM aircraft AS T1 JOIN MATCH AS T2 ON T1.Aircraft_ID  =  T2.Winning_Aircraft GROUP BY T2.Winning_Aircraft ORDER BY COUNT(*) DESC LIMIT 1
SELECT max(Age) ,  min(Age) FROM STUDENT WHERE Major  =  600
SELECT Party_Theme ,  LOCATION FROM party
SELECT T1.campus FROM campuses AS T1 JOIN faculty AS T2 ON T1.id  =  T2.campus WHERE T2.year  =  2003 ORDER BY T2.faculty DESC LIMIT 1
SELECT name FROM people WHERE height  <  (SELECT avg(height) FROM people)
SELECT count(*) FROM artist
SELECT title FROM Movie WHERE YEAR  >  (SELECT max(YEAR) FROM Movie WHERE director  =  "Steven Spielberg")
SELECT DISTINCT t1.fname ,  t1.lname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN inst AS t3 ON t2.instid  =  t3.instid WHERE t3.name  =  "University of Oxford"
SELECT cust_name ,  acc_type ,  acc_bal FROM customer ORDER BY credit_score DESC LIMIT 1
SELECT T1.course_description ,  T1.course_name FROM Courses AS T1 JOIN Student_Course_Enrolment AS T2 ON T1.course_id  =  T2.course_id GROUP BY T1.course_name HAVING COUNT(*)  >  2
SELECT T3.title ,  T3.credits FROM classroom AS T1 JOIN SECTION AS T2 ON T1.building  =  T2.building AND T1.room_number  =  T2.room_number JOIN course AS T3 ON T2.course_id  =  T3.course_id WHERE T1.capacity  =  (SELECT max(capacity) FROM classroom)
SELECT transaction_type_code FROM TRANSACTIONS GROUP BY transaction_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT T2.Position FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country WHERE T1.Capital  =  "Dublin"
SELECT rID FROM Rating EXCEPT SELECT rID FROM Rating WHERE stars  =  4
SELECT T1.Investor_details FROM  INVESTORS AS T1 JOIN TRANSACTIONS AS T2 ON T1.investor_id  =  T2.investor_id WHERE T2.share_count  >  100
SELECT Party ,  COUNT(*) FROM representative GROUP BY Party ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(DISTINCT PROF_NUM) FROM CLASS WHERE CRS_CODE  =  "ACCT-211"
SELECT name ,  course_id FROM instructor AS T1 JOIN teaches AS T2 ON T1.ID  =  T2.ID
SELECT Name FROM TOURIST_ATTRACTIONS WHERE How_to_Get_There  =  "bus"
SELECT T3.Name FROM affected_region AS T1 JOIN region AS T2 ON T1.region_id  =  T2.region_id JOIN storm AS T3 ON T1.storm_id  =  T3.storm_id WHERE T2.Region_name  =  'Afghanistan' INTERSECT SELECT T3.Name FROM affected_region AS T1 JOIN region AS T2 ON T1.region_id  =  T2.region_id JOIN storm AS T3 ON T1.storm_id  =  T3.storm_id WHERE T2.Region_name  =  'Albania'
SELECT count(*) FROM airlines WHERE country  =  'Russia'
SELECT f_id FROM files WHERE formats  =  "mp3"
SELECT Party_Theme ,  LOCATION FROM party
SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id  =  T2.track_id JOIN playlists AS T3 ON T2.playlist_id  =  T3.id WHERE T3.name  =  'Movies' INTERSECT SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id  =  T2.track_id JOIN playlists AS T3 ON T2.playlist_id  =  T3.id WHERE T3.name  =  'Music'
SELECT T1.title ,  T1.director FROM Movie AS T1 JOIN Movie AS T2 ON T1.director  =  T2.director WHERE T1.title != T2.title ORDER BY T1.director ,  T1.title
SELECT sum(T1.salary) FROM salary AS T1 JOIN team AS T2 ON T1.team_id  =  T2.team_id_br WHERE T2.name  = 'Boston Red Stockings' AND T1.year  =  2010
SELECT draft_details FROM Document_Drafts WHERE document_id = 7;
SELECT DISTINCT transaction_type FROM Financial_Transactions
SELECT avg(T1.Age) FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  SECRETARY_Vote WHERE T1.Sex  =  "F" AND T2.Election_Cycle  =  "Spring"
SELECT Gname FROM Plays_games AS T1 JOIN Video_games AS T2 ON T1.gameid  =  T2.gameid JOIN Student AS T3 ON T3.Stuid  =  T1.Stuid WHERE T3.Lname  =  "Smith" AND T3.Fname  =  "Linda"
SELECT personal_name FROM Students EXCEPT SELECT T1.personal_name FROM Students AS T1 JOIN Student_Course_Enrolment AS T2 ON T1.student_id  =  T2.student_id
SELECT sum(access_count) FROM documents GROUP BY document_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.project_details ,  T1.project_id FROM Projects AS T1 JOIN Project_outcomes AS T2 ON T1.project_id  =  T2.project_id GROUP BY T1.project_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(lat) ,  avg(long) FROM station WHERE city  =  "San Jose"
SELECT T2.Location FROM player AS T1 JOIN school AS T2 ON T1.School_ID  =  T2.School_ID GROUP BY T1.School_ID HAVING COUNT(*)  >  1
SELECT count(*) FROM has_allergy AS T1 JOIN Student AS T2 ON T1.StuID  =  T2.StuID WHERE T2.sex  =  "F" AND T1.allergy  =  "Milk" OR T1.allergy  =  "Eggs"
SELECT count(*) FROM company
SELECT DISTINCT t1.fname ,  t1.lname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN inst AS t3 ON t2.instid  =  t3.instid WHERE t3.name  =  "University of Oxford"
SELECT DISTINCT POSITION FROM pilot WHERE Age  >  30
SELECT lname FROM authors WHERE fname  =  "Amal"
SELECT count(*) FROM VOTING_RECORD
SELECT location_name ,  location_description FROM Ref_locations WHERE location_code  =  "x"
SELECT count(*) FROM files WHERE duration LIKE "4:%"
SELECT distinct(UnitPrice) FROM TRACK
SELECT decor , count(*) FROM Rooms WHERE basePrice  >  120 GROUP BY decor;
SELECT AVG(Price) ,  AVG(Cases) FROM WINE WHERE YEAR  =  2009 AND Grape  =  "Zinfandel"
SELECT DISTINCT Destruction_Authorised_by_Employee_ID FROM Documents_to_be_destroyed
SELECT phone_number FROM employees WHERE salary BETWEEN 8000 AND 12000
SELECT count(*) FROM Has_allergy AS T1 JOIN Allergy_type AS T2 ON T1.allergy  =  T2.allergy WHERE T2.allergytype  =  "food"
SELECT T1.campus ,  sum(T2.degrees) FROM campuses AS T1 JOIN degrees AS T2 ON T1.id  =  T2.campus WHERE T2.year  >=  1998 AND T2.year  <=  2002 GROUP BY T1.campus
SELECT investor_id ,  avg(share_count) FROM TRANSACTIONS GROUP BY investor_id ORDER BY avg(share_count)
SELECT T1.Name FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID  =  T2.Musical_ID ORDER BY T2.Year DESC
SELECT T3.name FROM exhibition_record AS T1 JOIN exhibition AS T2 ON T1.exhibition_id  =  T2.exhibition_id JOIN artist AS T3 ON T3.artist_id  =  T2.artist_id GROUP BY T3.artist_id HAVING avg(T1.attendance)  >  200
SELECT T1.employee_id FROM Employees AS T1 JOIN ROLES AS T2 ON T1.role_code  =  T2.role_code WHERE T2.role_name  =  "Human Resource" OR T2.role_name  =  "Manager"
SELECT document_id FROM Documents WHERE document_type_code  =  "CV" EXCEPT SELECT document_id FROM Documents_with_expenses
SELECT DISTINCT Venue FROM debate
SELECT max(OMIM) FROM enzyme
SELECT T1.Name ,  T1.population FROM country AS T1 JOIN roller_coaster AS T2 ON T1.Country_ID  =  T2.Country_ID ORDER BY T2.Height DESC LIMIT 1
SELECT degrees FROM campuses AS T1 JOIN degrees AS T2 ON t1.id  =  t2.campus WHERE t1.campus  =  "San Jose State University" AND t2.year  =  2000
SELECT Name FROM actor ORDER BY Name ASC
SELECT DISTINCT t3.name FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN inst AS t3 ON t2.instid  =  t3.instid WHERE t1.fname  =  "Katsuhiro" AND t1.lname  =  "Ueno"
SELECT event_id FROM EVENTS EXCEPT SELECT T1.event_id FROM Participants_in_Events AS T1 JOIN Participants AS T2 ON T1.Participant_ID  =  T2.Participant_ID WHERE Participant_Details  =  'Kenyatta Kuhn'
SELECT name ,  price FROM products
SELECT count(*) FROM region
SELECT T1.Aircraft FROM aircraft AS T1 JOIN airport_aircraft AS T2 ON T1.Aircraft_ID  =  T2.Aircraft_ID JOIN airport AS T3 ON T2.Airport_ID  =  T3.Airport_ID WHERE T3.Airport_Name  =  "London Heathrow" INTERSECT SELECT T1.Aircraft FROM aircraft AS T1 JOIN airport_aircraft AS T2 ON T1.Aircraft_ID  =  T2.Aircraft_ID JOIN airport AS T3 ON T2.Airport_ID  =  T3.Airport_ID WHERE T3.Airport_Name  =  "London Gatwick"
SELECT T2.Carrier FROM stock AS T1 JOIN device AS T2 ON T1.Device_ID  =  T2.Device_ID GROUP BY T1.Device_ID HAVING COUNT(*)  >  1
SELECT t1.customer_name FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id  =  t2.customer_id ORDER BY t2.order_date DESC LIMIT 1
SELECT name ,  price FROM products
SELECT T1.Actual_Delivery_Date FROM Customer_Orders AS T1 JOIN ORDER_ITEMS AS T2 ON T1.Order_ID  =  T2.Order_ID WHERE T2.Order_Quantity  =  1
SELECT count(*) FROM book_club
SELECT T1.Name ,  T2.Tourist_Attraction_ID ,   COUNT(*) FROM Tourist_Attractions AS T1 JOIN VISITS AS T2 ON T1.Tourist_Attraction_ID  =  T2.Tourist_Attraction_ID GROUP BY T2.Tourist_Attraction_ID
SELECT DISTINCT T4.name FROM PersonFriend AS T1 JOIN Person AS T2 ON T1.name  =  T2.name JOIN PersonFriend AS T3 ON T1.friend  =  T3.name JOIN PersonFriend AS T4 ON T3.friend  =  T4.name WHERE T2.name  =  'Alice' AND T4.name != 'Alice'
SELECT Carrier ,  COUNT(*) FROM phone GROUP BY Carrier
SELECT count(*) ,  T3.product_id FROM orders AS T1 JOIN order_items AS T2 JOIN products AS T3 ON T1.order_id = T2.order_id AND T2.product_id = T3.product_id GROUP BY T3.product_id
SELECT song_name FROM song WHERE languages  =  "english"
SELECT T1.Name FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID  =  T2.Musical_ID WHERE T2.Name  =  "The Phantom of the Opera"
SELECT T2.product_name ,  sum(T1.product_quantity) FROM Order_items AS T1 JOIN Products AS T2 ON T1.product_id  =  T2.product_id GROUP BY T2.product_name
SELECT trade_name ,  count(*) FROM medicine GROUP BY trade_name
SELECT T1.product_name ,  sum(T2.order_quantity) FROM products AS T1 JOIN order_items AS T2 ON T1.product_id  =  T2.product_id GROUP BY T1.product_id
SELECT DISTINCT t3.name FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN inst AS t3 ON t2.instid  =  t3.instid WHERE t1.fname  =  "Katsuhiro" AND t1.lname  =  "Ueno"
SELECT amount FROM payment ORDER BY amount DESC LIMIT 1
SELECT T3.Name ,  T2.Name FROM employment AS T1 JOIN people AS T2 ON T1.People_ID  =  T2.People_ID JOIN company AS T3 ON T1.Company_ID  =  T3.Company_ID
SELECT f_id FROM files WHERE formats  =  "mp4" INTERSECT SELECT f_id FROM song WHERE resolution  <  1000
SELECT count(*) FROM routes AS T1 JOIN airports AS T2 ON T1.dst_apid  =  T2.apid WHERE T2.country  =  'Italy'
SELECT party_name FROM party WHERE party_id NOT IN (SELECT party_id FROM Member)
SELECT station_id ,  LOCATION ,  manager_name FROM gas_station ORDER BY open_year
SELECT avg(price_in_euros) ,  min(price_in_euros) FROM catalog_contents
SELECT count(*) FROM home_game AS T1 JOIN park AS T2 ON T1.park_id  =  T2.park_id WHERE T1.year = 1907 AND T2.park_name = 'Columbia Park';
SELECT T2.title ,  T1.stars ,  T2.director ,  min(T1.stars) FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID GROUP BY T2.director
SELECT DISTINCT product_size FROM Products
SELECT StuID FROM Student WHERE Advisor  =  1121
SELECT Grape ,  Winery ,  YEAR FROM WINE WHERE Price  >   100 ORDER BY YEAR
SELECT director FROM Movie GROUP BY director HAVING count(*)  =  1
SELECT DISTINCT Police_force FROM county_public_safety WHERE LOCATION != "East"
SELECT avg(lat) ,  avg(long) FROM station WHERE city  =  "San Jose"
SELECT DISTINCT title FROM Movie EXCEPT SELECT T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID JOIN Reviewer AS T3 ON T1.rID  =  T3.rID WHERE T3.name  =  'Chris Jackson'
SELECT physician ,  department FROM affiliated_with WHERE primaryaffiliation  =  1
SELECT name ,  dept_name FROM student ORDER BY tot_cred
SELECT count(*) ,  T1.director FROM Movie AS T1 JOIN Rating AS T2 ON T1.mID  =  T2.mID GROUP BY T1.director
SELECT city ,  max(lat) FROM station GROUP BY city
SELECT event_name FROM party_events GROUP BY event_name HAVING count(*)  >  2
SELECT t1.name FROM furniture AS t1 JOIN furniture_manufacte AS t2 ON t1.Furniture_ID  =  t2.Furniture_ID WHERE t2.Price_in_Dollar  <  (SELECT max(Price_in_Dollar) FROM furniture_manufacte)
SELECT count(*) FROM cinema
SELECT t1.product_name FROM products AS t1 JOIN ref_colors AS t2 ON t1.color_code  =  t2.color_code WHERE t2.color_description  =  "white"
SELECT t1.owner FROM program AS t1 JOIN broadcast AS t2 ON t1.program_id  =  t2.program_id WHERE t2.Time_of_day  =  "Morning" INTERSECT SELECT t1.owner FROM program AS t1 JOIN broadcast AS t2 ON t1.program_id  =  t2.program_id WHERE t2.Time_of_day  =  "Night"
SELECT T1.Location ,  T2.Nickname FROM school AS T1 JOIN school_details AS T2 ON T1.School_ID  =  T2.School_ID
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM perpetrator)
SELECT count(*) FROM files WHERE duration LIKE "4:%"
SELECT T2.friend FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.name WHERE T1.name  =  'Bob'
SELECT avg(age) ,  job FROM Person WHERE gender  =  'male' GROUP BY job
SELECT DISTINCT name FROM  instructor ORDER BY name
SELECT Hispanic FROM city WHERE Black  >  10
SELECT title ,  Studio FROM film WHERE Studio LIKE "%Universal%"
SELECT T3.Player_name ,  T2.coach_name FROM player_coach AS T1 JOIN coach AS T2 ON T1.Coach_ID  =  T2.Coach_ID JOIN player AS T3 ON T1.Player_ID  =  T3.Player_ID
SELECT DISTINCT classroom FROM list WHERE grade  =  4
SELECT f_id FROM song WHERE resolution  >  (SELECT max(resolution) FROM song WHERE rating  <  8)
SELECT count(DISTINCT name) FROM projects
SELECT name FROM member WHERE address  =  'Harford' OR address  =  'Waterbury'
SELECT max(Transit_Passengers) ,  min(Transit_Passengers) FROM airport
SELECT count(DISTINCT Status) FROM city
SELECT T1.fault_short_name ,  T3.skill_description FROM Part_Faults AS T1 JOIN Skills_Required_To_Fix AS T2 ON T1.part_fault_id  =  T2.part_fault_id JOIN Skills AS T3 ON T2.skill_id  =  T3.skill_id
SELECT f_id ,  genre_is ,  artist_name FROM song WHERE languages  =   "english" ORDER BY rating
SELECT T1.project_details FROM Projects AS T1 JOIN Project_outcomes AS T2 ON T1.project_id  =  T2.project_id JOIN Research_outcomes AS T3 ON T2.outcome_code  =  T3.outcome_code WHERE T3.outcome_description LIKE '%Published%'
SELECT T2.premises_type ,  T1.address_type_code FROM customer_addresses AS T1 JOIN premises AS T2 ON T1.premise_id  =  T2.premise_id
SELECT CLASS FROM race GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1
SELECT emp_fname FROM employee WHERE emp_jobcode  =  'PROF' ORDER BY emp_dob
SELECT T2.zip_postcode FROM Customers AS T1 JOIN Addresses AS T2 ON T1.customer_address_id = T2.address_id WHERE T1.first_name = "Carole" AND T1.last_name = "Bernhard"
SELECT name ,  LOCATION FROM track
SELECT Headquarters FROM company ORDER BY Sales_in_Billion DESC LIMIT 1
SELECT CName FROM COURSE ORDER BY Credits
SELECT building_address ,  building_phone FROM Apartment_Buildings WHERE building_manager	 =  "Brenden"
SELECT name ,  Num_of_Component FROM furniture ORDER BY market_rate LIMIT 1
SELECT t1.clubname FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid  =  t2.clubid JOIN student AS t3 ON t2.stuid  =  t3.stuid WHERE t3.sex  =  "F" GROUP BY t1.clubname ORDER BY count(*) DESC LIMIT 1
SELECT College FROM match_season WHERE POSITION  =  "Midfielder" INTERSECT SELECT College FROM match_season WHERE POSITION  =  "Defender"
SELECT Price FROM WINE WHERE YEAR  <  2010
SELECT Membership_card FROM member GROUP BY Membership_card HAVING count(*)  >  5
SELECT DISTINCT LOCATION FROM cinema
SELECT Status ,  COUNT(*) FROM roller_coaster GROUP BY Status
SELECT DISTINCT T2.Position FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id  =  T2.Country WHERE T1.Capital  =  "Dublin"
SELECT employee_id ,  salary FROM employees WHERE manager_id  =  (SELECT employee_id FROM employees WHERE first_name  =  'Payam' )
SELECT T2.name FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id  =  T2.id JOIN student AS T3 ON T1.s_id  =  T3.id WHERE T3.dept_name  =  'Math' ORDER BY T3.tot_cred
SELECT name FROM appointment AS T1 JOIN patient AS T2 ON T1.patient  =  T2.ssn
SELECT count(*) FROM storm WHERE Number_Deaths  >  0
SELECT T1.part_id ,  T1.part_name FROM Parts AS T1 JOIN Part_Faults AS T2 ON T1.part_id  =  T2.part_id JOIN Skills_Required_To_Fix AS T3 ON T2.part_fault_id  =  T3.part_fault_id GROUP BY T1.part_id ORDER BY count(*) DESC LIMIT 1
SELECT customer_details FROM customers WHERE customer_details LIKE "%Diana%"
SELECT T1.title FROM course AS T1 JOIN prereq AS T2 ON T1.course_id  =  T2.course_id GROUP BY T2.course_id HAVING count(*)  =  2
SELECT COUNT(*) FROM CUSTOMER WHERE Email LIKE "%gmail.com%"
SELECT Nominee FROM musical WHERE Award  =  "Tony Award" INTERSECT SELECT Nominee FROM musical WHERE Award  =  "Drama Desk Award"
SELECT T2.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid  =  T2.custid WHERE T1.name LIKE '%ee%'
SELECT Investor FROM entrepreneur GROUP BY Investor HAVING COUNT(*)  >=  2
SELECT max(weight) ,  min(weight) FROM Player
SELECT T1.artist_name ,  count(*) FROM artist AS T1 JOIN song AS T2 ON T1.artist_name  =  T2.artist_name GROUP BY T2.artist_name ORDER BY count(*) DESC LIMIT 3
SELECT T1.city FROM city AS T1 JOIN temperature AS T2 ON T1.city_id  =  T2.city_id WHERE T2.Feb  >  T2.Jun UNION SELECT T3.city FROM city AS T3 JOIN hosting_city AS T4 ON T3.city_id  =  T4.host_city
SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id GROUP BY T1.cust_name ORDER BY sum(T2.amount)
SELECT count(*) FROM ALBUM
SELECT T2.dept_name ,  T1.dept_code FROM professor AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code WHERE T1.prof_high_degree  =  'Ph.D.' GROUP BY T1.dept_code ORDER BY count(*) DESC LIMIT 1
SELECT TYPE FROM vocals AS T1 JOIN songs AS T2 ON T1.songid  =  T2.songid JOIN band AS T3 ON T1.bandmate  =  T3.id WHERE T3.firstname  =  "Solveig" AND T2.title  =  "A Bar In Amsterdam"
SELECT T1.name_first , T1.name_last ,  T1.player_id ,   count(*) FROM player AS T1 JOIN all_star AS T2 ON T1.player_id  =  T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.name FROM photos AS T1 JOIN camera_lens AS T2 ON T1.camera_lens_id  =  T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.Area FROM APPELLATIONS AS T1 JOIN WINE AS T2 ON T1.Appelation  =  T2.Appelation GROUP BY T2.Appelation HAVING T2.year  <  2010 ORDER BY count(*) DESC LIMIT 1
SELECT city FROM Addresses ORDER BY city
SELECT product_price FROM products WHERE product_id NOT IN (SELECT product_id FROM complaints)
SELECT DISTINCT T1.Fname FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID  =  T2.CLASS_Senator_VOTE
SELECT Name FROM pilot WHERE Age  <=  30 ORDER BY Name DESC
SELECT name FROM building EXCEPT SELECT T1.name FROM building AS T1 JOIN institution AS T2 ON T1.building_id  =  T2.building_id WHERE T2.founded  =  2003
SELECT avg(rating) ,  languages FROM song GROUP BY languages
SELECT T1.Store_Phone ,  T1.Store_Email_Address FROM Drama_Workshop_Groups AS T1 JOIN Services AS T2 ON T1.Workshop_Group_ID  =  T2.Workshop_Group_ID WHERE T2.Product_Name  =  "film"
SELECT T1.Name ,  T2.Name FROM city AS T1 JOIN county_public_safety AS T2 ON T1.County_ID  =  T2.County_ID
SELECT part_id ,  chargeable_amount FROM Parts ORDER BY chargeable_amount ASC LIMIT 1
SELECT count(*) FROM Video_games WHERE gtype  =  "Massively multiplayer online game"
SELECT Name FROM People ORDER BY Height ASC
SELECT campus FROM campuses WHERE LOCATION  =  "Chico"
SELECT t1.last_name FROM staff AS t1 JOIN complaints AS t2 ON t1.staff_id  =  t2.staff_id ORDER BY t2.date_complaint_raised LIMIT 1
SELECT T1.state_province_county FROM Addresses AS T1 JOIN Staff AS T2 ON T1.address_id = T2.staff_address_id GROUP BY T1.state_province_county HAVING count(*) BETWEEN 2 AND 4;
SELECT T1.department_name ,  T2.city ,  T2.state_province FROM departments AS T1 JOIN locations AS T2 ON T2.location_id  =  T1.location_id
SELECT organized_by ,  name FROM church WHERE open_date BETWEEN 1830 AND 1840
SELECT pilot FROM flight GROUP BY pilot ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT claim_outcome_code) FROM claims_processing
SELECT DISTINCT T1.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom  =  T2.classroom WHERE T1.grade  =  3 AND T2.firstname != "COVIN" AND T2.lastname != "JEROME"
SELECT Marketing_Region_Descriptrion FROM Marketing_Regions WHERE Marketing_Region_Name  =  "China"
SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id = T2.track_id JOIN playlists AS T3 ON T3.id = T2.playlist_id WHERE T3.name = "Movies";
SELECT Song FROM volume WHERE Weeks_on_Top  >  1
SELECT count(DISTINCT state) FROM college WHERE enr  <  (SELECT avg(enr) FROM college)
SELECT train_number ,  TIME FROM train WHERE origin  =  'Chennai' AND destination  =  'Guruvayur'
SELECT T1.document_date FROM Documents AS T1 JOIN Documents_with_Expenses AS T2 ON T1.document_id  =  T2.document_id WHERE T2.budget_type_code  =  'GV' INTERSECT SELECT T1.document_date FROM Documents AS T1 JOIN Documents_with_Expenses AS T2 ON T1.document_id  =  T2.document_id WHERE T2.budget_type_code  =  'SF'
SELECT LOCATION FROM performance GROUP BY LOCATION ORDER BY COUNT(*) DESC LIMIT 1
SELECT location_code ,  count(*) FROM Document_locations GROUP BY location_code
SELECT Official_native_language FROM country WHERE Official_native_language LIKE "%English%"
SELECT count(*) FROM scientists WHERE ssn NOT IN (SELECT scientist FROM AssignedTo)
SELECT Major FROM STUDENT GROUP BY major ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT building FROM Faculty
SELECT date_of_latest_revision FROM Catalogs GROUP BY date_of_latest_revision HAVING count(*)  >  1
SELECT T1.date_of_notes FROM Assessment_Notes AS T1 JOIN Students AS T2 ON T1.student_id  =  T2.student_id WHERE T2.first_name  =  "Fanny"
SELECT date_left_staff FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn";
SELECT first_name ,  last_name ,  gender_mf FROM customers WHERE good_or_bad_customer  =  'good' ORDER BY last_name
SELECT T1.name ,  count(*) FROM storm AS T1 JOIN affected_region AS T2 ON T1.storm_id  =  T2.storm_id GROUP BY T1.storm_id
SELECT first_name ,  last_name FROM Maintenance_Engineers WHERE engineer_id NOT IN (SELECT engineer_id FROM Engineer_Visits)
SELECT sum(revenue) FROM manufacturers WHERE headquarter  =  'Austin'
SELECT policy_type_code ,  count(*) FROM policies GROUP BY policy_type_code
SELECT count(*) FROM medicine WHERE FDA_approved  =  'No'
SELECT count(*) FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id WHERE T2.customer_first_name  =  "Art" AND T2.customer_last_name  =  "Turcotte"
SELECT Major ,  count(*) FROM Student GROUP BY Major ORDER BY count(Major) ASC LIMIT 1;
SELECT Publisher FROM publication ORDER BY Price DESC LIMIT 1
SELECT count(DISTINCT school_code) FROM department
SELECT DISTINCT T1.player_name ,  T1.birthday FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id  =  T2.player_api_id ORDER BY potential DESC LIMIT 5
SELECT count(*) FROM csu_fees WHERE campusfee  >  (SELECT avg(campusfee) FROM csu_fees)
SELECT name ,  distance FROM Aircraft
SELECT count(*) FROM ship
SELECT DISTINCT T1.name FROM web_client_accelerator AS T1 JOIN accelerator_compatible_browser AS T2 ON T2.accelerator_id  =  T1.id JOIN browser AS T3 ON T2.browser_id  =  T3.id WHERE T3.market_share  >  15;
SELECT name FROM races WHERE TIME > "12:00:00" OR TIME < "09:00:00"
SELECT pets_allowed_yn ,  avg(price_range) FROM HOTELS GROUP BY pets_allowed_yn
SELECT T1.Name FROM people AS T1 JOIN perpetrator AS T2 ON T1.People_ID  =  T2.People_ID WHERE T2.Country != "China"
SELECT T3.Fname ,  T3.LName ,  T2.gradepoint FROM ENROLLED_IN AS T1 JOIN GRADECONVERSION AS T2 JOIN STUDENT AS T3 ON T1.Grade  =  T2.lettergrade AND T1.StuID  =  T3.StuID
SELECT count(*) ,  T1.fault_log_entry_id FROM Fault_Log AS T1 JOIN Engineer_Visits AS T2 ON T1.fault_log_entry_id  =  T2.fault_log_entry_id GROUP BY T1.fault_log_entry_id ORDER BY count(*) DESC LIMIT 1
SELECT district_name FROM district ORDER BY city_population DESC LIMIT 1
SELECT sum(T1.salary) FROM salary AS T1 JOIN team AS T2 ON T1.team_id  =  T2.team_id_br WHERE T2.name  = 'Boston Red Stockings' AND T1.year  =  2010
SELECT T1.firstname ,  T1.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom  =  T2.classroom WHERE T2.firstname  =  "MARROTTE" AND T2.lastname  =  "KIRK"
SELECT count(*) FROM courses AS T1 JOIN student_course_attendance AS T2 ON T1.course_id = T2.course_id WHERE T1.course_name = "English"
SELECT first_name ,  last_name FROM Customers WHERE amount_outstanding BETWEEN 1000 AND 3000;
SELECT cName FROM  tryout WHERE pPos  =  'mid' EXCEPT SELECT cName FROM  tryout WHERE pPos  =  'goalie'
SELECT T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID  =  T2.mID WHERE T1.stars BETWEEN 3 AND 5
SELECT title ,  directed_by FROM film
SELECT count(*) FROM party_events
SELECT sum(hoursperweek) ,  sum(gamesplayed) FROM Sportsinfo AS T1 JOIN Student AS T2 ON T1.StuID  =  T2.StuID WHERE T2.Fname  =  "David" AND T2.Lname  =  "Shieber"
SELECT sum(amount) FROM payment
SELECT customer_details FROM customers EXCEPT SELECT t2.customer_details FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id  =  t2.customer_id
SELECT count(DISTINCT T2.Delegate) FROM county AS T1 JOIN election AS T2 ON T1.County_id  =  T2.District WHERE T1.Population  >  50000
SELECT T2.apt_number ,  T1.booking_start_date ,  T1.booking_start_date FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id
SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id  =  T2.track_id JOIN playlists AS T3 ON T2.playlist_id  =  T3.id WHERE T3.name  =  'Movies' EXCEPT SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id  =  T2.track_id JOIN playlists AS T3 ON T2.playlist_id  =  T3.id WHERE T3.name  =  'Music'
SELECT DISTINCT start_station_name FROM trip WHERE duration  <  100
SELECT T1.name ,  T1.lat ,  min(T2.duration) FROM station AS T1 JOIN trip AS T2 ON T1.id  =  T2.end_station_id GROUP BY T2.end_station_id
SELECT student_id FROM student_course_registrations GROUP BY student_id ORDER BY count(*) LIMIT 1
SELECT DISTINCT TYPE FROM institution
SELECT gname FROM Plays_games AS T1 JOIN Video_games AS T2 ON T1.gameid  =  T2.gameid GROUP BY T1.gameid HAVING sum(hours_played)  >=  1000
SELECT * FROM Albums WHERE YEAR  =  2010
SELECT T1.electoral_register_id FROM Electoral_Register AS T1 JOIN CMI_Cross_References AS T2 ON T1.cmi_cross_ref_id  =  T2.cmi_cross_ref_id WHERE T2.source_system_code  =  'Electoral' OR T2.source_system_code  =  'Tax'
SELECT count(*) FROM COURSES
SELECT personal_name ,  family_name FROM Students ORDER BY family_name
SELECT T2.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.friend WHERE T1.city  =  'new york city'
SELECT DISTINCT T1.name ,  T1.position FROM physician AS T1 JOIN prescribes AS T2 ON T1.employeeid = T2.physician JOIN medication AS T3 ON T3.code = T2.medication WHERE T3.Brand  =  "X"
SELECT count(*) ,  Grape FROM WINE GROUP BY Grape
SELECT Name FROM mountain ORDER BY Height DESC LIMIT 1
SELECT count(DISTINCT Team) FROM match_season
SELECT project_details FROM Projects WHERE project_id NOT IN ( SELECT project_id FROM Project_Staff WHERE role_code  =  'researcher' )
SELECT open_year ,  name FROM manufacturer ORDER BY num_of_shops DESC LIMIT 1
SELECT title FROM course WHERE course_id NOT IN (SELECT course_id FROM prereq)
SELECT COUNT(*) FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId  =  T2.ArtistId WHERE T2.Name  =  "Metallica"
SELECT count(*) FROM Ref_Shipping_Agents JOIN Documents ON Documents.shipping_agent_code = Ref_Shipping_Agents.shipping_agent_code WHERE Ref_Shipping_Agents.shipping_agent_name = "USPS";
SELECT T1.fname ,  T1.lname FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID  =  T2.advisor GROUP BY T1.FacID ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM exhibition WHERE YEAR  >=  2005
SELECT sum(grant_amount) FROM Grants AS T1 JOIN Organisations AS T2 ON T1.organisation_id  =  T2.organisation_id JOIN organisation_Types AS T3 ON T2.organisation_type  =  T3.organisation_type WHERE T3.organisation_type_description  =  'Research'
SELECT other_account_details FROM Accounts WHERE account_name  =  "338"
SELECT name ,  year_join FROM artist WHERE country != 'United States'
SELECT max(T2.fastestlapspeed) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2008 AND T1.name = "Monaco Grand Prix"
SELECT yearid FROM hall_of_fame GROUP BY yearid ORDER BY count(*) ASC LIMIT 1;
SELECT Category FROM music_festival WHERE RESULT  =  "Awarded"
SELECT T1.firstname ,  T1.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom  =  T2.classroom WHERE T2.firstname  =  "MARROTTE" AND T2.lastname  =  "KIRK"
SELECT count(DISTINCT services) FROM station
SELECT County_name FROM county ORDER BY Population ASC
SELECT shop_id ,  address FROM shop WHERE score  <  (SELECT avg(score) FROM shop)
SELECT name FROM storm EXCEPT SELECT T1.name FROM storm AS T1 JOIN affected_region AS T2 ON T1.storm_id  =  T2.storm_id GROUP BY T1.storm_id HAVING count(*)  >=  2
SELECT DISTINCT Location_Name FROM LOCATIONS
SELECT model_name FROM chip_model EXCEPT SELECT chip_model FROM phone WHERE Accreditation_type  =  'Full'
SELECT count(DISTINCT t2.position) FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid  =  t2.clubid WHERE t1.clubname  =  "Bootup Baltimore"
SELECT Nationality FROM HOST WHERE Age  >  45 INTERSECT SELECT Nationality FROM HOST WHERE Age  <  35
SELECT region_name FROM region ORDER BY region_name
SELECT T3.Shop_Name ,  T2.Carrier FROM stock AS T1 JOIN device AS T2 ON T1.Device_ID  =  T2.Device_ID JOIN shop AS T3 ON T1.Shop_ID  =  T3.Shop_ID
SELECT T1.campus FROM campuses AS t1 JOIN faculty AS t2 ON t1.id  =  t2.campus WHERE t2.faculty  >=  600 AND t2.faculty  <=  1000 AND T1.year  =  2004
SELECT DISTINCT T1.firstname ,  T1.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom  =  T2.classroom WHERE T1.grade  =  1 EXCEPT SELECT T1.firstname ,  T1.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom  =  T2.classroom WHERE T2.firstname  =  "OTHA" AND T2.lastname  =  "MOYER"
SELECT T2.customer_name FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id HAVING count(*)  <=  2
SELECT avg(price) FROM wine WHERE Appelation NOT IN (SELECT T1.Appelation FROM APPELLATIONS AS T1 JOIN WINE AS T2 ON T1.Appelation  =  T2.Appelation WHERE T1.County  =  'Sonoma')
SELECT start_station_name ,  start_station_id FROM trip WHERE start_date LIKE "8/%" GROUP BY start_station_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT Advisor ,  count(*) FROM STUDENT GROUP BY Advisor
SELECT Category ,  COUNT(*) FROM music_festival GROUP BY Category
SELECT T1.Name FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID  =  T2.Musical_ID ORDER BY T2.Year DESC
SELECT Name FROM county_public_safety ORDER BY Population DESC
SELECT classroom ,  count(*) FROM list WHERE grade  =  "0" GROUP BY classroom
SELECT customer_name FROM customers WHERE payment_method  =  (SELECT payment_method FROM customers GROUP BY payment_method ORDER BY count(*) DESC LIMIT 1)
SELECT DISTINCT T1.Grape FROM GRAPES AS T1 JOIN WINE AS T2 ON T1.Grape  =  T2.Grape WHERE T1.Color  =  "White" AND T2.score  >  90
SELECT card_type_code ,  count(DISTINCT customer_id) FROM Customers_cards GROUP BY card_type_code
SELECT T2.address FROM staff AS T1 JOIN address AS T2 ON T1.address_id  =  T2.address_id WHERE T1.first_name  =  'Elsa'
SELECT max(Population) ,  min(Population) FROM county
SELECT t1.customer_name FROM customers AS t1 JOIN first_notification_of_loss AS t2 ON t1.customer_id  =  t2.customer_id JOIN services AS t3 ON t2.service_id  =  t3.service_id WHERE t3.service_name  =  "Close a policy" INTERSECT SELECT t1.customer_name FROM customers AS t1 JOIN first_notification_of_loss AS t2 ON t1.customer_id  =  t2.customer_id JOIN services AS t3 ON t2.service_id  =  t3.service_id WHERE t3.service_name  =  "New policy application"
SELECT product_category_code ,  typical_buying_price FROM products WHERE product_name  =  "cumin"
SELECT count(*) FROM airports WHERE name LIKE '%International%'
SELECT name FROM buildings ORDER BY Height DESC
SELECT T1.name ,  T1.hours FROM projects AS T1 JOIN assignedto AS T2 ON T1.code  =  T2.project GROUP BY T2.project ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM player
SELECT T1.statement_id ,  T2.statement_details ,  T1.account_details FROM Accounts AS T1 JOIN Statements AS T2 ON T1.statement_id  =  T2.statement_id
SELECT T1.Aircraft ,  T1.Description FROM aircraft AS T1 JOIN airport_aircraft AS T2 ON T1.Aircraft_ID  =  T2.Aircraft_ID JOIN airport AS T3 ON T2.Airport_ID  =  T3.Airport_ID WHERE T3.Total_Passengers  >  10000000
SELECT id FROM station WHERE lat  >  37.4 EXCEPT SELECT station_id FROM status GROUP BY station_id HAVING min(bikes_available)  <  7
SELECT order_id FROM shipments WHERE shipment_tracking_number = "3452"
SELECT catalog_entry_name FROM catalog_contents ORDER BY capacity ASC LIMIT 1
SELECT sum(Share_in_percent) FROM channel WHERE OWNER  =  'CCTV'
SELECT T1.Name ,  T2.Height FROM climber AS T1 JOIN mountain AS T2 ON T1.Mountain_ID  =  T2.Mountain_ID
SELECT date_of_birth FROM Customers WHERE customer_status_code  =  'Good Customer'
SELECT DISTINCT card_type_code FROM Customers_Cards
SELECT T1.name ,  T1.long ,  avg(T2.duration) FROM station AS T1 JOIN trip AS T2 ON T1.id  =  T2.start_station_id GROUP BY T2.start_station_id
SELECT country FROM competition WHERE competition_type  =  'Friendly' INTERSECT SELECT country FROM competition WHERE competition_type  =  'Tournament'
SELECT Date FROM game ORDER BY home_team DESC
SELECT Census_Ranking FROM city WHERE Status !=  "Village"
SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id WHERE loan_type  =  'Mortgages' INTERSECT SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id  =  T2.cust_id WHERE loan_type  =  'Auto'
SELECT product_name FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id  =  t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id  =  t3.characteristic_id JOIN ref_colors AS t4 ON t1.color_code  =  t4.color_code WHERE t4.color_description  =  "red" AND t3.characteristic_name  =  "fast"
SELECT date_from ,  date_to FROM Project_Staff WHERE project_id IN( SELECT project_id FROM Project_Staff GROUP BY project_id ORDER BY count(*) DESC LIMIT 1 ) UNION SELECT date_from ,  date_to FROM Project_Staff WHERE role_code  =  'leader'
SELECT count(*) ,  gender FROM artist GROUP BY gender
SELECT avg(T2.gradepoint) FROM ENROLLED_IN AS T1 JOIN GRADECONVERSION AS T2 JOIN STUDENT AS T3 ON T1.Grade  =  T2.lettergrade AND T1.StuID  =  T3.StuID WHERE T3.LName  =  "Smith"
SELECT student_id FROM student_course_attendance WHERE course_id = 301 ORDER BY date_of_attendance DESC LIMIT 1
SELECT t3.individual_last_name FROM organizations AS t1 JOIN organization_contact_individuals AS t2 ON t1.organization_id  =  t2.organization_id JOIN individuals AS t3 ON t2.individual_id  =  t3.individual_id WHERE t1.uk_vat_number  =  (SELECT max(uk_vat_number) FROM organizations) ORDER BY t2.date_contact_to ASC LIMIT 1
SELECT product_name FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id  =  t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id  =  t3.characteristic_id JOIN ref_colors AS t4 ON t1.color_code  =  t4.color_code WHERE t4.color_description  =  "red" AND t3.characteristic_name  =  "fast"
SELECT fname ,  lname FROM Student WHERE StuID NOT IN (SELECT T1.StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy  =  T2.Allergy WHERE T2.allergytype  =  "food")
SELECT count(*) FROM employees AS T1 JOIN customers AS T2 ON T2.support_rep_id = T1.id WHERE T1.first_name = "Steve" AND T1.last_name = "Johnson";
SELECT min(T2.HS) ,   T1.pPos FROM tryout AS T1 JOIN player AS T2 ON T1.pID  =  T2.pID GROUP BY T1.pPos
SELECT name ,  open_date ,  organized_by FROM Church
SELECT t2.customer_details FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id  =  t2.customer_id WHERE t1.start_date  =  (SELECT max(start_date) FROM policies)
SELECT count(*) FROM products WHERE product_id NOT IN ( SELECT product_id FROM Order_items )
SELECT count(*) FROM enzyme WHERE id NOT IN ( SELECT enzyme_id FROM medicine_enzyme_interaction );
SELECT T1.Fname ,  T1.Lname FROM FACULTY AS T1 JOIN MEMBER_OF AS T2 ON T1.FacID  =  T2.FacID WHERE T2.DNO  =  520
SELECT T1.name FROM tracks AS T1 JOIN invoice_lines AS T2 ON T1.id = T2.track_id JOIN invoices AS T3 ON T3.id = T2.invoice_id JOIN customers AS T4 ON T4.id = T3.customer_id WHERE T4.first_name = "Daan" AND T4.last_name = "Peeters";
SELECT DISTINCT T1.customer_name FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id  =  T2.customer_id JOIN order_items AS T3 ON T2.order_id  =  T3.order_id JOIN products AS T4 ON T3.product_id  =  T4.product_id WHERE T4.product_name  =  "keyboard"
SELECT name FROM circuits WHERE country = "UK" OR country = "Malaysia"
SELECT Price FROM WINE WHERE YEAR  <  2010
SELECT min(seating) ,  max(seating) ,  avg(seating) FROM track
SELECT DISTINCT blockcode FROM room WHERE unavailable  =  0
SELECT Team FROM elimination GROUP BY Team HAVING COUNT(*)  >  3
SELECT T2.student_id FROM courses AS T1 JOIN student_course_registrations AS T2 ON T1.course_id = T2.course_id WHERE T1.course_name = "statistics" ORDER BY T2.registration_date
SELECT DISTINCT Visit_Date FROM VISITS
SELECT T1.City_Town FROM Addresses AS T1 JOIN Stores AS T2 ON T1.Address_ID  =  T2.Address_ID WHERE T2.Store_Name  =  "FJA Filming"
SELECT count(DISTINCT customer_id) FROM customer_orders WHERE order_status  =  "Cancelled"
SELECT T1.name FROM user_profiles AS T1 JOIN follows AS T2 ON T1.uid  =  T2.f1 GROUP BY T2.f1 HAVING count(*)  >  (SELECT count(*) FROM user_profiles AS T1 JOIN follows AS T2 ON T1.uid  =  T2.f1 WHERE T1.name  =  'Tyler Swift')
SELECT count(*) FROM ROLES
SELECT DISTINCT product_name FROM product ORDER BY product_name
SELECT sum(Domestic_Passengers) FROM airport WHERE Airport_Name LIKE "%London%"
SELECT avg(Age) FROM artist
SELECT city ,  state FROM bank WHERE bname  =  'morningside'
SELECT sum(revenue) FROM manufacturers WHERE Headquarter  =  'Tokyo' OR Headquarter  =  'Taiwan'
SELECT DISTINCT District FROM election
SELECT date_of_birth FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn";
SELECT f_id FROM files WHERE formats  =  "mp4" INTERSECT SELECT f_id FROM song WHERE resolution  <  1000
SELECT employee_id ,  first_name ,  last_name ,  salary FROM employees WHERE salary  >  ( SELECT AVG (salary) FROM employees ) AND department_id IN ( SELECT department_id FROM employees WHERE first_name LIKE '%J%')
SELECT count(*) FROM airlines WHERE country  =  'Russia'
SELECT t3.title FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid JOIN inst AS t4 ON t2.instid  =  t4.instid WHERE t4.country  =  "Japan" AND t2.authorder  =  1 AND t1.lname  =  "Ohori"
SELECT T1.Name FROM Tourist_Attractions AS T1 JOIN VISITS AS T2 ON T1.Tourist_Attraction_ID  =  T2.Tourist_Attraction_ID JOIN VISITORS AS T3 ON T2.Tourist_ID  =  T3.Tourist_ID WHERE T3.Tourist_Details  =  "Vincent"
SELECT rank FROM captain GROUP BY rank ORDER BY count(*) DESC LIMIT 1
SELECT semester ,  YEAR FROM takes GROUP BY semester ,  YEAR ORDER BY count(*) LIMIT 1
SELECT DISTINCT Product_Name FROM PRODUCTS WHERE Product_Price  >  (SELECT avg(Product_Price) FROM PRODUCTS)
SELECT campus FROM campuses WHERE county  =  "Los Angeles" AND YEAR  >  1950
SELECT Planned_Delivery_Date ,  Actual_Delivery_Date FROM BOOKINGS
SELECT decor ,  count(*) FROM Rooms WHERE bedType = "King" GROUP BY decor;
SELECT College FROM submission WHERE Scores  >  90 INTERSECT SELECT College FROM submission WHERE Scores  <  80
SELECT sum(t1.amount_claimed) FROM claim_headers AS t1 JOIN claims_documents AS t2 ON t1.claim_header_id  =  t2.claim_id WHERE t2.created_date  =  (SELECT created_date FROM claims_documents ORDER BY created_date LIMIT 1)
SELECT Phone FROM EMPLOYEE
SELECT dept_name FROM course GROUP BY dept_name ORDER BY sum(credits) DESC LIMIT 1
SELECT Party_Theme FROM party ORDER BY Number_of_hosts ASC
SELECT avg(Price) ,  avg(Score) ,  Appelation FROM WINE GROUP BY Appelation
SELECT T2.decor FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room  =  T2.RoomId GROUP BY T2.decor ORDER BY count(T2.decor) ASC LIMIT 1;
SELECT T4.dept_name FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code  =  T2.class_code JOIN course AS T3 ON T1.crs_code  =  T3.crs_code JOIN department AS T4 ON T3.dept_code  =  T4.dept_code GROUP BY T3.dept_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM country WHERE country_id NOT IN ( SELECT country_id FROM roller_coaster WHERE LENGTH  >  3000 )
SELECT date FROM weather WHERE zip_code  =  94107 AND EVENTS != "Fog" AND EVENTS != "Rain"
SELECT T3.EMP_FNAME ,  T3.EMP_LNAME FROM professor AS T1 JOIN department AS T2 ON T1.dept_code  =  T2.dept_code JOIN employee AS T3 ON T1.EMP_NUM  =  T3.EMP_NUM WHERE DEPT_NAME  =  "Biology"
SELECT name FROM physician WHERE POSITION LIKE '%senior%'
SELECT LENGTH ,  Height FROM roller_coaster
SELECT count(*) FROM CUSTOMERS
SELECT Date_Claim_Made FROM Claims ORDER BY Date_Claim_Made ASC LIMIT 1
SELECT t1.dname FROM department AS t1 JOIN dept_locations AS t2 ON t1.dnumber  =  t2.dnumber WHERE t2.dlocation  =  'Houston'
SELECT T2.emp_fname FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num  =  T2.emp_num GROUP BY T1.prof_num HAVING count(*)  >  1
SELECT Studio FROM film EXCEPT SELECT Studio FROM film WHERE Director  =  "Walter Hill"
SELECT job_id FROM job_history WHERE end_date - start_date  > 300 GROUP BY job_id HAVING COUNT(*) >= 2
SELECT Investor FROM entrepreneur GROUP BY Investor HAVING COUNT(*)  >=  2
SELECT date_of_latest_logon FROM Students WHERE family_name  =  "Jaskolski" OR family_name  =  "Langosh"
SELECT LOCATION FROM perpetrator ORDER BY Killed DESC LIMIT 1
SELECT gname ,  gtype FROM Video_games ORDER BY gname
SELECT t1.product FROM product AS t1 JOIN store_product AS t2 ON t1.product_id  =  t2.product_id JOIN store AS t3 ON t2.store_id  =  t3.store_id WHERE t3.store_name  =  "Miramichi"
SELECT T1.customer_id ,  T2.customer_first_name ,  T2.customer_last_name FROM Customers_cards AS T1 JOIN Customers AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id HAVING count(*)  >=  2
SELECT T1.customer_name FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id  =  T2.customer_id WHERE T2.order_status_code  =  'Completed' INTERSECT SELECT T1.customer_name FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id  =  T2.customer_id WHERE T2.order_status_code  =  'Part'
SELECT email FROM user_profiles WHERE name  =  'Mary'
SELECT T1.name FROM physician AS T1 JOIN prescribes AS T2 ON T1.employeeid = T2.physician ORDER BY T2.dose DESC LIMIT 1
SELECT max(T1.HS) ,  pPos FROM player AS T1 JOIN tryout AS T2 ON T1.pID  =  T2.pID WHERE T1.HS  >  1000 GROUP BY T2.pPos
SELECT DISTINCT gtype FROM Video_games
SELECT DISTINCT firstname ,  lastname FROM teachers
SELECT count(DISTINCT s_id) FROM advisor
SELECT T3.amenity_name FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid  =  T2.dormid JOIN dorm_amenity AS T3 ON T2.amenid  =  T3.amenid WHERE T1.dorm_name  =  'Smith Hall'
SELECT T2.roomName ,  T1.Rate ,  T1.CheckIn ,  T1.CheckOut FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room  =  T2.RoomId GROUP BY T1.Room ORDER BY T1.Rate DESC LIMIT 1;
SELECT T1.Shop_Details FROM SHOPS AS T1 JOIN TOURIST_ATTRACTIONS AS T2 ON T1.Shop_ID  =  T2.Tourist_Attraction_ID WHERE T2.How_to_Get_There  =  "walk"
SELECT name_first ,  name_last FROM player AS T1 JOIN all_star AS T2 ON T1.player_id  =  T2.player_id WHERE YEAR  =  1998
SELECT T2.lastname FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate  =  T2.id WHERE stageposition  =  "back" GROUP BY lastname ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.name ,  T1.age FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name  =  T2.name WHERE T2.friend  =  'Dan' OR T2.friend  =  'Alice'
SELECT sum(duration) ,  max(duration) FROM trip WHERE bike_id  =  636
SELECT company ,  main_industry FROM company WHERE headquarters != 'USA'
SELECT DISTINCT Registration_Date ,  Election_Cycle FROM VOTING_RECORD
SELECT t1.customer_name FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id  =  t2.customer_id GROUP BY t1.customer_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name ,  T1.last_name ,  T1.customer_id FROM customer AS T1 JOIN payment AS T2 ON T1.customer_id  =  T2.customer_id GROUP BY T1.customer_id ORDER BY sum(amount) ASC LIMIT 1
SELECT T1.statement_id ,  T2.statement_details ,  T1.account_details FROM Accounts AS T1 JOIN Statements AS T2 ON T1.statement_id  =  T2.statement_id
SELECT Speed FROM roller_coaster ORDER BY LENGTH DESC LIMIT 1
SELECT T1.student_id ,  T2.last_name FROM Behavior_Incident AS T1 JOIN Students AS T2 ON T1.student_id  =  T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.detention_type_code ,  T2.detention_type_description FROM Detention AS T1 JOIN Ref_Detention_Type AS T2 ON T1.detention_type_code  =  T2.detention_type_code GROUP BY T1.detention_type_code ORDER BY count(*) ASC LIMIT 1
SELECT DISTINCT T1.name FROM physician AS T1 JOIN prescribes AS T2 ON T1.employeeid = T2.physician JOIN medication AS T3 ON T3.code = T2.medication WHERE T3.name  =  "Thesisin"
SELECT T1.student_id ,  count(*) FROM students AS T1 JOIN student_course_registrations AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT email ,  phone FROM customers WHERE first_name = "Astrid" AND last_name = "Gruber";
SELECT name FROM procedures WHERE cost  >  1000 EXCEPT SELECT T3.name FROM physician AS T1 JOIN trained_in AS T2 ON T1.employeeid  =  T2.physician JOIN procedures AS T3 ON T3.code  =  T2.treatment WHERE T1.name  =  "John Wen"
SELECT rID FROM Rating WHERE stars != 4
SELECT count(*) FROM Projects
SELECT count(DISTINCT brand) FROM camera_lens
SELECT age FROM Person WHERE job  =  'doctor' AND name  =  'Zach'
SELECT T1.Aircraft FROM aircraft AS T1 JOIN MATCH AS T2 ON T1.Aircraft_ID  =  T2.Winning_Aircraft GROUP BY T2.Winning_Aircraft HAVING COUNT(*)  >=  2
SELECT phone ,  postal_code FROM address WHERE address  =  '1031 Daugavpils Parkway'
SELECT count(*) FROM scientists
SELECT Payment_Method_Code FROM Payments GROUP BY Payment_Method_Code ORDER BY count(*) DESC LIMIT 1
SELECT Nickname FROM school_details WHERE Division != "Division 1"
SELECT count(DISTINCT program_id) FROM broadcast WHERE time_of_day  =  'Night'
SELECT count(*) FROM employee AS T1 JOIN CLASS AS T2 ON T1.EMP_NUM  =  T2.PROF_NUM WHERE T1.EMP_LNAME  =  'Graztevski'
SELECT problem_log_id ,  problem_id FROM problem_log ORDER BY log_entry_date LIMIT 1
SELECT t2.color_description FROM products AS t1 JOIN ref_colors AS t2 ON t1.color_code  =  t2.color_code WHERE t1.product_name  =  "catnip"
SELECT count(*) ,  account_id FROM Financial_transactions
SELECT name FROM artist ORDER BY year_join DESC LIMIT 1
SELECT customer_name ,  customer_phone ,  customer_email FROM Customers ORDER BY date_became_customer
SELECT T3.Name FROM repair_assignment AS T1 JOIN machine AS T2 ON T1.machine_id  =  T2.machine_id JOIN technician AS T3 ON T1.technician_ID  =  T3.technician_ID WHERE T2.value_points  >  70
SELECT T1.name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID  =  T2.Club_ID WHERE T2.Position  =  "Right Wing"
SELECT StuID FROM Student WHERE Sex  =  'M'
SELECT avg(Working_Horses) FROM farm WHERE Total_Horses  >  5000
SELECT roomName ,  basePrice FROM Rooms ORDER BY basePrice ASC LIMIT 1;
SELECT T2.name FROM train_station AS T1 JOIN train AS T2 ON T1.train_id  =  T2.train_id WHERE T1.station_id NOT IN (SELECT T4.station_id FROM train_station AS T3 JOIN station AS T4 ON T3.station_id  =  T4.station_id WHERE t4.location  =  "London")
SELECT school ,  LOCATION FROM university WHERE affiliation  =  'Public'
SELECT DISTINCT CLASS FROM race
SELECT T2.apt_number ,  T1.booking_start_date ,  T1.booking_start_date FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id  =  T2.apt_id
SELECT T2.allergytype ,  count(*) FROM Has_allergy AS T1 JOIN Allergy_type AS T2 ON T1.allergy  =  T2.allergy GROUP BY T2.allergytype
SELECT count(*) ,  affiliation FROM university WHERE enrollment  >  20000 GROUP BY affiliation
SELECT Product_Name FROM Products ORDER BY Product_Price ASC
SELECT t3.characteristic_name FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id  =  t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id  =  t3.characteristic_id GROUP BY t3.characteristic_name ORDER BY count(*) DESC LIMIT 1
SELECT t1.customer_name ,  t2.order_date FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id  =  t2.customer_id WHERE order_status  =  "Delivered"
SELECT Product_Name FROM PRODUCTS GROUP BY Product_Name HAVING avg(Product_Price)  <  1000000
SELECT count(*) FROM inventory WHERE store_id  =  1
SELECT Name FROM musical WHERE Musical_ID NOT IN (SELECT Musical_ID FROM actor)
SELECT sum(settlement_amount) ,  avg(settlement_amount) FROM settlements
SELECT avg(capacity) FROM stadium WHERE opening_year  =  2005
SELECT t3.customer_details FROM claim_headers AS t1 JOIN policies AS t2 ON t1.policy_id  =  t2.policy_id JOIN customers AS t3 ON t2.customer_id  =  t3.customer_id WHERE t1.amount_claimed  =  (SELECT max(amount_claimed) FROM claim_headers)
SELECT dept_address FROM department WHERE dept_name  =  'History'
SELECT count(DISTINCT crs_code) FROM CLASS
SELECT name FROM Companies ORDER BY Market_Value_billion DESC
SELECT director FROM Movie WHERE director != "null" GROUP BY director HAVING count(*)  =  1
SELECT T1.problem_id FROM problems AS T1 JOIN product AS T2 ON T1.product_id = T2.product_id WHERE T2.product_name = "voluptatem" AND T1.date_problem_reported > "1995"
SELECT count(DISTINCT t2.position) FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid  =  t2.clubid WHERE t1.clubname  =  "Bootup Baltimore"
SELECT t1.lname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid  =  t2.authid JOIN papers AS t3 ON t2.paperid  =  t3.paperid GROUP BY t1.fname ,  t1.lname ORDER BY count(*) DESC LIMIT 1
SELECT Official_Name FROM city WHERE Population  >  1500 OR Population  <  500
SELECT roomName FROM Rooms ORDER BY basePrice;
SELECT count(*) FROM technician
SELECT employee_ID FROM Employees WHERE employee_name  =  "Ebba"
SELECT T3.Name ,  T2.District FROM phone_market AS T1 JOIN market AS T2 ON T1.Market_ID  =  T2.Market_ID JOIN phone AS T3 ON T1.Phone_ID  =  T3.Phone_ID ORDER BY T2.Ranking
SELECT gdp FROM city ORDER BY Regional_Population DESC LIMIT 1
SELECT roomName FROM Rooms WHERE basePrice  >  ( SELECT avg(basePrice) FROM Rooms );
SELECT problem_log_id FROM problem_log ORDER BY log_entry_date DESC LIMIT 1
SELECT count(*) FROM university WHERE LOCATION LIKE "%NY%"
SELECT DISTINCT T1.first_name ,  T1.last_name FROM staff AS T1 JOIN rental AS T2 ON T1.staff_id  =  T2.staff_id JOIN customer AS T3 ON T2.customer_id  =  T3.customer_id WHERE T3.first_name  =  'APRIL' AND T3.last_name  =  'BURNS'
SELECT t1.customer_name FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id  =  t2.customer_id JOIN order_items AS t3 ON t2.order_id  =  t3.order_id JOIN products AS t4 ON t3.product_id  =  t4.product_id WHERE t4.product_details  =  'Latte' INTERSECT SELECT t1.customer_name FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id  =  t2.customer_id JOIN order_items AS t3 ON t2.order_id  =  t3.order_id JOIN products AS t4 ON t3.product_id  =  t4.product_id WHERE t4.product_details  =  'Americano'
SELECT billing_country ,  AVG(total) FROM invoices GROUP BY billing_country ORDER BY AVG(total) DESC LIMIT 10;
SELECT T2.Name FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID  =  T2.People_ID
SELECT campus FROM campuses WHERE YEAR  <  1800
SELECT RoomId ,  roomName FROM Rooms ORDER BY basePrice DESC LIMIT 1;
SELECT allergytype FROM Allergy_type GROUP BY allergytype ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM medicine WHERE FDA_approved  =  'No'
SELECT headquarters FROM company WHERE main_industry  =  'Banking' GROUP BY headquarters HAVING count(*)  >=  2
SELECT product_category_description FROM ref_product_categories WHERE product_category_code  =  "Spices"
SELECT name ,  flag FROM ship WHERE ship_id NOT IN (SELECT ship_id FROM captain WHERE rank  =  'Midshipman')
SELECT avg(Profits_billion) FROM Companies
SELECT roomName ,  bedType FROM Rooms WHERE decor = "traditional";
SELECT Investor FROM entrepreneur WHERE Money_Requested  >  140000 INTERSECT SELECT Investor FROM entrepreneur WHERE Money_Requested  <  120000
SELECT DISTINCT invoice_details FROM invoices WHERE invoice_date < "1989-09-03" OR invoice_date > "2007-12-25"
SELECT max(amount_outstanding) ,  min(amount_outstanding) ,  avg(amount_outstanding) FROM Customers;
SELECT job_id FROM employees GROUP BY job_id HAVING AVG(salary) > 8000
SELECT t1.color_code ,  t2.color_description FROM products AS t1 JOIN ref_colors AS t2 ON t1.color_code  =  t2.color_code WHERE t1.product_name  =  "chervil"
SELECT StuID FROM Student WHERE sex  =  'M' EXCEPT SELECT StuID FROM Sportsinfo WHERE sportname  =  "Football"
SELECT * FROM College ORDER BY enr
SELECT DISTINCT city FROM addresses
SELECT name FROM Employee EXCEPT SELECT T1.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid  =  T2.eid JOIN Aircraft AS T3 ON T3.aid  =  T2.aid WHERE T3.name  =  "Boeing 737-800"
SELECT T2.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom  =  T2.classroom WHERE T1.firstname  =  "GELL" AND T1.lastname  =  "TAMI"
SELECT DISTINCT Destroyed_by_Employee_ID FROM Documents_to_be_destroyed
SELECT count(*) FROM county_public_safety
SELECT sum(num_of_component) FROM furniture
SELECT title FROM Movie WHERE YEAR  >  (SELECT max(YEAR) FROM Movie WHERE director  =  "Steven Spielberg")
SELECT count(*) FROM customers WHERE state = "CA";
SELECT instrument FROM instruments GROUP BY instrument ORDER BY count(*) DESC LIMIT 1
SELECT city_code FROM STUDENT GROUP BY city_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name FROM people AS T1 JOIN perpetrator AS T2 ON T1.People_ID  =  T2.People_ID ORDER BY T1.Weight DESC LIMIT 1
SELECT T1.name_first ,  T1.name_last ,  T1.player_id FROM player AS T1 JOIN player_award AS T2 ON T1.player_id  =  T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 3;
SELECT DISTINCT T1.name FROM physician AS T1 JOIN prescribes AS T2 ON T1.employeeid = T2.physician JOIN medication AS T3 ON T3.code = T2.medication WHERE T3.name  =  "Thesisin"
SELECT date_from ,  date_to FROM Project_Staff WHERE project_id IN( SELECT project_id FROM Project_Staff GROUP BY project_id ORDER BY count(*) DESC LIMIT 1 ) UNION SELECT date_from ,  date_to FROM Project_Staff WHERE role_code  =  'leader'
SELECT t4.name FROM swimmer AS t1 JOIN record AS t2 ON t1.id  =  t2.swimmer_id JOIN event AS t3 ON t2.event_id  =  t3.id JOIN stadium AS t4 ON t4.id  =  t3.stadium_id WHERE t1.nationality  =  'Australia'
SELECT roomName FROM Rooms WHERE bedType  =  "King" OR bedType  =  "Queen";
SELECT max(Number_cities) ,  min(Number_cities) FROM market
SELECT Carrier FROM device WHERE Software_Platform != 'Android'
SELECT * FROM products AS T1 JOIN Manufacturers AS T2 ON T1.manufacturer  =  T2.code
SELECT t2.claim_status_name FROM claims_processing AS t1 JOIN claims_processing_stages AS t2 ON t1.claim_stage_id  =  t2.claim_stage_id GROUP BY t1.claim_stage_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.grant_amount FROM Grants AS T1 JOIN Documents AS T2 ON T1.grant_id  =  T2.grant_id WHERE T2.sent_date  <  '1986-08-26 20:49:27' INTERSECT SELECT grant_amount FROM grants WHERE grant_end_date  >  '1989-03-16 18:27:16'
SELECT T1.role_description ,  T2.staff_id FROM Staff_Roles AS T1 JOIN Project_Staff AS T2 ON T1.role_code  =  T2.role_code JOIN Project_outcomes AS T3 ON T2.project_id  =  T3.project_id GROUP BY T2.staff_id ORDER BY count(*) DESC LIMIT 1
SELECT AVG(Price) ,  Manufacturer FROM Products GROUP BY Manufacturer
SELECT T4.name FROM stay AS T1 JOIN patient AS T2 ON T1.Patient  =  T2.SSN JOIN Prescribes AS T3 ON T3.Patient  =  T2.SSN JOIN Medication AS T4 ON T3.Medication  =  T4.Code WHERE room  =  111
SELECT Name FROM People ORDER BY Weight ASC
SELECT order_id ,  customer_id FROM orders ORDER BY date_order_placed LIMIT 1
SELECT count(*) FROM Customers WHERE customer_id NOT IN ( SELECT customer_id FROM Customer_Payments );
SELECT count(*) FROM building
SELECT DISTINCT T1.stageposition FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate  =  T2.id WHERE Firstname  =  "Solveig"
SELECT dept_name FROM course GROUP BY dept_name ORDER BY count(*) DESC LIMIT 3
SELECT T1.DName FROM DEPARTMENT AS T1 JOIN MINOR_IN AS T2 ON T1.DNO  =  T2.DNO GROUP BY T2.DNO ORDER BY count(*) DESC LIMIT 1
