SELECT Fname FROM FACULTY WHERE Rank = "Professor" ORDER BY Fname
SELECT T2.Name , T2.Score FROM GRAPES AS T1 JOIN WINE AS T2 ON T1.Grape = T2.Grape WHERE T1.Color = "White"
SELECT met@@ er_@@ 200 , met@@ er_@@ 300 FROM swimmer WHERE nationality = 'Australi@@ a'
SELECT T1.fname FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid = T2.stuid JOIN dorm AS T3 ON T3.dormid = T2.dormid WHERE T3.dorm_name = 'Smith Hall'
SELECT DISTINCT driverid , STOP FROM pitstops WHERE duration > (SELECT min(@@ duration) FROM pitstops WHERE raceid = 841)
SELECT T1.title FROM albums AS T1 JOIN artists AS T2 ON T1.artist_id = T2.id WHERE T2.name = "A@@ er@@ o@@ s@@ mith@@ ";
SELECT T1.artist_name , T1.country FROM artist AS T1 JOIN song AS T2 ON T1.artist_name = T2.artist_name WHERE T2.resolution > 9@@ 00 GROUP BY T2.artist_name HAVING count(*) >= 1
SELECT dept_name , building FROM department WHERE budget > (SELECT avg(@@ budget) FROM department@@ )
SELECT T1.Title , T2.AlbumID , COUNT(*) FROM ALBUM AS T1 JOIN TRACK AS T2 ON T1.AlbumId = T2.AlbumId GROUP BY T2.AlbumID
SELECT Store_Name FROM Drama_Workshop_Groups
SELECT t1.fname , t1.lname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid = t2.authid JOIN papers AS t3 ON t2.paperid = t3.paperid WHERE t3.title = "N@@ am@@ ele@@ ss , P@@ ain@@ less@@ "
SELECT title FROM course WHERE course_id IN (SELECT T1.prereq_id FROM prereq AS T1 JOIN course AS T2 ON T1.course_id = T2.course_id WHERE T2.title = '@@ International Financ@@ e')
SELECT DISTINCT region_name FROM region ORDER BY La@@ bel
SELECT T1.@@ problem@@ _description FROM problems AS T1 JOIN staff AS T2 ON T1.reported_by_staff_id = T2.staff_id WHERE T2.staff_first_name = "Christop"
SELECT id FROM trip WHERE duration >= (SELECT avg(@@ duration) FROM trip WHERE zip_code = 9410@@ 3)
SELECT book_title , author@@ _@@ or_@@ editor FROM book_club WHERE YEAR > 1989
SELECT T1.bname FROM bank AS T1 JOIN loan AS T2 ON T1.branch_id = T2.branch_id GROUP BY T1.bname ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT name FROM Person WHERE gender = 'male' ORDER BY age
SELECT Title FROM book WHERE Book_ID NOT IN (SELECT Book_ID FROM public@@ ation)
SELECT T1.@@ Code , T1.Fate , T2.Name FROM mission AS T1 JOIN ship AS T2 ON T1.Ship_ID = T2.Ship_ID
SELECT billing_state , COUNT(*) FROM invoices WHERE billing_country = "USA" GROUP BY billing_state ORDER BY COUNT(*) DESC LIMIT 1;
SELECT T1.@@ invoice_date , T1.order_id , T2.order_@@ details FROM Invoices AS T1 JOIN Orders AS T2 ON T1.order_id = T2.order_id
SELECT T2.student_id FROM courses AS T1 JOIN student_course_registrations AS T2 ON T1.course_id = T2.course_id WHERE T1.course_name = "@@ statistic@@ s" ORDER BY T2.@@ registr@@ ation_date
SELECT document_type_code FROM Documents WHERE document_id = 2;
SELECT city FROM addresses WHERE city NOT IN ( SELECT DISTINCT t3.city FROM customers AS t1 JOIN customer_addresses AS t2 ON t1.customer_id = t2.customer_id JOIN addresses AS t3 ON t2.address_id = t3.@@ address_id)
SELECT preferred_foot , avg(@@ overall_@@ rating) FROM Player_Attributes GROUP BY preferred_foot
SELECT max(T2.@@ gradepoint) , min(T2.@@ gradepoint) FROM ENROLLED_IN AS T1 JOIN GRADECONVERSION AS T2 JOIN STUDENT AS T3 ON T1.Grade = T2.lettergrade AND T1.StuID = T3.StuID WHERE T3.@@ city_code = "NYC"
SELECT count(DISTINCT advis@@ or) FROM Student
SELECT T1.A@@ ct@@ ual_@@ Delivery_@@ Date FROM Customer_Orders AS T1 JOIN ORDER_ITEMS AS T2 ON T1.@@ Order_ID = T2.@@ Order_ID WHERE T2.@@ Order_@@ Qu@@ ant@@ ity = 1
SELECT Customer_Phone FROM P@@ ER@@ F@@ OR@@ MERS WHERE Customer_Name = "Ashley"
SELECT city_code FROM student GROUP BY city_code ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM people WHERE Age = 3@@ 5 OR Age = 36
SELECT T1.driverid , T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE POSITION = '1' GROUP BY T1.driverid HAVING count(*) >= 2
SELECT T1.name , T1.@@ email FROM user_profiles AS T1 JOIN follows AS T2 ON T1.uid = T2.f1 GROUP BY T2.f1 HAVING count(*) > 1
SELECT Name FROM team WHERE Team_id NOT IN (SELECT Team FROM match_@@ season@@ )
SELECT T2.title , T1.mID FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID GROUP BY T1.mID ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM browser AS T1 JOIN accelerator_compatible_browser AS T2 ON T1.id = T2.browser_id JOIN web_client_accelerator AS T3 ON T2.@@ accelerator_id = T3.id WHERE T3.name = 'C@@ Pro@@ x@@ y' AND T2.@@ compatible@@ _s@@ ince_@@ year > 1998
SELECT problem_id FROM problems WHERE date_problem_reported > "1978-06-26"
SELECT DISTINCT product_details FROM products
SELECT DISTINCT state FROM college WHERE enr < (SELECT max(@@ enr) FROM college)
SELECT service_name FROM services ORDER BY service_name
SELECT count(*) FROM club_rank WHERE Total < 10
SELECT T1.gender , T1.artist_name FROM artist AS T1 JOIN song AS T2 ON T1.artist_name = T2.artist_name ORDER BY T2.resolution LIMIT 1
SELECT max(@@ stu_gpa) , avg(stu_gpa) , min(@@ stu_gpa) , dept_code FROM student GROUP BY dept_code
SELECT employee_id FROM Employees EXCEPT SELECT Destroyed_by_Employee_ID FROM Documents_to_be_destroyed
SELECT avg(@@ Event@@ _@@ At@@ tend@@ ance) , max(@@ Event@@ _@@ At@@ tend@@ ance) FROM event
SELECT LOCATION FROM party ORDER BY Number_of_hosts DESC LIMIT 1
SELECT Name FROM journalist WHERE Nationality = "@@ Eng@@ land" OR Nationality = "W@@ al@@ es"
SELECT name , operat@@ ing_system FROM web_client_accelerator EXCEPT SELECT T1.name , T1.@@ operat@@ ing_system FROM web_client_accelerator AS T1 JOIN accelerator_compatible_browser AS T2 ON T2.@@ accelerator_id = T1.id JOIN browser AS T3 ON T2.browser_id = T3.id WHERE T3.name = '@@ Oper@@ a'
SELECT count(DISTINCT name) FROM PersonFriend WHERE friend NOT IN (SELECT name FROM person WHERE city = 'Austin')
SELECT T2.Age FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID = T2.People_ID ORDER BY T1.Total_Points DESC
SELECT d@@ name FROM department ORDER BY m@@ gr@@ _@@ start_date
SELECT T2.Party FROM election AS T1 JOIN party AS T2 ON T1.Party = T2.Party_ID GROUP BY T1.Party ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.apt_type_code , T2.apt_number FROM Apartment_Buildings AS T1 JOIN Apartments AS T2 ON T1.building_id = T2.building_id WHERE T1.building_@@ manager = "K@@ yle"
SELECT staff_id FROM Staff_Department_Assignments WHERE date_assigned_to < (SELECT max(@@ date_assigned_@@ to) FROM Staff_Department_Assignments WHERE job_@@ title_code = 'C@@ lerical Staff@@ ')
SELECT count(*) FROM Ref_calendar
SELECT name FROM accounts ORDER BY name
SELECT date_@@ be@@ cam@@ e_@@ customer FROM Customers WHERE first_name = "Carole" AND last_name = "Bernh@@ ard@@ ";
SELECT count(*) , affiliation FROM university WHERE enrollment > 200@@ 00 GROUP BY affiliation
SELECT product FROM product WHERE product != (SELECT max_page_size FROM product GROUP BY max_page_size ORDER BY count(*) DESC LIMIT 1)
SELECT max(@@ t2.@@ active_@@ to_@@ date) FROM customers AS t1 JOIN customer_contact_channels AS t2 ON t1.customer_id = t2.customer_id WHERE t1.customer_name = "Tillman Ernser@@ "
SELECT DISTINCT state FROM college WHERE enr < (SELECT max(@@ enr) FROM college)
SELECT name , CLASS , rank FROM captain
SELECT T1.Color FROM GRAPES AS T1 JOIN WINE AS T2 ON T1.Grape = T2.Grape GROUP BY T2.Grape ORDER BY AVG(Price) DESC LIMIT 1
SELECT support_rate FROM candidate ORDER BY support_rate DESC LIMIT 3
SELECT Name FROM company ORDER BY Sal@@ es_in_Billion ASC
SELECT date_@@ be@@ cam@@ e_@@ customer FROM customers WHERE customer_id BETWEEN 10 AND 20
SELECT department_name , COUNT(*) FROM employees AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id GROUP BY department_name
SELECT count(*) FROM Has_allergy AS T1 JOIN Allergy_type AS T2 ON T1.allergy = T2.@@ allergy WHERE T2.allergytype = "food"
SELECT customer_status_code FROM Customers GROUP BY customer_status_code ORDER BY count(*) ASC LIMIT 1;
SELECT t3.characteristic_name FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id = t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id = t3.characteristic_id GROUP BY t3.characteristic_name HAVING count(*) >= 2
SELECT min(@@ C@@ rime_@@ rate) , max(@@ C@@ rime_@@ rate) FROM county_public_safety
SELECT count(*) FROM Projects
SELECT DISTINCT t1.title FROM papers AS t1 JOIN authorship AS t2 ON t1.paperid = t2.paperid JOIN inst AS t3 ON t2.instid = t3.instid WHERE t3.name = "@@ Indiana University"
SELECT count(*) FROM csu_fees WHERE campusfee > (SELECT avg(campusfee) FROM csu_fe@@ es)
SELECT T2.Name FROM body_builder AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Total DESC
SELECT T1.organisation_id , T1.organisation_type , T1.@@ organisation_details FROM Organisations AS T1 JOIN Research_Staff AS T2 ON T1.organisation_id = T2.employer_organisation_id GROUP BY T1.organisation_id ORDER BY count(*) DESC LIMIT 1
SELECT apt_type_code , bathroom_count , bedroom_count FROM Apartments GROUP BY apt_type_code ORDER BY sum(@@ room_count) DESC LIMIT 1
SELECT count(*) FROM Restaurant JOIN Type_@@ O@@ f_@@ Restaurant ON Restaurant.ResID = Type_@@ O@@ f_@@ Restaurant.ResID JOIN Restaurant@@ _Type ON Type_@@ O@@ f_@@ Restaurant.Res@@ Type@@ ID = Restaurant@@ _@@ Type@@ .@@ ResType@@ ID GROUP BY Type_@@ O@@ f_@@ Restaurant.Res@@ Type@@ ID HAVING Restaurant@@ _@@ Type@@ .@@ ResType@@ Name = 'S@@ and@@ wich@@ '
SELECT avg(capacity) , min(@@ capacity) , max(capacity) FROM cinema WHERE openning_year >= 2011
SELECT document_id , count(*) FROM Draft@@ _C@@ op@@ ies GROUP BY document_id HAVING count(*) > 1;
SELECT sportname , count(*) FROM Sportsinfo GROUP BY sportname
SELECT investor_id , COUNT(*) FROM TRANSACTIONS WHERE transaction_type_code = "S@@ A@@ LE" GROUP BY investor_id
SELECT Industry , COUNT(*) FROM Companies GROUP BY Industry
SELECT Name FROM pilot ORDER BY Name ASC
SELECT count(*) FROM club
SELECT location_code FROM Ref_locations WHERE location_name = "Canada"
SELECT LOCATION FROM cinema WHERE capacity > 300 GROUP BY LOCATION HAVING count(*) >= 2
SELECT DISTINCT T1.name , T1.nationality FROM architect AS T1 JOIN mill AS t2 ON T1.id = T2.architect_id
SELECT count(*) FROM camera_lens WHERE id NOT IN ( SELECT camera_len@@ s_id FROM photos )
SELECT count(*) FROM device
SELECT Shop_Name FROM shop ORDER BY Open_Year DESC LIMIT 1
SELECT apt_number FROM Apartments ORDER BY room_count ASC
SELECT Official_Name FROM city WHERE Population > 1500 OR Population < 500
SELECT T2.name , T2.year FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T3.forename = "L@@ ew@@ is"
SELECT name FROM media_typ@@ es@@ ;
SELECT LOCATION , count(*) FROM cinema GROUP BY LOCATION
SELECT gtype FROM Video_games GROUP BY gtype ORDER BY count(*) DESC LIMIT 1
SELECT T1.@@ document_type_name , T1.@@ document_type_description , T2.@@ Document@@ _date FROM Ref_document_types AS T1 JOIN Documents AS T2 ON T1.document_type_code = T2.document_type_code
SELECT T2.@@ document_type_name FROM All_documents AS T1 JOIN Ref_document_types AS T2 ON T1.document_type_code = T2.document_type_code WHERE T1.@@ document_name = "@@ How to re@@ ad a book@@ "
SELECT count(*) FROM Student WHERE city_code = "H@@ KG@@ " OR city_code = "CHI"
SELECT T1.Date_Claim@@ _Made , T1.Claim_id FROM Claims AS T1 JOIN Settlements AS T2 ON T1.Claim_id = T2.Claim_id GROUP BY T1.Claim_id HAVING count(*) > 2 UNION SELECT T1.Date_Claim@@ _Made , T1.Claim_id FROM Claims AS T1 JOIN Settlements AS T2 ON T1.Claim_id = T2.Claim_id WHERE T1.@@ Amount_Claimed = ( SELECT max(@@ Amount_Claimed) FROM Claims )
SELECT sum(@@ Sp@@ ent) FROM Student JOIN Visits_Restaurant ON Student.@@ StuID = Visits_Restaurant.@@ StuID WHERE Student.@@ Fname = "Linda" AND Student.@@ Lname = "Smith@@ ";
SELECT * FROM airport ORDER BY International_Passengers DESC LIMIT 1
SELECT count(*) FROM train
SELECT count(*) FROM actor
SELECT T1.customer_name , T1.customer_phone , T1.customer_@@ email FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM captain ORDER BY age DESC
SELECT T3.amenity_name FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid = T2.dormid JOIN dorm_amenity AS T3 ON T2.amenid = T3.amenid WHERE T1.dorm_name = 'Smith Hall'
SELECT T2.title , avg(T1.stars) FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID GROUP BY T1.mID ORDER BY avg(T1.stars) DESC LIMIT 1
SELECT count(DISTINCT instrument) FROM instruments AS T1 JOIN Band AS T2 ON T1.bandmateid = T2.id WHERE T2.lastname = "Heilo"
SELECT T2.name FROM Certificate AS T1 JOIN Aircraft AS T2 ON T2.aid = T1.aid GROUP BY T1.aid ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Documents
SELECT Name FROM journalist ORDER BY Years_working ASC
SELECT Industry FROM Companies WHERE Headquarters = "USA" INTERSECT SELECT Industry FROM Companies WHERE Headquarters = "China"
SELECT Author FROM submission ORDER BY Scores ASC
SELECT customer_name , customer_phone FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM mailshot_@@ customer@@ s)
SELECT avg(T2.@@ Number_cities) FROM film_market_estimation AS T1 JOIN market AS T2 ON T1.Market_ID = T2.Market_ID WHERE T1.@@ Low_Estimate > 10000
SELECT DISTINCT allergytype FROM Allergy_type
SELECT count(*) FROM Reviewer
SELECT Customer_Name FROM C@@ li@@ ents EXCEPT SELECT T2.@@ Customer_Name FROM Bookings AS T1 JOIN C@@ li@@ ents AS T2 ON T1.@@ Customer@@ _ID = T2.C@@ li@@ ent@@ _ID
SELECT head FROM department GROUP BY departmentID ORDER BY count(departmentID) LIMIT 1;
SELECT order_id FROM shipments WHERE shipment_@@ date > "@@ 2000@@ -01-01"
SELECT T1.@@ Status FROM city AS T1 JOIN farm_competition AS T2 ON T1.City_ID = T2.Host_city_ID GROUP BY T2.Host_city_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT CName FROM COURSE WHERE Credits = 1
SELECT count(*) FROM products WHERE product_id NOT IN ( SELECT product_id FROM Order_items )
SELECT name FROM browser ORDER BY market_share DESC
SELECT count(*) FROM department_stores AS T1 JOIN department_@@ store_cha@@ in AS T2 ON T1.@@ dept_store_chain_id = T2.@@ dept_store_chain_id WHERE T2.@@ dept_@@ store_cha@@ in_name = "S@@ ou@@ th"
SELECT title , film_id FROM film WHERE rental_rate = 0@@ .@@ 99 INTERSECT SELECT T1.title , T1.film_id FROM film AS T1 JOIN inventory AS T2 ON T1.film_id = T2.film_id GROUP BY T1.film_id HAVING count(*) < 3
SELECT T1.customer_details , T1.customer_id FROM Customers AS T1 JOIN Customer_Policies AS T2 ON T1.Customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 2 EXCEPT SELECT T1.customer_details , T1.customer_id FROM Customers AS T1 JOIN Customer_Policies AS T2 ON T1.Customer_id = T2.customer_id JOIN Claims AS T3 ON T2.@@ policy_id = T3.@@ policy_id
SELECT t2.@@ unit_of_measure , t2.product_category_code FROM products AS t1 JOIN ref_product_categories AS t2 ON t1.@@ product_category_code = t2.product_category_code WHERE t1.product_name = "cherv@@ il"
SELECT T1.name FROM storm AS T1 JOIN affected_region AS T2 ON T1.storm_id = T2.storm_id GROUP BY T1.storm_id HAVING count(*) >= 2 INTERSECT SELECT T1.name FROM storm AS T1 JOIN affected_region AS T2 ON T1.storm_id = T2.storm_id GROUP BY T1.storm_id HAVING sum(T2.@@ number_@@ city_@@ affect@@ ed) >= 10
SELECT count(*) FROM aircraft
SELECT director FROM Movie GROUP BY director HAVING count(*) = 1
SELECT count(*) FROM addresses WHERE state_province_county = "Col@@ orad@@ o"
SELECT T2.investor_id , T1.Investor_details FROM INVESTORS AS T1 JOIN TRANSACTIONS AS T2 ON T1.investor_id = T2.investor_id WHERE T2.@@ transaction_type_code = "S@@ A@@ LE" GROUP BY T2.investor_id HAVING COUNT(*) >= 2
SELECT t1.product_name FROM products AS t1 JOIN ref_product_categories AS t2 ON t1.@@ product_category_code = t2.product_category_code JOIN ref_colors AS t3 ON t1.color_code = t3.@@ color_code WHERE t3.@@ color_description = "white" AND t2.@@ unit_of_measure != "H@@ and@@ ful@@ "
SELECT DISTINCT T1.bname FROM bank AS T1 JOIN loan AS T2 ON T1.branch_id = T2.branch_id
SELECT nickname FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn";
SELECT T2.Name FROM body_builder AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID
SELECT product_id , product_type_code FROM products ORDER BY product_price LIMIT 1
SELECT count(DISTINCT C@@ ur@@ re@@ nc@@ y_@@ Co@@ de@@ ) FROM Drama_Workshop_Groups
SELECT DISTINCT name FROM instructor ORDER BY name
SELECT count(*) FROM Customers WHERE customer_id NOT IN (SELECT customer_id FROM Accounts)
SELECT Reign FROM wrestler GROUP BY Reign ORDER BY COUNT(*) DESC LIMIT 1
SELECT apt_number FROM Apartments WHERE apt_type_code = "F@@ lat@@ "
SELECT count(DISTINCT card@@ _type_code) FROM Customers_@@ C@@ ard@@ s
SELECT city FROM airports GROUP BY city HAVING count(*) = 2
SELECT T2.name FROM playlist_tracks AS T1 JOIN playlists AS T2 ON T2.id = T1.@@ playlist_id GROUP BY T1.@@ playlist_id HAVING count(@@ T1.@@ track@@ _id) > 100@@ ;
SELECT T3.Name , COUNT(*) FROM news_report AS T1 JOIN event AS T2 ON T1.Event_ID = T2.Event_ID JOIN journalist AS T3 ON T1.journalist_ID = T3.journalist_ID GROUP BY T3.Name
SELECT T3.dept_name FROM course AS T1 JOIN CLASS AS T2 ON T1.crs_code = T2.crs_code JOIN department AS T3 ON T1.dept_code = T3.dept_code GROUP BY T1.dept_code ORDER BY sum(T1.crs_credit) DESC LIMIT 1
SELECT count(*) , flag FROM ship GROUP BY flag
SELECT account_id FROM Financial_transactions GROUP BY account_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.id FROM trip AS T1 JOIN weather AS T2 ON T1.@@ zip_code = T2.@@ zip_code GROUP BY T2.@@ zip_code HAVING avg(T2.@@ mean_@@ temperature_f) > 60
SELECT sum(@@ number_@@ de@@ ath@@ s) , sum(@@ damage_millions_USD) FROM storm WHERE max_speed > (SELECT avg(@@ max_@@ speed) FROM storm@@ )
SELECT T1.@@ Location , T2.@@ N@@ ick@@ name FROM school AS T1 JOIN school@@ _details AS T2 ON T1.School_ID = T2.School_ID
SELECT 	@@ booking_@@ status_code , COUNT(*) FROM Apartment_Bookings GROUP BY booking_@@ status_code
SELECT T2.@@ product_type_code , T2.product_name , T2.product_price FROM product_suppliers AS T1 JOIN products AS T2 ON T1.product_id = T2.product_id WHERE T1.supplier_id = 3
SELECT budget_type_code , count(*) FROM Documents_with_expenses GROUP BY budget_type_code
SELECT Order_Date FROM BOOKINGS
SELECT account_id FROM Financial_transactions GROUP BY account_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT payment_method FROM customers
SELECT date_to FROM Project_Staff ORDER BY date_to DESC LIMIT 1
SELECT T2.customer_first_name , T1.customer_id FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 2
SELECT T2.driverid , T3.forename FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T1.name = "Australian Grand Prix" INTERSECT SELECT T2.driverid , T3.forename FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T1.name = "Chinese Grand Prix"
SELECT DISTINCT forename FROM drivers ORDER BY forename ASC
SELECT name , address_@@ ro@@ ad , city FROM branch ORDER BY open_year
SELECT DISTINCT donator_name FROM endowment
SELECT Competition_type FROM competition GROUP BY Competition_type HAVING COUNT(*) <= 5
SELECT project_id , project_details FROM Projects
SELECT T2.Party , COUNT(*) FROM election AS T1 JOIN party AS T2 ON T1.Party = T2.Party_ID GROUP BY T1.Party
SELECT YEAR FROM festival_detail WHERE LOCATION = 'United States' INTERSECT SELECT YEAR FROM festival_detail WHERE LOCATION != 'United States'
SELECT DISTINCT t1.clubname FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t3.@@ advisor = 1121
SELECT Name FROM ship WHERE Nationality != "United States"
SELECT Name , Score FROM WINE
SELECT min(@@ rank@@ ) FROM review
SELECT Party FROM people ORDER BY Age ASC LIMIT 1
SELECT T3.Title FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate = T2.id JOIN Songs AS T3 ON T3.SongId = T1.SongId WHERE T2.firstname = "Marianne"
SELECT count(*) FROM student
SELECT role_description FROM ROLES WHERE role_name = "Pro@@ of Re@@ ad@@ er"
SELECT name_first , name_last FROM player WHERE de@@ ath@@ _year = '@@ ';
SELECT Fname FROM STUDENT WHERE StuID NOT IN (SELECT StuID FROM ENROLLED@@ _@@ IN@@ )
SELECT home_city FROM driver GROUP BY home_city ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT * FROM employees AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id WHERE T1.employee_id = T2.@@ manager_id
SELECT sum(amount) , T1.bname FROM bank AS T1 JOIN loan AS T2 ON T1.branch_id = T2.branch_id GROUP BY T1.bname
SELECT course_id FROM student_course_registrations WHERE student_id = 12@@ 1 UNION SELECT course_id FROM student_course_attendance WHERE student_id = 12@@ 1
SELECT Governor FROM party GROUP BY Governor ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM Statements
SELECT max(@@ g@@ rou@@ p_@@ e@@ qu@@ ity_@@ sh@@ are@@ hol@@ d@@ ing) FROM operate_company
SELECT sum(T2.room_count) FROM Apartment_Facilities AS T1 JOIN Apartments AS T2 ON T1.apt_id = T2.apt_id WHERE T1.facility_code = "G@@ ym@@ "
SELECT name FROM station WHERE city = "Palo Alto" EXCEPT SELECT end_station_name FROM trip GROUP BY end_station_name HAVING count(*) > 100
SELECT Status , avg(@@ Population) FROM city GROUP BY Status
SELECT T2.@@ Pilot_name , COUNT(*) FROM pilot_record AS T1 JOIN pilot AS T2 ON T1.@@ pilot@@ _ID = T2.@@ pilot@@ _ID GROUP BY T2.@@ Pilot_name HAVING COUNT(*) > 1
SELECT YEAR FROM degrees GROUP BY YEAR ORDER BY sum(@@ degrees) DESC LIMIT 1
SELECT fname , lname FROM student WHERE major != (SELECT major FROM student GROUP BY major ORDER BY count(*) DESC LIMIT 1)
SELECT Offici@@ al_@@ nat@@ iv@@ e_@@ language FROM country WHERE Offici@@ al_@@ nat@@ iv@@ e_@@ language LIKE "%@@ English@@ %"
SELECT organization_name FROM organizations WHERE organization_name LIKE "%@@ Part@@ y%"
SELECT staff_details FROM Research_Staff ORDER BY staff_details ASC
SELECT t3.headquartered_city FROM store AS t1 JOIN store_district AS t2 ON t1.store_id = t2.store_id JOIN district AS t3 ON t2.district_id = t3.district_id GROUP BY t3.headquartered_city ORDER BY count(*) DESC LIMIT 1
SELECT avg(@@ acc_bal) , acc_type FROM customer WHERE credit_score < 50 GROUP BY acc_type
SELECT name FROM Person WHERE age = (SELECT max(age) FROM person)
SELECT Advisor FROM STUDENT WHERE city_code = "BAL@@ "
SELECT Official_Name FROM city WHERE City@@ _ID NOT IN (SELECT Ho@@ st_city_ID FROM farm_@@ competition@@ )
SELECT count(*) FROM region
SELECT count(*) FROM department_stores AS T1 JOIN department_@@ store_cha@@ in AS T2 ON T1.@@ dept_store_chain_id = T2.@@ dept_store_chain_id WHERE T2.@@ dept_@@ store_cha@@ in_name = "S@@ ou@@ th"
SELECT T1.document_id FROM Documents AS T1 JOIN Documents_with_expenses AS T2 ON T1.document_id = T2.document_id WHERE T1.@@ document_name LIKE '%@@ s%'
SELECT count(*) FROM routes AS T1 JOIN airports AS T2 ON T1.@@ dst_apid = T2.@@ apid JOIN airlines AS T3 ON T1.alid = T3.@@ alid WHERE T2.country = 'I@@ tal@@ y' AND T3.name = 'American Airlines'
SELECT COUNT(*) FROM weather WHERE mean_humidity > 50 AND mean_@@ visibility_@@ mil@@ es > 8
SELECT name FROM student WHERE dept_name = 'History' ORDER BY tot_cred DESC LIMIT 1
SELECT T2.firstname , T2.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom = T2.classroom WHERE T1.firstname = "E@@ V@@ EL@@ IN@@ A" AND T1.lastname = "B@@ RO@@ M@@ LE@@ Y"
SELECT T1.emp_fname , T2.prof_office FROM employee AS T1 JOIN professor AS T2 ON T1.emp_num = T2.emp_num JOIN department AS T3 ON T3.dept_code = T2.dept_code WHERE T3.dept_name = 'History' AND T2.prof_@@ high_degree = 'Ph.D.'
SELECT team_name FROM basketball_match ORDER BY All_@@ H@@ ome DESC
SELECT billing_country , SUM(total) FROM invoices GROUP BY billing_country ORDER BY SUM(total) DESC LIMIT 8@@ ;
SELECT Name , Other_@@ Details FROM Staff
SELECT product_price FROM products WHERE product_id NOT IN (SELECT product_id FROM complaint@@ s)
SELECT T2.roomName FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room = T2.RoomId GROUP BY T1.Room ORDER BY count(*) DESC LIMIT 1;
SELECT * FROM Course_Authors_and_Tutors ORDER BY personal_name
SELECT count(*) FROM artist WHERE country = "Bangladesh"
SELECT t2.@@ unit_of_measure FROM products AS t1 JOIN ref_product_categories AS t2 ON t1.@@ product_category_code = t2.product_category_code WHERE t1.product_name = "cumin"
SELECT name FROM Reviewer UNION SELECT title FROM Movie
SELECT T3.@@ location_name FROM All_documents AS T1 JOIN Document_locations AS T2 ON T1.document_id = T2.document_id JOIN Ref_locations AS T3 ON T2.@@ location_code = T3.@@ location_code WHERE T1.@@ document_name = "Robin CV"
SELECT count(*) , sex FROM people WHERE weight > 85 GROUP BY sex
SELECT avg(@@ At@@ tend@@ ance) FROM performance
SELECT min(salary) , dept_name FROM instructor GROUP BY dept_name HAVING avg(salary) > (SELECT avg(salary) FROM instruct@@ or)
SELECT count(*) FROM Apartment_Bookings
SELECT classroom , count(*) FROM list WHERE grade = "@@ 0@@ " GROUP BY classroom
SELECT count(DISTINCT T1.@@ name) , T2.@@ Headquarter FROM products AS T1 JOIN manufacturers AS T2 ON T1.Manufacturer = T2.code GROUP BY T2.@@ Headquarter
SELECT avg(height) , avg(weight) FROM people WHERE sex = 'M'
SELECT first_name , last_name , salary FROM employees WHERE salary < 6000
SELECT name FROM procedures ORDER BY cost LIMIT 3
SELECT name FROM instructor ORDER BY salary DESC LIMIT 1
SELECT count(*) FROM phone
SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id = T2.cust_id GROUP BY T1.cust_name ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT Writer FROM book GROUP BY Writer HAVING COUNT(*) > 1
SELECT count(*) FROM Visit@@ ors WHERE Tourist_ID NOT IN ( SELECT Tourist_ID FROM Visits )
SELECT name FROM driver WHERE driver_id NOT IN (SELECT driver_id FROM school_@@ bu@@ s)
SELECT Headquarters FROM company GROUP BY Headquarters HAVING COUNT(*) >= 2
SELECT shipping_agent@@ _name FROM Ref_Shipping_Agent@@ s;
SELECT max(Milliseconds) , min(Milliseconds) FROM TRACK
SELECT COUNT(*) FROM (SELECT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName = T2.cName WHERE T2.pPos = 'mid' EXCEPT SELECT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName = T2.cName WHERE T2.pPos = '@@ goali@@ e')
SELECT avg(T2.@@ gradepoint) FROM ENROLLED_IN AS T1 JOIN GRADECONVERSION AS T2 JOIN STUDENT AS T3 ON T1.Grade = T2.lettergrade AND T1.StuID = T3.StuID WHERE T3.@@ LName = "Smith"
SELECT DISTINCT cName FROM college WHERE enr > (SELECT min(enr) FROM college WHERE state = 'FL')
SELECT name , city FROM branch WHERE branch_id NOT IN (SELECT branch_id FROM membership_register_branch)
SELECT count(*) , classroom FROM list GROUP BY classroom
SELECT name , price FROM products WHERE price >= 180 ORDER BY price DESC , name ASC
SELECT count(*) FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t3.fname = "T@@ rac@@ y" AND t3.lname = "Kim"
SELECT T1.title , T1.director FROM Movie AS T1 JOIN Movie AS T2 ON T1.director = T2.director WHERE T1.title != T2.title ORDER BY T1.director , T1.title
SELECT Status , avg(@@ Population) FROM city GROUP BY Status
SELECT venue , name FROM event ORDER BY Event@@ _@@ Attendance DESC LIMIT 2
SELECT building , count(*) FROM Faculty GROUP BY building
SELECT date_of_birth FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn";
SELECT name FROM accounts ORDER BY name
SELECT T3.activity_name FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID = T2.facID JOIN Activity AS T3 ON T3.@@ act@@ id = T2.actid WHERE T1.fname = "Mark" AND T1.lname = "Giuliano"
SELECT lastname FROM list WHERE classroom = 111
SELECT T1.@@ Ro@@ yal_Famil@@ y_@@ Details , T2.How_to_Get_There FROM RO@@ Y@@ AL@@ _F@@ AMI@@ L@@ Y AS T1 JOIN TOURIST_ATTRACTIONS AS T2 ON T1.@@ Ro@@ yal_Famil@@ y_ID = T2.Tourist_Attraction_ID
SELECT Advisor , count(*) FROM STUDENT GROUP BY Advisor
SELECT T2.firstname , T2.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom = T2.classroom WHERE T1.firstname = "E@@ V@@ EL@@ IN@@ A" AND T1.lastname = "B@@ RO@@ M@@ LE@@ Y"
SELECT song_name , releasedate FROM song ORDER BY releasedate DESC LIMIT 1
SELECT T1.title , T3.name FROM course AS T1 JOIN teaches AS T2 ON T1.course_id = T2.course_id JOIN instructor AS T3 ON T2.id = T3.id WHERE YEAR = 2008 ORDER BY T1.title
SELECT Company , Investor FROM entrepreneur
SELECT count(*) , flag FROM ship GROUP BY flag
SELECT t2.@@ section@@ _@@ title FROM documents AS t1 JOIN document_sections AS t2 ON t1.document_code = t2.document_code WHERE t1.document_name = "David CV"
SELECT T3.title FROM albums AS T1 JOIN tracklists AS T2 ON T1.aid = T2.albumid JOIN songs AS T3 ON T2.songid = T3.songid WHERE t1.@@ label = "Univers@@ al M@@ usic Group@@ "
SELECT distinct(@@ UnitPrice) FROM TRACK
SELECT T2.p@@ Name FROM tryout AS T1 JOIN player AS T2 ON T1.pID = T2.pID WHERE T1.cName = (SELECT cName FROM college ORDER BY enr DESC LIMIT 1)
SELECT budget_type_description FROM Ref_budget_codes WHERE budget_type_code = "@@ OR@@ G@@ "
SELECT crs_credit , crs_description FROM course WHERE crs_code = 'QM-261'
SELECT name FROM channel WHERE OWNER != 'CCTV'
SELECT DISTINCT T2.@@ pilot FROM airport AS T1 JOIN flight AS T2 ON T1.id = T2.@@ airport_id WHERE T1.country = 'United States' OR T1.name = 'B@@ ill@@ und Airport@@ '
SELECT amount FROM payment ORDER BY amount DESC LIMIT 1
SELECT personal_name , family_name FROM Students ORDER BY family_name
SELECT T1.@@ source_system_code , T2.@@ council_tax_id FROM CMI_Cross_References AS T1 JOIN B@@ en@@ e@@ f@@ it@@ s_@@ O@@ v@@ er@@ payments AS T2 ON T1.cmi_cross_ref_id = T2.cmi_cross_ref_id ORDER BY T2.@@ council_tax_id
SELECT count(*) FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id = t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id = t3.characteristic_id WHERE t3.characteristic_name = "hot"
SELECT T2.first_name , T2.last_name FROM film_actor AS T1 JOIN actor AS T2 ON T1.actor_id = T2.actor_id GROUP BY T2.actor_id HAVING count(*) > 30
SELECT T1.@@ Stat@@ e_@@ County FROM Addresses AS T1 JOIN Stores AS T2 ON T1.Address_ID = T2.Address_ID WHERE T2.M@@ arketing_Region_Code = "C@@ A"
SELECT count(*) FROM employee
SELECT T2.Store_Name FROM Bookings AS T1 JOIN Drama_Workshop_Groups AS T2 ON T1.Workshop_Group_ID = T2.Workshop_Group_ID WHERE T1.@@ Status_Code = "@@ stop"
SELECT DISTINCT main_industry FROM company
SELECT DISTINCT T1.@@ file@@ _@@ size , T1.formats FROM files AS T1 JOIN song AS T2 ON T1.f_id = T2.f_id WHERE T2.resolution < 800
SELECT count(*) FROM ARTIST WHERE artist@@ id NOT IN@@ (SELECT artist@@ id FROM ALB@@ UM@@ )
SELECT avg(transaction_amount) , sum(transaction_amount) FROM Financial_transactions
SELECT Date_Claim_Made FROM Claims WHERE Amount_Settled <= ( SELECT avg(@@ Amount_Settled) FROM Claims )
SELECT count(DISTINCT p@@ Po@@ s) FROM tryout
SELECT max(S@@ il@@ ver) , min(@@ S@@ il@@ ver) FROM club_rank
SELECT count(*) , T1.dormid FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid = T2.dormid WHERE T1.student_capacity > 100 GROUP BY T1.dormid
SELECT T1.staff_id , T1.staff_gender FROM staff AS T1 JOIN staff_department_assignments AS T2 ON T1.staff_id = T2.staff_id WHERE T2.job_title_code = "De@@ part@@ ment M@@ anag@@ er"
SELECT T2.Name FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId = T2.ArtistId GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T3.@@ Date FROM member_attendance AS T1 JOIN member AS T2 ON T1.Member_ID = T2.Member_ID JOIN performance AS T3 ON T1.Performance_ID = T3.Performance_ID WHERE T2.@@ R@@ ol@@ e = "@@ Vi@@ ol@@ in"
SELECT name , job FROM Person ORDER BY name
SELECT T2.customer_name , T3.city , T1.date_@@ from , T1.date_@@ to FROM customer_@@ address_@@ history AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id JOIN addresses AS T3 ON T1.address_id = T3.@@ address_id
SELECT Employees.@@ employee_name , count(*) FROM Employees JOIN Circulation_History ON Circulation_History.@@ employee_id = Employees.@@ employee_id GROUP BY Circulation_History.@@ document_id , Circulation_History.@@ d@@ raf@@ t@@ _number , Circulation_History.@@ cop@@ y_@@ number ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM branch ORDER BY membership_amount DESC LIMIT 3
SELECT T1.title , T1.year FROM Movie AS T1 JOIN Movie AS T2 ON T1.director = T2.director WHERE T1.title != T2.title
SELECT t3.fname , t3.lname FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t1.clubname = "Bootup Baltimore" AND t2.position = "P@@ resident@@ "
SELECT chip_model , screen_mode FROM phone WHERE Hardware_@@ Model_name = "LG-P760@@ ";
SELECT DISTINCT Major FROM Student
SELECT count(*) FROM useracct
SELECT T1.@@ outcome_description FROM Research_outcomes AS T1 JOIN Project_outcomes AS T2 ON T1.outcome_code = T2.outcome_code
SELECT count(*) , T1.project_details FROM Projects AS T1 JOIN Tasks AS T2 ON T1.project_id = T2.project_id GROUP BY T1.project_id
SELECT count(*) FROM authors
SELECT T1.title , T1.i_id FROM item AS T1 JOIN review AS T2 ON T1.i_id = T2.i_id GROUP BY T2.i_id ORDER BY avg(T2.@@ rank@@ ) DESC LIMIT 1
SELECT count(*) , dept_name FROM student GROUP BY dept_name
SELECT T2.F@@ irstName , T2.@@ LastName FROM CUSTOMER AS T1 JOIN EMPLOYEE AS T2 ON T1.SupportRepId = T2.EmployeeId WHERE T1.FirstName = "L@@ e@@ on@@ ie"
SELECT T2.order_id , T2.order_status FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T1.customer_name = "Jeramie"
SELECT T1.Fname , T1.@@ Lname FROM FACULTY AS T1 JOIN MEMBER_OF AS T2 ON T1.FacID = T2.FacID WHERE T2.DNO = 5@@ 20
SELECT name , service FROM train ORDER BY TIME
SELECT D@@ uration FROM actor ORDER BY Age DESC LIMIT 1
SELECT * FROM employees WHERE first_name LIKE '%D@@ %' OR first_name LIKE '%S@@ %' ORDER BY salary DESC
SELECT DISTINCT channel_code FROM customers AS t1 JOIN customer_contact_channels AS t2 ON t1.customer_id = t2.customer_id WHERE t1.customer_name = "Tillman Ernser@@ "
SELECT Author FROM submission WHERE S@@ ubmission_ID NOT IN (SELECT S@@ ubmission_ID FROM accept@@ ance)
SELECT T1.rank , count(*) FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID = T2.advisor GROUP BY T1.rank
SELECT customer_id FROM customers WHERE customer_name LIKE "%Diana%"
SELECT count(*) FROM trip AS T1 JOIN station AS T2 ON T1.end_station_id = T2.id WHERE T2.city != "San Francisco"
SELECT sum(T2.@@ balance) FROM accounts AS T1 JOIN savings AS T2 ON T1.custid = T2.custid WHERE T1.name != 'Brown'
SELECT Company FROM entrepreneur ORDER BY Money_Requested DESC
SELECT T2.name FROM assignedto AS T1 JOIN projects AS T2 ON T1.project = T2.code JOIN scientists AS T3 ON T1.scientist = T3.SSN WHERE T3.name LIKE '%@@ Smith@@ %'
SELECT t1.@@ catalog@@ _name , t1.@@ date_of_@@ publication FROM catalogs AS t1 JOIN catalog_structure AS t2 ON t1.@@ catalog@@ _id = t2.@@ catalog@@ _id WHERE catalog_level_number > 5
SELECT salary FROM salary WHERE YEAR = 2001 ORDER BY salary DESC LIMIT 3;
SELECT T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID WHERE T1.stars = 3 INTERSECT SELECT T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID WHERE T1.stars = 4
SELECT count(*) FROM Staff;
SELECT count(*) FROM Rooms WHERE bedType = "K@@ ing@@ ";
SELECT forename , surname FROM drivers WHERE nationality = "German@@ "
SELECT DISTINCT LOCATION FROM track
SELECT Name FROM county_public_safety WHERE County_ID NOT IN (SELECT County_ID FROM city)
SELECT product_type_code , avg(product_price) FROM products GROUP BY product_type_code
SELECT T1.city FROM city AS T1 JOIN temperature AS T2 ON T1.city_id = T2.city_id WHERE T2.Mar < T2.Jul INTERSECT SELECT T3.city FROM city AS T3 JOIN hosting_city AS T4 ON T3.city_id = T4.host_city
SELECT T1.title FROM course AS T1 JOIN SECTION AS T2 ON T1.course_id = T2.course_id WHERE building = 'C@@ hand@@ l@@ er' AND semester = 'Fall' AND YEAR = 2010
SELECT count(*) FROM savings WHERE balance > (SELECT avg(balance) FROM savings)
SELECT dorm_name FROM dorm EXCEPT SELECT T1.dorm_name FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid = T2.dormid JOIN dorm_amenity AS T3 ON T2.amenid = T3.amenid WHERE T3.amenity_name = 'TV Lounge'
SELECT T4.@@ crs_description , T4.@@ crs_credit FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code = T2.class_code JOIN student AS T3 ON T3.stu_num = T2.stu_num JOIN course AS T4 ON T4.crs_code = T1.crs_code WHERE T3.stu_lname = 'Smithson'
SELECT date_of_@@ transaction FROM TRANSACTIONS WHERE share_count >= 100 OR amount_of_transaction >= 100
SELECT T1.name , T1.city , T2.dst_apid FROM airports AS T1 JOIN routes AS T2 ON T1.apid = T2.dst_apid GROUP BY T2.dst_apid ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , dept_code FROM student GROUP BY dept_code
SELECT te@@ xt FROM tweets WHERE te@@ xt LIKE '%@@ int@@ ern@@ %'
SELECT distinct(@@ catalog_@@ publish@@ er) FROM catalogs WHERE catalog_publisher LIKE "%M@@ urr@@ ay@@ %"
SELECT T1.campus , sum(T2.@@ degrees) FROM campuses AS T1 JOIN degrees AS T2 ON T1.id = T2.campus WHERE T1.county = "Orang@@ e" AND T2.year >= 2000 GROUP BY T1.campus
SELECT DISTINCT T2.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom = T2.classroom WHERE grade = 5
SELECT order_id FROM shipments WHERE shipment_@@ date > "@@ 2000@@ -01-01"
SELECT payment_method_code , count(*) FROM customers GROUP BY payment_method_code
SELECT count(*) , formats FROM files GROUP BY formats
SELECT apt_number FROM Apartments ORDER BY room_count ASC
SELECT subject_name FROM S@@ U@@ B@@ J@@ E@@ CTS
SELECT count(*) FROM airports WHERE name LIKE '%@@ Int@@ ern@@ ational@@ %'
SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name , count(*) FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT avg(@@ HS) , max(@@ HS) , min(@@ HS) FROM Player
SELECT count(*) FROM web_client_accelerator WHERE id NOT IN ( SELECT accelerator_id FROM accelerator_compatible_browser );
SELECT T1.emp_fname FROM employee AS T1 JOIN professor AS T2 ON T1.emp_num = T2.emp_num JOIN department AS T3 ON T2.dept_code = T3.dept_code WHERE T3.dept_name = 'History' EXCEPT SELECT T4.@@ emp_fname FROM employee AS T4 JOIN CLASS AS T5 ON T4.emp_num = T5.@@ prof_@@ num
SELECT title FROM course GROUP BY title HAVING count(*) > 1
SELECT avg(@@ HS) , max(@@ HS) , min(@@ HS) FROM Player
SELECT zip_code , count(*) FROM weather WHERE max_@@ wind_@@ Sp@@ e@@ ed_mp@@ h >= 25 GROUP BY zip_code
SELECT product_category_code FROM products WHERE product_name = "flax"
SELECT T3.name FROM physician AS T1 JOIN trained_in AS T2 ON T1.employeeid = T2.physician JOIN procedures AS T3 ON T3.code = T2.treatment WHERE T1.name = "John Wen"
SELECT t1.attribu@@ te_name , t1.attribu@@ te_id FROM Attribute_Definitions AS t1 JOIN Catalog_Contents_Additional_Attributes AS t2 ON t1.attribu@@ te_id = t2.@@ attribu@@ te_id WHERE t2.attribute_value = 0
SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM Customers_cards AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 2
SELECT T2.city FROM Customers AS T1 JOIN Addresses AS T2 ON T1.customer_address_id = T2.address_id GROUP BY T2.city ORDER BY count(*) DESC LIMIT 1;
SELECT DISTINCT t1.product_name FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id = t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id = t3.characteristic_id WHERE t3.characteristic_name = "@@ war@@ m"
SELECT T2.theme FROM exhibition_record AS T1 JOIN exhibition AS T2 ON T1.exhibition_id = T2.exhibition_id WHERE T1.attendance < 100 INTERSECT SELECT T2.theme FROM exhibition_record AS T1 JOIN exhibition AS T2 ON T1.exhibition_id = T2.exhibition_id WHERE T1.attendance > 500
SELECT count(DISTINCT t3.characteristic@@ _@@ name) FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id = t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id = t3.characteristic_id WHERE t1.product_name = "sesame"
SELECT policy_type_code , count(*) FROM policies GROUP BY policy_type_code
SELECT count(*) FROM Lessons AS T1 JOIN Staff AS T2 ON T1.staff_id = T2.staff_id WHERE T2.first_name LIKE "%a%"
SELECT Product_Type_Code FROM Products GROUP BY Product_Type_Code HAVING COUNT(*) >= 2
SELECT major FROM Student GROUP BY major ORDER BY count(*) DESC LIMIT 1
SELECT Date FROM performance ORDER BY Attendance DESC LIMIT 1
SELECT T1.date_order_placed FROM orders AS T1 JOIN shipments AS T2 ON T1.order_id = T2.order_id WHERE T2.invoice_number = 10
SELECT Crime_rate FROM county_public_safety ORDER BY Police_officers ASC
SELECT DISTINCT T1.Grape FROM GRAPES AS T1 JOIN WINE AS T2 ON T1.Grape = T2.Grape WHERE T1.Color = "White" AND T2.@@ score > 90
SELECT customer_id , sum(@@ amount_p@@ a@@ id) FROM Payments GROUP BY customer_id ORDER BY sum(@@ amount_p@@ a@@ id) DESC LIMIT 1
SELECT * FROM basketball_match
SELECT salary FROM salary WHERE YEAR = 2010 UNION SELECT salary FROM salary WHERE YEAR = 2001
SELECT County_name FROM county ORDER BY Population ASC
SELECT StuID FROM Student WHERE sex = 'F' INTERSECT SELECT StuID FROM Sportsinfo WHERE sportname = "Football"
SELECT sum(@@ stu_@@ h@@ r@@ s) , dept_code FROM student GROUP BY dept_code
SELECT avg(rating) , avg(resolution) FROM song WHERE languages = "bangla"
SELECT DISTINCT building FROM classroom WHERE capacity > 50
SELECT T1.@@ lat , T1.@@ long , T1.city FROM station AS T1 JOIN trip AS T2 ON T1.id = T2.start_station_id ORDER BY T2.duration LIMIT 1
SELECT code , name , min(@@ price) FROM products GROUP BY name
SELECT DISTINCT * FROM employees AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id WHERE T1.employee_id = T2.@@ manager_id
SELECT count(*) FROM building WHERE height_feet > (SELECT avg(@@ height@@ _fe@@ et@@ ) FROM build@@ ing) OR floors > (SELECT avg(@@ floors) FROM build@@ ing)
SELECT advisor FROM Student GROUP BY advisor HAVING count(*) >= 2
SELECT sum(@@ lesson_time) FROM Lessons AS T1 JOIN Staff AS T2 ON T1.staff_id = T2.staff_id WHERE T2.first_name = "Janessa" AND T2.last_name = "Sawayn";
SELECT count(*) FROM race
SELECT T1.@@ asset@@ _id , T1.@@ asset_@@ details FROM Assets AS T1 JOIN Ass@@ et_@@ Parts AS T2 ON T1.@@ asset@@ _id = T2.@@ asset@@ _id GROUP BY T1.@@ asset@@ _id HAVING count(*) = 2 INTERSECT SELECT T1.@@ asset@@ _id , T1.@@ asset_@@ details FROM Assets AS T1 JOIN Fault_Log AS T2 ON T1.@@ asset@@ _id = T2.@@ asset@@ _id GROUP BY T1.@@ asset@@ _id HAVING count(*) < 2
SELECT Famous_Release_@@ date FROM artist ORDER BY Age DESC LIMIT 1
SELECT rank , sex , count(*) FROM Faculty GROUP BY rank , sex
SELECT title FROM vocals AS T1 JOIN songs AS T2 ON T1.songid = T2.songid GROUP BY T1.songid ORDER BY count(*) DESC LIMIT 1
SELECT t2.@@ team_name , t2.@@ AC@@ C@@ _@@ Regular@@ _@@ Se@@ ason FROM university AS t1 JOIN basketball_match AS t2 ON t1.school_id = t2.school_id ORDER BY t1.@@ founded LIMIT 1
SELECT title FROM vocals AS T1 JOIN songs AS T2 ON T1.songid = T2.songid GROUP BY T1.songid ORDER BY count(*) DESC LIMIT 1
SELECT T1.@@ role_description , T2.role_code , count(*) FROM ROLES AS T1 JOIN Employees AS T2 ON T1.role_code = T2.role_code GROUP BY T2.@@ role@@ _@@ code;
SELECT name FROM program ORDER BY launch DESC LIMIT 1
SELECT Fname , Lname FROM Student
SELECT rank FROM captain WHERE CLASS = 'Cut@@ t@@ er' INTERSECT SELECT rank FROM captain WHERE CLASS = 'Ar@@ med scho@@ on@@ er'
SELECT T1.title FROM course AS T1 JOIN SECTION AS T2 ON T1.course_id = T2.course_id WHERE building = 'C@@ hand@@ l@@ er' AND semester = 'Fall' AND YEAR = 2010
SELECT t1.name FROM ship AS t1 JOIN captain AS t2 ON t1.ship_id = t2.ship_id ORDER BY t2.@@ age LIMIT 1
SELECT Theme FROM farm_competition ORDER BY YEAR ASC
SELECT sum(@@ credit@@ s) , dept_name FROM course GROUP BY dept_name
SELECT fname , lname FROM Student WHERE StuID NOT IN (SELECT T1.StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy = T2.Allergy WHERE T2.allergytype = "food@@ ")
SELECT COUNT(*) FROM invoices WHERE billing_@@ city = "C@@ hicag@@ o" AND billing_state = "@@ IL@@ ";
SELECT T1.Name FROM country AS T1 JOIN roller_coaster AS T2 ON T1.Country_ID = T2.Country_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT count(*) , T3.@@ school_code FROM CLASS AS T1 JOIN course AS T2 ON T1.crs_code = T2.crs_code JOIN department AS T3 ON T2.dept_code = T3.dept_code GROUP BY T3.@@ school_code
SELECT DISTINCT t1.clubname FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t3.city_code = "BAL@@ "
SELECT DISTINCT T2.product_id FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id WHERE T1.date_order_placed >= "197@@ 5@@ -01-01" AND T1.date_order_placed <= "197@@ 6@@ -01-01"
SELECT avg(total_amount_purchased) , avg(@@ total_@@ val@@ ue_@@ purcha@@ sed) FROM Product_Suppliers WHERE supplier_id = (SELECT supplier_id FROM Product_Suppliers GROUP BY supplier_id ORDER BY count(*) DESC LIMIT 1)
SELECT T2.title FROM artists AS T1 JOIN albums AS T2 ON T1.id = T2.artist_id WHERE T1.name LIKE '%@@ L@@ ed@@ %'
SELECT T2.name FROM assignedto AS T1 JOIN scientists AS T2 ON T1.scientist = T2.ssn
SELECT count(*) , T1.name FROM scientists AS T1 JOIN assignedto AS T2 ON T1.ssn = T2.@@ scientist GROUP BY T1.name
SELECT name , TIME , service FROM train
SELECT student_id FROM student_course_registrations UNION SELECT student_id FROM student_course_attendance
SELECT T1.fname , T1.age FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid = T2.stuid WHERE T2.dormid NOT IN (SELECT T3.dormid FROM has_amenity AS T3 JOIN dorm_amenity AS T4 ON T3.amenid = T4.amenid WHERE T4.amenity_name = 'TV Lounge')
SELECT headquarters , count(*) FROM company GROUP BY headquarters
SELECT T2.@@ Store_@@ Email_Address FROM Addresses AS T1 JOIN Drama_Workshop_Groups AS T2 ON T1.Address_ID = T2.Address_ID WHERE T1.@@ Stat@@ e_@@ County = "A@@ la@@ sk@@ a"
SELECT T1.title FROM albums AS T1 JOIN tracks AS T2 ON T1.id = T2.@@ album@@ _id GROUP BY T1.id HAVING count(@@ T1.@@ id) > 10;
SELECT count(DISTINCT acc@@ _type) FROM customer
SELECT avg(T1.@@ Age) FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID = SE@@ CR@@ ET@@ AR@@ Y@@ _Vote WHERE T1.S@@ e@@ x = "F" AND T2.Election_Cycle = "Spring"
SELECT T1.customer_name FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id WHERE T1.@@ payment_method_code = 'C@@ re@@ dit C@@ ard@@ ' GROUP BY T1.customer_id HAVING count(*) > 2
SELECT T3.name , T2.title , T1.date , T1.@@ price FROM schedule AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id JOIN cinema AS T3 ON T1.@@ cinema_id = T3.@@ cinema_id
SELECT count(*) FROM performance AS T1 JOIN band AS T2 ON T1.bandmate = T2.id JOIN songs AS T3 ON T3.songid = T1.songid WHERE T3.Title = "F@@ la@@ sh"
SELECT vehicle@@ _@@ flight@@ _number , date , pilot FROM flight ORDER BY altitude ASC
SELECT T1.Product_Name FROM Products AS T1 JOIN Product@@ s_in_Events AS T2 ON T1.Product_ID = T2.Product_ID GROUP BY T1.Product_Name HAVING COUNT(*) >= 2
SELECT count(DISTINCT school@@ _id) FROM basketball_match
SELECT name FROM physician WHERE POSITION LIKE '%@@ s@@ en@@ i@@ or@@ %'
SELECT order_id , customer_id FROM customer_orders WHERE order_status_code = "Cancelled" ORDER BY order_date
SELECT name FROM instructor WHERE salary > (SELECT min(salary) FROM instructor WHERE dept_name = 'Biology')
SELECT t2.@@ All_@@ G@@ ames , t1.@@ location FROM university AS t1 JOIN basketball_match AS t2 ON t1.school_id = t2.school_id WHERE team_name = 'C@@ le@@ m@@ son'
SELECT T2.budget_type_code , T2.@@ budget_type_description , T1.document_id FROM Documents_with_expenses AS T1 JOIN Ref_budget_codes AS T2 ON T1.@@ budget_type_code = T2.budget_type_code
SELECT min(@@ seat@@ ing) , max(@@ seat@@ ing) , avg(@@ seat@@ ing) FROM track
SELECT max(@@ amount_@@ out@@ st@@ and@@ ing) , min(@@ amount_@@ out@@ st@@ and@@ ing) , avg(@@ amount_@@ out@@ st@@ and@@ ing) FROM Customers;
SELECT count(*) FROM member WHERE address != 'Hartford'
SELECT count(DISTINCT participant@@ _id) FROM participant@@ s_in_Events
SELECT T2.balance , T3.balance , T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid = T2.custid JOIN savings AS T3 ON T1.custid = T3.custid ORDER BY T2.balance + T3.balance DESC
SELECT name , LOCATION , number_of_@@ platforms FROM station
SELECT Team FROM player ORDER BY Age DESC LIMIT 1
SELECT destination , count(*) FROM Flight GROUP BY destination
SELECT company , headquarters FROM company ORDER BY market_value DESC
SELECT name , furnit@@ ure@@ _id FROM furniture ORDER BY market_@@ rate DESC LIMIT 1
SELECT T2.Name , T3.Theme FROM journal_committee AS T1 JOIN editor AS T2 ON T1.Editor_ID = T2.Editor_ID JOIN journal AS T3 ON T1.Journal_ID = T3.Journal_ID
SELECT count(DISTINCT dept_name) , school_code FROM department GROUP BY school_code HAVING count(DISTINCT dept_name) < 5
SELECT count(DISTINCT rating) FROM film
SELECT Address@@ es@@ .@@ address_details FROM Addresses JOIN Documents_@@ M@@ ai@@ led ON Documents_@@ M@@ ai@@ le@@ d@@ .@@ ma@@ i@@ le@@ d_@@ to_@@ address_id = Address@@ es@@ .@@ address_id WHERE document_id = 4;
SELECT T2.Name FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID
SELECT role_code FROM RO@@ LE@@ S@@ ;
SELECT count(DISTINCT LOCA@@ TION) FROM perpetrator
SELECT DISTINCT Location_Name FROM LOCATIONS
SELECT T1.stu_fname , T1.stu_lname , T4.@@ crs_description FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num = T2.stu_num JOIN CLASS AS T3 ON T2.class_code = T3.class_code JOIN course AS T4 ON T3.crs_code = T4.crs_code
SELECT TYPE FROM ship WHERE flag = 'Pa@@ nam@@ a' INTERSECT SELECT TYPE FROM ship WHERE flag = 'M@@ al@@ ta'
SELECT T1.@@ organisation_type_description FROM organisation_Types AS T1 JOIN Organisations AS T2 ON T1.organisation_type = T2.organisation_type WHERE T2.organisation_details = '@@ qu@@ o'
SELECT count(*) FROM school
SELECT DISTINCT T1.M@@ a@@ jor FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID = T2.Treasurer_Vote
SELECT Name FROM mountain WHERE Height > 5000 OR Pro@@ min@@ ence > 1000
SELECT count(*) , account_id FROM Financial_transactions
SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id = T2.cust_id GROUP BY T1.cust_name HAVING count(*) > 1
SELECT classroom FROM list GROUP BY classroom ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT langu@@ age_@@ id) FROM film
SELECT avg(age) , max(age) , sex FROM student GROUP BY sex
SELECT flno FROM Flight ORDER BY distance ASC LIMIT 3
SELECT name FROM player WHERE points > (SELECT avg(@@ point@@ s) FROM play@@ er)
SELECT lname FROM faculty WHERE rank = 'Pro@@ fess@@ or' EXCEPT SELECT DISTINCT T1.lname FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID = T2.facID JOIN activity AS T3 ON T2.actid = T2.actid WHERE T3.activity_name = 'Canoeing' OR T3.activity_name = 'Kayaking'
SELECT DISTINCT salary FROM instructor WHERE salary < (SELECT max(salary) FROM instruct@@ or)
SELECT product FROM product WHERE max_page_size = "A4" AND pages_per_minute_color < 5
SELECT count(*) FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID = Class_Senator_Vote WHERE T1.city_code = "NYC" AND T2.Election_Cycle = "Spring"
SELECT count(DISTINCT G@@ overn@@ or) FROM party
SELECT T2.product_name FROM view@@ _@@ product_@@ availability AS T1 JOIN products_for_hire AS T2 ON T1.product_id = T2.product_id WHERE T1.@@ available_yn = 1
SELECT Winery FROM WINE ORDER BY S@@ COR@@ E LIMIT 1
SELECT sum(revenue) FROM manufacturers WHERE revenue > (SELECT min(revenue) FROM manufacturers WHERE headquarter = 'Austin')
SELECT circuitid , LOCATION FROM circuits WHERE country = "F@@ ranc@@ e" OR country = "B@@ el@@ g@@ i@@ um@@ "
SELECT count(DISTINCT t1.title) FROM papers AS t1 JOIN authorship AS t2 ON t1.paperid = t2.paperid JOIN inst AS t3 ON t2.instid = t3.instid WHERE t3.name = "@@ University of P@@ ennsylvani@@ a"
SELECT T2.Name FROM election AS T1 JOIN representative AS T2 ON T1.Representative_ID = T2.Representative_ID WHERE Votes > 10000
SELECT channel_code FROM customer_contact_channels GROUP BY channel_code HAVING count(@@ customer_id) < 5
SELECT min(@@ distance) , avg(distance) , max(@@ distance) FROM Aircraft
SELECT Draft@@ _P@@ ick@@ _Number , Draf@@ t_@@ Cla@@ ss FROM match_season WHERE POSITION = "Defender"
SELECT StuID FROM Student WHERE major = 600 INTERSECT SELECT StuID FROM Sportsinfo WHERE onscholarship = 'Y'
SELECT name FROM patient EXCEPT SELECT T1.name FROM patient AS T1 JOIN Prescribes AS T2 ON T2.P@@ atient = T1.SSN JOIN Medication AS T3 ON T2.M@@ edication = T3.Code WHERE T3.name = 'Procrastin-X'
SELECT T1.@@ Other_@@ Ite@@ m@@ _Details FROM ORDER_ITEMS AS T1 JOIN Products AS T2 ON T1.Product_ID = T2.Product_ID WHERE T2.@@ Product_price > 2000
SELECT gender_code , COUNT(*) FROM Guests GROUP BY gender_code ORDER BY COUNT(*) DESC
SELECT Nominee , COUNT(*) FROM musical GROUP BY Nominee
SELECT clubdesc FROM club WHERE clubname = "Pen and Paper Gaming"
SELECT T2.@@ cell_mobile_number FROM Student_Addresses AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id ORDER BY T1.@@ monthly_@@ rental ASC LIMIT 1
SELECT t1.name , t1.age FROM pilot AS t1 JOIN MATCH AS t2 ON t1.pilot_id = t2.winning_pilot ORDER BY t1.age LIMIT 1
SELECT employee_id , first_name , last_name , salary FROM employees WHERE salary > ( SELECT AVG (salary) FROM employees ) AND department_id IN ( SELECT department_id FROM employees WHERE first_name LIKE '%@@ J@@ %@@ ')
SELECT fname , age FROM Student WHERE StuID IN (SELECT StuID FROM Sportsinfo WHERE Sport@@ Name = "Football" INTERSECT SELECT StuID FROM Sportsinfo WHERE Sport@@ Name = "Lacross@@ e")
SELECT T1.title , T1.@@ credits , T1.dept_name FROM course AS T1 JOIN prereq AS T2 ON T1.course_id = T2.course_id GROUP BY T2.course_id HAVING count(*) > 1
SELECT count(DISTINCT T1.@@ Offici@@ al_@@ nat@@ iv@@ e_@@ langu@@ age) FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id = T2.Country WHERE T2.Position = "Defender"
SELECT campus FROM degrees GROUP BY campus ORDER BY sum(@@ degrees) DESC LIMIT 1
SELECT count(*) FROM Allergy_type WHERE allergytype = "@@ anim@@ al"
SELECT T2.name FROM membership_register_branch AS T1 JOIN branch AS T2 ON T1.branch_id = T2.branch_id JOIN member AS T3 ON T1.member_id = T3.member_id WHERE T3.@@ Hometown = 'L@@ ouis@@ vil@@ le , Kentuck@@ y' INTERSECT SELECT T2.name FROM membership_register_branch AS T1 JOIN branch AS T2 ON T1.branch_id = T2.branch_id JOIN member AS T3 ON T1.member_id = T3.member_id WHERE T3.@@ Hometown = 'H@@ ir@@ am , Georgi@@ a'
SELECT avg(@@ Enrollment) FROM school
SELECT DISTINCT T1.bname FROM bank AS T1 JOIN loan AS T2 ON T1.branch_id = T2.branch_id
SELECT course_id FROM student_course_registrations WHERE student_id = 12@@ 1 UNION SELECT course_id FROM student_course_attendance WHERE student_id = 12@@ 1
SELECT name , dept_name FROM student ORDER BY tot_cred
SELECT T3.@@ stu_fname FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code = T2.class_code JOIN student AS T3 ON T2.stu_num = T3.stu_num WHERE T1.crs_code = 'ACCT-211' AND T2.enroll_grade = 'C'
SELECT count(*) FROM purchase AS T1 JOIN member AS T2 ON T1.member_id = T2.member_id WHERE T2.@@ level = 6
SELECT Name FROM city ORDER BY Name ASC
SELECT t1.@@ E@@ ffe@@ ctiv@@ e_@@ Date FROM claims AS t1 JOIN settlements AS t2 ON t1.@@ claim_id = t2.@@ claim_id GROUP BY t1.@@ claim_id ORDER BY sum(t2.@@ settlement_amount) DESC LIMIT 1
SELECT T2.roomName FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room = T2.RoomId WHERE firstname LIKE '%@@ RO@@ Y@@ %'
SELECT T1.title , T2.inventory_id FROM film AS T1 JOIN inventory AS T2 ON T1.film_id = T2.film_id JOIN rental AS T3 ON T2.inventory_id = T3.@@ inventory_id GROUP BY T2.inventory_id ORDER BY count(*) DESC LIMIT 1
SELECT name , LOCATION , year_opened FROM track WHERE seating > (SELECT avg(@@ seat@@ ing) FROM track@@ )
SELECT count(DISTINCT POSITION) FROM player
SELECT LastName FROM CUSTOMER EXCEPT SELECT T1.LastName FROM CUSTOMER AS T1 JOIN Invoic@@ e AS T2 ON T1.CustomerId = T2.CustomerId WHERE T2.@@ total > 20
SELECT max(@@ monthly_rental) , min(@@ monthly_rental) FROM Student_Addresses
SELECT T2.D@@ elegate FROM county AS T1 JOIN election AS T2 ON T1.County_id = T2.District WHERE T1.Population < 100000
SELECT T1.emp_fname FROM employee AS T1 JOIN professor AS T2 ON T1.emp_num = T2.emp_num JOIN department AS T3 ON T2.dept_code = T3.dept_code WHERE T3.dept_name = 'History' EXCEPT SELECT T4.@@ emp_fname FROM employee AS T4 JOIN CLASS AS T5 ON T4.emp_num = T5.@@ prof_@@ num
SELECT count(DISTINCT dorm@@ id) FROM has_amenity
SELECT max(@@ elevation) FROM airports WHERE country = 'Iceland@@ '
SELECT billing_state , COUNT(*) FROM invoices WHERE billing_country = "USA" GROUP BY billing_@@ state@@ ;
SELECT T2.address , T1.@@ email FROM customer AS T1 JOIN address AS T2 ON T2.address_id = T1.address_id WHERE T1.first_name = 'L@@ IN@@ D@@ A'
SELECT name , LOCATION FROM enzyme
SELECT state FROM bank GROUP BY state ORDER BY sum(no_of_customers) DESC LIMIT 1
SELECT origin , destination FROM Flight WHERE price > 300
SELECT T1.@@ invoice_date , T1.order_id , T2.order_@@ details FROM Invoices AS T1 JOIN Orders AS T2 ON T1.order_id = T2.order_id
SELECT Res@@ Name , Rating FROM Restaurant ORDER BY Rating DESC LIMIT 1;
SELECT Weight FROM people ORDER BY Height ASC LIMIT 1
SELECT Nationality FROM ship GROUP BY Nationality HAVING COUNT(*) > 2
SELECT avg(@@ pages_per_minute_@@ color@@ ) FROM product
SELECT sum(T2.amount) FROM bank AS T1 JOIN loan AS T2 ON T1.branch_id = T2.branch_id WHERE T1.state = 'New York'
SELECT POSITION , avg(Points) FROM player GROUP BY POSITION
SELECT apt_number FROM Apartments ORDER BY bedroom_count DESC LIMIT 1
SELECT name FROM races ORDER BY date DESC LIMIT 1
SELECT Name FROM GENRE
SELECT T1.city FROM city AS T1 JOIN temperature AS T2 ON T1.city_id = T2.city_id WHERE T2.F@@ e@@ b > T2.J@@ u@@ n UNION SELECT T3.city FROM city AS T3 JOIN hosting_city AS T4 ON T3.city_id = T4.host_city
SELECT DISTINCT characteristic_name FROM CHARACTERISTICS
SELECT count(*) FROM Customers_cards AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.customer_first_name = "A@@ r@@ t" AND T2.customer_last_name = "Turcotte"
SELECT rank FROM captain EXCEPT SELECT rank FROM captain WHERE CLASS = '@@ Th@@ ir@@ d@@ -@@ rate ship of the lin@@ e'
SELECT max(@@ Account@@ _@@ detail@@ s) FROM Accounts UNION SELECT Account@@ _details FROM Accounts WHERE Account@@ _details LIKE "%@@ 5@@ %"
SELECT t3.headquartered_city FROM store AS t1 JOIN store_district AS t2 ON t1.store_id = t2.store_id JOIN district AS t3 ON t2.district_id = t3.district_id WHERE t1.store_name = "B@@ lack@@ ville"
SELECT payment_date FROM payment WHERE amount > 10 UNION SELECT T1.@@ payment_date FROM payment AS T1 JOIN staff AS T2 ON T1.staff_id = T2.staff_id WHERE T2.first_name = 'E@@ ls@@ a'
SELECT emp_fname , emp_@@ lname FROM employee ORDER BY emp_@@ do@@ b LIMIT 1
SELECT DISTINCT T1.id , T1.name FROM station AS T1 JOIN status AS T2 ON T1.id = T2.station_id WHERE T2.bikes_available > 12
SELECT Name FROM WINE ORDER BY Score LIMIT 1
SELECT name , price FROM Products ORDER BY price ASC LIMIT 1
SELECT DISTINCT T2.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.friend WHERE T1.age < (SELECT avg(age) FROM person)
SELECT T1.title , T1.film_id FROM film AS T1 JOIN inventory AS T2 ON T1.film_id = T2.film_id GROUP BY T1.film_id ORDER BY count(*) DESC LIMIT 1
SELECT dept_name , budget FROM department WHERE budget > (SELECT avg(@@ budget) FROM department@@ )
SELECT C@@ ha@@ ir@@ _Name FROM festival_detail ORDER BY YEAR ASC
SELECT T2.@@ type , count(*) FROM school_bus AS T1 JOIN school AS T2 ON T1.school_id = T2.school_id GROUP BY T2.@@ type
SELECT asset@@ _id , asset_@@ details , asset_@@ make , asset_model FROM Assets
SELECT T1.fname FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid = T2.stuid WHERE T2.dormid IN (SELECT T2.dormid FROM dorm AS T3 JOIN has_amenity AS T4 ON T3.dormid = T4.dormid JOIN dorm_amenity AS T5 ON T4.amenid = T5.@@ amenid GROUP BY T3.dormid ORDER BY count(*) DESC LIMIT 1)
SELECT location_code FROM Document_locations GROUP BY location_code HAVING count(*) >= 3
SELECT publisher FROM book_club WHERE YEAR = 1989 INTERSECT SELECT publisher FROM book_club WHERE YEAR = 1990
SELECT cust_name FROM customer EXCEPT SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id = T2.cust_id WHERE T2.loan_type = 'M@@ ortg@@ ag@@ es'
SELECT DISTINCT department_id FROM employees GROUP BY department_id , manager_id HAVING COUNT(employee_id) >= 4
SELECT invoice_number , count(*) FROM Financial_transactions GROUP BY invoice_number
SELECT T1.city FROM city AS T1 JOIN hosting_city AS T2 ON T1.city_id = T2.host_city WHERE T2.year > 2010
SELECT T2.name , count(*) FROM membership_register_branch AS T1 JOIN branch AS T2 ON T1.branch_id = T2.branch_id WHERE T1.register_year > 201@@ 5 GROUP BY T2.branch_id
SELECT DISTINCT customer_id FROM Customer_Orders WHERE order_date > (SELECT min(@@ order_@@ date) FROM Customer_Orders WHERE order_status_code = "Cancelle@@ d@@ ")
SELECT T2.Player FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id = T2.Country WHERE T1.Country_name = "@@ In@@ don@@ esi@@ a"
SELECT login_name FROM Students WHERE family_name = "W@@ ard"
SELECT T2.Fname , T2.Lname FROM Sportsinfo AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID ORDER BY count(*) DESC LIMIT 1
SELECT country FROM customers WHERE first_name = "Ro@@ ber@@ to" AND last_name = "@@ Al@@ me@@ id@@ a";
SELECT StuID FROM Sportsinfo INTERSECT SELECT StuID FROM Plays_games
SELECT product_name FROM products WHERE product_category_code = "Spices"
SELECT emp_fname FROM employee WHERE emp_jobcode = 'P@@ RO@@ F' ORDER BY emp_@@ do@@ b
SELECT T2.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom = T2.classroom WHERE T1.firstname = "G@@ EL@@ L@@ " AND T1.lastname = "T@@ AMI@@ "
SELECT T1.Product_Name , COUNT(*) FROM Products AS T1 JOIN Product@@ s_in_Events AS T2 ON T1.Product_ID = T2.Product_ID GROUP BY T1.Product_Name
SELECT bname FROM bank WHERE state = 'New York'
SELECT StuID , count(*) , sum(gamesplayed) FROM Sportsinfo GROUP BY StuID
SELECT name , open_year FROM manufacturer WHERE num_of_@@ shops > 10 OR Num_of_@@ F@@ act@@ ories < 10
SELECT T2.customer_name FROM mailshot_customers AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id WHERE outcome_code = '@@ Ord@@ er' GROUP BY T1.customer_id HAVING count(*) >= 2
SELECT T1.duration , T1.@@ file@@ _@@ size , T1.formats FROM files AS T1 JOIN song AS T2 ON T1.f_id = T2.f_id WHERE T2.genre_is = "@@ p@@ op" ORDER BY T2.song_name
SELECT T2.course_name FROM Course_Authors_and_Tutors AS T1 JOIN Courses AS T2 ON T1.author_id = T2.author_id WHERE T1.personal_name = "J@@ uli@@ o"
SELECT sum(T1.@@ amount_@@ pay@@ ment) FROM Customer_Payments AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.first_name = "Carole" AND T2.last_name = "Bernhard"
SELECT T2.course_name FROM Course_Authors_and_Tutors AS T1 JOIN Courses AS T2 ON T1.author_id = T2.author_id WHERE T1.personal_name = "J@@ uli@@ o"
SELECT count(*) FROM Ref_locations
SELECT built_year FROM ship GROUP BY built_year ORDER BY count(*) DESC LIMIT 1
SELECT avg(age) FROM Student WHERE StuID IN ( SELECT T1.StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy = T2.Allergy WHERE T2.allergytype = "food" INTERSECT SELECT T1.StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy = T2.Allergy WHERE T2.allergytype = "animal")
SELECT DISTINCT payment_method_code FROM INVOICES
SELECT * FROM instructor ORDER BY salary
SELECT name FROM pilot WHERE pilot_id NOT IN (SELECT Win@@ ning_@@ Pilo@@ t FROM MATCH WHERE country = 'Australi@@ a')
SELECT t2.color_description FROM products AS t1 JOIN ref_colors AS t2 ON t1.color_code = t2.color_code GROUP BY t2.color_description ORDER BY count(*) ASC LIMIT 1
SELECT sum(@@ crs_credit) , dept_code FROM course GROUP BY dept_code
SELECT min(product_price) , max(product_price) , avg(product_price) FROM products
SELECT T1.project_details FROM Projects AS T1 JOIN Project_outcomes AS T2 ON T1.project_id = T2.project_id WHERE T2.outcome_code = 'P@@ ap@@ er' INTERSECT SELECT T1.project_details FROM Projects AS T1 JOIN Project_outcomes AS T2 ON T1.project_id = T2.project_id WHERE T2.outcome_code = 'Patent'
SELECT count(DISTINCT sport@@ name) FROM Sportsinfo
SELECT DISTINCT Range FROM mountain ORDER BY Pro@@ min@@ ence DESC LIMIT 3
SELECT publisher FROM book_club WHERE YEAR = 1989 INTERSECT SELECT publisher FROM book_club WHERE YEAR = 1990
SELECT count(DISTINCT Software_P@@ lat@@ form@@ ) FROM device
SELECT dept_name FROM student GROUP BY dept_name ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.age FROM management AS T2 JOIN head AS T1 ON T1.@@ head_id = T2.head_id WHERE T2.@@ temp@@ or@@ ar@@ y_@@ act@@ ing = 'Yes'
SELECT min(age) , avg(age) , max(age) FROM Student
SELECT t1.product_name FROM products AS t1 JOIN ref_product_categories AS t2 ON t1.@@ product_category_code = t2.product_category_code JOIN ref_colors AS t3 ON t1.color_code = t3.@@ color_code WHERE t3.@@ color_description = "white" AND t2.@@ unit_of_measure != "H@@ and@@ ful@@ "
SELECT district_name FROM district ORDER BY city_p@@ opulation DESC LIMIT 1
SELECT name FROM program WHERE origin != 'Beijing'
SELECT T2.apt_number FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id = T2.apt_id WHERE T1.booking_status_code = "Confirmed" INTERSECT SELECT T2.apt_number FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id = T2.apt_id WHERE T1.booking_status_code = "Provisional"
SELECT T1.customer_id FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT flno , origin , destination FROM Flight ORDER BY origin
SELECT name , dat@@ es_@@ active , number_deaths FROM storm WHERE number_deaths >= 1
SELECT sum(t3.order_quantity) FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id = t2.customer_id JOIN order_items AS t3 ON t2.order_id = t3.order_id WHERE t1.customer_name = "Rodrick Heaney"
SELECT course_id FROM course EXCEPT SELECT course_id FROM prereq
SELECT sum(@@ number_@@ de@@ ath@@ s) , sum(@@ damage_millions_USD) FROM storm WHERE max_speed > (SELECT avg(@@ max_@@ speed) FROM storm@@ )
SELECT count(*) FROM Visit@@ ors WHERE Tourist_ID NOT IN ( SELECT Tourist_ID FROM Visits )
SELECT count(*) FROM member WHERE Mem@@ b@@ ers@@ hip_@@ card = 'B@@ lack@@ '
SELECT t2.product_details FROM order_items AS t1 JOIN products AS t2 ON t1.product_id = t2.product_id GROUP BY t1.product_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , count(*) FROM physician AS T1 JOIN patient AS T2 ON T1.employeeid = T2.PCP GROUP BY T1.employeeid
SELECT T1.Title FROM Al@@ bum AS T1 JOIN T@@ rac@@ k AS T2 ON T1.AlbumId = T2.AlbumId JOIN G@@ enr@@ e AS T3 ON T2.G@@ enreID = T3.@@ G@@ enreID WHERE T3.Name = '@@ Reg@@ ga@@ e' INTERSECT SELECT T1.Title FROM Al@@ bum AS T1 JOIN T@@ rac@@ k AS T2 ON T1.AlbumId = T2.AlbumId JOIN G@@ enr@@ e AS T3 ON T2.G@@ enreID = T3.@@ G@@ enreID WHERE T3.Name = 'R@@ ock@@ '
SELECT Name FROM editor WHERE Age > 25
SELECT dept_name , building FROM department ORDER BY budget DESC LIMIT 1
SELECT channel_code FROM customer_contact_channels GROUP BY channel_code HAVING count(@@ customer_id) < 5
SELECT T1.name , T1.trade_name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id = T1.id WHERE interaction_type = 'inhibitor' INTERSECT SELECT T1.name , T1.trade_name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id = T1.id WHERE interaction_type = 'activitor'
SELECT customer_id , customer_name FROM customers WHERE customer_address LIKE "%@@ W@@ Y@@ %" AND payment_method_code != "Cre@@ dit C@@ ard"
SELECT avg(ticket_price) , min(@@ ticket_price) , max(@@ ticket_price) FROM exhibition WHERE YEAR < 2009
SELECT Character , D@@ uration FROM actor
SELECT DISTINCT form@@ _type_code FROM forms
SELECT T1.name FROM nurse AS T1 JOIN appointment AS T2 ON T1.employeeid = T2.@@ pre@@ p@@ nurse GROUP BY T1.employeeid ORDER BY count(*) DESC LIMIT 1
SELECT name FROM scientists ORDER BY name
SELECT count(*) FROM authors AS t1 JOIN authorship AS t2 ON t1.authid = t2.authid JOIN papers AS t3 ON t2.paperid = t3.paperid WHERE t1.fname = "@@ At@@ sus@@ hi@@ " AND t1.lname = "O@@ hori"
SELECT count(DISTINCT T1.@@ Offici@@ al_@@ nat@@ iv@@ e_@@ langu@@ age) FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id = T2.Country WHERE T2.Position = "Defender"
SELECT town_city FROM customers WHERE customer_type_code = "Goo@@ d Cre@@ dit Rat@@ ing" GROUP BY town_city ORDER BY count(*) LIMIT 1
SELECT Ref_Document_@@ Status@@ .@@ document_@@ status@@ _description FROM Ref_Document_@@ Status JOIN Documents ON Documents.@@ document_status_code = Ref_Document_@@ Status@@ .@@ document_status_code WHERE Documents.@@ document_id = 1;
SELECT name , lat , city FROM station ORDER BY lat LIMIT 1
SELECT customer_name FROM customers WHERE payment_method != 'C@@ ash@@ '
SELECT T2.firstname , T2.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom = T2.classroom GROUP BY T2.firstname , T2.lastname ORDER BY count(*) DESC LIMIT 1
SELECT allergytype FROM Allergy_type WHERE allergy = "Cat"
SELECT LOCATION FROM performance GROUP BY LOCATION HAVING COUNT(*) >= 2
SELECT TYPE , count(*) FROM operate_company GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T1.employee_id , T4.country_name FROM employees AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id JOIN locations AS T3 ON T2.location_id = T3.location_id JOIN countries AS T4 ON T3.country_id = T4.country_id
SELECT T2.name , T1.team_id_winner FROM postseason AS T1 JOIN team AS T2 ON T1.team_id_winner = T2.team_id_br WHERE T1.year = 2008 GROUP BY T1.team_id_winner ORDER BY count(*) DESC LIMIT 1;
SELECT T1.@@ Position FROM match_season AS T1 JOIN team AS T2 ON T1.Team = T2.Team_id WHERE T2.Name = "Ry@@ ley G@@ ol@@ dn@@ er"
SELECT transaction_id FROM TRANSACTIONS WHERE transaction_type_code = 'P@@ UR@@ '
SELECT T2.customer_name FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id HAVING count(*) <= 2
SELECT Product_Type_Code FROM Products WHERE Product_Price > 4@@ 500 INTERSECT SELECT Product_Type_Code FROM Products WHERE Product_Price < 3000
SELECT T1.driverid , count(*) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid GROUP BY T1.driverid HAVING count(*) <= 30
SELECT T1.activity_name FROM Activity AS T1 JOIN Faculty_participates_in AS T2 ON T1.actID = T2.actID GROUP BY T1.actID ORDER BY count(*) DESC LIMIT 1
SELECT Nationality , COUNT(*) FROM pilot GROUP BY Nationality
SELECT count(*) , T3.dorm_name FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid = T2.stuid JOIN dorm AS T3 ON T3.dormid = T2.dormid WHERE T1.age > 20 GROUP BY T3.dorm_name
SELECT T1.name FROM storm AS T1 JOIN affected_region AS T2 ON T1.storm_id = T2.storm_id GROUP BY T1.storm_id HAVING count(*) >= 2 INTERSECT SELECT T1.name FROM storm AS T1 JOIN affected_region AS T2 ON T1.storm_id = T2.storm_id GROUP BY T1.storm_id HAVING sum(T2.@@ number_@@ city_@@ affect@@ ed) >= 10
SELECT name FROM procedures WHERE cost < 5000 INTERSECT SELECT T3.name FROM physician AS T1 JOIN trained_in AS T2 ON T1.employeeid = T2.physician JOIN procedures AS T3 ON T3.code = T2.treatment WHERE T1.name = "John Wen"
SELECT Famous_Title FROM artist WHERE Artist_ID NOT IN@@ (SELECT Artist_ID FROM volume@@ )
SELECT cloud_cover FROM weather WHERE zip_code = 9410@@ 7 GROUP BY cloud_cover ORDER BY COUNT (*) DESC LIMIT 3
SELECT T2.Shop_Name FROM stock AS T1 JOIN shop AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T1.Shop_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT first_name FROM people ORDER BY first_name
SELECT RoomId , roomName FROM Rooms ORDER BY basePrice DESC LIMIT 1;
SELECT avg(T3.@@ Total_@@ Passeng@@ ers) FROM aircraft AS T1 JOIN airport_aircraft AS T2 ON T1.Aircraft_ID = T2.Aircraft_ID JOIN airport AS T3 ON T2.Airport_ID = T3.Airport_ID WHERE T1.Aircraft = "Rob@@ in@@ son R@@ -2@@ 2"
SELECT T1.artist_name , T1.country FROM artist AS T1 JOIN song AS T2 ON T1.artist_name = T2.artist_name WHERE T2.resolution > 9@@ 00 GROUP BY T2.artist_name HAVING count(*) >= 1
SELECT T2.name FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id = T2.id JOIN student AS T3 ON T1.s_id = T3.id ORDER BY T3.@@ tot_cred DESC LIMIT 1
SELECT min(@@ membership_amount) , max(@@ membership_amount) FROM branch WHERE open_year = 2011 OR city = 'London'
SELECT STATEMENT_ID , count(*) FROM Accounts GROUP BY STATEMENT_ID
SELECT store_id FROM inventory GROUP BY store_id ORDER BY count(*) DESC LIMIT 1
SELECT billing_state , COUNT(*) FROM invoices WHERE billing_country = "USA" GROUP BY billing_state ORDER BY COUNT(*) DESC LIMIT 1;
SELECT count(DISTINCT langu@@ age_@@ id) FROM film
SELECT College FROM match_season WHERE POSITION = "M@@ id@@ fiel@@ d@@ er" INTERSECT SELECT College FROM match_season WHERE POSITION = "Defender"
SELECT T1.@@ address_details FROM addresses AS T1 JOIN customer_addresses AS T2 ON T1.address_id = T2.address_id WHERE T2.customer_id = 10
SELECT T1.name , T1.team_id FROM team AS T1 JOIN salary AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id ORDER BY avg(T2.@@ salary) ASC LIMIT 1;
SELECT student_id FROM student_course_registrations GROUP BY student_id ORDER BY count(*) LIMIT 1
SELECT T1.activity_name , count(*) FROM Activity AS T1 JOIN Faculty_participates_in AS T2 ON T1.actID = T2.actID GROUP BY T1.actID
SELECT Status FROM city WHERE Population > 1500 INTERSECT SELECT Status FROM city WHERE Population < 500
SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id = T2.cust_id GROUP BY T1.cust_name HAVING count(*) > 1
SELECT * FROM employees WHERE salary BETWEEN (SELECT MIN(salary) FROM employees) AND 2@@ 500
SELECT Software_Platform FROM device GROUP BY Software_Platform ORDER BY COUNT(*) DESC
SELECT t3.@@ customer_details FROM claim_headers AS t1 JOIN policies AS t2 ON t1.@@ policy_id = t2.policy_id JOIN customers AS t3 ON t2.customer_id = t3.customer_id WHERE t1.@@ amount_pi@@ ad = (SELECT min(@@ amount_piad) FROM claim_head@@ ers)
SELECT COUNT(*) FROM (SELECT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName = T2.cName WHERE T2.pPos = 'mid' EXCEPT SELECT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName = T2.cName WHERE T2.pPos = '@@ goali@@ e')
SELECT T2.dept_name FROM student AS T1 JOIN department AS T2 ON T1.dept_code = T2.dept_code ORDER BY stu_gpa LIMIT 1
SELECT Sex FROM Student WHERE Fname = "Linda" AND Lname = "Smith@@ ";
SELECT T1.@@ resident@@ _id , T1.@@ other_details , count(*) FROM Res@@ ident@@ s AS T1 JOIN Res@@ ident@@ s_@@ Services AS T2 ON T1.@@ resident@@ _id = T2.@@ resident@@ _id GROUP BY T1.@@ resident@@ _id ORDER BY count(*) DESC
SELECT T1.@@ lesson@@ _id FROM Lessons AS T1 JOIN Staff AS T2 ON T1.staff_id = T2.staff_id WHERE T2.first_name = "Janessa" AND T2.last_name = "Sawayn@@ " AND nickname LIKE "%@@ s@@ %@@ ";
SELECT founder FROM manufacturers WHERE name LIKE 'S%'
SELECT project_id FROM Documents GROUP BY project_id HAVING count(*) >= 2
SELECT name FROM student WHERE dept_name = 'History' ORDER BY tot_cred DESC LIMIT 1
SELECT Name FROM wrestler ORDER BY Days_held DESC
SELECT DISTINCT T1.supplier_name , T1.supplier_phone FROM suppliers AS T1 JOIN product_suppliers AS T2 ON T1.supplier_id = T2.supplier_id JOIN products AS T3 ON T2.product_id = T3.product_id WHERE T3.product_name = "@@ red je@@ ans@@ "
SELECT name FROM people ORDER BY date_of_birth
SELECT Song FROM volume ORDER BY Weeks_on_Top DESC LIMIT 1
SELECT P@@ ar@@ k FROM roller_coaster ORDER BY Sp@@ e@@ ed DESC LIMIT 1
SELECT name , address_@@ ro@@ ad , city FROM branch ORDER BY open_year
SELECT T2.Name FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Weight DESC LIMIT 1
SELECT calendar_date , day_Number FROM Ref_calendar
SELECT party , count(*) FROM driver GROUP BY party
SELECT location_code FROM Document_locations GROUP BY location_code ORDER BY count(*) DESC LIMIT 1
SELECT TYPE FROM vocals AS T1 JOIN songs AS T2 ON T1.songid = T2.songid JOIN band AS T3 ON T1.bandmate = T3.id WHERE T3.@@ lastname = "Heilo" AND T2.title = "Der Kapitan"
SELECT count(*) FROM course WHERE course_id NOT IN (SELECT course_id FROM prereq)
SELECT name , job FROM Person ORDER BY name
SELECT sum(T2.@@ balance) , T1.name FROM accounts AS T1 JOIN savings AS T2 ON T1.custid = T2.custid GROUP BY T1.name
SELECT Date_of_ceremony FROM music_festival WHERE Category = "B@@ est Song@@ " AND RESULT = "Awarde@@ d"
SELECT T2.customer_first_name , T2.customer_last_name , T1.customer_id FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) ASC LIMIT 1
SELECT Destruction_Authorised_by_Employee_ID , count(*) FROM Documents_to_be_destroyed GROUP BY Destruction_Authorised_by_Employee_ID
SELECT count(DISTINCT city) FROM stadium WHERE open@@ ing_@@ year < 200@@ 6
SELECT avg(t3.age) FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t1.clubname = "Hopkins Student Enterprises"
SELECT T1.id , T1.Name FROM web_client_accelerator AS T1 JOIN accelerator_compatible_browser AS T2 ON T2.@@ accelerator_id = T1.id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid = T2.custid WHERE T2.balance < (SELECT avg(balance) FROM checking)
SELECT T3.@@ location_name FROM All_documents AS T1 JOIN Document_locations AS T2 ON T1.document_id = T2.document_id JOIN Ref_locations AS T3 ON T2.@@ location_code = T3.@@ location_code WHERE T1.@@ document_name = "Robin CV"
SELECT T3.@@ stu_fname FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code = T2.class_code JOIN student AS T3 ON T2.stu_num = T3.stu_num WHERE T1.crs_code = 'ACCT-211'
SELECT DISTINCT city_code FROM Student
SELECT avg(hours) FROM projects
SELECT DISTINCT Police_force FROM county_public_safety WHERE LOCATION != "E@@ ast"
SELECT name , price FROM Products ORDER BY price ASC LIMIT 1
SELECT T2.@@ Issue_Date FROM artist AS T1 JOIN volume AS T2 ON T1.Artist_ID = T2.Artist_ID WHERE T1.@@ Artist = "G@@ org@@ or@@ o@@ th"
SELECT count(*) , country FROM airports GROUP BY country ORDER BY count(*) DESC
SELECT count(*) FROM exhibition_record AS T1 JOIN exhibition AS T2 ON T1.exhibition_id = T2.exhibition_id WHERE T1.attendance > 100 OR T2.@@ ticket_price < 10
SELECT count(*) , Compet@@ ition FROM MATCH GROUP BY Compet@@ ition
SELECT T2.address FROM store AS T1 JOIN address AS T2 ON T1.address_id = T2.address_id WHERE store_id = 1
SELECT rID FROM Rating WHERE stars != 4
SELECT min(@@ C@@ rime_@@ rate) , max(@@ C@@ rime_@@ rate) FROM county_public_safety
SELECT founded FROM university ORDER BY enrollment DESC LIMIT 1
SELECT DISTINCT T3.name FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID JOIN Reviewer AS T3 ON T1.rID = T3.rID WHERE T2.title = 'G@@ one with the W@@ ind@@ '
SELECT FacID FROM Faculty EXCEPT SELECT advisor FROM Student
SELECT room@@ name FROM rooms WHERE base@@ price BETWEEN 120 AND 150
SELECT count(DISTINCT student_@@ id) FROM Student@@ s_in_@@ Detention
SELECT T1.FacID , count(*) FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID = T2.advisor GROUP BY T1.FacID
SELECT T1.County_name FROM county AS T1 JOIN election AS T2 ON T1.County_id = T2.District GROUP BY T1.County_id HAVING COUNT(*) >= 2
SELECT T1.@@ outcome_description FROM Research_outcomes AS T1 JOIN Project_outcomes AS T2 ON T1.outcome_code = T2.outcome_code JOIN Projects AS T3 ON T2.project_id = T3.project_id WHERE T3.@@ project_details = '@@ s@@ int@@ '
SELECT nickname FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn";
SELECT Other_@@ Details FROM LOCATIONS WHERE Location_Name = "UK Gallery"
SELECT eid FROM Employee EXCEPT SELECT eid FROM Certificate
SELECT cust_name FROM customer EXCEPT SELECT cust_name FROM customer WHERE acc_type = 'saving'
SELECT T1.amenity_name FROM dorm_amenity AS T1 JOIN has_amenity AS T2 ON T1.amenid = T2.amenid GROUP BY T2.amenid ORDER BY count(*) DESC LIMIT 1
SELECT gender_code , COUNT(*) FROM Guests GROUP BY gender_code ORDER BY COUNT(*) DESC
SELECT T2.address_id , T1.zip_postcode FROM Addresses AS T1 JOIN Student_Addresses AS T2 ON T1.address_id = T2.address_id ORDER BY monthly_@@ rental DESC LIMIT 1
SELECT T3.name , T3.@@ time FROM train_station AS T1 JOIN station AS T2 ON T1.station_id = T2.station_id JOIN train AS T3 ON T3.train_id = T1.train_id WHERE T2.@@ location = 'London' ORDER BY T3.@@ time DESC
SELECT avg(t3.age) FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t1.clubname = "Hopkins Student Enterprises"
SELECT budget_type_code , count(*) FROM Documents_with_expenses GROUP BY budget_type_code
SELECT T1.Team , T2.Location FROM player AS T1 JOIN school AS T2 ON T1.School_ID = T2.School_ID
SELECT T3.dept_name , T2.prof_office FROM employee AS T1 JOIN professor AS T2 ON T1.emp_num = T2.emp_num JOIN department AS T3 ON T2.dept_code = T3.dept_code WHERE T1.emp_lname = 'He@@ ff@@ ing@@ ton@@ '
SELECT product_name FROM Products EXCEPT SELECT T1.product_name FROM Products AS T1 JOIN Order_items AS T2 ON T1.product_id = T2.product_id
SELECT DISTINCT Theme FROM journal
SELECT r@@ id FROM routes WHERE dst_apid IN (SELECT apid FROM airports WHERE country = 'United States') AND src_apid IN (SELECT apid FROM airports WHERE country = 'United States')
SELECT DISTINCT classroom , grade FROM list
SELECT T3.Name FROM repair_assignment AS T1 JOIN machine AS T2 ON T1.machine_id = T2.machine_id JOIN technician AS T3 ON T1.technician_ID = T3.technician_ID ORDER BY T2.@@ qu@@ al@@ ity_@@ rank
SELECT class_code FROM CLASS WHERE class_room = 'K@@ L@@ R@@ 20@@ 9@@ '
SELECT T2.team_id , T2.@@ rank FROM home_game AS T1 JOIN team AS T2 ON T1.team_id = T2.team_id WHERE T1.year = 2014 GROUP BY T1.team_id ORDER BY avg(T1.@@ attendance) DESC LIMIT 1;
SELECT rank FROM captain EXCEPT SELECT rank FROM captain WHERE CLASS = '@@ Th@@ ir@@ d@@ -@@ rate ship of the lin@@ e'
SELECT * FROM employees WHERE employee_id NOT IN (SELECT employee_id FROM job_@@ histor@@ y)
SELECT count(*) FROM airports AS T1 JOIN routes AS T2 ON T1.apid = T2.dst_apid WHERE T1.name = '@@ John F K@@ enn@@ ed@@ y International Airport@@ '
SELECT Fname , Lname FROM FACULTY WHERE sex = "M" AND Building = "NEB"
SELECT name FROM student WHERE id IN (SELECT id FROM takes WHERE semester = 'Fall' AND YEAR = 200@@ 3)
SELECT T1.project_id , count(*) FROM Project_Staff AS T1 JOIN Projects AS T2 ON T1.project_id = T2.project_id GROUP BY T1.project_id ORDER BY count(*) ASC
SELECT Location_Name FROM LOCATIONS WHERE Location_Name LIKE "%@@ film@@ %"
SELECT Title , Iss@@ ues FROM book
SELECT Grape , Appelation FROM WINE
SELECT Name , Country FROM member
SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid = T2.stuid JOIN dorm AS T3 ON T3.dormid = T2.dormid WHERE T3.dorm_name = 'Smith Hall' AND T1.sex = 'F'
SELECT count(*) FROM Faculty WHERE Sex = 'F' AND Rank = "Professor"
SELECT T2.Name FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId = T2.ArtistId WHERE T1.Title = "Balls to the W@@ all"
SELECT T1.title , T3.name FROM course AS T1 JOIN teaches AS T2 ON T1.course_id = T2.course_id JOIN instructor AS T3 ON T2.id = T3.id WHERE YEAR = 2008 ORDER BY T1.title
SELECT document_type_code FROM Documents GROUP BY document_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.city , T2.dst_apid FROM airports AS T1 JOIN routes AS T2 ON T1.apid = T2.dst_apid GROUP BY T2.dst_apid ORDER BY count(*) DESC LIMIT 1
SELECT t3.lname FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t1.clubname = "Bootup Baltimore"
SELECT t2.date_@@ opened , t2.date_@@ clo@@ sed FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id = t2.customer_id WHERE t1.customer_name LIKE "%Diana%"
SELECT T2.Country , T1.Year FROM film_market_estimation AS T1 JOIN market AS T2 ON T1.Market_ID = T2.Market_ID
SELECT T1.name , T3.balance + T2.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid = T2.custid JOIN savings AS T3 ON T1.custid = T3.custid WHERE T3.balance < T2.balance
SELECT Res@@ Name FROM Restaurant@@ ;
SELECT first_name FROM Teachers WHERE email_address LIKE '%@@ man@@ %'
SELECT payment_date FROM payment ORDER BY payment_date ASC LIMIT 1
SELECT Pilot_name FROM pilot WHERE Pilot_ID NOT IN (SELECT Pilot_ID FROM pilo@@ t_@@ recor@@ d)
SELECT County_name FROM county ORDER BY Population DESC LIMIT 1
SELECT T1.school_code FROM department AS T1 JOIN professor AS T2 ON T1.dept_code = T2.dept_code GROUP BY T1.school_code ORDER BY count(*) LIMIT 1
SELECT Country FROM member GROUP BY Country HAVING COUNT(*) > 2
SELECT department_id , SUM@@ (salary) FROM employees GROUP BY department_id HAVING count(*) >= 2
SELECT DISTINCT Nominee FROM musical WHERE Award != "Tony Award"
SELECT Time@@ _of_@@ purchase , age , address FROM member ORDER BY Time@@ _of_@@ purchase
SELECT date_of_@@ transaction FROM TRANSACTIONS WHERE transaction_type_code = "S@@ A@@ LE"
SELECT cName FROM tryout WHERE pPos = 'mid' EXCEPT SELECT cName FROM tryout WHERE pPos = 'goalie'
SELECT name FROM branch ORDER BY membership_amount DESC LIMIT 3
SELECT Industry FROM Companies WHERE Headquarters = "USA" INTERSECT SELECT Industry FROM Companies WHERE Headquarters = "China"
SELECT StuID FROM Has_allergy GROUP BY StuID HAVING count(*) >= 2
SELECT date_of_@@ transaction FROM TRANSACTIONS WHERE share_count > 100 OR amount_of_transaction > 1000
SELECT DISTINCT T2.name , T2.friend , T1.age FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.friend WHERE T1.age > (SELECT avg(age) FROM person)
SELECT Name FROM mountain ORDER BY Height DESC LIMIT 1
SELECT Competition_type , COUNT(*) FROM competition GROUP BY Competition_type
SELECT count(*) FROM bank
SELECT avg(price) FROM products
SELECT name , trade_name FROM medicine EXCEPT SELECT T1.name , T1.trade_name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id = T1.id JOIN enzyme AS T3 ON T3.id = T2.enzyme_id WHERE T3.@@ product = 'Pro@@ top@@ or@@ phy@@ rin@@ o@@ g@@ en I@@ X'
SELECT Birth@@ Date FROM EMPLOYEE WHERE City = "E@@ d@@ mont@@ on"
SELECT company , rank FROM company ORDER BY Sales_bill@@ ion DESC
SELECT count(*) FROM addresses WHERE state_province_county = "Col@@ orad@@ o"
SELECT T2.customer_last_name , T1.customer_id , T2.@@ phone_number FROM Orders AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT Starting_Year FROM technician ORDER BY Age DESC LIMIT 1
SELECT count(*) , T2.product_id FROM problems AS T1 JOIN product AS T2 ON T1.product_id = T2.product_id GROUP BY T2.product_id
SELECT apt_number FROM Apartments ORDER BY bedroom_count DESC LIMIT 1
SELECT Name FROM Projects WHERE Code NOT IN (SELECT Project FROM AssignedTo)
SELECT name FROM church EXCEPT SELECT T1.name FROM church AS T1 JOIN wedding AS T2 ON T1.@@ church_id = T2.@@ church_id WHERE T2.year = 201@@ 5
SELECT lname , age FROM Student WHERE StuID IN (SELECT StuID FROM Has_allergy WHERE Allergy = "Milk" INTERSECT SELECT StuID FROM Has_allergy WHERE Allergy = "Cat@@ ")
SELECT count(*) FROM farm
SELECT Studio FROM film WHERE Director = "N@@ ic@@ ho@@ la@@ s Me@@ y@@ er" INTERSECT SELECT Studio FROM film WHERE Director = "W@@ alter Hill@@ "
SELECT count(*) FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t3.fname = "Linda" AND t3.lname = "Smith"
SELECT T1.D@@ elegate , T2.Party FROM election AS T1 JOIN party AS T2 ON T1.Party = T2.Party_ID
SELECT detent@@ ion_@@ sum@@ mar@@ y FROM Detention
SELECT count(*) , sex FROM employee WHERE salary < 50000 GROUP BY sex
SELECT payment_date FROM payment WHERE amount > 10 UNION SELECT T1.@@ payment_date FROM payment AS T1 JOIN staff AS T2 ON T1.staff_id = T2.staff_id WHERE T2.first_name = 'E@@ ls@@ a'
SELECT Aircraft FROM aircraft WHERE Aircraft_ID NOT IN (SELECT Win@@ ning_Aircraft FROM MATC@@ H@@ )
SELECT Builder FROM railway ORDER BY Builder ASC
SELECT T1.title FROM albums AS T1 JOIN tracks AS T2 ON T1.id = T2.@@ album@@ _id GROUP BY T1.id HAVING count(@@ T1.@@ id) > 10;
SELECT DISTINCT classroom FROM list WHERE grade = 5
SELECT name , total_passengers FROM station WHERE LOCATION != 'London'
SELECT avg(@@ Sp@@ e@@ ed) FROM roller_coaster
SELECT emp_fname , emp_@@ lname FROM employee ORDER BY emp_@@ do@@ b LIMIT 1
SELECT T2.name , avg(T1.age) FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.friend GROUP BY T2.name ORDER BY avg(T1.age) DESC LIMIT 1
SELECT Name FROM wrestler ORDER BY Days_held ASC LIMIT 1
SELECT T1.name , avg(@@ tr@@ ust@@ ) FROM useracct AS T1 JOIN trust AS T2 ON T1.u_id = T2.@@ tar@@ g@@ et_@@ u_id GROUP BY T2.@@ tar@@ g@@ et_@@ u_id
SELECT Name FROM TRACK WHERE Name LIKE '%@@ you@@ %'
SELECT eid , salary FROM Employee WHERE name = 'M@@ ar@@ k Y@@ oun@@ g@@ '
SELECT T1.Player , T1.@@ Years_Played FROM player AS T1 JOIN team AS T2 ON T1.Team = T2.Team_id WHERE T2.Name = "Columbus Crew"
SELECT T3.@@ manager_name FROM station_company AS T1 JOIN company AS T2 ON T1.company_id = T2.company_id JOIN gas_station AS T3 ON T1.station_id = T3.station_id WHERE T2.company = '@@ Ex@@ xonMo@@ bil@@ '
SELECT document_name FROM documents WHERE document_code NOT IN (SELECT document_code FROM document_section@@ s)
SELECT count(*) FROM rooms WHERE room@@ id NOT IN (SELECT DISTINCT room FROM reserv@@ ation@@ s)
SELECT customer_name FROM customers EXCEPT SELECT t1.customer_name FROM customers AS t1 JOIN first_notification_of_loss AS t2 ON t1.customer_id = t2.customer_id
SELECT T2.name , count(*) FROM exhibition AS T1 JOIN artist AS T2 ON T1.artist_id = T2.artist_id GROUP BY T1.artist_id
SELECT Country , COUNT(*) FROM climber GROUP BY Country
SELECT DName FROM DEPARTMENT WHERE Building = "M@@ erg@@ en@@ thal@@ er"
SELECT T2.Name FROM Grap@@ es AS T1 JOIN WINE AS T2 ON T1.Grape = T2.Grape WHERE T1.Color = "R@@ ed" AND T2.@@ price > 50
SELECT min(@@ bath@@ room_count) , max(@@ bath@@ room_count) FROM Apartments
SELECT sum(revenue) , name FROM manufacturers GROUP BY name
SELECT Issue_Date FROM artist AS T1 JOIN volume AS T2 ON T1.Artist_ID = T2.Artist_ID WHERE T1.age <= 23
SELECT Destruction_Authorised_by_Employee_ID , count(*) FROM Documents_to_be_destroyed GROUP BY Destruction_Authorised_by_Employee_ID
SELECT Player_name FROM player ORDER BY Votes DESC LIMIT 1
SELECT lname , sex FROM Student WHERE StuID IN (SELECT T1.StuID FROM Plays_games AS T1 JOIN Video_games AS T2 ON T1.G@@ ameID = T2.G@@ ameID WHERE T2.G@@ name = "Call of Destiny" INTERSECT SELECT T1.StuID FROM Plays_games AS T1 JOIN Video_games AS T2 ON T1.G@@ ameID = T2.G@@ ameID WHERE T2.G@@ name = "W@@ or@@ ks of W@@ ide@@ ni@@ us@@ ")
SELECT count(*) FROM address WHERE district = 'California'
SELECT AVG(T2.@@ Price) FROM APPELLATIONS AS T1 JOIN WINE AS T2 ON T1.Appelation = T2.Appelation WHERE T1.County = "S@@ on@@ om@@ a"
SELECT DISTINCT TYPE FROM vocals
SELECT T1.campus FROM campuses AS t1 JOIN enrollments AS t2 ON t1.id = t2.campus WHERE t2.year = 195@@ 6 AND total@@ enroll@@ ment_@@ ay > 4@@ 00 AND F@@ TE@@ _@@ A@@ Y > 200
SELECT T1.Name FROM Tourist_Attractions AS T1 JOIN Tourist_Attraction@@ _F@@ eatures AS T2 ON T1.@@ tourist_attraction_id = T2.@@ tourist_attraction_id JOIN F@@ eatures AS T3 ON T2.F@@ eature_ID = T3.F@@ eature_ID WHERE T3.@@ feat@@ ure_Details = '@@ park@@ ' UNION SELECT T1.Name FROM Tourist_Attractions AS T1 JOIN Tourist_Attraction@@ _F@@ eatures AS T2 ON T1.@@ tourist_attraction_id = T2.@@ tourist_attraction_id JOIN F@@ eatures AS T3 ON T2.F@@ eature_ID = T3.F@@ eature_ID WHERE T3.@@ feat@@ ure_Details = '@@ sho@@ pp@@ ing'
SELECT grade , count(DISTINCT classroom@@ ) , count(*) FROM list GROUP BY grade
SELECT apt_type_code FROM Apartments WHERE bathroom_count > 1 GROUP BY apt_type_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM student WHERE sex = 'F' AND age < 25
SELECT T1.booking_status_code FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id = T2.apt_id WHERE T2.apt_number = "S@@ uite 6@@ 34@@ "
SELECT T1.account_name , T1.other_account_details FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.customer_first_name = "M@@ eag@@ h@@ an" AND T2.customer_last_name = "K@@ eel@@ ing"
SELECT card_type_code FROM Customers_cards GROUP BY card_type_code ORDER BY count(*) DESC LIMIT 1
SELECT salary FROM salary WHERE YEAR = 2010 UNION SELECT salary FROM salary WHERE YEAR = 2001
SELECT date FROM weather WHERE zip_code = 9410@@ 7 AND EVENTS != "F@@ o@@ g@@ " AND EVENTS != "R@@ ain"
SELECT title FROM film WHERE LENGTH > 100 OR rating = 'P@@ G@@ ' EXCEPT SELECT title FROM film WHERE re@@ plac@@ e@@ ment_@@ cost > 200
SELECT name FROM person EXCEPT SELECT name FROM PersonFriend
SELECT T2.Name FROM Grap@@ es AS T1 JOIN WINE AS T2 ON T1.Grape = T2.Grape WHERE T1.Color = "R@@ ed" AND T2.@@ price > 50
SELECT T1.@@ te@@ x@@ t@@ _of_@@ notes FROM Assessment_Notes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.last_name = "S@@ ch@@ ust@@ er"
SELECT f_id FROM files ORDER BY duration DESC LIMIT 1
SELECT date_@@ be@@ cam@@ e_@@ customer FROM customers WHERE customer_id BETWEEN 10 AND 20
SELECT T3.name , T2.name FROM Office_locations AS T1 JOIN buildings AS T2 ON T1.building_id = T2.id JOIN Companies AS T3 ON T1.company_id = T3.id
SELECT max(@@ date_@@ mov@@ ed_@@ in@@ ) FROM Res@@ ident@@ s
SELECT LOCATION FROM shop WHERE Open_Year > 2012 INTERSECT SELECT LOCATION FROM shop WHERE Open_Year < 2008
SELECT t1.customer_name , t2.@@ active_from_date FROM customers AS t1 JOIN customer_contact_channels AS t2 ON t1.customer_id = t2.customer_id WHERE t2.@@ channel_code = 'E@@ mail@@ '
SELECT avg(@@ long) FROM station WHERE id NOT IN (SELECT station_id FROM status GROUP BY station_id HAVING max(@@ bikes_available) > 10@@ )
SELECT sum(@@ share_@@ count) FROM TRANSACTIONS
SELECT T4.name FROM wedding AS T1 JOIN people AS T2 ON T1.@@ mal@@ e_id = T2.people_id JOIN people AS T3 ON T1.@@ femal@@ e_id = T3.@@ people_id JOIN church AS T4 ON T4.@@ church_id = T1.@@ church_id WHERE T2.age > 30 OR T3.@@ age > 30
SELECT T1.pName FROM player AS T1 JOIN tryout AS T2 ON T1.pID = T2.pID WHERE T2.decision = 'yes' AND T2.pPos = 'striker'
SELECT Amount_Settled , Amount_Claimed FROM Claims ORDER BY Amount_Claimed DESC LIMIT 1
SELECT sum(revenue) , name FROM manufacturers GROUP BY name
SELECT max(@@ Enrollment) FROM university
SELECT Status_Code FROM BOOKINGS GROUP BY Status_Code ORDER BY count(*) DESC LIMIT 1
SELECT LOCATION FROM station EXCEPT SELECT LOCATION FROM station WHERE number_of_@@ platforms >= 15
SELECT T1.emp_lname , T2.prof_office FROM employee AS T1 JOIN professor AS T2 ON T1.emp_num = T2.emp_num JOIN department AS T3 ON T2.dept_code = T3.dept_code WHERE T3.dept_name = 'History'
SELECT DISTINCT Se@@ cretary_Vote FROM VOTING_RECORD WHERE E@@ LE@@ C@@ TION@@ _C@@ Y@@ C@@ L@@ E = "Fall"
SELECT document_name , access_count FROM documents ORDER BY access_count DESC LIMIT 1
SELECT avg(S@@ nat@@ ch@@ ) FROM body_builder
SELECT host_city FROM hosting_city ORDER BY YEAR DESC LIMIT 1
SELECT YEAR FROM SECTION GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT COUNT (DISTINCT Public@@ ation_@@ D@@ ate) FROM publication
SELECT YEAR , book_title , publisher FROM book_club ORDER BY YEAR DESC
SELECT COUNT(*) FROM invoices WHERE billing_@@ city = "C@@ hicag@@ o" AND billing_state = "@@ IL@@ ";
SELECT Product_Price FROM Products WHERE Product_Name = "D@@ in@@ ing" OR Product_Name = "T@@ r@@ ad@@ ing Polic@@ y"
SELECT count(*) FROM services
SELECT customer_id , count(*) FROM Accounts GROUP BY customer_id
SELECT count(*) FROM WINE WHERE Winery = "Ro@@ ber@@ t B@@ i@@ ale"
SELECT transaction_type_code , max(@@ share_@@ count) , min(@@ share_@@ count) FROM TRANSACTIONS GROUP BY transaction_type_code
SELECT title FROM course WHERE course_id IN (SELECT T1.prereq_id FROM prereq AS T1 JOIN course AS T2 ON T1.course_id = T2.course_id WHERE T2.title = '@@ International Financ@@ e')
SELECT T3.Name FROM repair_assignment AS T1 JOIN machine AS T2 ON T1.machine_id = T2.machine_id JOIN technician AS T3 ON T1.technician_ID = T3.technician_ID WHERE T2.@@ val@@ ue_@@ points > 70
SELECT semester , YEAR FROM SECTION GROUP BY semester , YEAR ORDER BY count(*) DESC LIMIT 1
SELECT Student.@@ Fname , Student.@@ Lname FROM Student JOIN Visits_Restaurant ON Student.@@ StuID = Visits_Restaurant.@@ StuID GROUP BY Student.@@ StuID ORDER BY count(*) DESC LIMIT 1;
SELECT T1.name FROM airlines AS T1 JOIN routes AS T2 ON T1.alid = T2.alid GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT Category , COUNT(*) FROM music_festival GROUP BY Category
SELECT T2.name , T2.position FROM department AS T1 JOIN physician AS T2 ON T1.@@ head = T2.EmployeeID GROUP BY departmentID ORDER BY count(departmentID) LIMIT 1;
SELECT Cas@@ e_@@ b@@ urden FROM county_public_safety ORDER BY Population DESC
SELECT T2.p@@ Name FROM tryout AS T1 JOIN player AS T2 ON T1.pID = T2.pID WHERE T1.cName = (SELECT cName FROM college ORDER BY enr DESC LIMIT 1)
SELECT T2.Name FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Investor != "R@@ ac@@ he@@ l E@@ l@@ nau@@ gh@@ "
SELECT T1.S@@ ho@@ p_@@ Details FROM S@@ HO@@ P@@ S AS T1 JOIN TOURIST_ATTRACTIONS AS T2 ON T1.Shop_ID = T2.Tourist_Attraction_ID WHERE T2.How_to_Get_There = "walk"
SELECT document_name , access_count FROM documents ORDER BY document_name
SELECT T2.D@@ elegate FROM county AS T1 JOIN election AS T2 ON T1.County_id = T2.District WHERE T1.Population < 100000
SELECT T1.zip_postcode FROM Addresses AS T1 JOIN Staff AS T2 ON T1.address_id = T2.staff_address_id WHERE T2.first_name = "Janessa" AND T2.last_name = "Sawayn";
SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT state FROM college AS T1 JOIN tryout AS T2 ON T1.cName = T2.cName
SELECT T3.Title FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate = T2.id JOIN Songs AS T3 ON T3.SongId = T1.SongId WHERE T2.@@ Last@@ name = "Heilo"
SELECT cName FROM tryout WHERE decision = 'yes' AND pPos = 'goalie'
SELECT course_name FROM courses ORDER BY course_name
SELECT t2.@@ team_name FROM university AS t1 JOIN basketball_match AS t2 ON t1.school_id = t2.school_id WHERE enrollment < (SELECT avg(enrollment) FROM univers@@ ity)
SELECT count(*) , rank FROM captain GROUP BY rank
SELECT TYPE FROM ship GROUP BY TYPE ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM Faculty WHERE Rank = "Professor" AND building = "NEB"
SELECT t1.product_id , t2.color_description FROM products AS t1 JOIN ref_colors AS t2 ON t1.color_code = t2.color_code JOIN product_characteristics AS t3 ON t1.product_id = t3.product_id GROUP BY t1.product_id HAVING count(*) >= 2
SELECT name , country FROM people WHERE age < (SELECT avg(age) FROM people@@ )
SELECT T1.organisation_id , T1.organisation_type , T1.@@ organisation_details FROM Organisations AS T1 JOIN Research_Staff AS T2 ON T1.organisation_id = T2.employer_organisation_id GROUP BY T1.organisation_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T3.city FROM employees AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id JOIN locations AS T3 ON T2.location_id = T3.location_id WHERE T1.first_name LIKE '%@@ z@@ %'
SELECT COUNT (DISTINCT id) FROM teaches
SELECT count(DISTINCT Status@@ _of_@@ Th@@ ing_@@ Co@@ de@@ ) FROM T@@ i@@ med@@ _@@ Status@@ _of_@@ Things
SELECT campus FROM campuses WHERE county = "Los Angeles"
SELECT T1.M@@ arket@@ ing_Region_@@ Name FROM Market@@ ing_Reg@@ ions AS T1 JOIN Stores AS T2 ON T1.M@@ arketing_Region_Code = T2.M@@ arketing_Region_Code WHERE T2.Store_Name = "Ro@@ b D@@ inn@@ ing"
SELECT dept_name , budget FROM department WHERE budget > (SELECT avg(@@ budget) FROM department@@ )
SELECT T1.@@ good@@ _@@ or@@ _b@@ ad@@ _@@ customer FROM customers AS T1 JOIN dis@@ count@@ _@@ coupon@@ s AS T2 ON T1.@@ coupon_id = T2.@@ coupon_id WHERE T2.@@ coupon@@ _amount = 500
SELECT name FROM C@@ L@@ u@@ b WHERE Club_ID NOT IN (SELECT Club_ID FROM play@@ er)
SELECT Hardware_@@ Model_name , Company_name FROM phone WHERE Accreditation_type LIKE 'F@@ ul@@ l@@ ';
SELECT DISTINCT product_name FROM product ORDER BY product_id
SELECT DISTINCT classroom FROM list WHERE grade = 5
SELECT DISTINCT T2.apt_number FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id = T2.apt_id WHERE T1.booking_status_code = "Confirmed"
SELECT Party FROM people GROUP BY Party ORDER BY COUNT(*) DESC LIMIT 1
SELECT country , count(*) FROM airlines GROUP BY country ORDER BY count(*) DESC
SELECT max(product_price) , min(product_price) , product_type_code FROM products GROUP BY product_type_code ORDER BY product_type_code
SELECT major , avg(age) , min(age) , max(age) FROM Student GROUP BY major
SELECT project_details FROM Projects WHERE organisation_id IN ( SELECT organisation_id FROM Projects GROUP BY organisation_id ORDER BY count(*) DESC LIMIT 1 )
SELECT t1.@@ manufacturer_id , t1.@@ num_of_@@ shops FROM manufacturer AS t1 JOIN furniture_manufacte AS t2 ON t1.@@ manufacturer_id = t2.manufacturer_id ORDER BY t2.@@ Pric@@ e_@@ in_@@ D@@ ol@@ lar DESC LIMIT 1
SELECT lname , age FROM Student WHERE StuID IN (SELECT StuID FROM Has_allergy WHERE Allergy = "Milk" INTERSECT SELECT StuID FROM Has_allergy WHERE Allergy = "Cat@@ ")
SELECT T2.@@ date_@@ mov@@ ed_in , T1.customer_id , T1.customer_details FROM Customers AS T1 JOIN Customer_@@ Events AS T2 ON T1.customer_id = T2.customer_id
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.@@ overall_rating > ( SELECT avg(@@ overall_@@ rating) FROM Player_Attributes )
SELECT T1.White , T2.Crime_rate FROM city AS T1 JOIN county_public_safety AS T2 ON T1.County_ID = T2.County_ID
SELECT T1.name , T1.@@ num@@ _@@ employees FROM department AS T1 JOIN management AS T2 ON T1.department_id = T2.department_id WHERE T2.@@ temp@@ or@@ ar@@ y_@@ act@@ ing = 'Yes'
SELECT T1.Aircraft FROM aircraft AS T1 JOIN MATCH AS T2 ON T1.Aircraft_ID = T2.Winning_Aircraft GROUP BY T2.Winning_Aircraft ORDER BY COUNT(*) DESC LIMIT 1
SELECT max(Age) , min(@@ Age) FROM STUDENT WHERE Major = 600
SELECT Party_Theme , LOCATION FROM party
SELECT T1.campus FROM campuses AS T1 JOIN faculty AS T2 ON T1.id = T2.campus WHERE T2.year = 200@@ 3 ORDER BY T2.faculty DESC LIMIT 1
SELECT name FROM people WHERE height < (SELECT avg(height) FROM people@@ )
SELECT count(*) FROM artist
SELECT title FROM Movie WHERE YEAR > (SELECT max(YEAR) FROM Movie WHERE director = "Stev@@ en Spielberg@@ ")
SELECT DISTINCT t1.fname , t1.lname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid = t2.authid JOIN inst AS t3 ON t2.instid = t3.instid WHERE t3.name = "@@ University of O@@ x@@ f@@ ord@@ "
SELECT cust_name , acc_type , acc_bal FROM customer ORDER BY credit_score DESC LIMIT 1
SELECT T1.course_description , T1.course_name FROM Courses AS T1 JOIN Student_Course_Enrolment AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name HAVING COUNT(*) > 2
SELECT T3.title , T3.@@ credits FROM classroom AS T1 JOIN SECTION AS T2 ON T1.@@ building = T2.building AND T1.@@ room_number = T2.room_number JOIN course AS T3 ON T2.course_id = T3.course_id WHERE T1.@@ capacity = (SELECT max(capacity) FROM classroom@@ )
SELECT transaction_type_code FROM TRANSACTIONS GROUP BY transaction_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT T2.Position FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id = T2.Country WHERE T1.C@@ apit@@ al = "D@@ ub@@ lin"
SELECT rID FROM Rating EXCEPT SELECT rID FROM Rating WHERE stars = 4
SELECT T1.Investor_details FROM INVESTORS AS T1 JOIN TRANSACTIONS AS T2 ON T1.investor_id = T2.investor_id WHERE T2.@@ share_count > 100
SELECT Party , COUNT(*) FROM representative GROUP BY Party ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(DISTINCT P@@ ROF@@ _N@@ UM@@ ) FROM CLASS WHERE CRS_CODE = "ACCT-211"
SELECT name , course_id FROM instructor AS T1 JOIN teaches AS T2 ON T1.ID = T2.ID
SELECT Name FROM TOURIST_ATTRACTIONS WHERE How_to_Get_There = "bus"
SELECT T3.Name FROM affected_region AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id JOIN storm AS T3 ON T1.storm_id = T3.storm_id WHERE T2.@@ Region@@ _name = 'A@@ f@@ gh@@ an@@ ist@@ an' INTERSECT SELECT T3.Name FROM affected_region AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id JOIN storm AS T3 ON T1.storm_id = T3.storm_id WHERE T2.@@ Region@@ _name = '@@ Al@@ ban@@ ia'
SELECT count(*) FROM airlines WHERE country = 'R@@ uss@@ ia'
SELECT f_id FROM files WHERE formats = "mp3"
SELECT Party_Theme , LOCATION FROM party
SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id = T2.track_id JOIN playlists AS T3 ON T2.playlist_id = T3.id WHERE T3.name = '@@ Movi@@ es' INTERSECT SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id = T2.track_id JOIN playlists AS T3 ON T2.playlist_id = T3.id WHERE T3.name = 'M@@ usic'
SELECT T1.title , T1.director FROM Movie AS T1 JOIN Movie AS T2 ON T1.director = T2.director WHERE T1.title != T2.title ORDER BY T1.director , T1.title
SELECT sum(T1.@@ salary) FROM salary AS T1 JOIN team AS T2 ON T1.team_id = T2.team_id_br WHERE T2.name = 'Boston Red Stockings' AND T1.year = 2010
SELECT d@@ raf@@ t@@ _details FROM Document_@@ Draf@@ ts WHERE document_id = 7@@ ;
SELECT DISTINCT transaction_type FROM Financial_Transactions
SELECT avg(T1.@@ Age) FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID = SE@@ CR@@ ET@@ AR@@ Y@@ _Vote WHERE T1.S@@ e@@ x = "F" AND T2.Election_Cycle = "Spring"
SELECT G@@ name FROM Plays_games AS T1 JOIN Video_games AS T2 ON T1.gameid = T2.gameid JOIN Student AS T3 ON T3.@@ Stuid = T1.@@ Stuid WHERE T3.@@ Lname = "Smith" AND T3.Fname = "Linda"
SELECT personal_name FROM Students EXCEPT SELECT T1.personal_name FROM Students AS T1 JOIN Student_Course_Enrolment AS T2 ON T1.student_id = T2.student_id
SELECT sum(access_count) FROM documents GROUP BY document_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.project_details , T1.project_id FROM Projects AS T1 JOIN Project_outcomes AS T2 ON T1.project_id = T2.project_id GROUP BY T1.project_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(@@ lat) , avg(@@ long) FROM station WHERE city = "San Jo@@ se@@ "
SELECT T2.Location FROM player AS T1 JOIN school AS T2 ON T1.School_ID = T2.School_ID GROUP BY T1.School_ID HAVING COUNT(*) > 1
SELECT count(*) FROM has_@@ allergy AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.@@ sex = "F" AND T1.allergy = "Milk" OR T1.allergy = "E@@ g@@ g@@ s"
SELECT count(*) FROM company
SELECT DISTINCT t1.fname , t1.lname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid = t2.authid JOIN inst AS t3 ON t2.instid = t3.instid WHERE t3.name = "@@ University of O@@ x@@ f@@ ord@@ "
SELECT DISTINCT POSITION FROM pilot WHERE Age > 30
SELECT lname FROM authors WHERE fname = "A@@ mal@@ "
SELECT count(*) FROM VOTING_RECORD
SELECT location_name , location@@ _description FROM Ref_locations WHERE location_code = "@@ x"
SELECT count(*) FROM files WHERE duration LIKE "4@@ :%"
SELECT distinct(@@ UnitPrice) FROM TRACK
SELECT decor , count(*) FROM Rooms WHERE basePrice > 120 GROUP BY decor;
SELECT AVG(Price) , AVG(@@ Cas@@ es) FROM WINE WHERE YEAR = 2009 AND Grape = "Z@@ inf@@ an@@ de@@ l"
SELECT DISTINCT Destruction_Authorised_by_Employee_ID FROM Documents_to_be_destroyed
SELECT phone_number FROM employees WHERE salary BETWEEN 8000 AND 12000
SELECT count(*) FROM Has_allergy AS T1 JOIN Allergy_type AS T2 ON T1.allergy = T2.@@ allergy WHERE T2.allergytype = "food"
SELECT T1.campus , sum(T2.@@ degrees) FROM campuses AS T1 JOIN degrees AS T2 ON T1.id = T2.campus WHERE T2.year >= 1998 AND T2.year <= 2002 GROUP BY T1.campus
SELECT investor_id , avg(@@ share_@@ count) FROM TRANSACTIONS GROUP BY investor_id ORDER BY avg(@@ share_@@ count)
SELECT T1.Name FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID = T2.Musical_ID ORDER BY T2.Year DESC
SELECT T3.name FROM exhibition_record AS T1 JOIN exhibition AS T2 ON T1.exhibition_id = T2.exhibition_id JOIN artist AS T3 ON T3.@@ artist_id = T2.artist_id GROUP BY T3.@@ artist_id HAVING avg(T1.@@ attendance) > 200
SELECT T1.employee_id FROM Employees AS T1 JOIN ROLES AS T2 ON T1.role_code = T2.role_code WHERE T2.role_name = "H@@ uman Res@@ our@@ c@@ e" OR T2.role_name = "M@@ anag@@ er"
SELECT document_id FROM Documents WHERE document_type_code = "CV" EXCEPT SELECT document_id FROM Documents_with_expenses
SELECT DISTINCT Venue FROM debate
SELECT max(@@ O@@ MI@@ M) FROM enzyme
SELECT T1.Name , T1.@@ population FROM country AS T1 JOIN roller_coaster AS T2 ON T1.Country_ID = T2.Country_ID ORDER BY T2.Height DESC LIMIT 1
SELECT degrees FROM campuses AS T1 JOIN degrees AS T2 ON t1.id = t2.campus WHERE t1.campus = "San Jose State University" AND t2.year = 2000
SELECT Name FROM actor ORDER BY Name ASC
SELECT DISTINCT t3.name FROM authors AS t1 JOIN authorship AS t2 ON t1.authid = t2.authid JOIN inst AS t3 ON t2.instid = t3.instid WHERE t1.fname = "K@@ at@@ su@@ hi@@ ro@@ " AND t1.lname = "Uen@@ o"
SELECT event_id FROM EVENTS EXCEPT SELECT T1.@@ event_id FROM Participants_in_Events AS T1 JOIN Participant@@ s AS T2 ON T1.Participant_ID = T2.Participant_ID WHERE Participant@@ _Details = 'K@@ en@@ y@@ att@@ a K@@ u@@ h@@ n@@ '
SELECT name , price FROM products
SELECT count(*) FROM region
SELECT T1.Aircraft FROM aircraft AS T1 JOIN airport_aircraft AS T2 ON T1.Aircraft_ID = T2.Aircraft_ID JOIN airport AS T3 ON T2.Airport_ID = T3.Airport_ID WHERE T3.Airport_Name = "London Heathrow" INTERSECT SELECT T1.Aircraft FROM aircraft AS T1 JOIN airport_aircraft AS T2 ON T1.Aircraft_ID = T2.Aircraft_ID JOIN airport AS T3 ON T2.Airport_ID = T3.Airport_ID WHERE T3.Airport_Name = "London Gatwick"
SELECT T2.@@ Carrier FROM stock AS T1 JOIN device AS T2 ON T1.Device_ID = T2.@@ Device_ID GROUP BY T1.Device_ID HAVING COUNT(*) > 1
SELECT t1.customer_name FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id = t2.customer_id ORDER BY t2.@@ order_date DESC LIMIT 1
SELECT name , price FROM products
SELECT T1.A@@ ct@@ ual_@@ Delivery_@@ Date FROM Customer_Orders AS T1 JOIN ORDER_ITEMS AS T2 ON T1.@@ Order_ID = T2.@@ Order_ID WHERE T2.@@ Order_@@ Qu@@ ant@@ ity = 1
SELECT count(*) FROM book_club
SELECT T1.Name , T2.Tourist_Attraction_ID , COUNT(*) FROM Tourist_Attractions AS T1 JOIN VISITS AS T2 ON T1.Tourist_Attraction_ID = T2.Tourist_Attraction_ID GROUP BY T2.Tourist_Attraction_ID
SELECT DISTINCT T4.name FROM PersonFriend AS T1 JOIN Person AS T2 ON T1.name = T2.name JOIN PersonFriend AS T3 ON T1.f@@ riend = T3.name JOIN PersonFriend AS T4 ON T3.@@ friend = T4.name WHERE T2.name = 'Alice' AND T4.name != 'Alice'
SELECT Carrier , COUNT(*) FROM phone GROUP BY Carrier
SELECT count(*) , T3.product_id FROM orders AS T1 JOIN order_items AS T2 JOIN products AS T3 ON T1.order_id = T2.order_id AND T2.product_id = T3.product_id GROUP BY T3.product_id
SELECT song_name FROM song WHERE languages = "english"
SELECT T1.Name FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID = T2.Musical_ID WHERE T2.Name = "T@@ he P@@ ha@@ nt@@ om of the Oper@@ a"
SELECT T2.product_name , sum(T1.@@ product_quantity) FROM Order_items AS T1 JOIN Products AS T2 ON T1.product_id = T2.product_id GROUP BY T2.product_name
SELECT trade_name , count(*) FROM medicine GROUP BY trade_name
SELECT T1.product_name , sum(@@ T2.order_@@ quantity) FROM products AS T1 JOIN order_items AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_id
SELECT DISTINCT t3.name FROM authors AS t1 JOIN authorship AS t2 ON t1.authid = t2.authid JOIN inst AS t3 ON t2.instid = t3.instid WHERE t1.fname = "K@@ at@@ su@@ hi@@ ro@@ " AND t1.lname = "Uen@@ o"
SELECT amount FROM payment ORDER BY amount DESC LIMIT 1
SELECT T3.Name , T2.Name FROM employment AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID JOIN company AS T3 ON T1.Company_ID = T3.Company_ID
SELECT f_id FROM files WHERE formats = "mp@@ 4" INTERSECT SELECT f_id FROM song WHERE resolution < 1000
SELECT count(*) FROM routes AS T1 JOIN airports AS T2 ON T1.@@ dst_apid = T2.@@ apid WHERE T2.country = 'I@@ tal@@ y'
SELECT party_name FROM party WHERE party_id NOT IN (SELECT party_id FROM M@@ ember@@ )
SELECT station_id , LOCATION , manager_name FROM gas_station ORDER BY open_year
SELECT avg(price_@@ in_@@ e@@ uros) , min(@@ price_@@ in_@@ e@@ uros) FROM catalog_contents
SELECT count(*) FROM home_game AS T1 JOIN park AS T2 ON T1.park_id = T2.park_id WHERE T1.year = 190@@ 7 AND T2.park_name = '@@ Col@@ um@@ bi@@ a Park@@ ';
SELECT T2.title , T1.stars , T2.director , min(T1.stars) FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID GROUP BY T2.director
SELECT DISTINCT product_@@ size FROM Products
SELECT StuID FROM Student WHERE Advisor = 1121
SELECT Grape , Winery , YEAR FROM WINE WHERE Price > 100 ORDER BY YEAR
SELECT director FROM Movie GROUP BY director HAVING count(*) = 1
SELECT DISTINCT Police_force FROM county_public_safety WHERE LOCATION != "E@@ ast"
SELECT avg(@@ lat) , avg(@@ long) FROM station WHERE city = "San Jo@@ se@@ "
SELECT DISTINCT title FROM Movie EXCEPT SELECT T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID JOIN Reviewer AS T3 ON T1.rID = T3.rID WHERE T3.name = 'Ch@@ ri@@ s J@@ ack@@ son'
SELECT physician , department FROM affiliated_with WHERE primar@@ y@@ affiliation = 1
SELECT name , dept_name FROM student ORDER BY tot_cred
SELECT count(*) , T1.director FROM Movie AS T1 JOIN Rating AS T2 ON T1.mID = T2.mID GROUP BY T1.director
SELECT city , max(lat) FROM station GROUP BY city
SELECT event@@ _name FROM party_events GROUP BY event@@ _name HAVING count(*) > 2
SELECT t1.name FROM furniture AS t1 JOIN furniture_manufacte AS t2 ON t1.Furniture_ID = t2.Furniture_ID WHERE t2.@@ Pric@@ e_@@ in_@@ D@@ ol@@ lar < (SELECT max(@@ Pric@@ e_@@ in_@@ D@@ ol@@ lar@@ ) FROM furniture_manufact@@ e)
SELECT count(*) FROM cinema
SELECT t1.product_name FROM products AS t1 JOIN ref_colors AS t2 ON t1.color_code = t2.color_code WHERE t2.color_description = "white"
SELECT t1.@@ owner FROM program AS t1 JOIN broadcast AS t2 ON t1.program_id = t2.program_id WHERE t2.Time_of_day = "Morning" INTERSECT SELECT t1.@@ owner FROM program AS t1 JOIN broadcast AS t2 ON t1.program_id = t2.program_id WHERE t2.Time_of_day = "N@@ ight@@ "
SELECT T1.@@ Location , T2.@@ N@@ ick@@ name FROM school AS T1 JOIN school@@ _details AS T2 ON T1.School_ID = T2.School_ID
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM perpetrat@@ or)
SELECT count(*) FROM files WHERE duration LIKE "4@@ :%"
SELECT T2.friend FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.name WHERE T1.name = 'Bob'
SELECT avg(age) , job FROM Person WHERE gender = 'male' GROUP BY job
SELECT DISTINCT name FROM instructor ORDER BY name
SELECT H@@ is@@ p@@ an@@ ic FROM city WHERE B@@ lack > 10
SELECT title , Studio FROM film WHERE Studio LIKE "%@@ Univers@@ al%"
SELECT T3.Player_name , T2.@@ coach@@ _name FROM player_coach AS T1 JOIN coach AS T2 ON T1.Coach_ID = T2.Coach_ID JOIN player AS T3 ON T1.Player_ID = T3.Player_ID
SELECT DISTINCT classroom FROM list WHERE grade = 4
SELECT f_id FROM song WHERE resolution > (SELECT max(@@ resolution) FROM song WHERE rating < 8@@ )
SELECT count(DISTINCT name) FROM projects
SELECT name FROM member WHERE address = 'H@@ ar@@ ford' OR address = 'W@@ at@@ erb@@ ur@@ y'
SELECT max(@@ Trans@@ it@@ _Passeng@@ ers) , min(@@ Trans@@ it@@ _Passeng@@ ers) FROM airport
SELECT count(DISTINCT Status@@ ) FROM city
SELECT T1.f@@ ault_@@ short_name , T3.@@ skill@@ _description FROM Part@@ _F@@ ault@@ s AS T1 JOIN S@@ kill@@ s_@@ Requ@@ i@@ red@@ _T@@ o_@@ F@@ i@@ x AS T2 ON T1.part@@ _@@ fault@@ _id = T2.@@ part@@ _@@ fault@@ _id JOIN Skills AS T3 ON T2.@@ skill_id = T3.@@ skill_id
SELECT f_id , genre_is , artist_name FROM song WHERE languages = "english" ORDER BY rating
SELECT T1.project_details FROM Projects AS T1 JOIN Project_outcomes AS T2 ON T1.project_id = T2.project_id JOIN Research_outcomes AS T3 ON T2.outcome_code = T3.@@ outcome_code WHERE T3.@@ outcome_description LIKE '%@@ Publish@@ ed@@ %'
SELECT T2.@@ premises_type , T1.@@ address@@ _type_code FROM customer_addresses AS T1 JOIN premises AS T2 ON T1.@@ premi@@ se@@ _id = T2.@@ premi@@ se@@ _id
SELECT CLASS FROM race GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1
SELECT emp_fname FROM employee WHERE emp_jobcode = 'P@@ RO@@ F' ORDER BY emp_@@ do@@ b
SELECT T2.@@ zip_postcode FROM Customers AS T1 JOIN Addresses AS T2 ON T1.customer_address_id = T2.address_id WHERE T1.first_name = "Carole" AND T1.last_name = "Bernhard"
SELECT name , LOCATION FROM track
SELECT Headquarters FROM company ORDER BY Sal@@ es_in_Billion DESC LIMIT 1
SELECT CName FROM COURSE ORDER BY Credits
SELECT building_@@ address , building_@@ phone FROM Apartment_Buildings WHERE building_manager	 = "B@@ ren@@ den"
SELECT name , Num_of_@@ Com@@ pon@@ ent FROM furniture ORDER BY market_@@ rate LIMIT 1
SELECT t1.clubname FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t3.sex = "F" GROUP BY t1.clubname ORDER BY count(*) DESC LIMIT 1
SELECT College FROM match_season WHERE POSITION = "M@@ id@@ fiel@@ d@@ er" INTERSECT SELECT College FROM match_season WHERE POSITION = "Defender"
SELECT Price FROM WINE WHERE YEAR < 2010
SELECT Mem@@ b@@ ers@@ hip_@@ card FROM member GROUP BY Mem@@ b@@ ers@@ hip_@@ card HAVING count(*) > 5
SELECT DISTINCT LOCATION FROM cinema
SELECT Status , COUNT(*) FROM roller_coaster GROUP BY Status
SELECT DISTINCT T2.Position FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id = T2.Country WHERE T1.C@@ apit@@ al = "D@@ ub@@ lin"
SELECT employee_id , salary FROM employees WHERE manager_id = (SELECT employee_id FROM employees WHERE first_name = 'P@@ ay@@ am@@ ' )
SELECT T2.name FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id = T2.id JOIN student AS T3 ON T1.s_id = T3.id WHERE T3.dept_name = 'Math' ORDER BY T3.@@ tot_cred
SELECT name FROM appointment AS T1 JOIN patient AS T2 ON T1.patient = T2.ssn
SELECT count(*) FROM storm WHERE Number_Deaths > 0
SELECT T1.part_id , T1.part_name FROM Parts AS T1 JOIN Part@@ _F@@ ault@@ s AS T2 ON T1.part_id = T2.part_id JOIN S@@ kill@@ s_@@ Requ@@ i@@ red@@ _T@@ o_@@ F@@ i@@ x AS T3 ON T2.@@ part@@ _@@ fault@@ _id = T3.@@ part@@ _@@ fault@@ _id GROUP BY T1.part_id ORDER BY count(*) DESC LIMIT 1
SELECT customer_details FROM customers WHERE customer_details LIKE "%Diana%"
SELECT T1.title FROM course AS T1 JOIN prereq AS T2 ON T1.course_id = T2.course_id GROUP BY T2.course_id HAVING count(*) = 2
SELECT COUNT(*) FROM CUSTOMER WHERE Email LIKE "%@@ g@@ mail@@ .com@@ %"
SELECT Nominee FROM musical WHERE Award = "Tony Award" INTERSECT SELECT Nominee FROM musical WHERE Award = "D@@ rama D@@ es@@ k Award"
SELECT T2.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid = T2.custid WHERE T1.name LIKE '%@@ ee@@ %'
SELECT Investor FROM entrepreneur GROUP BY Investor HAVING COUNT(*) >= 2
SELECT max(@@ weight) , min(@@ weight) FROM Player
SELECT T1.artist_name , count(*) FROM artist AS T1 JOIN song AS T2 ON T1.artist_name = T2.artist_name GROUP BY T2.artist_name ORDER BY count(*) DESC LIMIT 3
SELECT T1.city FROM city AS T1 JOIN temperature AS T2 ON T1.city_id = T2.city_id WHERE T2.F@@ e@@ b > T2.J@@ u@@ n UNION SELECT T3.city FROM city AS T3 JOIN hosting_city AS T4 ON T3.city_id = T4.host_city
SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id = T2.cust_id GROUP BY T1.cust_name ORDER BY sum(T2.amount)
SELECT count(*) FROM ALBUM
SELECT T2.dept_name , T1.dept_code FROM professor AS T1 JOIN department AS T2 ON T1.dept_code = T2.dept_code WHERE T1.prof_high_degree = 'Ph.D.' GROUP BY T1.dept_code ORDER BY count(*) DESC LIMIT 1
SELECT TYPE FROM vocals AS T1 JOIN songs AS T2 ON T1.songid = T2.songid JOIN band AS T3 ON T1.bandmate = T3.id WHERE T3.@@ firstname = "Solveig" AND T2.title = "A B@@ ar In Am@@ st@@ er@@ dam@@ "
SELECT T1.name_first , T1.name_last , T1.player_id , count(*) FROM player AS T1 JOIN all_@@ star AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.name FROM photos AS T1 JOIN camera_lens AS T2 ON T1.@@ camera_len@@ s_id = T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.Area FROM APPELLATIONS AS T1 JOIN WINE AS T2 ON T1.Appelation = T2.Appelation GROUP BY T2.Appelation HAVING T2.year < 2010 ORDER BY count(*) DESC LIMIT 1
SELECT city FROM Addresses ORDER BY city
SELECT product_price FROM products WHERE product_id NOT IN (SELECT product_id FROM complaint@@ s)
SELECT DISTINCT T1.Fname FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID = T2.CLASS@@ _Senator_@@ VOTE
SELECT Name FROM pilot WHERE Age <= 30 ORDER BY Name DESC
SELECT name FROM building EXCEPT SELECT T1.name FROM building AS T1 JOIN institution AS T2 ON T1.building_id = T2.building_id WHERE T2.f@@ ounded = 200@@ 3
SELECT avg(rating) , languages FROM song GROUP BY languages
SELECT T1.Store_Phone , T1.Store_Email_Address FROM Drama_Workshop_Groups AS T1 JOIN Services AS T2 ON T1.Workshop_Group_ID = T2.Workshop_Group_ID WHERE T2.Product_Name = "film@@ "
SELECT T1.Name , T2.Name FROM city AS T1 JOIN county_public_safety AS T2 ON T1.County_ID = T2.County_ID
SELECT part_id , char@@ ge@@ a@@ ble@@ _amount FROM Parts ORDER BY char@@ ge@@ a@@ ble@@ _amount ASC LIMIT 1
SELECT count(*) FROM Video_games WHERE gtype = "M@@ ass@@ iv@@ ely mult@@ i@@ player on@@ line game"
SELECT Name FROM People ORDER BY Height ASC
SELECT campus FROM campuses WHERE LOCATION = "C@@ hi@@ co@@ "
SELECT t1.last_name FROM staff AS t1 JOIN complaints AS t2 ON t1.staff_id = t2.staff_id ORDER BY t2.date_complaint_raised LIMIT 1
SELECT T1.state_province_county FROM Addresses AS T1 JOIN Staff AS T2 ON T1.address_id = T2.staff_address_id GROUP BY T1.state_province_county HAVING count(*) BETWEEN 2 AND 4;
SELECT T1.department_name , T2.city , T2.@@ state_province FROM departments AS T1 JOIN locations AS T2 ON T2.location_id = T1.@@ location_id
SELECT organiz@@ ed_by , name FROM church WHERE open_date BETWEEN 18@@ 30 AND 18@@ 40
SELECT pilot FROM flight GROUP BY pilot ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT claim_@@ outco@@ me_@@ code) FROM claims_process@@ ing
SELECT DISTINCT T1.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom = T2.classroom WHERE T1.@@ grade = 3 AND T2.firstname != "@@ CO@@ V@@ IN@@ " AND T2.lastname != "J@@ E@@ RO@@ ME@@ "
SELECT Market@@ ing_Region_@@ D@@ esc@@ ri@@ p@@ tr@@ ion FROM Market@@ ing_Reg@@ ions WHERE Market@@ ing_Region_@@ Name = "China"
SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id = T2.track_id JOIN playlists AS T3 ON T3.id = T2.playlist_id WHERE T3.name = "M@@ o@@ vi@@ es@@ ";
SELECT Song FROM volume WHERE Weeks_on_Top > 1
SELECT count(DISTINCT state) FROM college WHERE enr < (SELECT avg(enr) FROM college)
SELECT train_number , TIME FROM train WHERE origin = 'Ch@@ enn@@ ai@@ ' AND destination = 'G@@ uru@@ vay@@ ur@@ '
SELECT T1.@@ document_date FROM Documents AS T1 JOIN Documents_with_@@ Ex@@ pen@@ ses AS T2 ON T1.document_id = T2.document_id WHERE T2.budget_type_code = 'G@@ V' INTERSECT SELECT T1.@@ document_date FROM Documents AS T1 JOIN Documents_with_@@ Ex@@ pen@@ ses AS T2 ON T1.document_id = T2.document_id WHERE T2.budget_type_code = 'SF'
SELECT LOCATION FROM performance GROUP BY LOCATION ORDER BY COUNT(*) DESC LIMIT 1
SELECT location_code , count(*) FROM Document_locations GROUP BY location_code
SELECT Offici@@ al_@@ nat@@ iv@@ e_@@ language FROM country WHERE Offici@@ al_@@ nat@@ iv@@ e_@@ language LIKE "%@@ English@@ %"
SELECT count(*) FROM scientists WHERE ssn NOT IN (SELECT scientist FROM AssignedTo)
SELECT Major FROM STUDENT GROUP BY major ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT building FROM Faculty
SELECT date_of_latest_@@ re@@ vision FROM Catalo@@ g@@ s GROUP BY date_of_latest_@@ re@@ vision HAVING count(*) > 1
SELECT T1.date_of_@@ notes FROM Assessment_Notes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.first_name = "F@@ ann@@ y"
SELECT date_@@ left_@@ staff FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn";
SELECT first_name , last_name , gend@@ er_@@ m@@ f FROM customers WHERE good@@ _@@ or@@ _b@@ ad@@ _@@ customer = '@@ good@@ ' ORDER BY last_name
SELECT T1.name , count(*) FROM storm AS T1 JOIN affected_region AS T2 ON T1.storm_id = T2.storm_id GROUP BY T1.storm_id
SELECT first_name , last_name FROM Maintenance_Engineers WHERE engineer_id NOT IN (SELECT engineer_id FROM Engineer_@@ Visit@@ s)
SELECT sum(revenue) FROM manufacturers WHERE headquarter = 'Austin@@ '
SELECT policy_type_code , count(*) FROM policies GROUP BY policy_type_code
SELECT count(*) FROM medicine WHERE FDA_@@ approved = 'N@@ o'
SELECT count(*) FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.customer_first_name = "A@@ r@@ t" AND T2.customer_last_name = "Turcotte"
SELECT Major , count(*) FROM Student GROUP BY Major ORDER BY count(@@ Ma@@ j@@ or) ASC LIMIT 1;
SELECT Publisher FROM publication ORDER BY Price DESC LIMIT 1
SELECT count(DISTINCT school_@@ code) FROM department
SELECT DISTINCT T1.player_name , T1.b@@ ir@@ th@@ day FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY po@@ tent@@ ial DESC LIMIT 5
SELECT count(*) FROM csu_fees WHERE campusfee > (SELECT avg(campusfee) FROM csu_fe@@ es)
SELECT name , distance FROM Aircraft
SELECT count(*) FROM ship
SELECT DISTINCT T1.name FROM web_client_accelerator AS T1 JOIN accelerator_compatible_browser AS T2 ON T2.@@ accelerator_id = T1.id JOIN browser AS T3 ON T2.browser_id = T3.id WHERE T3.@@ market_share > 1@@ 5;
SELECT name FROM races WHERE TIME > "12@@ :00:@@ 00" OR TIME < "@@ 09@@ :00:@@ 00"
SELECT pets_allowed_yn , avg(price_range) FROM HOTELS GROUP BY pets_allowed_yn
SELECT T1.Name FROM people AS T1 JOIN perpetrator AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Country != "China"
SELECT T3.Fname , T3.@@ LName , T2.gradepoint FROM ENROLLED_IN AS T1 JOIN GRADECONVERSION AS T2 JOIN STUDENT AS T3 ON T1.Grade = T2.lettergrade AND T1.StuID = T3.StuID
SELECT count(*) , T1.fault_log_entry_id FROM Fault_Log AS T1 JOIN Engineer_Visits AS T2 ON T1.fault_log_entry_id = T2.f@@ ault_log_entry_id GROUP BY T1.fault_log_entry_id ORDER BY count(*) DESC LIMIT 1
SELECT district_name FROM district ORDER BY city_p@@ opulation DESC LIMIT 1
SELECT sum(T1.@@ salary) FROM salary AS T1 JOIN team AS T2 ON T1.team_id = T2.team_id_br WHERE T2.name = 'Boston Red Stockings' AND T1.year = 2010
SELECT T1.firstname , T1.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom = T2.classroom WHERE T2.firstname = "M@@ AR@@ RO@@ T@@ TE@@ " AND T2.lastname = "K@@ I@@ R@@ K"
SELECT count(*) FROM courses AS T1 JOIN student_course_attendance AS T2 ON T1.course_id = T2.course_id WHERE T1.course_name = "@@ English@@ "
SELECT first_name , last_name FROM Customers WHERE amount_outstanding BETWEEN 1000 AND 300@@ 0;
SELECT cName FROM tryout WHERE pPos = 'mid' EXCEPT SELECT cName FROM tryout WHERE pPos = 'goalie'
SELECT T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID WHERE T1.stars BETWEEN 3 AND 5
SELECT title , directed_by FROM film
SELECT count(*) FROM party_events
SELECT sum(hoursperweek) , sum(gamesplayed) FROM Sportsinfo AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.Fname = "Dav@@ id@@ " AND T2.Lname = "Shi@@ eber"
SELECT sum(amount) FROM payment
SELECT customer_details FROM customers EXCEPT SELECT t2.customer_details FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id = t2.customer_id
SELECT count(DISTINCT T2.D@@ eleg@@ ate) FROM county AS T1 JOIN election AS T2 ON T1.County_id = T2.District WHERE T1.Population > 50000
SELECT T2.apt_number , T1.booking_start_date , T1.booking_start_date FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id = T2.apt_id
SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id = T2.track_id JOIN playlists AS T3 ON T2.playlist_id = T3.id WHERE T3.name = '@@ Movi@@ es' EXCEPT SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id = T2.track_id JOIN playlists AS T3 ON T2.playlist_id = T3.id WHERE T3.name = 'M@@ usic'
SELECT DISTINCT start_station_name FROM trip WHERE duration < 100
SELECT T1.name , T1.@@ lat , min(T2.@@ duration) FROM station AS T1 JOIN trip AS T2 ON T1.id = T2.@@ end_station_id GROUP BY T2.@@ end_station_id
SELECT student_id FROM student_course_registrations GROUP BY student_id ORDER BY count(*) LIMIT 1
SELECT DISTINCT TYPE FROM institution
SELECT gname FROM Plays_games AS T1 JOIN Video_games AS T2 ON T1.gameid = T2.gameid GROUP BY T1.gameid HAVING sum(hours_played) >= 1000
SELECT * FROM Albums WHERE YEAR = 2010
SELECT T1.@@ ele@@ ct@@ or@@ al_@@ regist@@ er_id FROM E@@ le@@ ct@@ or@@ al_@@ Reg@@ ist@@ er AS T1 JOIN CMI_Cross_References AS T2 ON T1.cmi_cross_ref_id = T2.cmi_cross_ref_id WHERE T2.@@ source_system_code = 'E@@ le@@ ct@@ or@@ al@@ ' OR T2.@@ source_system_code = 'T@@ a@@ x'
SELECT count(*) FROM COURSES
SELECT personal_name , family_name FROM Students ORDER BY family_name
SELECT T2.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.friend WHERE T1.city = '@@ ne@@ w y@@ ork city@@ '
SELECT DISTINCT T1.name , T1.@@ position FROM physician AS T1 JOIN prescribes AS T2 ON T1.employeeid = T2.physician JOIN medication AS T3 ON T3.code = T2.medication WHERE T3.@@ B@@ rand = "@@ X@@ "
SELECT count(*) , Grape FROM WINE GROUP BY Grape
SELECT Name FROM mountain ORDER BY Height DESC LIMIT 1
SELECT count(DISTINCT Team@@ ) FROM match_season
SELECT project_details FROM Projects WHERE project_id NOT IN ( SELECT project_id FROM Project_Staff WHERE role_code = 'researcher' )
SELECT open_year , name FROM manufacturer ORDER BY num_of_@@ shops DESC LIMIT 1
SELECT title FROM course WHERE course_id NOT IN (SELECT course_id FROM prereq)
SELECT COUNT(*) FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId = T2.ArtistId WHERE T2.Name = "M@@ et@@ all@@ ic@@ a"
SELECT count(*) FROM Ref_Shipping_Agents JOIN Documents ON Documents.shipping_agent_code = Ref_Shipping_Agents.shipping_agent_code WHERE Ref_Shipping_Agents.shipping_agent_name = "US@@ PS";
SELECT T1.fname , T1.lname FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID = T2.advisor GROUP BY T1.FacID ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM exhibition WHERE YEAR >= 2005
SELECT sum(grant_amount) FROM Grants AS T1 JOIN Organisations AS T2 ON T1.organisation_id = T2.organisation_id JOIN organisation_Types AS T3 ON T2.organisation_type = T3.organisation_type WHERE T3.@@ organisation_type_description = 'Research'
SELECT other_account_details FROM Accounts WHERE account_name = "@@ 33@@ 8"
SELECT name , year_join FROM artist WHERE country != 'United States'
SELECT max(T2.fastestlapspeed) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2008 AND T1.name = "Monaco Grand Prix"
SELECT yearid FROM hall_of_fame GROUP BY yearid ORDER BY count(*) ASC LIMIT 1;
SELECT Category FROM music_festival WHERE RESULT = "Awarde@@ d"
SELECT T1.firstname , T1.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom = T2.classroom WHERE T2.firstname = "M@@ AR@@ RO@@ T@@ TE@@ " AND T2.lastname = "K@@ I@@ R@@ K"
SELECT count(DISTINCT servic@@ es) FROM station
SELECT County_name FROM county ORDER BY Population ASC
SELECT shop_id , address FROM shop WHERE score < (SELECT avg(@@ score@@ ) FROM shop@@ )
SELECT name FROM storm EXCEPT SELECT T1.name FROM storm AS T1 JOIN affected_region AS T2 ON T1.storm_id = T2.storm_id GROUP BY T1.storm_id HAVING count(*) >= 2
SELECT DISTINCT Location_Name FROM LOCATIONS
SELECT mode@@ l_name FROM chip_model EXCEPT SELECT chip_model FROM phone WHERE Accreditation_type = 'F@@ ul@@ l@@ '
SELECT count(DISTINCT t2.@@ position@@ ) FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid WHERE t1.clubname = "Bootup Baltimore"
SELECT Nationality FROM HOST WHERE Age > 4@@ 5 INTERSECT SELECT Nationality FROM HOST WHERE Age < 3@@ 5
SELECT region_name FROM region ORDER BY region_name
SELECT T3.S@@ hop_Name , T2.@@ Carrier FROM stock AS T1 JOIN device AS T2 ON T1.Device_ID = T2.@@ Device_ID JOIN shop AS T3 ON T1.Shop_ID = T3.S@@ hop_ID
SELECT T1.campus FROM campuses AS t1 JOIN faculty AS t2 ON t1.id = t2.campus WHERE t2.@@ faculty >= 600 AND t2.@@ faculty <= 1000 AND T1.year = 2004
SELECT DISTINCT T1.firstname , T1.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom = T2.classroom WHERE T1.@@ grade = 1 EXCEPT SELECT T1.firstname , T1.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom = T2.classroom WHERE T2.firstname = "OTHA" AND T2.lastname = "MOYER"
SELECT T2.customer_name FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id HAVING count(*) <= 2
SELECT avg(price) FROM wine WHERE Appelation NOT IN (SELECT T1.Appelation FROM APPELLATIONS AS T1 JOIN WINE AS T2 ON T1.Appelation = T2.Appelation WHERE T1.County = 'Son@@ om@@ a')
SELECT start_station_name , start_station_id FROM trip WHERE start_date LIKE "8/%" GROUP BY start_station_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT Advisor , count(*) FROM STUDENT GROUP BY Advisor
SELECT Category , COUNT(*) FROM music_festival GROUP BY Category
SELECT T1.Name FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID = T2.Musical_ID ORDER BY T2.Year DESC
SELECT Name FROM county_public_safety ORDER BY Population DESC
SELECT classroom , count(*) FROM list WHERE grade = "@@ 0@@ " GROUP BY classroom
SELECT customer_name FROM customers WHERE payment_method = (SELECT payment_method FROM customers GROUP BY payment_method ORDER BY count(*) DESC LIMIT 1)
SELECT DISTINCT T1.Grape FROM GRAPES AS T1 JOIN WINE AS T2 ON T1.Grape = T2.Grape WHERE T1.Color = "White" AND T2.@@ score > 90
SELECT card_type_code , count(DISTINCT customer_id) FROM Customers_cards GROUP BY card_type_code
SELECT T2.address FROM staff AS T1 JOIN address AS T2 ON T1.address_id = T2.address_id WHERE T1.first_name = 'E@@ ls@@ a'
SELECT max(@@ Population) , min(@@ Population) FROM county
SELECT t1.customer_name FROM customers AS t1 JOIN first_notification_of_loss AS t2 ON t1.customer_id = t2.customer_id JOIN services AS t3 ON t2.service_id = t3.service_id WHERE t3.service_name = "Close a policy" INTERSECT SELECT t1.customer_name FROM customers AS t1 JOIN first_notification_of_loss AS t2 ON t1.customer_id = t2.customer_id JOIN services AS t3 ON t2.service_id = t3.service_id WHERE t3.service_name = "New policy app@@ lic@@ ation"
SELECT product_category_code , typical_buying_price FROM products WHERE product_name = "cumin"
SELECT count(*) FROM airports WHERE name LIKE '%@@ Int@@ ern@@ ational@@ %'
SELECT name FROM buildings ORDER BY Height DESC
SELECT T1.name , T1.hours FROM projects AS T1 JOIN assignedto AS T2 ON T1.code = T2.project GROUP BY T2.project ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM player
SELECT T1.statement_id , T2.@@ statement_details , T1.@@ account_details FROM Accounts AS T1 JOIN Statements AS T2 ON T1.statement_id = T2.@@ statement_id
SELECT T1.Aircraft , T1.Description FROM aircraft AS T1 JOIN airport_aircraft AS T2 ON T1.Aircraft_ID = T2.Aircraft_ID JOIN airport AS T3 ON T2.Airport_ID = T3.Airport_ID WHERE T3.@@ Total_@@ Passeng@@ ers > 10000000
SELECT id FROM station WHERE lat > 37.@@ 4 EXCEPT SELECT station_id FROM status GROUP BY station_id HAVING min(@@ bikes_available) < 7
SELECT order_id FROM shipments WHERE shipment_tracking_number = "@@ 345@@ 2"
SELECT catalog_entry_name FROM catalog_contents ORDER BY capacity ASC LIMIT 1
SELECT sum(@@ Sh@@ are_@@ in_percent) FROM channel WHERE OWNER = 'CCTV'
SELECT T1.Name , T2.Height FROM climber AS T1 JOIN mountain AS T2 ON T1.Mountain_ID = T2.Mountain_ID
SELECT date_of_birth FROM Customers WHERE customer_status_code = 'G@@ ood Customer@@ '
SELECT DISTINCT card_type_code FROM Customers_@@ C@@ ard@@ s
SELECT T1.name , T1.@@ long , avg(T2.@@ duration) FROM station AS T1 JOIN trip AS T2 ON T1.id = T2.start_station_id GROUP BY T2.start_station_id
SELECT country FROM competition WHERE competition_type = 'Friendly' INTERSECT SELECT country FROM competition WHERE competition_type = 'Tournament'
SELECT Date FROM game ORDER BY home_@@ team DESC
SELECT C@@ en@@ sus@@ _@@ Ran@@ king FROM city WHERE Status != "Vil@@ la@@ g@@ e"
SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id = T2.cust_id WHERE loan_type = 'M@@ ortg@@ ag@@ es' INTERSECT SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id = T2.cust_id WHERE loan_type = 'A@@ u@@ to'
SELECT product_name FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id = t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id = t3.characteristic_id JOIN ref_colors AS t4 ON t1.color_code = t4.color_code WHERE t4.color_description = "red" AND t3.characteristic_name = "@@ f@@ ast"
SELECT date_from , date_to FROM Project_Staff WHERE project_id IN( SELECT project_id FROM Project_Staff GROUP BY project_id ORDER BY count(*) DESC LIMIT 1 ) UNION SELECT date_from , date_to FROM Project_Staff WHERE role_code = '@@ lead@@ er'
SELECT count(*) , gender FROM artist GROUP BY gender
SELECT avg(T2.@@ gradepoint) FROM ENROLLED_IN AS T1 JOIN GRADECONVERSION AS T2 JOIN STUDENT AS T3 ON T1.Grade = T2.lettergrade AND T1.StuID = T3.StuID WHERE T3.@@ LName = "Smith"
SELECT student_id FROM student_course_attendance WHERE course_id = 301 ORDER BY date_of_@@ attendance DESC LIMIT 1
SELECT t3.individual_last_name FROM organizations AS t1 JOIN organization_contact_individuals AS t2 ON t1.organization_id = t2.organization_id JOIN individuals AS t3 ON t2.individual_id = t3.individual_id WHERE t1.@@ uk_vat@@ _number = (SELECT max(@@ uk_vat@@ _@@ number) FROM organization@@ s) ORDER BY t2.date_contact_to ASC LIMIT 1
SELECT product_name FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id = t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id = t3.characteristic_id JOIN ref_colors AS t4 ON t1.color_code = t4.color_code WHERE t4.color_description = "red" AND t3.characteristic_name = "@@ f@@ ast"
SELECT fname , lname FROM Student WHERE StuID NOT IN (SELECT T1.StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy = T2.Allergy WHERE T2.allergytype = "food@@ ")
SELECT count(*) FROM employees AS T1 JOIN customers AS T2 ON T2.support_rep_id = T1.id WHERE T1.first_name = "Stev@@ e" AND T1.last_name = "Jo@@ h@@ n@@ son@@ ";
SELECT min(T2.@@ HS) , T1.p@@ Pos FROM tryout AS T1 JOIN player AS T2 ON T1.pID = T2.pID GROUP BY T1.p@@ Pos
SELECT name , open_date , organiz@@ ed_by FROM Ch@@ ur@@ ch
SELECT t2.customer_details FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id = t2.customer_id WHERE t1.@@ start_date = (SELECT max(@@ start_@@ date) FROM polici@@ es)
SELECT count(*) FROM products WHERE product_id NOT IN ( SELECT product_id FROM Order_items )
SELECT count(*) FROM enzyme WHERE id NOT IN ( SELECT enzyme_id FROM medicine_enzyme_interaction );
SELECT T1.Fname , T1.@@ Lname FROM FACULTY AS T1 JOIN MEMBER_OF AS T2 ON T1.FacID = T2.FacID WHERE T2.DNO = 5@@ 20
SELECT T1.name FROM tracks AS T1 JOIN invoice_@@ lines AS T2 ON T1.id = T2.track_id JOIN invoices AS T3 ON T3.id = T2.@@ invoic@@ e_id JOIN customers AS T4 ON T4.id = T3.@@ customer_id WHERE T4.@@ first_name = "D@@ a@@ an" AND T4.@@ last_name = "P@@ e@@ et@@ ers@@ ";
SELECT DISTINCT T1.customer_name FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id JOIN products AS T4 ON T3.product_id = T4.product_id WHERE T4.product_name = "@@ ke@@ ybo@@ ard"
SELECT name FROM circuits WHERE country = "UK" OR country = "Mal@@ ay@@ si@@ a"
SELECT Price FROM WINE WHERE YEAR < 2010
SELECT min(@@ seat@@ ing) , max(@@ seat@@ ing) , avg(@@ seat@@ ing) FROM track
SELECT DISTINCT blockcode FROM room WHERE un@@ available = 0
SELECT Team FROM elimination GROUP BY Team HAVING COUNT(*) > 3
SELECT T2.student_id FROM courses AS T1 JOIN student_course_registrations AS T2 ON T1.course_id = T2.course_id WHERE T1.course_name = "@@ statistic@@ s" ORDER BY T2.@@ registr@@ ation_date
SELECT DISTINCT Visit_Date FROM VISITS
SELECT T1.City_Town FROM Addresses AS T1 JOIN Stores AS T2 ON T1.Address_ID = T2.Address_ID WHERE T2.Store_Name = "F@@ J@@ A Film@@ ing"
SELECT count(DISTINCT customer_id) FROM customer_orders WHERE order_status = "Cancelled"
SELECT T1.name FROM user_profiles AS T1 JOIN follows AS T2 ON T1.uid = T2.f1 GROUP BY T2.f1 HAVING count(*) > (SELECT count(*) FROM user_profiles AS T1 JOIN follows AS T2 ON T1.uid = T2.f1 WHERE T1.name = 'T@@ y@@ l@@ er S@@ wif@@ t@@ ')
SELECT count(*) FROM ROLES
SELECT DISTINCT product_name FROM product ORDER BY product_name
SELECT sum(@@ Domestic_Passeng@@ ers) FROM airport WHERE Airport_Name LIKE "%@@ London@@ %"
SELECT avg(Age) FROM artist
SELECT city , state FROM bank WHERE bname = '@@ morn@@ ing@@ side@@ '
SELECT sum(revenue) FROM manufacturers WHERE Headquarter = 'Tokyo' OR Headquarter = 'T@@ ai@@ w@@ an'
SELECT DISTINCT District FROM election
SELECT date_of_birth FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn";
SELECT f_id FROM files WHERE formats = "mp@@ 4" INTERSECT SELECT f_id FROM song WHERE resolution < 1000
SELECT employee_id , first_name , last_name , salary FROM employees WHERE salary > ( SELECT AVG (salary) FROM employees ) AND department_id IN ( SELECT department_id FROM employees WHERE first_name LIKE '%@@ J@@ %@@ ')
SELECT count(*) FROM airlines WHERE country = 'R@@ uss@@ ia'
SELECT t3.title FROM authors AS t1 JOIN authorship AS t2 ON t1.authid = t2.authid JOIN papers AS t3 ON t2.paperid = t3.paperid JOIN inst AS t4 ON t2.instid = t4.instid WHERE t4.country = "Japan" AND t2.authorder = 1 AND t1.lname = "O@@ hori"
SELECT T1.Name FROM Tourist_Attractions AS T1 JOIN VISITS AS T2 ON T1.Tourist_Attraction_ID = T2.Tourist_Attraction_ID JOIN VISITORS AS T3 ON T2.Tourist_ID = T3.Tourist_ID WHERE T3.@@ Tourist_Details = "Vincent"
SELECT rank FROM captain GROUP BY rank ORDER BY count(*) DESC LIMIT 1
SELECT semester , YEAR FROM takes GROUP BY semester , YEAR ORDER BY count(*) LIMIT 1
SELECT DISTINCT Product_Name FROM PRODUCTS WHERE Product_Price > (SELECT avg(Product_Price) FROM PRODU@@ CT@@ S@@ )
SELECT campus FROM campuses WHERE county = "Los Angeles" AND YEAR > 19@@ 50
SELECT P@@ lan@@ n@@ ed_@@ Delivery_@@ Date , A@@ ct@@ ual_@@ Delivery_@@ Date FROM BOOKINGS
SELECT decor , count(*) FROM Rooms WHERE bedType = "K@@ ing" GROUP BY decor;
SELECT College FROM submission WHERE Scores > 90 INTERSECT SELECT College FROM submission WHERE Scores < 80
SELECT sum(t1.@@ amount_@@ clai@@ med) FROM claim_headers AS t1 JOIN claims_@@ documents AS t2 ON t1.@@ claim_head@@ er_id = t2.@@ claim_id WHERE t2.@@ created_date = (SELECT created_date FROM claims_@@ documents ORDER BY created_date LIMIT 1)
SELECT Phone FROM EMPLOYEE
SELECT dept_name FROM course GROUP BY dept_name ORDER BY sum(@@ credit@@ s) DESC LIMIT 1
SELECT Party_Theme FROM party ORDER BY Number_of_hosts ASC
SELECT avg(Price) , avg(S@@ core) , Appelation FROM WINE GROUP BY Appelation
SELECT T2.@@ decor FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room = T2.RoomId GROUP BY T2.@@ decor ORDER BY count(@@ T2.@@ decor@@ ) ASC LIMIT 1;
SELECT T4.dept_name FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code = T2.class_code JOIN course AS T3 ON T1.crs_code = T3.crs_code JOIN department AS T4 ON T3.dept_code = T4.dept_code GROUP BY T3.dept_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM country WHERE country_id NOT IN ( SELECT country_id FROM roller_coaster WHERE LENGTH > 3000 )
SELECT date FROM weather WHERE zip_code = 9410@@ 7 AND EVENTS != "F@@ o@@ g@@ " AND EVENTS != "R@@ ain"
SELECT T3.EMP@@ _FNAME , T3.EMP@@ _@@ L@@ NAME FROM professor AS T1 JOIN department AS T2 ON T1.dept_code = T2.dept_code JOIN employee AS T3 ON T1.EMP_NUM = T3.EMP@@ _NUM WHERE DEPT_NAME = "B@@ iolog@@ y"
SELECT name FROM physician WHERE POSITION LIKE '%@@ s@@ en@@ i@@ or@@ %'
SELECT LENGTH , Height FROM roller_coaster
SELECT count(*) FROM CUSTOMERS
SELECT Date_Claim_Made FROM Claims ORDER BY Date_Claim_Made ASC LIMIT 1
SELECT t1.@@ d@@ name FROM department AS t1 JOIN dept_@@ locations AS t2 ON t1.@@ d@@ number = t2.@@ d@@ number WHERE t2.@@ d@@ location = 'H@@ ou@@ st@@ on@@ '
SELECT T2.emp_fname FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num = T2.emp_num GROUP BY T1.prof_num HAVING count(*) > 1
SELECT Studio FROM film EXCEPT SELECT Studio FROM film WHERE Director = "W@@ alter Hill@@ "
SELECT job_id FROM job_history WHERE end_date - start_date > 300 GROUP BY job_id HAVING COUNT(*) >= 2
SELECT Investor FROM entrepreneur GROUP BY Investor HAVING COUNT(*) >= 2
SELECT date_of_latest_@@ log@@ on FROM Students WHERE family_name = "J@@ as@@ k@@ ol@@ sk@@ i" OR family_name = "L@@ an@@ go@@ sh"
SELECT LOCATION FROM perpetrator ORDER BY K@@ il@@ led DESC LIMIT 1
SELECT gname , gtype FROM Video_games ORDER BY gname
SELECT t1.@@ product FROM product AS t1 JOIN store_@@ product AS t2 ON t1.product_id = t2.product_id JOIN store AS t3 ON t2.store_id = t3.@@ store_id WHERE t3.@@ store_name = "M@@ iram@@ ic@@ hi@@ "
SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM Customers_cards AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 2
SELECT T1.customer_name FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status_code = '@@ Comp@@ lete@@ d@@ ' INTERSECT SELECT T1.customer_name FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status_code = '@@ Part@@ '
SELECT email FROM user_profiles WHERE name = 'M@@ ar@@ y'
SELECT T1.name FROM physician AS T1 JOIN prescribes AS T2 ON T1.employeeid = T2.physician ORDER BY T2.do@@ se DESC LIMIT 1
SELECT max(T1.HS) , pPos FROM player AS T1 JOIN tryout AS T2 ON T1.pID = T2.pID WHERE T1.HS > 1000 GROUP BY T2.pPos
SELECT DISTINCT gtype FROM Video_games
SELECT DISTINCT firstname , lastname FROM teachers
SELECT count(DISTINCT s_@@ id) FROM advisor
SELECT T3.amenity_name FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid = T2.dormid JOIN dorm_amenity AS T3 ON T2.amenid = T3.amenid WHERE T1.dorm_name = 'Smith Hall'
SELECT T2.roomName , T1.Rate , T1.C@@ heckIn , T1.C@@ heck@@ O@@ ut FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room = T2.RoomId GROUP BY T1.Room ORDER BY T1.Rate DESC LIMIT 1;
SELECT T1.S@@ ho@@ p_@@ Details FROM S@@ HO@@ P@@ S AS T1 JOIN TOURIST_ATTRACTIONS AS T2 ON T1.Shop_ID = T2.Tourist_Attraction_ID WHERE T2.How_to_Get_There = "walk"
SELECT name_first , name_last FROM player AS T1 JOIN all_@@ star AS T2 ON T1.player_id = T2.player_id WHERE YEAR = 1998
SELECT T2.lastname FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate = T2.id WHERE st@@ age@@ position = "back" GROUP BY lastname ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.name , T1.age FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.name WHERE T2.friend = 'Dan' OR T2.friend = 'Alice'
SELECT sum(@@ duration) , max(duration) FROM trip WHERE bike_id = 6@@ 36
SELECT company , main_industry FROM company WHERE headquarters != 'USA'
SELECT DISTINCT Registration_Date , Election_Cycle FROM VOTING_RECORD
SELECT t1.customer_name FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.customer_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name , T1.customer_id FROM customer AS T1 JOIN payment AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY sum(amount) ASC LIMIT 1
SELECT T1.statement_id , T2.@@ statement_details , T1.@@ account_details FROM Accounts AS T1 JOIN Statements AS T2 ON T1.statement_id = T2.@@ statement_id
SELECT Sp@@ e@@ ed FROM roller_coaster ORDER BY LENGTH DESC LIMIT 1
SELECT T1.student_id , T2.last_name FROM Behavior_Incident AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.@@ detent@@ ion@@ _type_code , T2.@@ detent@@ ion@@ _type_description FROM Detention AS T1 JOIN Ref_@@ Det@@ ent@@ ion_@@ Type AS T2 ON T1.@@ detent@@ ion@@ _type_code = T2.@@ detent@@ ion@@ _type_code GROUP BY T1.@@ detent@@ ion@@ _type_code ORDER BY count(*) ASC LIMIT 1
SELECT DISTINCT T1.name FROM physician AS T1 JOIN prescribes AS T2 ON T1.employeeid = T2.physician JOIN medication AS T3 ON T3.code = T2.medication WHERE T3.name = "T@@ h@@ es@@ is@@ in"
SELECT T1.student_id , count(*) FROM students AS T1 JOIN student_course_registrations AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT email , phone FROM customers WHERE first_name = "Astrid" AND last_name = "Grub@@ er";
SELECT name FROM procedures WHERE cost > 1000 EXCEPT SELECT T3.name FROM physician AS T1 JOIN trained_in AS T2 ON T1.employeeid = T2.physician JOIN procedures AS T3 ON T3.code = T2.treatment WHERE T1.name = "John Wen"
SELECT rID FROM Rating WHERE stars != 4
SELECT count(*) FROM Projects
SELECT count(DISTINCT bran@@ d) FROM camera_lens
SELECT age FROM Person WHERE job = 'doctor' AND name = 'Zach'
SELECT T1.Aircraft FROM aircraft AS T1 JOIN MATCH AS T2 ON T1.Aircraft_ID = T2.Winning_Aircraft GROUP BY T2.Winning_Aircraft HAVING COUNT(*) >= 2
SELECT phone , post@@ al@@ _code FROM address WHERE address = '@@ 10@@ 31 D@@ au@@ g@@ av@@ p@@ ils Park@@ way@@ '
SELECT count(*) FROM scientists
SELECT Payment_Method_Code FROM Payments GROUP BY Payment_Method_Code ORDER BY count(*) DESC LIMIT 1
SELECT N@@ ick@@ name FROM school@@ _details WHERE Division != "D@@ i@@ vision 1"
SELECT count(DISTINCT program@@ _id) FROM broadcast WHERE time_of_day = 'Night'
SELECT count(*) FROM employee AS T1 JOIN CLASS AS T2 ON T1.EMP_NUM = T2.PROF_NUM WHERE T1.EMP_@@ L@@ NAME = 'G@@ raz@@ te@@ vsk@@ i@@ '
SELECT problem_log_id , problem_id FROM problem_log ORDER BY log_entry_date LIMIT 1
SELECT t2.color_description FROM products AS t1 JOIN ref_colors AS t2 ON t1.color_code = t2.color_code WHERE t1.product_name = "@@ cat@@ ni@@ p@@ "
SELECT count(*) , account_id FROM Financial_transactions
SELECT name FROM artist ORDER BY year_join DESC LIMIT 1
SELECT customer_name , customer_phone , customer_email FROM Customers ORDER BY date_@@ be@@ cam@@ e_@@ customer
SELECT T3.Name FROM repair_assignment AS T1 JOIN machine AS T2 ON T1.machine_id = T2.machine_id JOIN technician AS T3 ON T1.technician_ID = T3.technician_ID WHERE T2.@@ val@@ ue_@@ points > 70
SELECT T1.name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Position = "R@@ i@@ ght W@@ ing"
SELECT StuID FROM Student WHERE Sex = 'M'
SELECT avg(@@ W@@ ork@@ ing_@@ Hor@@ s@@ es) FROM farm WHERE Total_Horses > 5000
SELECT roomName , basePrice FROM Rooms ORDER BY basePrice ASC LIMIT 1;
SELECT T2.name FROM train_station AS T1 JOIN train AS T2 ON T1.train_id = T2.@@ train_id WHERE T1.station_id NOT IN (SELECT T4.@@ station_id FROM train_station AS T3 JOIN station AS T4 ON T3.station_id = T4.@@ station_id WHERE t4.@@ location = "L@@ ondon@@ ")
SELECT school , LOCATION FROM university WHERE affiliation = 'Public'
SELECT DISTINCT CLASS FROM race
SELECT T2.apt_number , T1.booking_start_date , T1.booking_start_date FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id = T2.apt_id
SELECT T2.allergytype , count(*) FROM Has_allergy AS T1 JOIN Allergy_type AS T2 ON T1.allergy = T2.@@ allergy GROUP BY T2.allergytype
SELECT count(*) , affiliation FROM university WHERE enrollment > 200@@ 00 GROUP BY affiliation
SELECT Product_Name FROM Products ORDER BY Product_Price ASC
SELECT t3.characteristic_name FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id = t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id = t3.characteristic_id GROUP BY t3.characteristic_name ORDER BY count(*) DESC LIMIT 1
SELECT t1.customer_name , t2.@@ order_date FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id = t2.customer_id WHERE order_status = "De@@ liver@@ ed"
SELECT Product_Name FROM PRODUCTS GROUP BY Product_Name HAVING avg(Product_Price) < 100@@ 0000
SELECT count(*) FROM inventory WHERE store_id = 1
SELECT Name FROM musical WHERE M@@ usical_ID NOT IN (SELECT M@@ usical_ID FROM act@@ or)
SELECT sum(@@ settlement_amount) , avg(@@ settlement_amount) FROM settlements
SELECT avg(capacity) FROM stadium WHERE open@@ ing_@@ year = 2005
SELECT t3.@@ customer_details FROM claim_headers AS t1 JOIN policies AS t2 ON t1.@@ policy_id = t2.policy_id JOIN customers AS t3 ON t2.customer_id = t3.customer_id WHERE t1.@@ amount_@@ claimed = (SELECT max(@@ amount_@@ clai@@ med) FROM claim_head@@ ers)
SELECT dept_address FROM department WHERE dept_name = 'History'
SELECT count(DISTINCT crs_@@ code) FROM CLASS
SELECT name FROM Companies ORDER BY Market_Value_@@ bill@@ ion DESC
SELECT director FROM Movie WHERE director != "null" GROUP BY director HAVING count(*) = 1
SELECT T1.problem_id FROM problems AS T1 JOIN product AS T2 ON T1.product_id = T2.product_id WHERE T2.product_name = "voluptatem" AND T1.date_problem_reported > "199@@ 5"
SELECT count(DISTINCT t2.@@ position@@ ) FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid WHERE t1.clubname = "Bootup Baltimore"
SELECT t1.lname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid = t2.authid JOIN papers AS t3 ON t2.paperid = t3.paperid GROUP BY t1.fname , t1.lname ORDER BY count(*) DESC LIMIT 1
SELECT Official_Name FROM city WHERE Population > 1500 OR Population < 500
SELECT roomName FROM Rooms ORDER BY basePrice;
SELECT count(*) FROM technician
SELECT employe@@ e_ID FROM Employees WHERE employee_name = "Ebba"
SELECT T3.Name , T2.District FROM phone_market AS T1 JOIN market AS T2 ON T1.Market_ID = T2.Market_ID JOIN phone AS T3 ON T1.Phone_ID = T3.@@ Phone_ID ORDER BY T2.@@ Ran@@ king
SELECT gdp FROM city ORDER BY Regional_Population DESC LIMIT 1
SELECT roomName FROM Rooms WHERE basePrice > ( SELECT avg(basePrice) FROM Rooms );
SELECT problem_log_id FROM problem_log ORDER BY log_entry_date DESC LIMIT 1
SELECT count(*) FROM university WHERE LOCATION LIKE "%@@ NY@@ %"
SELECT DISTINCT T1.first_name , T1.last_name FROM staff AS T1 JOIN rental AS T2 ON T1.staff_id = T2.staff_id JOIN customer AS T3 ON T2.customer_id = T3.@@ customer_id WHERE T3.@@ first_name = 'A@@ P@@ R@@ I@@ L' AND T3.@@ last_name = 'B@@ UR@@ N@@ S'
SELECT t1.customer_name FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id = t2.customer_id JOIN order_items AS t3 ON t2.order_id = t3.order_id JOIN products AS t4 ON t3.product_id = t4.product_id WHERE t4.product_details = 'Latte' INTERSECT SELECT t1.customer_name FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id = t2.customer_id JOIN order_items AS t3 ON t2.order_id = t3.order_id JOIN products AS t4 ON t3.product_id = t4.product_id WHERE t4.product_details = 'A@@ merican@@ o'
SELECT billing_country , AVG(@@ total) FROM invoices GROUP BY billing_country ORDER BY AVG(@@ total) DESC LIMIT 10;
SELECT T2.Name FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID = T2.People_ID
SELECT campus FROM campuses WHERE YEAR < 18@@ 00
SELECT RoomId , roomName FROM Rooms ORDER BY basePrice DESC LIMIT 1;
SELECT allergytype FROM Allergy_type GROUP BY allergytype ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM medicine WHERE FDA_@@ approved = 'N@@ o'
SELECT headquarters FROM company WHERE main_industry = 'Banking' GROUP BY headquarters HAVING count(*) >= 2
SELECT product_category_description FROM ref_product_categories WHERE product_category_code = "Spices"
SELECT name , flag FROM ship WHERE ship_id NOT IN (SELECT ship_id FROM captain WHERE rank = 'Midshipman@@ ')
SELECT avg(@@ Prof@@ it@@ s_bill@@ ion) FROM Companies
SELECT roomName , bedType FROM Rooms WHERE decor = "@@ tradition@@ al@@ ";
SELECT Investor FROM entrepreneur WHERE Money_Requested > 1@@ 4@@ 0000 INTERSECT SELECT Investor FROM entrepreneur WHERE Money_Requested < 1@@ 200@@ 00
SELECT DISTINCT invoice_@@ details FROM invoices WHERE invoice_date < "1989-09-03" OR invoice_date > "2007-12-25"
SELECT max(@@ amount_@@ out@@ st@@ and@@ ing) , min(@@ amount_@@ out@@ st@@ and@@ ing) , avg(@@ amount_@@ out@@ st@@ and@@ ing) FROM Customers;
SELECT job_id FROM employees GROUP BY job_id HAVING AVG(salary) > 8000
SELECT t1.color_code , t2.color_description FROM products AS t1 JOIN ref_colors AS t2 ON t1.color_code = t2.color_code WHERE t1.product_name = "cherv@@ il"
SELECT StuID FROM Student WHERE sex = 'M' EXCEPT SELECT StuID FROM Sportsinfo WHERE sportname = "Football"
SELECT * FROM College ORDER BY enr
SELECT DISTINCT city FROM addresses
SELECT name FROM Employee EXCEPT SELECT T1.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid = T2.eid JOIN Aircraft AS T3 ON T3.aid = T2.aid WHERE T3.name = "Boeing 737-800"
SELECT T2.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom = T2.classroom WHERE T1.firstname = "G@@ EL@@ L@@ " AND T1.lastname = "T@@ AMI@@ "
SELECT DISTINCT Destroyed_by_Employee_ID FROM Documents_to_be_destroyed
SELECT count(*) FROM county_public_safety
SELECT sum(@@ num_of_@@ compon@@ ent) FROM furniture
SELECT title FROM Movie WHERE YEAR > (SELECT max(YEAR) FROM Movie WHERE director = "Stev@@ en Spielberg@@ ")
SELECT count(*) FROM customers WHERE state = "CA";
SELECT instrument FROM instruments GROUP BY instrument ORDER BY count(*) DESC LIMIT 1
SELECT city_code FROM STUDENT GROUP BY city_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.Name FROM people AS T1 JOIN perpetrator AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.@@ Weight DESC LIMIT 1
SELECT T1.name_first , T1.name_last , T1.player_id FROM player AS T1 JOIN player_award AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 3;
SELECT DISTINCT T1.name FROM physician AS T1 JOIN prescribes AS T2 ON T1.employeeid = T2.physician JOIN medication AS T3 ON T3.code = T2.medication WHERE T3.name = "T@@ h@@ es@@ is@@ in"
SELECT date_from , date_to FROM Project_Staff WHERE project_id IN( SELECT project_id FROM Project_Staff GROUP BY project_id ORDER BY count(*) DESC LIMIT 1 ) UNION SELECT date_from , date_to FROM Project_Staff WHERE role_code = '@@ lead@@ er'
SELECT t4.@@ name FROM swimmer AS t1 JOIN record AS t2 ON t1.id = t2.swimmer_id JOIN event AS t3 ON t2.@@ event_id = t3.@@ id JOIN stadium AS t4 ON t4.@@ id = t3.@@ stadium_id WHERE t1.@@ nationality = 'Australi@@ a'
SELECT roomName FROM Rooms WHERE bedType = "K@@ ing" OR bedType = "@@ Qu@@ e@@ en@@ ";
SELECT max(@@ Number_cities) , min(@@ Number_cities) FROM market
SELECT Carrier FROM device WHERE Software_Platform != 'And@@ ro@@ id'
SELECT * FROM products AS T1 JOIN Manufacturers AS T2 ON T1.manufacturer = T2.code
SELECT t2.@@ claim_status_name FROM claims_process@@ ing AS t1 JOIN claims_processing_stages AS t2 ON t1.@@ claim_stage_id = t2.@@ claim_stage_id GROUP BY t1.@@ claim_stage_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.@@ grant_amount FROM Grants AS T1 JOIN Documents AS T2 ON T1.grant_id = T2.grant_id WHERE T2.@@ sent_date < '@@ 1986@@ -08-2@@ 6 20@@ :@@ 4@@ 9:2@@ 7@@ ' INTERSECT SELECT grant_amount FROM grants WHERE grant_@@ end_date > '1989-0@@ 3-1@@ 6 18@@ :2@@ 7:@@ 16@@ '
SELECT T1.@@ role_description , T2.staff_id FROM Staff_Roles AS T1 JOIN Project_Staff AS T2 ON T1.role_code = T2.role_code JOIN Project_outcomes AS T3 ON T2.project_id = T3.project_id GROUP BY T2.staff_id ORDER BY count(*) DESC LIMIT 1
SELECT AVG(Price) , Manufacturer FROM Products GROUP BY Manufacturer
SELECT T4.name FROM stay AS T1 JOIN patient AS T2 ON T1.@@ P@@ atient = T2.SSN JOIN Prescribes AS T3 ON T3.@@ P@@ atient = T2.SSN JOIN Medication AS T4 ON T3.@@ Medication = T4.@@ Code WHERE room = 111
SELECT Name FROM People ORDER BY Weight ASC
SELECT order_id , customer_id FROM orders ORDER BY date_order_placed LIMIT 1
SELECT count(*) FROM Customers WHERE customer_id NOT IN ( SELECT customer_id FROM Customer_Payments );
SELECT count(*) FROM building
SELECT DISTINCT T1.@@ st@@ age@@ position FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate = T2.id WHERE Fir@@ stname = "Solveig"
SELECT dept_name FROM course GROUP BY dept_name ORDER BY count(*) DESC LIMIT 3
SELECT T1.DName FROM DEPARTMENT AS T1 JOIN MINOR_IN AS T2 ON T1.DNO = T2.DNO GROUP BY T2.DNO ORDER BY count(*) DESC LIMIT 1
