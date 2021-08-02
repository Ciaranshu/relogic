SELECT How_to_Get_There FROM Tourist_Attractions GROUP BY How_to_Get_There ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM PersonFriend GROUP BY name HAVING count(*) = 1
SELECT date_of_birth FROM Guests WHERE gender_code = "Male"
SELECT Fname FROM Student WHERE Major = 600
SELECT customer_phone FROM available_policies
SELECT Stories FROM buildings ORDER BY Height DESC LIMIT 1
SELECT service_type_code FROM services ORDER BY service_type_code
SELECT count(DISTINCT sport@@ name) FROM Sportsinfo
SELECT T2.first_name , T2.last_name FROM Addresses AS T1 JOIN Staff AS T2 ON T1.address_id = T2.staff_address_id WHERE T1.city = "D@@ amianfor@@ t";
SELECT Ho@@ sts FROM farm_competition WHERE Theme != 'A@@ lien@@ s'
SELECT cName FROM College WHERE enr < 13000 AND state = "A@@ Z@@ " UNION SELECT cName FROM College WHERE enr > 15000 AND state = "LA"
SELECT T1.first_name , T1.last_name FROM customers AS T1 JOIN invoices AS T2 ON T2.customer_id = T1.id ORDER BY total LIMIT 10;
SELECT Name FROM musical WHERE Nominee = "Bob Fosse"
SELECT price_range FROM HOTELS WHERE star_rating_code = "5"
SELECT Can@@ di@@ date_@@ ID FROM candidate ORDER BY oppose_rate LIMIT 1
SELECT T1.name FROM airports AS T1 JOIN routes AS T2 ON T1.apid = T2.src_apid WHERE T1.country = 'China' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT T1.@@ injur@@ y) FROM injury_accident AS T1 JOIN game AS T2 ON T1.@@ game_id = T2.id WHERE T2.@@ season > 2010
SELECT year_opened FROM track WHERE seating BETWEEN 4000 AND 5000
SELECT avg(enrollment) , max(@@ enrollment) , min(enrollment) FROM school
SELECT count(*) FROM services
SELECT avg(@@ Population) FROM county
SELECT id , name , market_share FROM browser
SELECT country FROM airlines GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT lname FROM authors ORDER BY lname
SELECT T1.pName , T1.HS FROM player AS T1 JOIN tryout AS T2 ON T1.pID = T2.pID WHERE T2.decision = 'yes'
SELECT max(@@ market_share) , min(@@ market_share) , avg(@@ market_share) FROM browser
SELECT T1.@@ interaction_type FROM medicine_enzyme_interaction AS T1 JOIN medicine AS T2 ON T1.@@ medicine_id = T2.id JOIN enzyme AS T3 ON T1.@@ enzyme_id = T3.id WHERE T3.name = 'ALA synthase' AND T2.name = 'Aripiprazole@@ '
SELECT t3.fname , t3.lname FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t1.clubname = "Hopkins Student Enterprises" AND t3.sex = "M"
SELECT T2.Name FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID
SELECT composer FROM tracks WHERE name = "Fast As a Shark";
SELECT POSITION FROM player WHERE Points > 20 INTERSECT SELECT POSITION FROM player WHERE Points < 10
SELECT T2.Name FROM body_builder AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Weight DESC LIMIT 1
SELECT store_id FROM customer GROUP BY store_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.staff_name FROM staff AS T1 JOIN staff_department_assignments AS T2 ON T1.staff_id = T2.staff_id GROUP BY T2.staff_id HAVING COUNT (*) > 1
SELECT role_description FROM ROLES WHERE role_code = "E@@ D@@ ";
SELECT t1.catalog_entry_name FROM Catalog_Contents AS t1 JOIN Catalog_Contents_Additional_Attributes AS t2 ON t1.catalog_entry_id = t2.catalog_entry_id WHERE t2.catalog_level_number = "@@ 8"
SELECT Enrollment FROM school WHERE Denomination != "Catholic"
SELECT major FROM Student GROUP BY major ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.name FROM nurse AS T1 JOIN on_call AS T2 ON T1.EmployeeID = T2.@@ nurse
SELECT Denomination FROM school WHERE Founded < 1890 INTERSECT SELECT Denomination FROM school WHERE Founded > 1900
SELECT count(@@ T2.f@@ riend@@ ) FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.name WHERE T1.name = 'Dan'
SELECT Fname , Lname , phone FROM Faculty WHERE Sex = 'F'
SELECT Headquarters FROM Companies GROUP BY Headquarters HAVING COUNT(*) > 2
SELECT count(*) FROM list
SELECT t3.lname FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t1.clubname = "Hopkins Student Enterprises"
SELECT Denomination FROM school GROUP BY Denomination HAVING COUNT(*) > 1
SELECT title FROM film WHERE rating = 'R@@ '
SELECT t2.@@ section@@ _@@ title FROM documents AS t1 JOIN document_sections AS t2 ON t1.document_code = t2.document_code WHERE t1.document_name = "David CV"
SELECT Famous_Release_@@ date FROM artist ORDER BY Age DESC LIMIT 1
SELECT T2.friend FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.friend WHERE T2.name = 'Alice' AND T1.gender = 'female'
SELECT T1.name , COUNT(*) FROM genres AS T1 JOIN tracks AS T2 ON T2.genre_id = T1.id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 5;
SELECT T1.title , T1.year FROM Movie AS T1 JOIN Movie AS T2 ON T1.director = T2.director WHERE T1.title != T2.title
SELECT Hometown FROM people WHERE Age > 23 INTERSECT SELECT Hometown FROM people WHERE Age < 20
SELECT roomName , RoomId FROM Rooms WHERE basePrice > 160 AND maxOccupancy > 2;
SELECT name , member_id FROM member WHERE Mem@@ b@@ ers@@ hip_@@ card = 'B@@ lack@@ ' OR age < 30
SELECT company , headquarters FROM company ORDER BY market_value DESC
SELECT T1.organisation_type FROM Organisations AS T1 JOIN Research_Staff AS T2 ON T1.organisation_id = T2.employer_organisation_id GROUP BY T1.organisation_type ORDER BY count(*) DESC LIMIT 1
SELECT firstname FROM teachers WHERE classroom = 1@@ 10
SELECT location_code FROM Document_locations GROUP BY location_code ORDER BY count(*) DESC LIMIT 1
SELECT login_name , family_name FROM Course_Authors_and_Tutors
SELECT Status FROM city GROUP BY Status ORDER BY COUNT(*) ASC
SELECT T1.balance + T2.balance FROM checking AS T1 JOIN savings AS T2 ON T1.custid = T2.custid ORDER BY T1.balance + T2.balance
SELECT county , count(*) , sum(enrollment) FROM school GROUP BY county
SELECT RESULT , COUNT(*) FROM music_festival GROUP BY RESULT ORDER BY COUNT(*) DESC
SELECT count(*) FROM club WHERE clublocation = "HHH@@ "
SELECT Name FROM mountain WHERE Mountain_ID NOT IN (SELECT Mountain_ID FROM climber@@ )
SELECT T2.Name FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Investor != "R@@ ac@@ he@@ l E@@ l@@ nau@@ gh@@ "
SELECT employee_name FROM Employees WHERE role_code = "HR@@ "
SELECT Price FROM publication WHERE Publisher = "@@ Person" OR Publisher = "W@@ i@@ ley"
SELECT t2.@@ team_name FROM university AS t1 JOIN basketball_match AS t2 ON t1.school_id = t2.school_id WHERE enrollment < (SELECT avg(enrollment) FROM univers@@ ity)
SELECT order_id , customer_id FROM orders ORDER BY date_order_placed LIMIT 1
SELECT student_id FROM student_course_registrations UNION SELECT student_id FROM student_course_attendance
SELECT County_name FROM county ORDER BY County_name DESC
SELECT t2.title FROM authorship AS t1 JOIN papers AS t2 ON t1.paperid = t2.paperid WHERE t1.@@ authorder = (SELECT max(@@ auth@@ order@@ ) FROM author@@ ship@@ )
SELECT Title FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId = T2.ArtistId WHERE T2.Name = "AC/D@@ C"
SELECT count(DISTINCT transaction_type) FROM Financial_Transactions
SELECT count(*) FROM courses AS T1 JOIN student_course_attendance AS T2 ON T1.course_id = T2.course_id WHERE T1.course_name = "@@ English@@ "
SELECT count(*) FROM wrestler
SELECT t1.name , t1.age FROM pilot AS t1 JOIN MATCH AS t2 ON t1.pilot_id = t2.winning_pilot WHERE t1.age < 30 GROUP BY t2.winning_pilot ORDER BY count(*) DESC LIMIT 1
SELECT payment_method_code , count(*) FROM Customer_Payments GROUP BY payment_method_@@ code;
SELECT Major FROM STUDENT GROUP BY major ORDER BY count(*) DESC LIMIT 1
SELECT COUNT(*) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId = T2.GenreId WHERE T1.Name = "Rock"
SELECT avg(price_range) FROM HOTELS WHERE star_rating_code = "5" AND pets_allowed_yn = 1
SELECT COUNT (DISTINCT ID) FROM teaches WHERE semester = 'Spring' AND YEAR = 2010
SELECT count(*) FROM submission
SELECT T1.@@ outcome_description FROM Research_outcomes AS T1 JOIN Project_outcomes AS T2 ON T1.outcome_code = T2.outcome_code JOIN Projects AS T3 ON T2.project_id = T3.project_id WHERE T3.@@ project_details = '@@ s@@ int@@ '
SELECT T2.firstname , T2.lastname FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate = T2.id JOIN Songs AS T3 ON T3.SongId = T1.SongId WHERE T3.Title = "Badlands" AND T1.StagePosition = "back"
SELECT count(*) FROM country
SELECT K@@ ids FROM Reservations WHERE CheckIn = "2010@@ -0@@ 9@@ -2@@ 1" AND FirstName = "D@@ AMI@@ EN@@ " AND LastName = "T@@ RAC@@ H@@ SEL@@ ";
SELECT College FROM match_season GROUP BY College HAVING count(*) >= 2
SELECT t2.color_description FROM products AS t1 JOIN ref_colors AS t2 ON t1.color_code = t2.color_code GROUP BY t2.color_description ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM Ref_document_types
SELECT clublocation FROM club WHERE clubname = "Hopkins Student Enterprises"
SELECT count(DISTINCT allerg@@ y) FROM Allergy_type
SELECT Fname FROM STUDENT ORDER BY Age DESC
SELECT fname , major FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_allergy WHERE Allergy = "S@@ o@@ y")
SELECT COUNT (DISTINCT direct@@ or) FROM movie
SELECT T1.date_of_enrolment FROM Student_Course_Enrolment AS T1 JOIN Student_Tests_Taken AS T2 ON T1.registration_id = T2.registration_id WHERE T2.test_result = "Pass"
SELECT count(*) , country FROM airport GROUP BY country
SELECT count(*) FROM Activity
SELECT DISTINCT pName FROM Player WHERE pName LIKE '%a%'
SELECT count(*) FROM station AS T1 JOIN trip AS T2 JOIN station AS T3 JOIN trip AS T4 ON T1.id = T2.start_station_id AND T2.id = T4.id AND T3.id = T4.@@ end_station_id WHERE T1.city = "Mountain View" AND T3.city = "Palo Alto"
SELECT T1.@@ Code , T1.Fate , T2.Name FROM mission AS T1 JOIN ship AS T2 ON T1.Ship_ID = T2.Ship_ID
SELECT t1.last_name FROM staff AS t1 JOIN complaints AS t2 ON t1.staff_id = t2.staff_id JOIN products AS t3 ON t2.product_id = t3.product_id ORDER BY t3.@@ product_price LIMIT 1
SELECT count(*) FROM team_franchise WHERE active = 'Y@@ ';
SELECT T2.first_name , T2.last_name FROM Addresses AS T1 JOIN Staff AS T2 ON T1.address_id = T2.staff_address_id WHERE T1.city = "D@@ amianfor@@ t";
SELECT T1.name FROM enzyme AS T1 JOIN medicine_enzyme_interaction AS T2 ON T1.id = T2.enzyme_id JOIN medicine AS T3 ON T2.medicine_id = T3.id WHERE T3.name = 'Amisulpride' AND T2.interaction_type = 'inhibitor'
SELECT i_id FROM advisor AS T1 JOIN student AS T2 ON T1.s_id = T2.id WHERE T2.dept_name = 'History'
SELECT T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID WHERE T1.stars = 3 INTERSECT SELECT T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID WHERE T1.stars = 4
SELECT T2.song_name FROM files AS T1 JOIN song AS T2 ON T1.f_id = T2.f_id WHERE T1.formats = "mp3" INTERSECT SELECT song_name FROM song WHERE resolution < 1000
SELECT count(DISTINCT advis@@ or) FROM Student
SELECT product_type_code , max(product_price) , min(product_price) FROM products GROUP BY product_type_code
SELECT avg(T1.@@ height) FROM player AS T1 JOIN player_college AS T2 ON T1.player_id = T2.player_id JOIN college AS T3 ON T3.@@ college_id = T2.college_id WHERE T3.@@ name_full = 'Yale University@@ ';
SELECT name , TYPE , flag FROM ship ORDER BY built_year DESC LIMIT 1
SELECT T2.name , count(*) FROM race AS T1 JOIN track AS T2 ON T1.track_id = T2.track_id GROUP BY T1.track_id
SELECT sum(@@ lesson_time) FROM Lessons AS T1 JOIN Staff AS T2 ON T1.staff_id = T2.staff_id WHERE T2.first_name = "Janessa" AND T2.last_name = "Sawayn";
SELECT avg(@@ order_quantity) FROM order_items
SELECT T2.title , T2.director FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID WHERE T1.stars > (SELECT avg(T1.stars) FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID WHERE T2.director = "James Cameron@@ ")
SELECT t1.clubname FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t3.sex = "F" GROUP BY t1.clubname ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM pilot WHERE Age <= 30 ORDER BY Name DESC
SELECT t3.title FROM authors AS t1 JOIN authorship AS t2 ON t1.authid = t2.authid JOIN papers AS t3 ON t2.paperid = t3.paperid JOIN inst AS t4 ON t2.instid = t4.instid WHERE t4.country = "USA" AND t2.authorder = 2 AND t1.lname = "Turon"
SELECT DISTINCT T2.apt_number FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id = T2.apt_id WHERE T1.booking_status_code = "Confirmed"
SELECT dept_name FROM course GROUP BY dept_name ORDER BY sum(@@ credit@@ s) DESC LIMIT 1
SELECT employee_id , first_name , last_name , job_id FROM employees WHERE salary > ( SELECT max(salary) FROM employees WHERE job_id = 'P@@ U@@ _MAN' )
SELECT location_code , location_name FROM Ref_locations
SELECT Song FROM volume ORDER BY Song
SELECT headquarters , count(*) FROM company GROUP BY headquarters
SELECT CLASS FROM captain GROUP BY CLASS HAVING count(*) > 2
SELECT T1.Aircraft , T1.Description FROM aircraft AS T1 JOIN airport_aircraft AS T2 ON T1.Aircraft_ID = T2.Aircraft_ID JOIN airport AS T3 ON T2.Airport_ID = T3.Airport_ID WHERE T3.@@ Total_@@ Passeng@@ ers > 10000000
SELECT LOCATION , count(*) FROM gas_station GROUP BY LOCATION ORDER BY count(*)
SELECT T3.Name FROM phone_market AS T1 JOIN market AS T2 ON T1.Market_ID = T2.Market_ID JOIN phone AS T3 ON T1.Phone_ID = T3.@@ Phone_ID WHERE T2.@@ Num_of_@@ shops > 50
SELECT Headquarters FROM company GROUP BY Headquarters ORDER BY COUNT(*) DESC LIMIT 1
SELECT product_name , product_id FROM products WHERE product_price BETWEEN 600 AND 700
SELECT role_description FROM ROLES WHERE role_code = (SELECT role_code FROM users WHERE user_login = 1 GROUP BY role_code ORDER BY count(*) DESC LIMIT 1)
SELECT title FROM Movie WHERE mID NOT IN (SELECT mID FROM Rat@@ ing)
SELECT DISTINCT P@@ resident_Vote , VICE_P@@ resident_Vote FROM VOTING_RECORD
SELECT count(*) FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid = T2.stuid JOIN dorm AS T3 ON T3.dormid = T2.dormid WHERE T3.gender = 'M'
SELECT T1.stu_fname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num = T2.stu_num GROUP BY T2.stu_num HAVING count(*) = 1
SELECT Name FROM city ORDER BY White DESC LIMIT 5
SELECT College FROM match_season GROUP BY College HAVING count(*) >= 2
SELECT T1.stu_fname , T1.stu_lname , T4.@@ crs_description FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num = T2.stu_num JOIN CLASS AS T3 ON T2.class_code = T3.class_code JOIN course AS T4 ON T3.crs_code = T4.crs_code
SELECT T1.statement_id , T2.@@ statement_details FROM Accounts AS T1 JOIN Statements AS T2 ON T1.statement_id = T2.@@ statement_id GROUP BY T1.statement_id ORDER BY count(*) DESC LIMIT 1
SELECT T3.@@ ssn , T3.name FROM assignedto AS T1 JOIN projects AS T2 ON T1.project = T2.code JOIN scientists AS T3 ON T1.scientist = T3.SSN WHERE T2.hours = (SELECT max(hours) FROM projects)
SELECT Industry FROM Companies GROUP BY Industry ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.city FROM city AS T1 JOIN temperature AS T2 ON T1.city_id = T2.city_id WHERE T2.Mar < T2.Jul OR T2.Mar > T2.@@ Oct
SELECT COUNT(*) FROM MEDIATYPE AS T1 JOIN TRACK AS T2 ON T1.MediaTypeId = T2.MediaTypeId WHERE T1.Name = "AAC audio fi@@ le"
SELECT T1.County_name , COUNT(*) FROM county AS T1 JOIN election AS T2 ON T1.County_id = T2.District GROUP BY T1.County_id
SELECT POSITION , COUNT(*) FROM match_season GROUP BY POSITION
SELECT T2.F@@ le@@ et_@@ S@@ er@@ ies FROM pilot_record AS T1 JOIN aircraft AS T2 ON T1.Aircraft_ID = T2.Aircraft_ID JOIN pilot AS T3 ON T1.Pilot_ID = T3.Pilot_ID WHERE T3.@@ Age < 3@@ 4
SELECT t1.fname , t1.lname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid = t2.authid JOIN papers AS t3 ON t2.paperid = t3.paperid WHERE t3.title = "N@@ am@@ ele@@ ss , P@@ ain@@ less@@ "
SELECT sum(revenue) FROM manufacturers WHERE headquarter = 'Austin@@ '
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM entrepreneur@@ )
SELECT customer_name FROM Customers ORDER BY date_@@ be@@ cam@@ e_@@ customer LIMIT 5
SELECT Date_Claim_Made , Date_Claim_Settled FROM Settlements
SELECT count(*) FROM customers AS T1 JOIN invoices AS T2 ON T1.id = T2.customer_id WHERE T1.first_name = "Lucas" AND T1.last_name = "Mancini";
SELECT product_name , product_category_code FROM products ORDER BY product_price DESC LIMIT 1
SELECT Aircraft FROM aircraft WHERE Aircraft_ID NOT IN (SELECT Win@@ ning_Aircraft FROM MATC@@ H@@ )
SELECT T1.name , T1.age , T1.job FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.name WHERE T2.friend = 'Alice' AND T2.year = (SELECT max(YEAR) FROM PersonFriend WHERE friend = 'Alice')
SELECT count(DISTINCT temp@@ or@@ ar@@ y_@@ act@@ ing) FROM management
SELECT employee_id , first_name , last_name FROM employees WHERE department_id IN ( SELECT department_id FROM employees WHERE first_name LIKE '%@@ T@@ %' )
SELECT COUNT(*) FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId = T2.ArtistId WHERE T2.Name = "M@@ et@@ all@@ ic@@ a"
SELECT count(*) FROM station AS T1 JOIN trip AS T2 JOIN station AS T3 JOIN trip AS T4 ON T1.id = T2.start_station_id AND T2.id = T4.id AND T3.id = T4.@@ end_station_id WHERE T1.city = "Mountain View" AND T3.city = "Palo Alto"
SELECT dorm_name FROM dorm WHERE gender = 'F'
SELECT t1.customer_name FROM customers AS t1 JOIN first_notification_of_loss AS t2 ON t1.customer_id = t2.customer_id JOIN services AS t3 ON t2.service_id = t3.service_id WHERE t3.service_name = "Close a policy" OR t3.service_name = "Upgrade a policy"
SELECT Advisor FROM STUDENT GROUP BY Advisor HAVING COUNT(*) > 2
SELECT count(*) FROM Has_allergy WHERE Allergy = "Cat"
SELECT T2.name FROM race AS T1 JOIN track AS T2 ON T1.track_id = T2.track_id GROUP BY T1.track_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM performance
SELECT StuID FROM Student WHERE Advisor = 1121
SELECT avg(T1.price) , T2.name FROM products AS T1 JOIN manufacturers AS T2 ON T1.Manufacturer = T2.code GROUP BY T2.name
SELECT course_id FROM SECTION WHERE semester = 'Fall' AND YEAR = 2009 EXCEPT SELECT course_id FROM SECTION WHERE semester = 'Spring' AND YEAR = 2010
SELECT avg(t3.age) FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t1.clubname = "Tennis Club"
SELECT Name FROM technician WHERE technician_id NOT IN (SELECT technician_id FROM repair_assign@@ ment)
SELECT origin , count(*) FROM Flight GROUP BY origin
SELECT product_type_code , product_name FROM products WHERE product_price > 1000 OR product_price < 500
SELECT Payment_Method_Code FROM Payments GROUP BY Payment_Method_Code ORDER BY count(*) ASC LIMIT 1
SELECT premises_type , count(*) FROM premises GROUP BY premises_type
SELECT T1.Name , T2.Height FROM climber AS T1 JOIN mountain AS T2 ON T1.Mountain_ID = T2.Mountain_ID
SELECT T1.Company FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Height DESC LIMIT 1
SELECT count(*) , T3.@@ school_code FROM CLASS AS T1 JOIN course AS T2 ON T1.crs_code = T2.crs_code JOIN department AS T3 ON T2.dept_code = T3.dept_code GROUP BY T3.@@ school_code
SELECT T1.DName FROM DEPARTMENT AS T1 JOIN MEMBER_OF AS T2 ON T1.DNO = T2.DNO GROUP BY T2.DNO ORDER BY count(*) ASC LIMIT 1
SELECT first_name , last_name , hire_date FROM employees WHERE department_id = (SELECT department_id FROM employees WHERE first_name = "Clara")
SELECT product_details FROM products WHERE product_details LIKE "%@@ Latte@@ %" OR product_details LIKE "%A@@ merican@@ o@@ %"
SELECT phone , room , building FROM Faculty WHERE Fname = "Jer@@ r@@ y" AND Lname = "P@@ rinc@@ e"
SELECT gname , gtype FROM Video_games ORDER BY gname
SELECT count(DISTINCT title) FROM vocals AS T1 JOIN songs AS T2 ON T1.songid = T2.songid WHERE TYPE = "lead"
SELECT T1.County FROM APPELLATIONS AS T1 JOIN WINE AS T2 ON T1.Appelation = T2.Appelation WHERE T2.Score > 90 GROUP BY T1.County ORDER BY count(*) DESC LIMIT 1
SELECT T2.Lname FROM Sportsinfo AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T1.@@ onscholarship = 'Y'
SELECT count(*) FROM chip_model WHERE wifi = 'N@@ o'
SELECT count(*) FROM Documents_with_expenses
SELECT count(*) FROM Reviewer
SELECT count(DISTINCT dept_address) , school_code FROM department GROUP BY school_code
SELECT name FROM Person WHERE gender = 'male' AND age = (SELECT min(age) FROM person WHERE gender = 'male' )
SELECT T1.campus , sum(T2.@@ degrees) FROM campuses AS T1 JOIN degrees AS T2 ON T1.id = T2.campus WHERE T1.county = "Orang@@ e" AND T2.year >= 2000 GROUP BY T1.campus
SELECT count(*) FROM Student JOIN Visits_Restaurant ON Student.@@ StuID = Visits_Restaurant.@@ StuID JOIN Restaurant ON Visits_Restaurant.ResID = Restaurant.ResID WHERE Student.@@ Fname = "Linda" AND Student.@@ Lname = "Smith" AND Restaurant.ResName = "Subway";
SELECT count(DISTINCT product_type_code) FROM products_for_hire
SELECT count(*) FROM customers
SELECT COUNT(*) FROM CUSTOMER WHERE Email LIKE "%@@ g@@ mail@@ .com@@ %"
SELECT first_name , last_name , salary FROM employees WHERE commission_pct = "null"
SELECT Age FROM people ORDER BY Height DESC LIMIT 1
SELECT T1.name_first , T1.name_last FROM player AS T1 JOIN player_award AS T2 WHERE T2.year = 1960 INTERSECT SELECT T1.name_first , T1.name_last FROM player AS T1 JOIN player_award AS T2 WHERE T2.year = 1961
SELECT Description FROM aircraft
SELECT job_title FROM jobs WHERE min_salary > 9@@ 000
SELECT avg(rating) , max(rating) FROM review
SELECT avg(Age) FROM STUDENT WHERE Sex = "F"
SELECT count(DISTINCT instrument) FROM instruments AS T1 JOIN Band AS T2 ON T1.bandmateid = T2.id WHERE T2.lastname = "Heilo"
SELECT count(*) FROM products WHERE price >= 180
SELECT * FROM departments WHERE department_name = 'Marketing'
SELECT T1.id , T1.name FROM mountain AS T1 JOIN photos AS T2 ON T1.id = T2.mountain_id WHERE T1.@@ height > 4000
SELECT count(DISTINCT maj@@ or) , count(DISTINCT city_@@ code) FROM student
SELECT count(*) FROM park WHERE city = 'Atlanta';
SELECT Date , Name , venue FROM event ORDER BY Event@@ _@@ Attendance DESC
SELECT Accredit@@ ation_@@ level FROM phone GROUP BY Accredit@@ ation_@@ level HAVING count(*) > 3
SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name , count(*) FROM Flight AS T1 JOIN Aircraft AS T2 ON T1.aid = T2.aid GROUP BY T1.aid
SELECT T1.booking_status_code FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id = T2.apt_id WHERE T2.apt_number = "S@@ uite 6@@ 34@@ "
SELECT publisher FROM book_club GROUP BY publisher ORDER BY count(*) DESC LIMIT 1
SELECT dept_name FROM department ORDER BY budget LIMIT 1
SELECT name FROM manufacturers WHERE revenue < (SELECT min(revenue) FROM manufacturers WHERE headquarter = 'Austin')
SELECT T1.booking_start_date , T1.booking_start_date FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id = T2.apt_id WHERE T2.apt_type_code = "Dup@@ le@@ x"
SELECT t3.title FROM authors AS t1 JOIN authorship AS t2 ON t1.authid = t2.authid JOIN papers AS t3 ON t2.paperid = t3.paperid WHERE t1.fname = "Jerem@@ y" AND t1.lname = "G@@ ibbons"
SELECT allergytype FROM Allergy_type WHERE allergy = "Cat"
SELECT avg(access_count) FROM documents GROUP BY document_structure_code ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM professor WHERE prof_high_degree = 'Ph.D.' OR prof_high_degree = 'M@@ A'
SELECT T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid = T2.custid JOIN savings AS T3 ON T1.custid = T3.custid ORDER BY T2.balance + T3.balance LIMIT 1
SELECT T1.claim_id , T1.date_claim_made , T1.Date_Claim_Settled FROM Claims AS T1 JOIN Settlements AS T2 ON T1.Claim_id = T2.Claim_id GROUP BY T1.claim_id HAVING count(*) = 1
SELECT T1.member_name , T2.party_name FROM Member AS T1 JOIN party AS T2 ON T1.party_id = T2.party_id
SELECT payment_method_code , count(*) FROM customers GROUP BY payment_method_code
SELECT T1.school_code FROM department AS T1 JOIN professor AS T2 ON T1.dept_code = T2.dept_code GROUP BY T1.school_code ORDER BY count(*) LIMIT 1
SELECT T1.name , T3.name FROM physician AS T1 JOIN affiliated_with AS T2 ON T1.EmployeeID = T2.physician JOIN department AS T3 ON T2.department = T3.DepartmentID WHERE T2.@@ PrimaryAffiliation = 1
SELECT count(DISTINCT course_id) FROM course WHERE dept_name = 'Physic@@ s'
SELECT T1.stu_fname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num = T2.stu_num JOIN CLASS AS T3 ON T2.class_code = T3.class_code JOIN course AS T4 ON T3.crs_code = T4.crs_code JOIN department AS T5 ON T5.dept_code = T4.dept_code WHERE T5.dept_name = 'Accounting' INTERSECT SELECT T1.stu_fname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num = T2.stu_num JOIN CLASS AS T3 ON T2.class_code = T3.class_code JOIN course AS T4 ON T3.crs_code = T4.crs_code JOIN department AS T5 ON T5.dept_code = T4.dept_code WHERE T5.dept_name = 'Computer Info. Systems'
SELECT T1.@@ party_name , T2.region_name FROM party AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id
SELECT DISTINCT name FROM Reviewer AS T1 JOIN Rating AS T2 ON T1.rID = T2.rID WHERE ratingDate = "null"
SELECT T1.first_name , T1.last_name , COUNT(*) FROM customers AS T1 JOIN invoices AS T2 ON T2.customer_id = T1.id GROUP BY T1.id ORDER BY COUNT(*) DESC LIMIT 10;
SELECT count(DISTINCT T3.@@ title) FROM albums AS T1 JOIN tracklists AS T2 ON T1.aid = T2.albumid JOIN songs AS T3 ON T2.songid = T3.songid WHERE t1.@@ type = "Studio"
SELECT name FROM projects WHERE hours > (SELECT avg(hours) FROM projects)
SELECT t1.sex FROM people AS t1 JOIN candidate AS t2 ON t1.people_id = t2.people_id GROUP BY t1.sex ORDER BY avg(@@ t2.@@ unsure_rate) DESC LIMIT 1
SELECT T1.student_id , T2.course_name FROM student_course_registrations AS T1 JOIN courses AS T2 ON T1.course_id = T2.course_id
SELECT apt_type_code , COUNT(*) FROM Apartments GROUP BY apt_type_code ORDER BY COUNT(*) ASC
SELECT address FROM employees WHERE first_name = "Nancy" AND last_name = "Edwards";
SELECT department_id FROM staff_department_assignments GROUP BY department_id ORDER BY count(*) LIMIT 1
SELECT DISTINCT product_details FROM products
SELECT yearid , count(*) FROM hall_of_fame GROUP BY yearid;
SELECT employee_id , MAX(@@ end_@@ date) FROM job_history GROUP BY employee_id
SELECT T1.name , T2.@@ Play@@ er_id FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID
SELECT TYPE , count(*) FROM mill GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1
SELECT avg(salary) , max(salary) FROM Employee
SELECT faculty FROM faculty AS T1 JOIN campuses AS T2 ON T1.campus = T2.id WHERE T1.year = 2002 AND T2.campus = "Long Beach State University"
SELECT T1.staff_name , T2.job_title_code FROM staff AS T1 JOIN staff_department_assignments AS T2 ON T1.staff_id = T2.staff_id ORDER BY T2.@@ date_assigned_to DESC LIMIT 1
SELECT T1.director , T1.title FROM Movie AS T1 JOIN Rating AS T2 ON T1.mID = T2.mID WHERE T2.stars = 5
SELECT organization_name FROM organizations WHERE organization_name LIKE "%@@ Part@@ y%"
SELECT max(@@ Sales_billion) , min(@@ Sales_billion) FROM Companies WHERE Industry != "Banking"
SELECT count(*) FROM Student WHERE age > 18 AND StuID NOT IN ( SELECT StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy = T2.Allergy WHERE T2.allergytype = "food" OR T2.allergytype = "animal")
SELECT T3.name FROM assignedto AS T1 JOIN projects AS T2 ON T1.project = T2.code JOIN scientists AS T3 ON T1.scientist = T3.SSN WHERE T2.name = 'Matter of Time' INTERSECT SELECT T3.name FROM assignedto AS T1 JOIN projects AS T2 ON T1.project = T2.code JOIN scientists AS T3 ON T1.scientist = T3.SSN WHERE T2.name = 'A Puzzling Paralla@@ x'
SELECT service_name FROM services ORDER BY service_name
SELECT T2.@@ Theme FROM city AS T1 JOIN farm_competition AS T2 ON T1.City_ID = T2.Host_city_ID WHERE T1.Population > 1000
SELECT T1.grant_start_date FROM Grants AS T1 JOIN Documents AS T2 ON T1.grant_id = T2.grant_id JOIN Document_Types AS T3 ON T2.document_type_code = T3.document_type_code WHERE T3.document_description = 'Regular' INTERSECT SELECT T1.grant_start_date FROM Grants AS T1 JOIN Documents AS T2 ON T1.grant_id = T2.grant_id JOIN Document_Types AS T3 ON T2.document_type_code = T3.document_type_code WHERE T3.document_description = 'Initial Application@@ '
SELECT document_id FROM Documents WHERE document_status_code = "done" AND document_type_code = "Paper" EXCEPT SELECT document_id FROM Documents JOIN Ref_Shipping_Agents ON Documents.shipping_agent_code = Ref_Shipping_Agents.shipping_agent_code WHERE Ref_Shipping_Agents.shipping_agent_name = "US@@ PS";
SELECT member_name FROM member EXCEPT SELECT T1.member_name FROM member AS T1 JOIN party_events AS T2 ON T1.member_id = T2.member_in_charge_id
SELECT apt_type_code , COUNT(*) FROM Apartments GROUP BY apt_type_code ORDER BY COUNT(*) ASC
SELECT policy_type_code FROM available_policies GROUP BY policy_type_code HAVING count(*) > 4
SELECT T1.name FROM instructor AS T1 JOIN teaches AS T2 ON T1.id = T2.id JOIN course AS T3 ON T2.course_id = T3.course_id WHERE T3.title = '@@ C Programm@@ ing'
SELECT count(*) FROM airports AS T1 JOIN routes AS T2 ON T1.apid = T2.dst_apid WHERE country = 'Canada'
SELECT Name FROM artwork ORDER BY Name ASC
SELECT T2.Name , T1.@@ Elimination_Move FROM elimination AS T1 JOIN wrestler AS T2 ON T1.Wrestler_ID = T2.Wrestler_ID
SELECT DISTINCT Nominee FROM musical WHERE Award != "Tony Award"
SELECT count(DISTINCT POSITION) FROM player
SELECT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName = T2.cName WHERE T2.pPos = 'striker'
SELECT T1.title FROM item AS T1 JOIN review AS T2 ON T1.i_id = T2.i_id WHERE T2.rating > (SELECT avg(rating) FROM review)
SELECT T1.dorm_name FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid = T2.dormid JOIN dorm_amenity AS T3 ON T2.amenid = T3.amenid WHERE T3.amenity_name = 'TV Lounge' EXCEPT SELECT T1.dorm_name FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid = T2.dormid JOIN dorm_amenity AS T3 ON T2.amenid = T3.amenid WHERE T3.amenity_name = 'Study Room'
SELECT DISTINCT PRESIDENT_Vote FROM VOTING_RECORD WHERE Registration_Date = "@@ 08/30/201@@ 5"
SELECT eid , name FROM Employee ORDER BY salary DESC LIMIT 1
SELECT T1.first_name , T1.last_name , COUNT(*) FROM customers AS T1 JOIN invoices AS T2 ON T2.customer_id = T1.id GROUP BY T1.id ORDER BY COUNT(*) DESC LIMIT 10;
SELECT T3.Name FROM repair_assignment AS T1 JOIN machine AS T2 ON T1.machine_id = T2.machine_id JOIN technician AS T3 ON T1.technician_ID = T3.technician_ID ORDER BY T2.@@ qu@@ al@@ ity_@@ rank
SELECT booking_start_date , booking_end_date FROM Apartment_Bookings
SELECT rank , Fname , Lname FROM Faculty
SELECT count(*) FROM employee AS T1 JOIN CLASS AS T2 ON T1.EMP_NUM = T2.PROF_NUM WHERE T1.EMP_@@ L@@ NAME = 'G@@ raz@@ te@@ vsk@@ i@@ '
SELECT count(*) FROM enzyme
SELECT f_id FROM files WHERE formats = "mp@@ 4" UNION SELECT f_id FROM song WHERE resolution > 7@@ 20
SELECT POSITION FROM player GROUP BY name HAVING avg(Points) >= 20
SELECT T1.id , T1.Name , T1.F@@ D@@ A_@@ approved FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id = T1.id GROUP BY T1.id ORDER BY count(*) DESC
SELECT DISTINCT T1.FirstName FROM CUSTOMER AS T1 JOIN INVOICE AS T2 ON T1.CustomerId = T2.CustomerId WHERE T1.country = "B@@ raz@@ il"
SELECT Police_force , COUNT(*) FROM county_public_safety GROUP BY Police_force
SELECT t1.catalog_entry_name FROM Catalog_Contents AS t1 JOIN Catalog_Contents_Additional_Attributes AS t2 ON t1.catalog_entry_id = t2.catalog_entry_id WHERE t2.attribute_value = (SELECT attribute_value FROM Catalog_Contents_Additional_Attributes GROUP BY attribute_value ORDER BY count(*) DESC LIMIT 1)
SELECT Destroyed_by_Employee_ID , count(*) FROM Documents_to_be_destroyed GROUP BY Destroyed_by_Employee_ID
SELECT first_name , last_name , department_id FROM employees WHERE salary IN (SELECT MIN(salary) FROM employees GROUP BY department_@@ id)
SELECT avg(age) , min(age) , CLASS FROM captain GROUP BY CLASS
SELECT sum(@@ Enrollment) , affiliation FROM university WHERE founded > 1850 GROUP BY affiliation
SELECT COUNT(*) FROM weather WHERE mean_humidity > 50 AND mean_@@ visibility_@@ mil@@ es > 8
SELECT T2.roomName FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room = T2.RoomId WHERE firstname LIKE '%@@ RO@@ Y@@ %'
SELECT first_name FROM Staff EXCEPT SELECT T2.first_name FROM Lessons AS T1 JOIN Staff AS T2 ON T1.staff_id = T2.staff_id
SELECT Name FROM editor WHERE Age = 2@@ 4 OR Age = 25
SELECT customer_first_name , customer_last_name FROM Customers EXCEPT SELECT T1.customer_first_name , T1.customer_last_name FROM Customers AS T1 JOIN Accounts AS T2 ON T1.customer_id = T2.customer_id
SELECT avg(@@ long) FROM station WHERE id NOT IN (SELECT station_id FROM status GROUP BY station_id HAVING max(@@ bikes_available) > 10@@ )
SELECT count(*) FROM ( SELECT * FROM postseason AS T1 JOIN team AS T2 ON T1.team_id_winner = T2.team_id_br WHERE T2.name = 'Boston Red Stockings' UNION SELECT * FROM postseason AS T1 JOIN team AS T2 ON T1.team_id_loser = T2.team_id_br WHERE T2.name = 'Boston Red Stockings' );
SELECT name , email FROM user_profiles WHERE followers > 1000
SELECT complaint_status_code , count(*) FROM complaints WHERE complaint@@ _type_code = "Product Failure@@ " GROUP BY complaint_status_code
SELECT clubdesc FROM club WHERE clubname = "Tennis Club"
SELECT patient FROM stay WHERE room = 111 ORDER BY stay@@ start DESC LIMIT 1
SELECT name , age FROM people WHERE is_male = 'T@@ ' AND people_id NOT IN (SELECT mal@@ e_id FROM wedd@@ ing)
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id ORDER BY overall_rating DESC LIMIT 3
SELECT T1.first_name , T1.last_name FROM customers AS T1 JOIN invoices AS T2 ON T2.customer_id = T1.id ORDER BY T2.invoice_date DESC LIMIT 5;
SELECT count(*) FROM All_documents WHERE document_type_code = "CV" OR document_type_code = "BK"
SELECT count(*) FROM city WHERE county_ID IN (SELECT county_ID FROM county_public_safety WHERE population > 200@@ 00@@ )
SELECT sum(T1.@@ games) FROM home_game AS T1 JOIN team AS T2 ON T1.team_id = T2.team_id_br WHERE T2.name = 'Boston Red Stockings' AND T1.year BETWEEN 1990 AND 2000;
SELECT DISTINCT T4.name FROM PersonFriend AS T1 JOIN Person AS T2 ON T1.name = T2.name JOIN PersonFriend AS T3 ON T1.f@@ riend = T3.name JOIN PersonFriend AS T4 ON T3.@@ friend = T4.name WHERE T2.name = 'Alice' AND T4.name != 'Alice'
SELECT name FROM projects WHERE hours BETWEEN 100 AND 300
SELECT allergytype , count(*) FROM Allergy_type GROUP BY allergytype
SELECT T1.Service_Type_Description , T2.Service_Type_Code , COUNT(*) FROM Ref_Service_Types AS T1 JOIN Services AS T2 ON T1.Service_Type_Code = T2.Service_Type_Code GROUP BY T2.Service_Type_Code
SELECT T1.name , T1.team_id , max(T2.@@ salary) FROM team AS T1 JOIN salary AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id@@ ;
SELECT t1.name FROM channel AS t1 JOIN broadcast AS t2 ON t1.channel_id = t2.channel_id WHERE t2.time_of_day = 'Morning' INTERSECT SELECT t1.name FROM channel AS t1 JOIN broadcast AS t2 ON t1.channel_id = t2.channel_id WHERE t2.time_of_day = 'Night'
SELECT min(salary) , dept_name FROM instructor GROUP BY dept_name HAVING avg(salary) > (SELECT avg(salary) FROM instruct@@ or)
SELECT T2.f1 FROM user_profiles AS T1 JOIN follows AS T2 ON T1.uid = T2.f2 WHERE T1.name = "Mar@@ y" INTERSECT SELECT T2.f1 FROM user_profiles AS T1 JOIN follows AS T2 ON T1.uid = T2.f2 WHERE T1.name = "S@@ usan"
SELECT count(*) FROM Flight
SELECT pPos FROM tryout GROUP BY pPos ORDER BY count(*) DESC LIMIT 1
SELECT Name , birth@@ _p@@ lace FROM people EXCEPT SELECT T1.Name , T1.b@@ ir@@ th@@ _p@@ lace FROM people AS T1 JOIN body_builder AS T2 ON T1.people_id = T2.people_id
SELECT max(@@ followers) , sum(@@ followers) FROM user_profiles
SELECT document_id , document_name FROM Documents
SELECT T1.student_id , T2.first_name FROM Student_Addresses AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY AVG(@@ monthly_rental) DESC LIMIT 1
SELECT T3.@@ booking_start_date , T3.@@ booking_end_date FROM Products_for_hire AS T1 JOIN products_booked AS T2 ON T1.product_id = T2.product_id JOIN bookings AS T3 ON T2.@@ booking_id = T3.@@ booking_id WHERE T1.product_name = '@@ Bo@@ ok colle@@ ction A'
SELECT DISTINCT T1.name FROM student AS T1 JOIN takes AS T2 ON T1.id = T2.id WHERE YEAR = 2009 OR YEAR = 2010
SELECT Name , Score FROM WINE
SELECT first_name FROM Staff EXCEPT SELECT T2.first_name FROM Lessons AS T1 JOIN Staff AS T2 ON T1.staff_id = T2.staff_id
SELECT T3.S@@ hop_Name , T2.@@ Carrier FROM stock AS T1 JOIN device AS T2 ON T1.Device_ID = T2.@@ Device_ID JOIN shop AS T3 ON T1.Shop_ID = T3.S@@ hop_ID
SELECT T3.Fname , T3.@@ LName , T2.gradepoint FROM ENROLLED_IN AS T1 JOIN GRADECONVERSION AS T2 JOIN STUDENT AS T3 ON T1.Grade = T2.lettergrade AND T1.StuID = T3.StuID
SELECT Carrier FROM phone ORDER BY Price DESC LIMIT 1
SELECT DISTINCT T3.name , T2.title , T1.stars FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID JOIN Reviewer AS T3 ON T1.rID = T3.rID WHERE T2.director = T3.name
SELECT claim_status@@ _description FROM claims_processing_stages WHERE claim_status_name = "Open@@ "
SELECT fname , lname FROM student WHERE city_code != 'H@@ KG@@ ' ORDER BY age
SELECT name FROM department GROUP BY departmentID ORDER BY count(departmentID) DESC LIMIT 1;
SELECT count(*) FROM Aircraft
SELECT employee_id FROM job_history GROUP BY employee_id HAVING COUNT(*) >= 2
SELECT YEAR FROM SECTION GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.city FROM addresses AS T1 JOIN people_addresses AS T2 ON T1.address_id = T2.address_id JOIN students AS T3 ON T2.person_id = T3.@@ student_id
SELECT stu_fname , stu_lname , stu_gpa FROM student WHERE stu_gpa > 3 ORDER BY stu_@@ do@@ b DESC LIMIT 1
SELECT Product_Name FROM Products ORDER BY Product_Price ASC
SELECT count(*) FROM Customers_cards AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.customer_first_name = "A@@ r@@ t" AND T2.customer_last_name = "Turcotte"
SELECT address_line_1 FROM Course_Authors_and_Tutors WHERE person@@ al_@@ name@@ 	 = "Cathrine"
SELECT T1.region_name FROM region AS T1 JOIN affected_region AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id HAVING count(*) >= 2
SELECT count(*) FROM university WHERE LOCATION LIKE "%@@ NY@@ %"
SELECT dept_name , AVG (salary) FROM instructor GROUP BY dept_name HAVING AVG (salary) > 4@@ 2000
SELECT RESULT FROM musical GROUP BY RESULT ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.@@ product_type_code , T2.product_name , T2.product_price FROM product_suppliers AS T1 JOIN products AS T2 ON T1.product_id = T2.product_id WHERE T1.supplier_id = 3
SELECT T1.stu_fname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num = T2.stu_num JOIN CLASS AS T3 ON T2.class_code = T3.class_code WHERE T3.crs_code = 'ACCT-211' AND T1.stu_lname LIKE 'S%'
SELECT eid FROM Employee EXCEPT SELECT eid FROM Certificate
SELECT StuID FROM Participates_in INTERSECT SELECT StuID FROM Student WHERE age < 20
SELECT T2.G@@ overnor FROM election AS T1 JOIN party AS T2 ON T1.Party = T2.Party_ID WHERE T1.District = 1
SELECT artist_name FROM artist WHERE country = "UK" AND gender = "Male"
SELECT name , LOCATION FROM station ORDER BY Ann@@ ual_@@ entr@@ y_@@ ex@@ it , Ann@@ ual_@@ inter@@ chan@@ g@@ es
SELECT T1.name , count(*) FROM useracct AS T1 JOIN review AS T2 ON T1.u_id = T2.u_id GROUP BY T2.u_id
SELECT T1.name FROM nurse AS T1 JOIN appointment AS T2 ON T1.employeeid = T2.@@ pre@@ p@@ nurse GROUP BY T1.employeeid ORDER BY count(*) DESC LIMIT 1
SELECT T1.director , T1.title FROM Movie AS T1 JOIN Rating AS T2 ON T1.mID = T2.mID WHERE T2.stars = 5
SELECT LOCATION , count(*) FROM gas_station GROUP BY LOCATION ORDER BY count(*)
SELECT Country_name , COUNT(*) FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id = T2.Country GROUP BY T1.Country_name
SELECT DISTINCT t3.policy_type_code FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id = t2.customer_id JOIN available_policies AS t3 ON t2.policy_id = t3.policy_id WHERE t1.customer_name = "Dayana Robel"
SELECT T1.title , T2.inventory_id FROM film AS T1 JOIN inventory AS T2 ON T1.film_id = T2.film_id JOIN rental AS T3 ON T2.inventory_id = T3.@@ inventory_id GROUP BY T2.inventory_id ORDER BY count(*) DESC LIMIT 1
SELECT Status_Code FROM BOOKINGS GROUP BY Status_Code ORDER BY count(*) DESC LIMIT 1
SELECT origin FROM Flight GROUP BY origin ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.LName FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID = PRESIDENT_Vote INTERSECT SELECT DISTINCT LName FROM STUDENT WHERE Advisor = "@@ 874@@ 1"
SELECT organization_name FROM organizations ORDER BY date_formed ASC
SELECT avg(T1.age) FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid = T2.stuid JOIN dorm AS T3 ON T3.dormid = T2.dormid WHERE T3.@@ student_capacity = (SELECT max(@@ student_capacity) FROM dorm@@ )
SELECT count(*) FROM (SELECT * FROM endowment WHERE amount > 8.@@ 5 GROUP BY school_id HAVING count(*) > 1)
SELECT budget_type_code FROM Documents_with_expenses GROUP BY budget_type_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM patient WHERE SSN NOT IN ( SELECT T1.patient FROM Prescribes AS T1 JOIN Medication AS T2 ON T1.M@@ edication = T2.@@ Code WHERE T2.name = 'Procrastin-X' )
SELECT T2.Name FROM APPELLATIONS AS T1 JOIN WINE AS T2 ON T1.Appelation = T2.Appelation WHERE T1.County = "M@@ ont@@ ere@@ y" AND T2.@@ price < 50
SELECT T1.Name FROM MEDIATYPE AS T1 JOIN TRACK AS T2 ON T1.MediaTypeId = T2.MediaTypeId GROUP BY T2.MediaTypeId ORDER BY COUNT(*) ASC LIMIT 1
SELECT count(*) FROM routes WHERE dst_apid IN (SELECT apid FROM airports WHERE country = 'Canad@@ a') AND src_apid IN (SELECT apid FROM airports WHERE country = 'United States')
SELECT first_name , last_name FROM employees ORDER BY hire_date ASC LIMIT 10;
SELECT A@@ dults FROM Reservations WHERE CheckIn = "2010@@ -@@ 10@@ -2@@ 3" AND FirstName = "@@ CONRA@@ D@@ " AND LastName = "@@ SELBI@@ G@@ ";
SELECT sum(city_population) FROM district ORDER BY city_area DESC LIMIT 3
SELECT name FROM races ORDER BY date DESC LIMIT 1
SELECT T2.name FROM genres AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id WHERE T1.name = "Rock@@ ";
SELECT name FROM Companies WHERE Headquarters != 'USA'
SELECT name FROM projects WHERE hours BETWEEN 100 AND 300
SELECT H@@ is@@ p@@ an@@ ic FROM city WHERE B@@ lack > 10
SELECT avg(@@ International_Passeng@@ ers) FROM airport
SELECT t1.@@ first_name FROM staff AS t1 JOIN complaints AS t2 ON t1.staff_id = t2.staff_id GROUP BY t2.staff_id ORDER BY count(*) LIMIT 5
SELECT product_id , product_type_code FROM products ORDER BY product_price LIMIT 1
SELECT catalog_entry_name FROM catalog_contents ORDER BY capacity ASC LIMIT 1
SELECT avg(Product_Price) FROM Products
SELECT date , mean_@@ temperature_f , mean_humidity FROM weather ORDER BY max_@@ gust@@ _@@ speed_mp@@ h DESC LIMIT 3
SELECT T1.forename , T1.surname , T1.driverid FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid = T2.driverid GROUP BY T1.driverid HAVING count(*) > 8 UNION SELECT T1.forename , T1.surname , T1.driverid FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid GROUP BY T1.driverid HAVING count(*) > 5
SELECT DISTINCT T2.director FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID JOIN Reviewer AS T3 ON T1.rID = T3.rID WHERE T3.name = 'S@@ arah Martinez@@ '
SELECT T2.name FROM home_game AS T1 JOIN team AS T2 ON T1.team_id = T2.team_id_br WHERE T1.year = 1980 ORDER BY T1.attendance ASC LIMIT 1;
SELECT count(DISTINCT StuID) FROM Sportsinfo
SELECT role_name , role_description FROM ROLES WHERE role_code = "MG@@ "
SELECT T1.name FROM useracct AS T1 JOIN review AS T2 ON T1.u_id = T2.u_id ORDER BY T2.rating DESC LIMIT 1
SELECT avg(no_of_customers) FROM bank
SELECT T1.dorm_name FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid = T2.dormid JOIN dorm_amenity AS T3 ON T2.amenid = T3.amenid WHERE T3.amenity_name = 'TV Lounge' INTERSECT SELECT T1.dorm_name FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid = T2.dormid JOIN dorm_amenity AS T3 ON T2.amenid = T3.amenid WHERE T3.amenity_name = 'Study Room'
SELECT avg(T2.rating) FROM artist AS T1 JOIN song AS T2 ON T1.artist_name = T2.artist_name WHERE T1.gender = "Female"
SELECT average_attendance FROM stadium WHERE capac@@ ity_@@ percentage > 100
SELECT t1.store_name FROM store AS t1 JOIN store_district AS t2 ON t1.store_id = t2.store_id WHERE district_id = (SELECT district_id FROM district ORDER BY city_p@@ opulation DESC LIMIT 1)
SELECT DISTINCT city FROM branch WHERE membership_amount >= 100
SELECT order_id , count(*) FROM Invoices GROUP BY order_id
SELECT DISTINCT t1.product_name FROM products AS t1 JOIN complaints AS t2 ON t1.product_id = t2.product_id JOIN customers AS t3 GROUP BY t3.customer_id ORDER BY count(*) LIMIT 1
SELECT count(*) , city FROM employees WHERE title = 'I@@ T Staff@@ ' GROUP BY city
SELECT T1.@@ Stat@@ e_@@ County FROM Addresses AS T1 JOIN Stores AS T2 ON T1.Address_ID = T2.Address_ID WHERE T2.M@@ arketing_Region_Code = "C@@ A"
SELECT t1.party_email FROM parties AS t1 JOIN party_services AS t2 ON t1.party_id = t2.customer_id GROUP BY t1.party_email ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM home_game AS T1 JOIN park AS T2 ON T1.park_id = T2.park_id WHERE T1.year = 2000 AND T2.city = 'Atlanta';
SELECT DISTINCT YEAR FROM Movie AS T1 JOIN Rating AS T2 ON T1.mID = T2.mID WHERE T2.stars >= 4 ORDER BY T1.year
SELECT name , height , prominence FROM mountain WHERE range != 'A@@ ber@@ d@@ are Ran@@ g@@ e'
SELECT T2.card_type_code , count(*) FROM Financial_transactions AS T1 JOIN Customers_cards AS T2 ON T1.@@ card_id = T2.@@ card_id GROUP BY T2.card_type_code
SELECT t1.lname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid = t2.authid JOIN papers AS t3 ON t2.paperid = t3.paperid GROUP BY t1.fname , t1.lname ORDER BY count(*) DESC LIMIT 1
SELECT name , LOCATION FROM cinema WHERE capacity > (SELECT avg(capacity) FROM cinema@@ )
SELECT room@@ name FROM rooms WHERE base@@ price BETWEEN 120 AND 150
SELECT sum(T2.@@ total) FROM customers AS T1 JOIN invoices AS T2 ON T1.id = T2.customer_id WHERE T1.first_name = "Lucas" AND T1.last_name = "Mancini";
SELECT count(*) FROM address WHERE district = 'California'
SELECT T1.course_name , T1.course_description FROM Courses AS T1 JOIN Subjects AS T2 ON T1.subject_id = T2.subject_id WHERE T2.subject_name = "Computer Science"
SELECT T1.date_@@ in_location_from , T1.date_@@ in_locaton_to FROM Document_locations AS T1 JOIN All_documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Robin CV"
SELECT attribute_data_type FROM Attribute_Definitions GROUP BY attribute_data_type HAVING count(*) > 3
SELECT g_name , rating FROM genre ORDER BY g_name
SELECT distinct(@@ catalog_entr@@ y_name) FROM catalog_contents
SELECT T2.Lname FROM DEPARTMENT AS T1 JOIN FACULTY AS T2 ON T1.DNO = T3.@@ DNO JOIN MEMBER_OF AS T3 ON T2.FacID = T3.F@@ acID WHERE T1.DName = "Computer Science"
SELECT avg(T2.@@ Number_cities) FROM film_market_estimation AS T1 JOIN market AS T2 ON T1.Market_ID = T2.Market_ID WHERE T1.@@ Low_Estimate > 10000
SELECT TYPE FROM vocals AS T1 JOIN band AS T2 ON T1.bandmate = T2.id WHERE firstname = "Marianne" GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1
SELECT eid , name FROM Employee ORDER BY salary DESC LIMIT 1
SELECT document_id FROM Documents EXCEPT SELECT document_id FROM Documents_with_expenses
SELECT MONTH FROM happy_hour GROUP BY MONTH ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT Hometown FROM people EXCEPT SELECT DISTINCT T2.Hometown FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID = T2.People_ID
SELECT T2.Hardware_Model_name , T2.Company_name FROM screen_mode AS T1 JOIN phone AS T2 ON T1.Graphics_mode = T2.screen_mode WHERE T1.Type = "Graphic@@ s";
SELECT count(DISTINCT class_@@ code) FROM CLASS
SELECT DISTINCT building FROM Faculty
SELECT avg(Price) , YEAR FROM WINE GROUP BY YEAR
SELECT vehicle_details FROM Vehicles WHERE vehicle_id = 1;
SELECT count(*) FROM INVESTORS
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Participates_in AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID ORDER BY count(*) DESC LIMIT 1
SELECT T2.title FROM artists AS T1 JOIN albums AS T2 ON T1.id = T2.artist_id WHERE T1.name LIKE '%@@ L@@ ed@@ %'
SELECT date , cloud_cover FROM weather ORDER BY cloud_cover DESC LIMIT 5
SELECT gtype FROM Video_games GROUP BY gtype ORDER BY count(*) DESC LIMIT 1
SELECT Stuid , sum(hours_played) FROM Plays_games GROUP BY Stuid
SELECT employee_id FROM job_history GROUP BY employee_id HAVING COUNT(*) >= 2
SELECT TYPE FROM vocals AS T1 JOIN band AS T2 ON T1.bandmate = T2.id WHERE lastname = "Heilo" GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1
SELECT price_range FROM HOTELS WHERE star_rating_code = "5"
SELECT Total_Horses FROM farm ORDER BY Total_Horses ASC
SELECT count(*) FROM papers
SELECT count(*) FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code = T2.class_code WHERE T1.crs_code = 'ACCT-211'
SELECT max(T1.@@ length_@@ met@@ ers) , T2.name FROM bridge AS T1 JOIN architect AS T2 ON T1.architect_id = T2.id
SELECT role_description FROM Staff_Roles WHERE role_code = 'researcher'
SELECT T1.name , T3.name FROM physician AS T1 JOIN affiliated_with AS T2 ON T1.EmployeeID = T2.physician JOIN department AS T3 ON T2.department = T3.DepartmentID WHERE T2.@@ PrimaryAffiliation = 1
SELECT image_name , im@@ age_@@ url FROM images ORDER BY image_name
SELECT Birth_Place FROM people GROUP BY Birth_Place HAVING COUNT(*) >= 2
SELECT circuitid , LOCATION FROM circuits WHERE country = "F@@ ranc@@ e" OR country = "B@@ el@@ g@@ i@@ um@@ "
SELECT count(DISTINCT dst_@@ ap@@ id) FROM airlines AS T1 JOIN routes AS T2 ON T1.alid = T2.alid WHERE T1.name = 'American Airlines'
SELECT support_rate FROM candidate ORDER BY support_rate DESC LIMIT 3
SELECT bike_id FROM trip WHERE zip_code = 9400@@ 2 GROUP BY bike_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT max(@@ years_working) , min(@@ years_working) , avg(@@ years_working) FROM school_bus
SELECT service_id , event_details FROM EVENTS
SELECT theme , YEAR FROM exhibition ORDER BY ticket_price DESC
SELECT t2.product_details FROM order_items AS t1 JOIN products AS t2 ON t1.product_id = t2.product_id GROUP BY t1.product_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.product_name , count(*) FROM Order_items AS T1 JOIN Products AS T2 ON T1.product_id = T2.product_id JOIN Orders AS T3 ON T3.order_id = T1.order_id GROUP BY T2.product_name
SELECT title , rental_rate FROM film ORDER BY rental_rate DESC LIMIT 1
SELECT vehicle_id FROM Vehicles;
SELECT country FROM people WHERE age < 25 INTERSECT SELECT country FROM people WHERE age > 30
SELECT T1.date_of_enrolment , T1.date_of_completion FROM Student_Course_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.personal_name = "Karson"
SELECT T1.FirstName , T1.SupportRepId FROM CUSTOMER AS T1 JOIN EMPLOYEE AS T2 ON T1.SupportRepId = T2.EmployeeId GROUP BY T1.SupportRepId HAVING COUNT(*) >= 10
SELECT T1.dorm_name FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid = T2.dormid JOIN dorm_amenity AS T3 ON T2.amenid = T3.amenid WHERE T3.amenity_name = 'TV Lounge' INTERSECT SELECT T1.dorm_name FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid = T2.dormid JOIN dorm_amenity AS T3 ON T2.amenid = T3.amenid WHERE T3.amenity_name = 'Study Room'
SELECT T2.order_id , T2.order_@@ details FROM Invoices AS T1 JOIN Orders AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id HAVING count(*) > 2
SELECT count(*) FROM film
SELECT avg(@@ followers) FROM user_profiles WHERE UID NOT IN (SELECT UID FROM tweets)
SELECT count(*) FROM country
SELECT T1.@@ respon@@ se_@@ receiv@@ ed_@@ date FROM Documents AS T1 JOIN Document_Types AS T2 ON T1.document_type_code = T2.document_type_code JOIN Grants AS T3 ON T1.grant_id = T3.@@ grant_id WHERE T2.@@ document_description = 'Regular' OR T3.@@ grant_amount > 100
SELECT DISTINCT forename FROM drivers ORDER BY forename ASC
SELECT Name FROM ARTIST EXCEPT SELECT T2.Name FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId = T2.ArtistId
SELECT T2.emp_fname , T1.@@ class_room FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num = T2.emp_num JOIN professor AS T3 ON T2.emp_num = T3.emp_num JOIN department AS T4 ON T4.dept_code = T3.dept_code WHERE T4.dept_name = 'Accounting'
SELECT count(*) FROM city AS T1 JOIN country AS T2 ON T1.country_id = T2.country_id WHERE T2.country = 'Australi@@ a'
SELECT max(@@ stu_gpa) , avg(stu_gpa) , min(@@ stu_gpa) , dept_code FROM student GROUP BY dept_code
SELECT DISTINCT cName FROM tryout ORDER BY cName
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds LIMIT 1
SELECT course_id FROM SECTION WHERE semester = 'Fall' AND YEAR = 2009 INTERSECT SELECT course_id FROM SECTION WHERE semester = 'Spring' AND YEAR = 2010
SELECT * FROM job_history AS T1 JOIN employees AS T2 ON T1.employee_id = T2.employee_id WHERE T2.salary >= 12000
SELECT Investor_details FROM INVESTORS
SELECT city FROM airports GROUP BY city HAVING count(*) = 2
SELECT avg(@@ num@@ _@@ employees) FROM department WHERE ran@@ king BETWEEN 10 AND 15
SELECT avg(@@ total_passengers) , max(@@ total_passengers) FROM station WHERE LOCATION = 'London' OR LOCATION = 'G@@ la@@ s@@ go@@ w@@ '
SELECT DISTINCT T1.customer_first_name , T1.customer_last_name , T1.@@ phone_number FROM Customers AS T1 JOIN Accounts AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.Aircraft FROM aircraft AS T1 JOIN MATCH AS T2 ON T1.Aircraft_ID = T2.Winning_Aircraft GROUP BY T2.Winning_Aircraft HAVING COUNT(*) >= 2
SELECT Description FROM aircraft
SELECT city FROM city WHERE regional_population > 10000000 UNION SELECT city FROM city WHERE regional_population < 5000000
SELECT T1.club_id , T1.@@ gold FROM match_@@ result AS T1 JOIN coach AS T2 ON T1.club_id = T2.@@ club_id GROUP BY T1.club_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T2.balance + T3.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid = T2.custid JOIN savings AS T3 ON T1.custid = T3.custid WHERE T3.balance > (SELECT avg(balance) FROM savings)
SELECT t1.campusfee FROM csu_fees AS t1 JOIN campuses AS t2 ON t1.campus = t2.id WHERE t2.campus = "San Jose State University" AND t1.year = 2000
SELECT count(*) FROM list AS T1 JOIN teachers AS T2 ON T1.classroom = T2.classroom WHERE T2.firstname = "L@@ ORI@@ A" AND T2.lastname = "@@ ONDERSM@@ A"
SELECT Industry , COUNT(*) FROM Companies GROUP BY Industry
SELECT title FROM albums ORDER BY title;
SELECT Police_force FROM county_public_safety WHERE LOCATION = "E@@ ast" INTERSECT SELECT Police_force FROM county_public_safety WHERE LOCATION = "W@@ est"
SELECT name FROM Person WHERE gender = 'male' ORDER BY age
SELECT StuID FROM Student WHERE age = (SELECT max(age) FROM Student)
SELECT first_name , last_name , salary FROM employees WHERE first_name LIKE '%@@ m@@ '
SELECT name FROM Employee WHERE salary > (SELECT avg(salary) FROM Employe@@ e)
SELECT count(*) FROM airlines
SELECT DISTINCT T1.Fname , T1.LName FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID = T2.P@@ resident_VOTE WHERE T1.sex = "F"
SELECT Party FROM representative WHERE State = "New York@@ " INTERSECT SELECT Party FROM representative WHERE State = "P@@ ennsylvani@@ a"
SELECT TIME FROM Student JOIN Visits_Restaurant ON Student.@@ StuID = Visits_Restaurant.@@ StuID JOIN Restaurant ON Visits_Restaurant.ResID = Restaurant.ResID WHERE Student.@@ Fname = "Linda" AND Student.@@ Lname = "Smith" AND Restaurant.ResName = "Subway";
SELECT roomName FROM Rooms WHERE basePrice < 160 AND beds = 2 AND decor = 'modern';
SELECT count(*) , T1.claim_id FROM Claims AS T1 JOIN Settlements AS T2 ON T1.claim_id = T2.claim_id GROUP BY T1.claim_id ORDER BY T1.Date_Claim_Settled DESC LIMIT 1
SELECT FacID FROM Faculty EXCEPT SELECT FacID FROM Faculty_participates_in
SELECT avg(T1.price) , T2.name FROM products AS T1 JOIN manufacturers AS T2 ON T1.Manufacturer = T2.code GROUP BY T2.name
SELECT DISTINCT T3.Fname FROM ENROLLED_IN AS T1 JOIN GRADECONVERSION AS T2 JOIN STUDENT AS T3 ON T1.Grade = T2.lettergrade AND T1.StuID = T3.StuID WHERE T2.gradepoint >= 3.8
SELECT LOCATION FROM station GROUP BY LOCATION HAVING count(*) = 1
SELECT Investor , COUNT(*) FROM entrepreneur GROUP BY Investor
SELECT count(*) FROM Financial_transactions AS T1 JOIN Accounts AS T2 ON T1.account_id = T2.account_id WHERE T2.account_name = "3@@ 37@@ "
SELECT department_id , AVG(salary) FROM employees WHERE commission_pct != "null" GROUP BY department_id
SELECT pName FROM Player WHERE yCard = 'yes' ORDER BY HS DESC
SELECT Age FROM artist
SELECT count(*) FROM csu_fees WHERE campusfee > (SELECT avg(campusfee) FROM csu_fe@@ es)
SELECT DISTINCT transaction_type FROM Financial_Transactions
SELECT avg(@@ promin@@ ence) FROM mountain WHERE country = 'M@@ or@@ oc@@ co@@ '
SELECT count(DISTINCT program@@ _id) FROM broadcast WHERE time_of_day = 'Night'
SELECT avg(T2.fastestlapspeed) , T1.name , T1.year FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year > 2014 GROUP BY T1.name ORDER BY T1.year
SELECT Name FROM team WHERE Team_id NOT IN (SELECT Team FROM match_@@ season@@ )
SELECT T2.country FROM city AS T1 JOIN country AS T2 ON T1.country_id = T2.country_id GROUP BY T2.country_id HAVING count(*) >= 3
SELECT name , trade_name FROM medicine EXCEPT SELECT T1.name , T1.trade_name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id = T1.id JOIN enzyme AS T3 ON T3.id = T2.enzyme_id WHERE T3.@@ product = 'Pro@@ top@@ or@@ phy@@ rin@@ o@@ g@@ en I@@ X'
SELECT T2.city FROM Customers AS T1 JOIN Addresses AS T2 ON T1.customer_address_id = T2.address_id GROUP BY T2.city ORDER BY count(*) DESC LIMIT 1;
SELECT name FROM event ORDER BY YEAR DESC
SELECT t1.product_name , t1.@@ typical_buying_price , t1.@@ typical_selling_price FROM products AS t1 JOIN ref_colors AS t2 ON t1.color_code = t2.color_code WHERE t2.color_description = "yellow@@ "
SELECT Major FROM STUDENT WHERE Sex = "F" GROUP BY major ORDER BY count(*) DESC LIMIT 1
SELECT mID , avg(stars) FROM Rating WHERE mID NOT IN (SELECT T1.mID FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID = T2.rID WHERE T2.name = "Brittany Harri@@ s@@ ") GROUP BY mID
SELECT DISTINCT T1.@@ Age FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID = T2.S@@ e@@ cretary_Vote WHERE T2.Election_Cycle = "Fall"
SELECT first_name , last_name , hire_date , salary , department_id FROM employees WHERE first_name NOT LIKE '%M%'
SELECT T1.city FROM city AS T1 JOIN temperature AS T2 ON T1.city_id = T2.city_id WHERE T2.Mar < T2.@@ Dec EXCEPT SELECT T3.city FROM city AS T3 JOIN hosting_city AS T4 ON T3.city_id = T4.host_city
SELECT Comptroller , COUNT(*) FROM party GROUP BY Comptroller ORDER BY COUNT(*) DESC LIMIT 1
SELECT LOCATION FROM cinema WHERE capacity > 300 GROUP BY LOCATION HAVING count(*) >= 2
SELECT lot_details FROM Lots EXCEPT SELECT T1.lot_details FROM Lots AS T1 JOIN transaction@@ s_@@ lots AS T2 ON T1.lot_id = T2.lot_id
SELECT count(*) FROM users WHERE user_login = 1
SELECT T1.dorm_name , T1.student_capacity FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid = T2.dormid JOIN dorm_amenity AS T3 ON T2.amenid = T3.amenid GROUP BY T2.dormid ORDER BY count(*) LIMIT 1
SELECT sum(@@ budget) FROM department WHERE dept_name = 'Marketing' OR dept_name = 'Finance'
SELECT Name FROM technician WHERE Age = 36 OR Age = 37
SELECT Publication_Date FROM publication ORDER BY Price DESC
SELECT founded FROM university ORDER BY enrollment DESC LIMIT 1
SELECT T2.D@@ en@@ omination FROM player AS T1 JOIN school AS T2 ON T1.School_ID = T2.School_ID GROUP BY T1.School_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT name , trade_name FROM medicine WHERE FDA_@@ approved = 'Yes'
SELECT name FROM manufacturers WHERE revenue BETWEEN 100 AND 150
SELECT count(*) FROM Ref_budget_codes
SELECT T1.Country_name FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id = T2.Country WHERE T2.Position = "F@@ or@@ ward" INTERSECT SELECT T1.Country_name FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id = T2.Country WHERE T2.Position = "Defender"
SELECT customer_status_code , cell_mobile@@ _@@ phone_number , email_address FROM Customers WHERE first_name = "Mar@@ in@@ a" OR last_name = "K@@ ohl@@ er"
SELECT count(*) FROM track
SELECT T1.artist_name , count(*) FROM artist AS T1 JOIN song AS T2 ON T1.artist_name = T2.artist_name WHERE T2.languages = "english" GROUP BY T2.artist_name HAVING count(*) >= 1
SELECT avg(age) , city_code FROM student GROUP BY city_code
SELECT DISTINCT T1.name , T1.@@ position FROM physician AS T1 JOIN prescribes AS T2 ON T1.employeeid = T2.physician JOIN medication AS T3 ON T3.code = T2.medication WHERE T3.@@ B@@ rand = "@@ X@@ "
SELECT rou@@ te_name FROM Delivery_Rout@@ es ORDER BY rou@@ te_name
SELECT name , damage_millions_@@ US@@ D FROM storm ORDER BY max_speed DESC
SELECT first_name , last_name FROM employees ORDER BY birth@@ _date DESC LIMIT 1;
SELECT t3.fname , t3.lname FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t1.clubname = "Hopkins Student Enterprises" AND t2.position = "CTO"
SELECT DISTINCT instrument FROM Instruments
SELECT StuID FROM Sportsinfo GROUP BY StuID HAVING sum(hoursperweek) > 10
SELECT count(*) FROM Financial_transactions AS T1 JOIN Accounts AS T2 ON T1.account_id = T2.account_id WHERE T2.account_name = "3@@ 37@@ "
SELECT Competition_type FROM competition GROUP BY Competition_type HAVING COUNT(*) <= 5
SELECT DISTINCT t3.policy_type_code FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id = t2.customer_id JOIN available_policies AS t3 ON t2.policy_id = t3.policy_id WHERE t1.customer_name = (SELECT t1.customer_name FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.customer_name ORDER BY count(*) DESC LIMIT 1)
SELECT Industry FROM Companies GROUP BY Industry ORDER BY COUNT(*) DESC
SELECT T3.amenity_name FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid = T2.dormid JOIN dorm_amenity AS T3 ON T2.amenid = T3.amenid JOIN lives_in AS T4 ON T4.dormid = T1.dormid JOIN student AS T5 ON T5.@@ stuid = T4.@@ stuid WHERE T5.@@ lname = 'Smith@@ '
SELECT Name FROM mountain ORDER BY Name ASC
SELECT T2.allergytype , count(*) FROM Has_allergy AS T1 JOIN Allergy_type AS T2 ON T1.allergy = T2.@@ allergy GROUP BY T2.allergytype
SELECT bname FROM bank ORDER BY no_of_@@ customers DESC LIMIT 1
SELECT campus FROM campuses WHERE LOCATION = "C@@ hi@@ co@@ "
SELECT count(*) FROM classroom WHERE building = 'Lamberton' AND capacity < 50
SELECT max(S@@ il@@ ver) , min(@@ S@@ il@@ ver) FROM club_rank
SELECT account_id , date_@@ account_opened , account_name , other_account_details FROM Accounts
SELECT T1.subject_id , T2.subject_name , COUNT(*) FROM Courses AS T1 JOIN Subjects AS T2 ON T1.subject_id = T2.subject_id GROUP BY T1.subject_id ORDER BY COUNT(*) ASC
SELECT count(DISTINCT region@@ _id) FROM affected_region
SELECT count(*) FROM Financial_transactions
SELECT min(@@ distance) , avg(distance) , max(@@ distance) FROM Aircraft
SELECT t1.catalog_entry_name FROM Catalog_Contents AS t1 JOIN Catalog_Contents_Additional_Attributes AS t2 ON t1.catalog_entry_id = t2.catalog_entry_id WHERE t2.attribute_value = (SELECT attribute_value FROM Catalog_Contents_Additional_Attributes GROUP BY attribute_value ORDER BY count(*) DESC LIMIT 1)
SELECT Title FROM film WHERE Film_ID NOT IN (SELECT Film_ID FROM film_market_@@ estim@@ ation)
SELECT DISTINCT T1.@@ file@@ _@@ size , T1.formats FROM files AS T1 JOIN song AS T2 ON T1.f_id = T2.f_id WHERE T2.resolution < 800
SELECT name , distance FROM Aircraft WHERE aid = 12
SELECT T3.dept_name FROM course AS T1 JOIN CLASS AS T2 ON T1.crs_code = T2.crs_code JOIN department AS T3 ON T1.dept_code = T3.dept_code GROUP BY T1.dept_code ORDER BY sum(T1.crs_credit) DESC LIMIT 1
SELECT t1.name FROM swimmer AS t1 JOIN record AS t2 ON t1.id = t2.swimmer_id WHERE RESULT = 'Win' INTERSECT SELECT t1.name FROM swimmer AS t1 JOIN record AS t2 ON t1.id = t2.swimmer_id WHERE RESULT = 'L@@ oss@@ '
SELECT count(@@ patient@@ ) FROM stay WHERE room = 11@@ 2
SELECT Nominee , COUNT(*) FROM musical GROUP BY Nominee
SELECT name , LOCATION FROM cinema ORDER BY capacity DESC LIMIT 1
SELECT T1.Store_Phone , T1.Store_Email_Address FROM Drama_Workshop_Groups AS T1 JOIN Services AS T2 ON T1.Workshop_Group_ID = T2.Workshop_Group_ID
SELECT name FROM club ORDER BY name DESC
SELECT T1.name FROM station AS T1 JOIN status AS T2 ON T1.id = T2.station_id GROUP BY T2.station_id HAVING avg(bikes_available) > 10 EXCEPT SELECT name FROM station WHERE city = "San Jo@@ se@@ "
SELECT name FROM driver ORDER BY age DESC
SELECT appoint@@ ment@@ id FROM appointment ORDER BY ST@@ AR@@ T DESC LIMIT 1
SELECT sum(city_population) FROM district ORDER BY city_area DESC LIMIT 3
SELECT T1.name , T2.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid = T2.custid JOIN savings AS T3 ON T1.custid = T3.custid ORDER BY T3.balance LIMIT 1
SELECT DISTINCT artist_name FROM song WHERE languages = "english" EXCEPT SELECT DISTINCT artist_name FROM song WHERE rating > 8
SELECT title FROM course WHERE dept_name = 'Statistics' INTERSECT SELECT title FROM course WHERE dept_name = 'Psychology'
SELECT document_type_description FROM Ref_document_types WHERE document_type_name = "F@@ ilm@@ "
SELECT avg(t3.age) FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t1.clubname = "Tennis Club"
SELECT T1.state_province_county FROM Addresses AS T1 JOIN Staff AS T2 ON T1.address_id = T2.staff_address_id GROUP BY T1.state_province_county HAVING count(*) BETWEEN 2 AND 4;
SELECT building_@@ address , building_@@ phone FROM Apartment_Buildings WHERE building_manager	 = "B@@ ren@@ den"
SELECT origin , destination FROM Flight WHERE price > 300
SELECT name FROM club ORDER BY name DESC
SELECT T2.first_name , T2.last_name FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.address_id WHERE T1.state_province_county = "W@@ is@@ con@@ s@@ in"
SELECT physician , department FROM affiliated_with WHERE primar@@ y@@ affiliation = 1
SELECT product_name , product_category_code FROM products ORDER BY product_price DESC LIMIT 1
SELECT T1.Name , T2.Name FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID = T2.Musical_ID
SELECT t3.lname FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t1.clubname = "Hopkins Student Enterprises"
SELECT nationality , count(*) FROM swimmer GROUP BY nationality HAVING count(*) > 1
SELECT song_name FROM song WHERE rating < (SELECT max(rating) FROM song WHERE genre_is = "@@ bl@@ ues")
SELECT count(*) FROM HOTELS
SELECT DISTINCT artist_name FROM artist WHERE country = "Bangladesh" EXCEPT SELECT DISTINCT artist_name FROM song WHERE rating > 7
SELECT Name FROM WINE ORDER BY Score LIMIT 1
SELECT T1.Committee FROM election AS T1 JOIN party AS T2 ON T1.Party = T2.Party_ID WHERE T2.Party = "Democratic"
SELECT DISTINCT t1.clubname FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t3.city_code = "BAL@@ "
SELECT Name FROM technician WHERE Age = 36 OR Age = 37
SELECT name FROM scientists EXCEPT SELECT T3.name FROM assignedto AS T1 JOIN projects AS T2 ON T1.project = T2.code JOIN scientists AS T3 ON T1.scientist = T3.SSN WHERE T2.hours = (SELECT max(hours) FROM projects)
SELECT song_name FROM song WHERE languages = "english"
SELECT T2.account_name , T1.account_id , count(*) FROM Financial_transactions AS T1 JOIN Accounts AS T2 ON T1.account_id = T2.account_id GROUP BY T1.account_id
SELECT T2.StuID FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID = T2.advisor WHERE T1.rank = "Professor"
SELECT building_@@ short_name FROM Apartment_Buildings WHERE building_manager	 = "Emma"
SELECT T1.course_name FROM courses AS T1 JOIN student_course_registrations AS T2 ON T1.course_id = T2.@@ course_@@ Id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1
SELECT role_code , count(*) FROM Employees GROUP BY role_code
SELECT t3.individual_last_name FROM organizations AS t1 JOIN organization_contact_individuals AS t2 ON t1.organization_id = t2.organization_id JOIN individuals AS t3 ON t2.individual_id = t3.individual_id WHERE t1.@@ uk_vat@@ _number = (SELECT max(@@ uk_vat@@ _@@ number) FROM organization@@ s) ORDER BY t2.date_contact_to ASC LIMIT 1
SELECT T1.activity_name FROM Activity AS T1 JOIN Faculty_participates_in AS T2 ON T1.actID = T2.actID GROUP BY T1.actID ORDER BY count(*) DESC LIMIT 1
SELECT first_name , last_name , hire_date , salary , department_id FROM employees WHERE first_name NOT LIKE '%M%' ORDER BY department_id
SELECT Country FROM mountain GROUP BY Country HAVING COUNT(*) > 1
SELECT avg(price) FROM Lessons AS T1 JOIN Staff AS T2 ON T1.staff_id = T2.staff_id WHERE T2.first_name = "Janessa" AND T2.last_name = "Sawayn";
SELECT name FROM C@@ L@@ u@@ b WHERE Club_ID NOT IN (SELECT Club_ID FROM play@@ er)
SELECT count(*) , T1.year FROM postseason AS T1 JOIN team AS T2 ON T1.team_id_winner = T2.team_id_br WHERE T2.name = 'Boston Red Stockings' GROUP BY T1.year
SELECT count(DISTINCT LEVEL) FROM member
SELECT T1.account_name , T1.other_account_details FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.customer_first_name = "M@@ eag@@ h@@ an" AND T2.customer_last_name = "K@@ eel@@ ing"
SELECT DISTINCT t2.customer_details FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id = t2.customer_id WHERE t1.policy_type_code = "Deputy"
SELECT lname FROM student WHERE sex = 'F' AND city_code = 'B@@ AL@@ ' UNION SELECT lname FROM student WHERE sex = 'M' AND age < 20
SELECT DISTINCT grade FROM list WHERE classroom = 10@@ 3
SELECT employee_id FROM Employees EXCEPT SELECT Destruction_Authorised_by_Employee_ID FROM Documents_to_be_destroyed
SELECT T2.Hardware_Model_name , T2.Company_name FROM chip_model AS T1 JOIN phone AS T2 ON T1.Model_name = T2.chip_model WHERE T1.Launch@@ _year = 2002 OR T1.RAM_MiB > 3@@ 2;
SELECT project_id , count(*) FROM Documents GROUP BY project_id
SELECT T1.product_name , T2.color_description , T1.@@ product_description FROM products AS T1 JOIN Ref_colors AS T2 ON T1.color_code = T2.color_code WHERE product_category_code = "Herbs"
SELECT T2.emp_fname , T4.prof_office , T3.crs_description FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num = T2.emp_num JOIN course AS T3 ON T1.crs_code = T3.crs_code JOIN professor AS T4 ON T2.emp_num = T4.emp_num
SELECT customer_id FROM Customers EXCEPT SELECT customer_id FROM Accounts
SELECT start_station_name , start_station_id FROM trip WHERE start_date LIKE "8/%" GROUP BY start_station_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.FacID FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID = T2.advisor GROUP BY T1.FacID HAVING count(*) >= 2
SELECT T1.Name , T2.Name FROM climber AS T1 JOIN mountain AS T2 ON T1.Mountain_ID = T2.Mountain_ID
SELECT T2.guest_first_name , T1.booking_start_date , T1.booking_start_date FROM Apartment_Bookings AS T1 JOIN Guests AS T2 ON T1.guest_id = T2.guest_id
SELECT DISTINCT TYPE FROM vocals
SELECT Author FROM submission WHERE College = "Florida" OR College = "Temple"
SELECT apt_number FROM Apartments WHERE apt_type_code = "F@@ lat@@ "
SELECT customer_status_code FROM Customers GROUP BY customer_status_code ORDER BY count(*) ASC LIMIT 1;
SELECT T2.party_name , count(*) FROM Member AS T1 JOIN party AS T2 ON T1.party_id = T2.party_id GROUP BY T1.party_id
SELECT age , count(*) FROM Student GROUP BY age
SELECT count(*) FROM Lessons AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.first_name = "R@@ ay"
SELECT count(*) FROM Customers;
SELECT T1.name FROM products AS T1 JOIN manufacturers AS T2 ON T1.Manufacturer = T2.code WHERE T2.name = 'C@@ re@@ ative Lab@@ s' INTERSECT SELECT T1.name FROM products AS T1 JOIN manufacturers AS T2 ON T1.Manufacturer = T2.code WHERE T2.name = 'Sony'
SELECT DISTINCT fname FROM student
SELECT name_first , name_last FROM player WHERE weight > 220 OR height < 7@@ 5
SELECT T1.driverid , T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE POSITION = '1' GROUP BY T1.driverid HAVING count(*) >= 2
SELECT count(*) FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID = Class_Senator_Vote WHERE T1.S@@ e@@ x = "M" AND T2.Election_Cycle = "Fall"
SELECT customer_id , customer_first_name FROM Customers EXCEPT SELECT T1.customer_id , T2.customer_first_name FROM Customers_cards AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id WHERE card_type_code = "Credit"
SELECT song_name FROM song ORDER BY resolution
SELECT title FROM course WHERE course_id NOT IN (SELECT course_id FROM prereq)
SELECT title FROM course WHERE course_id IN (SELECT T1.prereq_id FROM prereq AS T1 JOIN course AS T2 ON T1.course_id = T2.course_id WHERE T2.title = '@@ Mobile Comput@@ ing')
SELECT amount , donator_name FROM endowment ORDER BY amount DESC LIMIT 1
SELECT T2.emp_fname , T1.prof_office FROM professor AS T1 JOIN employee AS T2 ON T1.emp_num = T2.emp_num ORDER BY T2.emp_fname
SELECT Team , COUNT(*) FROM elimination GROUP BY Team
SELECT first_name , last_name , salary FROM employees WHERE salary < 6000
SELECT Famous_Title FROM artist WHERE Artist = "Triumf@@ all"
SELECT title FROM course GROUP BY title HAVING count(*) > 1
SELECT T1.cust_name , T1.@@ acc_type FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id = T2.cust_id GROUP BY T1.cust_name HAVING sum(T2.amount) > 5000
SELECT Theme FROM farm_competition ORDER BY YEAR ASC
SELECT school_name FROM school ORDER BY enrollment LIMIT 1
SELECT TYPE FROM film_market_estimation WHERE YEAR = 1995
SELECT title , rental_rate FROM film ORDER BY rental_rate DESC LIMIT 1
SELECT Famous_Title FROM artist WHERE Artist_ID NOT IN@@ (SELECT Artist_ID FROM volume@@ )
SELECT count(*) , POSITION FROM player WHERE points < 30 GROUP BY POSITION
SELECT T2.name , T1.team_id_winner FROM postseason AS T1 JOIN team AS T2 ON T1.team_id_winner = T2.team_id_br WHERE T1.year = 2008 GROUP BY T1.team_id_winner ORDER BY count(*) DESC LIMIT 1;
SELECT T1.id , T1.name , T1.nationality FROM architect AS T1 JOIN mill AS T2 ON T1.id = T2.architect_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT customer_id , customer_name FROM customers ORDER BY customer_id ASC
SELECT avg(Price) , YEAR FROM WINE GROUP BY YEAR
SELECT T1.date_order_placed FROM orders AS T1 JOIN shipments AS T2 ON T1.order_id = T2.order_id WHERE T2.@@ shipment_tracking_number = 345@@ 2
SELECT name FROM building WHERE height_feet >= 200 AND floors >= 20
SELECT T2.Name FROM PHOTOS AS T1 JOIN TOURIST_ATTRACTIONS AS T2 ON T1.Tourist_Attraction_ID = T2.Tourist_Attraction_ID WHERE T1.Name = "game@@ 1"
SELECT Team , Starting_Year FROM technician
SELECT count(*) FROM instruments WHERE instrument = "drum@@ s"
SELECT Product_Name FROM Products ORDER BY Product_Price DESC LIMIT 1
SELECT count(*) FROM APPELLATIONS WHERE County = "N@@ ap@@ a"
SELECT T1.Name , avg(@@ T2.S@@ p@@ e@@ ed) FROM country AS T1 JOIN roller_coaster AS T2 ON T1.Country_ID = T2.Country_ID GROUP BY T1.Name
SELECT LOCATION FROM gas_station ORDER BY open_year
SELECT t1.store_name FROM store AS t1 JOIN store_district AS t2 ON t1.store_id = t2.store_id JOIN district AS t3 ON t2.district_id = t3.district_id WHERE t3.@@ district_name = "K@@ hanewal Distric@@ t"
SELECT clubdesc FROM club WHERE clubname = "Pen and Paper Gaming"
SELECT count(*) FROM Ref_document_types
SELECT T2.name FROM train_station AS T1 JOIN station AS T2 ON T1.station_id = T2.station_id GROUP BY T1.station_id HAVING count(*) >= 2
SELECT T2.name FROM Flight AS T1 JOIN Aircraft AS T2 ON T1.aid = T2.aid GROUP BY T1.aid HAVING count(*) >= 2
SELECT T1.emp_lname , T2.prof_office FROM employee AS T1 JOIN professor AS T2 ON T1.emp_num = T2.emp_num JOIN department AS T3 ON T2.dept_code = T3.dept_code WHERE T3.dept_name = 'History'
SELECT T1.problem_id FROM problems AS T1 JOIN staff AS T2 ON T1.reported_by_staff_id = T2.staff_id WHERE date_problem_reported > ( SELECT max(@@ date_problem_reported) FROM problems AS T3 JOIN staff AS T4 ON T3.reported_by_staff_id = T4.staff_id WHERE T4.staff_first_name = "Rylan" AND T4.staff_last_name = "Homenick" )
SELECT DISTINCT T2.name FROM affiliated_with AS T1 JOIN department AS T2 ON T1.@@ department = T2.@@ department@@ id WHERE PrimaryAffiliation = 1
SELECT DISTINCT T1.artist_name , T1.country FROM artist AS T1 JOIN song AS T2 ON T1.artist_name = T2.artist_name WHERE T2.rating > 9
SELECT Carrier FROM device WHERE Software_Platform != 'And@@ ro@@ id'
SELECT T2.firstname , T2.lastname FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate = T2.id JOIN Songs AS T3 ON T3.SongId = T1.SongId WHERE T3.Title = "Badlands" AND T1.StagePosition = "back"
SELECT town_city FROM customers WHERE customer_type_code = "Goo@@ d Cre@@ dit Rat@@ ing" GROUP BY town_city ORDER BY count(*) LIMIT 1
SELECT DISTINCT stu_fname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num = T2.stu_num WHERE enroll_grade = 'C'
SELECT DISTINCT firstname , lastname FROM list
SELECT T2.D@@ elegate , T1.County_name FROM county AS T1 JOIN election AS T2 ON T1.County_id = T2.District
SELECT t1.customer_name FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id = t2.customer_id JOIN order_items AS t3 ON t2.order_id = t3.order_id WHERE t3.@@ order_@@ quantity = ( SELECT max(@@ order_quantity) FROM order_item@@ s)
SELECT sum(T1.@@ Order_Quantity) FROM ORDER_ITEMS AS T1 JOIN Products AS T2 ON T1.Product_ID = T2.Product_ID WHERE T2.Product_Name = "photo@@ "
SELECT distinct(@@ Bill@@ ing@@ Country) FROM INVOICE
SELECT T2.role_name , T2.@@ role_description FROM Employees AS T1 JOIN ROLES AS T2 ON T1.role_code = T2.role_code WHERE T1.employee_name = "Ebba"
SELECT T1.LastName FROM CUSTOMER AS T1 JOIN EMPLOYEE AS T2 ON T1.SupportRepId = T2.EmployeeId GROUP BY T1.SupportRepId HAVING COUNT(*) <= 20
SELECT T2.Crime_rate FROM city AS T1 JOIN county_public_safety AS T2 ON T1.County_ID = T2.County_ID WHERE T1.White > 90
SELECT interaction_type , count(*) FROM medicine_enzyme_interaction GROUP BY interaction_type ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Video_games
SELECT DISTINCT T1.@@ Advisor FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID = T2.Treasurer_Vote WHERE T2.Election_Cycle = "Spring"
SELECT Title FROM book ORDER BY Iss@@ ues ASC
SELECT Name FROM scientists WHERE ssn NOT IN (SELECT scientist FROM AssignedTo)
SELECT city , COUNT(*) FROM station GROUP BY city HAVING COUNT(*) >= 15
SELECT count(DISTINCT e@@ id) FROM Certificate
SELECT Rank FROM FACULTY GROUP BY Rank ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM market WHERE Number_cities < 300
SELECT event@@ _name FROM party_events GROUP BY event@@ _name HAVING count(*) > 2
SELECT DISTINCT artist_name FROM artist WHERE country = "Bangladesh" EXCEPT SELECT DISTINCT artist_name FROM song WHERE rating > 7
SELECT count(*) FROM stadium WHERE country != 'R@@ uss@@ ia'
SELECT t2.@@ All_@@ G@@ ames , t1.@@ location FROM university AS t1 JOIN basketball_match AS t2 ON t1.school_id = t2.school_id WHERE team_name = 'C@@ le@@ m@@ son'
SELECT count(*) FROM tryout WHERE pPos = 'goalie'
SELECT sum(city_population) FROM district WHERE city_area > (SELECT avg(@@ city_@@ are@@ a) FROM distric@@ t@@ )
SELECT T2.Name FROM journal_committee AS T1 JOIN editor AS T2 ON T1.Editor_ID = T2.Editor_ID JOIN journal AS T3 ON T1.Journal_ID = T3.Journal_ID WHERE T3.S@@ ales > 3000
SELECT TYPE FROM vocals AS T1 JOIN songs AS T2 ON T1.songid = T2.songid JOIN band AS T3 ON T1.bandmate = T3.id WHERE T3.@@ firstname = "Solveig" AND T2.title = "A B@@ ar In Am@@ st@@ er@@ dam@@ "
SELECT avg(price) FROM Flight WHERE origin = "Los Angeles" AND destination = "Honolulu"
SELECT Carrier FROM phone WHERE Memory_in_G < 32 INTERSECT SELECT Carrier FROM phone WHERE Memory_in_G > 6@@ 4
SELECT customer_phone , customer_email FROM Customers WHERE customer_first_name = "A@@ ni@@ yah" AND customer_last_name = "F@@ e@@ est"
SELECT t1.name FROM ship AS t1 JOIN captain AS t2 ON t1.ship_id = t2.ship_id GROUP BY t2.ship_id HAVING count(*) > 1
SELECT T3.@@ stu_fname FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code = T2.class_code JOIN student AS T3 ON T2.stu_num = T3.stu_num WHERE T1.crs_code = 'ACCT-211'
SELECT count(*) FROM trip AS T1 JOIN station AS T2 ON T1.end_station_id = T2.id WHERE T2.city != "San Francisco"
SELECT Fname , Lname FROM FACULTY WHERE sex = "M" AND Building = "NEB"
SELECT song_name FROM song WHERE rating < (SELECT min(@@ rating) FROM song WHERE languages = '@@ english@@ ')
SELECT Country FROM manager WHERE Age > 50 OR Age < 46
SELECT count(*) FROM Rooms WHERE bedType = "K@@ ing@@ ";
SELECT T1.Player , T1.@@ Years_Played FROM player AS T1 JOIN team AS T2 ON T1.Team = T2.Team_id WHERE T2.Name = "Columbus Crew"
SELECT Allergy , count(*) FROM Has_allergy GROUP BY Allergy
SELECT T2.title , T1.mID FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID GROUP BY T1.mID ORDER BY count(*) DESC LIMIT 1
SELECT Allergy FROM Has_allergy GROUP BY Allergy ORDER BY count(*) DESC LIMIT 1
SELECT name , cost FROM procedures ORDER BY cost DESC
SELECT order_item@@ _id FROM order_items WHERE product_id = 11
SELECT avg(price) FROM wine WHERE Appelation NOT IN (SELECT T1.Appelation FROM APPELLATIONS AS T1 JOIN WINE AS T2 ON T1.Appelation = T2.Appelation WHERE T1.County = 'Son@@ om@@ a')
SELECT Tourist_Details FROM VISITORS
SELECT max(Price) , max(Score) FROM WINE WHERE Appelation = "St@@ . Helen@@ a"
SELECT T3.staff_first_name , T3.staff_last_name FROM problems AS T1 JOIN product AS T2 JOIN staff AS T3 ON T1.product_id = T2.product_id AND T1.reported_by_staff_id = T3.staff_id WHERE T2.product_name = "rem" EXCEPT SELECT T3.staff_first_name , T3.staff_last_name FROM problems AS T1 JOIN product AS T2 JOIN staff AS T3 ON T1.product_id = T2.product_id AND T1.reported_by_staff_id = T3.staff_id WHERE T2.product_name = "aut@@ "
SELECT count(*) FROM Customers_cards
SELECT project_details FROM Projects WHERE project_id NOT IN ( SELECT project_id FROM Project_outcomes )
SELECT Status FROM roller_coaster GROUP BY Status HAVING COUNT(*) > 2
SELECT count(*) FROM home_game AS T1 JOIN park AS T2 ON T1.park_id = T2.park_id WHERE T1.year = 2000 AND T2.city = 'Atlanta';
SELECT DISTINCT T1.cust_name , T1.@@ credit_score FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id = T2.cust_id
SELECT count(DISTINCT Ho@@ metow@@ n@@ ) FROM people
SELECT city FROM branch EXCEPT SELECT city FROM branch WHERE membership_amount > 100
SELECT T1.@@ Customer_Event_ID , T1.property_id FROM Customer_@@ Events AS T1 JOIN Customer_@@ Event@@ _N@@ otes AS T2 ON T1.@@ Customer_Event_ID = T2.@@ Customer_Event_ID GROUP BY T1.customer_@@ event_id HAVING count(*) BETWEEN 1 AND 3
SELECT location_code FROM Document_locations GROUP BY location_code HAVING count(*) >= 3
SELECT country FROM airports ORDER BY elevation DESC LIMIT 1
SELECT mID , avg(stars) FROM Rating GROUP BY mID HAVING count(*) >= 2
SELECT budget_type_code , budget_type_description FROM Ref_budget_codes
SELECT customer_id FROM Customers EXCEPT SELECT customer_id FROM Accounts
SELECT T2.firstname , T2.lastname FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate = T2.id JOIN Songs AS T3 ON T3.SongId = T1.SongId WHERE T3.Title = "Le Pop"
SELECT T1.artist_name FROM song AS T1 JOIN files AS T2 ON T1.f_id = T2.f_id ORDER BY T2.duration LIMIT 1
SELECT T2.roomName , count(*) , T1.Room FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room = T2.RoomId GROUP BY T1.Room
SELECT count(*) FROM Employees@@ ;
SELECT T2.emp_fname , T1.crs_code FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num = T2.emp_num
SELECT T1.Date_@@ of_ceremony FROM music_festival AS T1 JOIN volume AS T2 ON T1.Volume = T2.Volume_ID WHERE T2.Weeks_on_Top > 2
SELECT title FROM course WHERE course_id IN (SELECT T1.prereq_id FROM prereq AS T1 JOIN course AS T2 ON T1.course_id = T2.course_id WHERE T2.title = '@@ Mobile Comput@@ ing')
SELECT count(DISTINCT s_@@ id) FROM advisor
SELECT T2.Railway_ID , T1.@@ Location FROM railway AS T1 JOIN train AS T2 ON T1.Railway_ID = T2.Railway_ID GROUP BY T2.Railway_ID HAVING COUNT(*) > 1
SELECT Name FROM actor WHERE Age != 20
SELECT T1.project_details FROM Projects AS T1 JOIN Documents AS T2 ON T1.project_id = T2.project_id WHERE T2.document_name = "King Book@@ "
SELECT avg(access_count) FROM documents GROUP BY document_structure_code ORDER BY count(*) ASC LIMIT 1
SELECT t2.@@ service_name FROM first_notification_of_loss AS t1 JOIN services AS t2 ON t1.service_id = t2.service_id GROUP BY t1.service_id HAVING count(*) > 2
SELECT T1.country FROM artist AS T1 JOIN song AS T2 ON T1.artist_name = T2.artist_name GROUP BY T2.artist_name ORDER BY count(*) LIMIT 1
SELECT T1.Time FROM elimination AS T1 JOIN wrestler AS T2 ON T1.Wrestler_ID = T2.Wrestler_ID ORDER BY T2.Days_held DESC LIMIT 1
SELECT T1.department_id , T1.name , count(*) FROM management AS T2 JOIN department AS T1 ON T1.department_id = T2.department_id GROUP BY T1.department_id HAVING count(*) > 1
SELECT count(*) FROM school
SELECT kids FROM Reservations WHERE FirstName = "ROY" AND LastName = "SWEAZY";
SELECT destination , count(*) FROM Flight GROUP BY destination
SELECT count(*) FROM program
SELECT count(*) FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id = t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id = t3.characteristic_id WHERE t1.product_name = "flax"
SELECT count(*) , time_of_day FROM broadcast GROUP BY time_of_day
SELECT Name FROM county_public_safety ORDER BY Population DESC
SELECT DISTINCT T1.id , T1.name FROM station AS T1 JOIN status AS T2 ON T1.id = T2.station_id WHERE T2.bikes_available > 12
SELECT T2.Party FROM election AS T1 JOIN party AS T2 ON T1.Party = T2.Party_ID WHERE T1.Committee = "Appropriations" INTERSECT SELECT T2.Party FROM election AS T1 JOIN party AS T2 ON T1.Party = T2.Party_ID WHERE T1.Committee = "Economic Matters"
SELECT T1.Team , T2.Location FROM player AS T1 JOIN school AS T2 ON T1.School_ID = T2.School_ID
SELECT T2.Party FROM election AS T1 JOIN party AS T2 ON T1.Party = T2.Party_ID WHERE T1.Committee = "Appropriations" INTERSECT SELECT T2.Party FROM election AS T1 JOIN party AS T2 ON T1.Party = T2.Party_ID WHERE T1.Committee = "Economic Matters"
SELECT T1.customer_id FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT Carrier FROM device WHERE Device_ID NOT IN (SELECT Device_ID FROM stock)
SELECT T1.Famous_Title FROM artist AS T1 JOIN volume AS T2 ON T1.Artist_ID = T2.Artist_ID WHERE T2.Weeks_on_Top > 2
SELECT Oper@@ at@@ ing_system , count(*) FROM web_client_accelerator GROUP BY Oper@@ at@@ ing_system
SELECT count(*) FROM products WHERE product_category_code = "Seed@@ s"
SELECT billing_state , COUNT(*) , SUM(total) FROM invoices WHERE billing_state = "CA";
SELECT LOCATION FROM track WHERE seating > 90000 INTERSECT SELECT LOCATION FROM track WHERE seating < 70000
SELECT title FROM course WHERE course_id IN (SELECT T1.course_id FROM prereq AS T1 JOIN course AS T2 ON T1.prereq_id = T2.course_id WHERE T2.title = 'D@@ i@@ fferential Geome@@ try')
SELECT customer_name FROM customers EXCEPT SELECT t1.customer_name FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id = t2.customer_id JOIN order_items AS t3 ON t2.order_id = t3.order_id JOIN products AS t4 ON t3.product_id = t4.product_id WHERE t4.product_details = 'Latte'
SELECT Appelation FROM WINE WHERE YEAR > 2008 EXCEPT SELECT Appelation FROM APPELLATIONS WHERE Area = "Central Coast"
SELECT * FROM products WHERE price BETWEEN 60 AND 120
SELECT avg(transaction_amount) , min(@@ transaction_amount) , max(@@ transaction_amount) , sum(transaction_amount) FROM Financial_transactions
SELECT T1.crs_code FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code = T2.class_code JOIN student AS T3 ON T3.stu_num = T2.stu_num WHERE T3.stu_lname = 'Smithson'
SELECT count(DISTINCT state) FROM bank
SELECT product_type_code , max(product_price) , min(product_price) FROM products GROUP BY product_type_code
SELECT T2.Name FROM election AS T1 JOIN representative AS T2 ON T1.Representative_ID = T2.Representative_ID ORDER BY votes DESC
SELECT Accreditation_type , count(*) FROM phone GROUP BY Accreditation_type
SELECT count(*) , dept_code FROM professor WHERE prof_high_degree = 'Ph.D.' GROUP BY dept_code
SELECT COUNT (DISTINCT Public@@ ation_@@ D@@ ate) FROM publication
SELECT policy_type_code FROM policies GROUP BY policy_type_code HAVING count(*) > 2
SELECT avg(transaction_amount) , min(@@ transaction_amount) , max(@@ transaction_amount) , sum(transaction_amount) FROM Financial_transactions
SELECT STATEMENT_ID , statement_details FROM Statements
SELECT Name FROM WINE WHERE YEAR < (SELECT min(YEAR) FROM WINE WHERE Winery = "Bran@@ d@@ er@@ ")
SELECT count(*) , classroom FROM list GROUP BY classroom
SELECT complaint_status_code FROM complaints GROUP BY complaint_status_code HAVING count(*) > 3
SELECT DISTINCT Fname FROM STUDENT WHERE Fname LIKE '%a%'
SELECT phone_number , email_address FROM Customers WHERE amount_outstanding > 2000;
SELECT T2.first_name , T2.last_name FROM Customer_Payments AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) > 2;
SELECT t1.name , t1.@@ nationality FROM swimmer AS t1 JOIN record AS t2 ON t1.id = t2.swimmer_id WHERE RESULT = 'Win' GROUP BY t2.swimmer_id HAVING count(*) > 1
SELECT DISTINCT firstname FROM list WHERE classroom = 10@@ 7
SELECT DISTINCT T1.LName FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID = T2.CLASS@@ _P@@ resident_VOTE
SELECT course_id FROM course EXCEPT SELECT course_id FROM prereq
SELECT LOCATION , sum(@@ number_of_@@ plat@@ form@@ s) , sum(@@ total_passengers) FROM station GROUP BY LOCATION
SELECT T2.D@@ ate_@@ of_@@ Bir@@ th FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Investor = "Simon Woodroffe" OR T1.Investor = "Peter Jon@@ es"
SELECT account_id , customer_id , account_name FROM Accounts
SELECT T3.Location FROM party_host AS T1 JOIN HOST AS T2 ON T1.Host_ID = T2.Host_ID JOIN party AS T3 ON T1.Party_ID = T3.Party_ID WHERE T2.Age > 50
SELECT document_name FROM documents EXCEPT SELECT t1.document_name FROM documents AS t1 JOIN document_sections AS t2 ON t1.document_code = t2.document_code JOIN document_section@@ s_@@ images AS t3 ON t2.@@ section_id = t3.@@ section_id
SELECT first_name , last_name FROM employees WHERE department_id = 70 OR department_id = 90
SELECT document_type_name , document_type_description FROM Ref_document_types WHERE document_type_code = "R@@ V"
SELECT Party_Theme FROM party ORDER BY Number_of_hosts ASC
SELECT avg(S@@ co@@ res@@ ) FROM submission
SELECT T2.name , T2.@@ hometown FROM membership_register_branch AS T1 JOIN member AS T2 ON T1.member_id = T2.member_id WHERE T1.register_year = 2016
SELECT count(DISTINCT LEVEL) FROM member
SELECT origin , count(*) FROM Flight GROUP BY origin
SELECT name FROM instructor WHERE name LIKE '%@@ dar@@ %'
SELECT T1.season , T2.name FROM game AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.id JOIN injury_accident AS T3 ON T1.id = T3.game_id WHERE T3.@@ injury = 'F@@ oo@@ t injur@@ y' OR T3.@@ injury = 'Knee problem@@ '
SELECT city , count(*) FROM airports GROUP BY city HAVING count(*) > 1
SELECT count(*) FROM COURSE
SELECT Name FROM WINE WHERE YEAR = "@@ 200@@ 8"
SELECT DISTINCT song_name FROM song WHERE resolution > (SELECT min(@@ resolution) FROM song WHERE languages = "english@@ ")
SELECT count(*) FROM claims_processing_stages
SELECT state_province_county , country FROM addresses WHERE zip_postcode LIKE "4@@ %"
SELECT T1.service_type_code FROM services AS T1 JOIN EVENTS AS T2 ON T1.service_id = T2.service_id WHERE T2.@@ event_details = 'Success@@ ' INTERSECT SELECT T1.service_type_code FROM services AS T1 JOIN EVENTS AS T2 ON T1.service_id = T2.service_id WHERE T2.@@ event_details = 'F@@ ail@@ '
SELECT sum(no_of_customers) FROM bank
SELECT T1.date_@@ in_location_from , T1.date_@@ in_locaton_to FROM Document_locations AS T1 JOIN All_documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "Robin CV"
SELECT document_id , recei@@ pt@@ _date FROM Document@@ s;
SELECT DISTINCT t3.policy_type_code FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id = t2.customer_id JOIN available_policies AS t3 ON t2.policy_id = t3.policy_id WHERE t1.customer_name = "Dayana Robel"
SELECT avg(Order_Quantity) FROM Invoices WHERE payment_method_code = "MasterCard"
SELECT count(*) FROM dorm_amenity
SELECT sum(enr) FROM college WHERE cName NOT IN (SELECT cName FROM tryout WHERE pPos = "@@ goali@@ e")
SELECT count(*) FROM ship
SELECT COUNT(*) FROM station WHERE city = "Mountain View"
SELECT sum(T1.@@ attendance) FROM home_game AS T1 JOIN team AS T2 ON T1.team_id = T2.team_id_br WHERE T2.name = 'Boston Red Stockings' AND T1.year BETWEEN 2000 AND 2010@@ ;
SELECT director FROM movie WHERE YEAR = 1999 OR YEAR = 2000
SELECT name FROM user_profiles WHERE email LIKE '%@@ su@@ per@@ star@@ %' OR email LIKE '%@@ e@@ du@@ %'
SELECT T2.@@ school , T3.name FROM school_bus AS T1 JOIN school AS T2 ON T1.school_id = T2.school_id JOIN driver AS T3 ON T1.@@ driver_id = T3.@@ driver_id
SELECT count(*) FROM campuses
SELECT first_name , last_name FROM employees ORDER BY birth@@ _date DESC LIMIT 1;
SELECT count(*) FROM customers WHERE city = "P@@ ragu@@ e";
SELECT campus FROM campuses WHERE YEAR < 18@@ 00
SELECT customer_details FROM customers WHERE customer_details LIKE "%Diana%"
SELECT count(*) , sex FROM student WHERE age > (SELECT avg(age) FROM student) GROUP BY sex
SELECT fname FROM student WHERE age > 20
SELECT count(*) FROM Companies
SELECT T2.name FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID = T2.rID WHERE T1.stars > 3
SELECT t1.title FROM film AS T1 JOIN film_market_estimation AS T2 ON T1.Film_ID = T2.Film_ID ORDER BY high_@@ estimate DESC LIMIT 1
SELECT product , chromosome , porphyria FROM enzyme WHERE LOCATION = 'Cytosol@@ '
SELECT budget_type_description FROM Ref_budget_codes WHERE budget_type_code = "@@ OR@@ G@@ "
SELECT T1.service_id , T1.@@ service_@@ details , count(*) FROM Services AS T1 JOIN Res@@ ident@@ s_@@ Services AS T2 ON T1.service_id = T2.service_id GROUP BY T1.service_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM channel AS t1 JOIN broadcast AS t2 ON t1.channel_id = t2.channel_id WHERE t2.time_of_day = 'Morning'
SELECT TYPE FROM institution WHERE founded > 1990 AND enrollment >= 1000
SELECT count(*) , rank FROM captain GROUP BY rank
SELECT city , state FROM bank WHERE bname = '@@ morn@@ ing@@ side@@ '
SELECT date_@@ test_taken FROM Student_Tests_Taken WHERE test_result = "Pass"
SELECT account_id , account_details FROM Accounts
SELECT Low_Estimate , H@@ i@@ gh@@ _Estimate FROM film_market_estimation
SELECT employee_id , job_id FROM employees WHERE salary < ( SELECT min(salary) FROM employees WHERE job_id = 'M@@ K@@ _MAN' )
SELECT count(*) FROM train WHERE name LIKE "%@@ Express@@ %"
SELECT T1.@@ sent_date FROM documents AS T1 JOIN Grants AS T2 ON T1.grant_id = T2.grant_id JOIN Organisations AS T3 ON T2.organisation_id = T3.@@ organisation_id JOIN organisation_Types AS T4 ON T3.organisation_type = T4.@@ organisation_type WHERE T2.@@ grant_amount > 5000 AND T4.@@ organisation_type_description = 'Research'
SELECT name FROM artist WHERE artist_id NOT IN (SELECT artist_id FROM exhibition)
SELECT Advisor FROM STUDENT WHERE city_code = "BAL@@ "
SELECT hire_date FROM employees WHERE first_name NOT LIKE '%M%'
SELECT name FROM captain WHERE rank = 'Midshipman' OR rank = 'Lieutenant'
SELECT count(*) , T1.name FROM projects AS T1 JOIN assignedto AS T2 ON T1.code = T2.project GROUP BY T1.name
SELECT product_category_description FROM ref_product_categories WHERE product_category_code = "Spices"
SELECT Lname FROM FACULTY WHERE Building = "B@@ art@@ on" ORDER BY Lname
SELECT T1.title FROM item AS T1 JOIN review AS T2 ON T1.i_id = T2.i_id WHERE T2.@@ rank > 3 INTERSECT SELECT T1.title FROM item AS T1 JOIN review AS T2 ON T1.i_id = T2.i_id GROUP BY T2.i_id HAVING avg(T2.rating) > 5
SELECT T2.name FROM albums AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id WHERE T1.title = "Balls to the Wall";
SELECT composer FROM tracks WHERE name = "Fast As a Shark";
SELECT Nationality FROM journalist WHERE Years_working > 10 INTERSECT SELECT Nationality FROM journalist WHERE Years_working < 3
SELECT t3.title FROM authors AS t1 JOIN authorship AS t2 ON t1.authid = t2.authid JOIN papers AS t3 ON t2.paperid = t3.paperid JOIN inst AS t4 ON t2.instid = t4.instid WHERE t4.country = "USA" AND t2.authorder = 2 AND t1.lname = "Turon"
SELECT origin FROM program ORDER BY origin
SELECT T1.name_first , T1.name_last , T2.player_id FROM player AS T1 JOIN manag@@ er_@@ award AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT T2.emp_fname , T4.prof_office , T3.crs_description , T5.dept_name FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num = T2.emp_num JOIN course AS T3 ON T1.crs_code = T3.crs_code JOIN professor AS T4 ON T2.emp_num = T4.emp_num JOIN department AS T5 ON T4.dept_code = T5.dept_code
SELECT DISTINCT fname FROM student
SELECT T3.brand FROM mountain AS T1 JOIN photos AS T2 ON T1.id = T2.mountain_id JOIN camera_lens AS T3 ON T2.camera_lens_id = T3.id WHERE T1.@@ range = 'T@@ ou@@ b@@ k@@ al Atla@@ s' INTERSECT SELECT T3.brand FROM mountain AS T1 JOIN photos AS T2 ON T1.id = T2.mountain_id JOIN camera_lens AS T3 ON T2.camera_lens_id = T3.id WHERE T1.@@ range = 'L@@ ast@@ a Mass@@ if@@ '
SELECT department_id FROM employees GROUP BY department_id HAVING COUNT(@@ commission_p@@ ct@@ ) > 10
SELECT donator_name , sum(amount) FROM endowment GROUP BY donator_name ORDER BY sum(amount) DESC
SELECT avg(age) , max(age) , sex FROM student GROUP BY sex
SELECT Name FROM WINE WHERE Price > (SELECT max(Price) FROM WINE WHERE YEAR = 200@@ 6@@ )
SELECT email_address , phone_number FROM customers ORDER BY email_address , phone_number
SELECT customer_id FROM customers WHERE customer_name LIKE "%Diana%"
SELECT t2.color_description FROM products AS t1 JOIN ref_colors AS t2 ON t1.color_code = t2.color_code GROUP BY t2.color_description ORDER BY count(*) DESC LIMIT 1
SELECT avg(age) FROM Person
SELECT minister FROM party WHERE took_office > 1961 OR took_office < 195@@ 9
SELECT T2.song_name FROM files AS T1 JOIN song AS T2 ON T1.f_id = T2.f_id WHERE T1.duration LIKE "4@@ :%" UNION SELECT song_name FROM song WHERE languages = "english"
SELECT allergy , allergytype FROM Allergy_type
SELECT T1.name FROM physician AS T1 JOIN trained_in AS T2 ON T1.employeeid = T2.physician JOIN procedures AS T3 ON T3.code = T2.treatment ORDER BY T3.cost DESC LIMIT 1
SELECT first_name , last_name , salary FROM employees AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id JOIN locations AS T3 ON T2.location_id = T3.location_id WHERE T3.city = 'London'
SELECT T1.dorm_name FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid = T2.dormid JOIN dorm_amenity AS T3 ON T2.amenid = T3.amenid WHERE T3.amenity_name = 'TV Lounge' EXCEPT SELECT T1.dorm_name FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid = T2.dormid JOIN dorm_amenity AS T3 ON T2.amenid = T3.amenid WHERE T3.amenity_name = 'Study Room'
SELECT first_name , last_name FROM employees WHERE salary > (SELECT salary FROM employees WHERE employee_id = 16@@ 3 )
SELECT dorm_name FROM dorm ORDER BY student_capacity DESC LIMIT 1
SELECT YEAR FROM festival_detail GROUP BY YEAR HAVING COUNT(*) > 1
SELECT first_name , last_name , salary FROM employees WHERE commission_pct = "null"
SELECT count(DISTINCT affili@@ ation) FROM university
SELECT count(*) FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id = t2.product_id WHERE t1.product_name = "sesame"
SELECT count(*) FROM postseason AS T1 JOIN team AS T2 ON T1.team_id_loser = T2.team_id_br WHERE T2.name = 'Boston Red Stockings' AND T1.year = 200@@ 9@@ ;
SELECT avg(Order_Quantity) FROM Invoices WHERE payment_method_code = "MasterCard"
SELECT name FROM Companies WHERE Headquarters != 'USA'
SELECT Competition_type , Country FROM competition
SELECT T2.address FROM store AS T1 JOIN address AS T2 ON T1.address_id = T2.address_id WHERE store_id = 1
SELECT order_id , count(*) FROM Invoices GROUP BY order_id
SELECT T1.supplier_name , T1.supplier_phone FROM Suppliers AS T1 JOIN supplier_@@ addresses AS T2 ON T1.supplier_id = T2.supplier_id JOIN addresses AS T3 ON T2.address_id = T3.@@ address_id ORDER BY T3.@@ address_details
SELECT name FROM procedures WHERE cost < 5000 INTERSECT SELECT T3.name FROM physician AS T1 JOIN trained_in AS T2 ON T1.employeeid = T2.physician JOIN procedures AS T3 ON T3.code = T2.treatment WHERE T1.name = "John Wen"
SELECT DISTINCT staff_first_name , staff_last_name FROM staff AS T1 JOIN problem_log AS T2 ON T1.staff_id = T2.assigned_to_staff_id WHERE T2.problem_id = 1
SELECT T1.emp_lname , T1.emp_@@ hire@@ date FROM employee AS T1 JOIN professor AS T2 ON T1.emp_num = T2.emp_num WHERE T2.prof_office = 'D@@ RE 102@@ '
SELECT clubname FROM club
SELECT T1.staff_name , T1.staff_gender FROM staff AS T1 JOIN staff_department_assignments AS T2 ON T1.staff_id = T2.staff_id WHERE T2.@@ date_assigned_from LIKE "@@ 2016@@ %"
SELECT classroom , count(*) FROM list WHERE grade = "@@ 4" GROUP BY classroom
SELECT name FROM program ORDER BY launch DESC LIMIT 1
SELECT roomName FROM Rooms ORDER BY maxOccupancy DESC LIMIT 1;
SELECT * FROM CUSTOMER WHERE State = "N@@ Y"
SELECT T1.fname , T1.lname FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID = T2.facID GROUP BY T1.FacID ORDER BY count(*) DESC LIMIT 1
SELECT T1.@@ name_full , T1.college_id FROM college AS T1 JOIN player_college AS T2 ON T1.college_id = T2.college_id GROUP BY T1.college_id ORDER BY count(*) DESC LIMIT 1;
SELECT T3.@@ manager_name FROM station_company AS T1 JOIN company AS T2 ON T1.company_id = T2.company_id JOIN gas_station AS T3 ON T1.station_id = T3.station_id WHERE T2.company = '@@ Ex@@ xonMo@@ bil@@ '
SELECT County_name FROM county ORDER BY County_name DESC
SELECT avg(weight) , min(@@ weight) , sex FROM people GROUP BY sex
SELECT Investor FROM entrepreneur WHERE Money_Requested > 1@@ 4@@ 0000 INTERSECT SELECT Investor FROM entrepreneur WHERE Money_Requested < 1@@ 200@@ 00
SELECT allergytype FROM Allergy_type GROUP BY allergytype ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM program AS t1 JOIN broadcast AS t2 ON t1.program_id = t2.program_id GROUP BY t2.program_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name , avg(T1.stars) FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID = T2.rID GROUP BY T2.name
SELECT date_of_birth FROM Customers WHERE customer_status_code = 'G@@ ood Customer@@ '
SELECT count(*) FROM CHARACTERISTICS
SELECT count(DISTINCT g@@ type) FROM Video_games
SELECT T2.country FROM Customers AS T1 JOIN Addresses AS T2 ON T1.customer_address_id = T2.address_id WHERE T1.first_name = "Carole" AND T1.last_name = "Bernhard"
SELECT billing_country , AVG(@@ total) FROM invoices GROUP BY billing_country ORDER BY AVG(@@ total) DESC LIMIT 10;
SELECT name , salary FROM Employee WHERE eid = 24251896@@ 5
SELECT Author FROM submission WHERE College = "Florida" OR College = "Temple"
SELECT Product_Name FROM PRODUCTS ORDER BY Product_Price DESC LIMIT 1
SELECT T1.name FROM airports AS T1 JOIN routes AS T2 ON T1.apid = T2.dst_apid WHERE T1.country = 'China' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT Stories FROM buildings ORDER BY Height DESC LIMIT 1
SELECT Software_Platform , COUNT(*) FROM device GROUP BY Software_Platform
SELECT count(*) FROM ref_colors
SELECT headquarter FROM manufacturers WHERE founder = '@@ Jam@@ es'
SELECT STATEMENT_ID , statement_details FROM Statements
SELECT LName FROM Student WHERE age = (SELECT min(age) FROM Student)
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Sportsinfo
SELECT T1.@@ respon@@ se_@@ receiv@@ ed_@@ date FROM Documents AS T1 JOIN Document_Types AS T2 ON T1.document_type_code = T2.document_type_code JOIN Grants AS T3 ON T1.grant_id = T3.@@ grant_id WHERE T2.@@ document_description = 'Regular' OR T3.@@ grant_amount > 100
SELECT name FROM camera_lens WHERE name LIKE "%D@@ ig@@ it@@ al%"
SELECT job_id FROM employees GROUP BY job_id HAVING AVG(salary) > 8000
SELECT catalog_entry_name FROM catalog_contents ORDER BY height DESC LIMIT 1
SELECT count(*) FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id = t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id = t3.characteristic_id JOIN ref_colors AS t4 ON t1.color_code = t4.color_code WHERE t4.color_description = "white" OR t3.characteristic_name = "hot"
SELECT DISTINCT order_id FROM orders ORDER BY date_order_placed
SELECT T3.@@ course_name , count(*) FROM students AS T1 JOIN student_course_registrations AS T2 ON T1.student_id = T2.student_id JOIN courses AS T3 ON T2.course_id = T3.course_id GROUP BY T2.course_id
SELECT flno , distance FROM Flight ORDER BY price DESC LIMIT 1
SELECT T1.County FROM APPELLATIONS AS T1 JOIN WINE AS T2 ON T1.Appelation = T2.Appelation WHERE T2.Score > 90 GROUP BY T1.County ORDER BY count(*) DESC LIMIT 1
SELECT Nominee FROM musical GROUP BY Nominee HAVING COUNT(*) > 2
SELECT * FROM body_builder
SELECT count(@@ course_id) FROM Student_Course_Enrolment
SELECT T2.@@ star_@@ rating_@@ description FROM HOTELS AS T1 JOIN Ref_@@ Ho@@ tel_Star_Ratings AS T2 ON T1.@@ star_rating_code = T2.@@ star_rating_code WHERE T1.@@ price_range > 10000
SELECT count(*) FROM county_public_safety
SELECT city FROM city WHERE regional_population > 10000000
SELECT problem_log_id , problem_id FROM problem_log ORDER BY log_entry_date LIMIT 1
SELECT T1.city FROM city AS T1 JOIN hosting_city AS T2 ON T1.city_id = T2.host_city WHERE T2.year > 2010
SELECT * FROM employees WHERE department_id NOT IN (SELECT department_id FROM departments WHERE manager_id BETWEEN 100 AND 200@@ )
SELECT StuID FROM Has_allergy GROUP BY StuID HAVING count(*) >= 2
SELECT date , theme , sales FROM journal EXCEPT SELECT T1.date , T1.theme , T1.@@ sales FROM journal AS T1 JOIN journal_committee AS T2 ON T1.@@ journal_ID = T2.@@ journal_ID
SELECT T1.theme , T2.name FROM exhibition AS T1 JOIN artist AS T2 ON T1.artist_id = T2.artist_id WHERE T1.@@ ticket_price > (SELECT avg(ticket_price) FROM exhibition)
SELECT T2.S@@ chool@@ _name FROM endowment AS T1 JOIN school AS T2 ON T1.school_id = T2.school_id WHERE T1.@@ amount > 8.@@ 5 GROUP BY T1.school_id HAVING count(*) > 1
SELECT sum(hoursperweek) , sum(gamesplayed) FROM Sportsinfo AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age < 20
SELECT DISTINCT T1.@@ Le@@ ad@@ er_@@ Name FROM college AS T1 JOIN member AS T2 ON T1.College_ID = T2.College_ID WHERE T2.Country = "Canada"
SELECT location_code , count(*) FROM Document_locations GROUP BY location_code
SELECT document_id FROM Documents_with_expenses WHERE budget_type_code = 'SF'
SELECT avg(T1.stars) , T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID WHERE T2.year = (SELECT min(YEAR) FROM Movie)
SELECT count(*) FROM Ref_calendar
SELECT T1.name , T1.hours FROM projects AS T1 JOIN assignedto AS T2 ON T1.code = T2.project GROUP BY T2.project ORDER BY count(*) DESC LIMIT 1
SELECT Fname FROM Student WHERE Major = 600
SELECT avg(enr) FROM College
SELECT DISTINCT T2.name FROM undergoes AS T1 JOIN patient AS T2 ON T1.patient = T2.SSN JOIN stay AS T3 ON T1.S@@ ta@@ y = T3.S@@ ta@@ yID WHERE T3.@@ room = 111
SELECT poll_source FROM candidate GROUP BY poll_source ORDER BY count(*) DESC LIMIT 1
SELECT T1.employee_id FROM Employees AS T1 JOIN ROLES AS T2 ON T1.role_code = T2.role_code WHERE T2.role_name = "H@@ uman Res@@ our@@ c@@ e" OR T2.role_name = "M@@ anag@@ er"
SELECT payment_method_code FROM INVOICES GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT department_id FROM employees GROUP BY department_id , manager_id HAVING COUNT(employee_id) >= 4
SELECT t2.@@ state_province_county , count(*) FROM customer_addresses AS t1 JOIN addresses AS t2 ON t1.@@ address_id = t2.address_id GROUP BY t2.@@ state_province_county
SELECT name FROM races WHERE YEAR BETWEEN 2009 AND 2011
SELECT count(*) FROM airlines AS T1 JOIN routes AS T2 ON T1.alid = T2.alid WHERE T1.name = 'American Airlines'
SELECT count(*) , major FROM student GROUP BY major
SELECT advisor , count(*) FROM Student GROUP BY advisor
SELECT T1.Name FROM MEDIATYPE AS T1 JOIN TRACK AS T2 ON T1.MediaTypeId = T2.MediaTypeId GROUP BY T2.MediaTypeId ORDER BY COUNT(*) ASC LIMIT 1
SELECT t3.title FROM authors AS t1 JOIN authorship AS t2 ON t1.authid = t2.authid JOIN papers AS t3 ON t2.paperid = t3.paperid WHERE t1.fname = "Steph@@ an@@ ie" AND t1.lname = "W@@ eirich"
SELECT t1.@@ gdp , t1.@@ Regional_Population FROM city AS T1 JOIN hosting_city AS T2 ON T1.city_id = T2.host_city GROUP BY t2.@@ Ho@@ st_@@ City HAVING count(*) > 1
SELECT title FROM Movie WHERE director = '@@ Steven Spielberg@@ '
SELECT T1.Service_Type_Description , T1.Service_Type_Code FROM Ref_Service_Types AS T1 JOIN Services AS T2 ON T1.Service_Type_Code = T2.Service_Type_Code GROUP BY T1.Service_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT t1.title FROM papers AS t1 JOIN authorship AS t2 ON t1.paperid = t2.paperid JOIN inst AS t3 ON t2.instid = t3.instid WHERE t3.name = "Google"
SELECT T2.balance , T3.balance , T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid = T2.custid JOIN savings AS T3 ON T1.custid = T3.custid
SELECT T1.line_1 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.address_id INTERSECT SELECT T1.line_1 FROM Addresses AS T1 JOIN Teachers AS T2 ON T1.address_id = T2.address_id
SELECT T1.title FROM albums AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id WHERE T2.name = "Balls to the Wall";
SELECT DISTINCT name FROM Reviewer AS T1 JOIN Rating AS T2 ON T1.rID = T2.rID WHERE ratingDate = "null"
SELECT RoomId , roomName FROM Rooms ORDER BY basePrice DESC LIMIT 3;
SELECT account_id , count(*) FROM Financial_transactions GROUP BY account_id
SELECT policy_type_code FROM policies GROUP BY policy_type_code HAVING count(*) > 2
SELECT T2.Name , T1.Team FROM elimination AS T1 JOIN wrestler AS T2 ON T1.Wrestler_ID = T2.Wrestler_ID ORDER BY T2.Days_held DESC
SELECT T2.customer_name , count(*) FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id HAVING count(*) >= 2
SELECT order_item@@ _id FROM order_items WHERE product_id = 11
SELECT T2.Winery FROM GRAPES AS T1 JOIN WINE AS T2 ON T1.G@@ RAPE = T2.G@@ RAPE WHERE T1.Color = "White" GROUP BY T2.Winery ORDER BY count(*) DESC LIMIT 3
SELECT Name FROM People ORDER BY Age DESC LIMIT 5
SELECT name , phone FROM appointment AS T1 JOIN patient AS T2 ON T1.patient = T2.ssn GROUP BY T1.patient HAVING count(*) > 1
SELECT role_code FROM Employees GROUP BY role_code HAVING count(*) >= 3
SELECT count(*) FROM patient WHERE SSN NOT IN ( SELECT T1.patient FROM Prescribes AS T1 JOIN Medication AS T2 ON T1.M@@ edication = T2.@@ Code WHERE T2.name = 'Procrastin-X' )
SELECT degrees FROM campuses AS T1 JOIN degrees AS T2 ON t1.id = t2.campus WHERE t1.campus = "San Jose State University" AND t2.year = 2000
SELECT count(DISTINCT title) FROM vocals AS T1 JOIN songs AS T2 ON T1.songid = T2.songid WHERE TYPE = "@@ shar@@ ed"
SELECT membership_@@ card FROM member WHERE address = 'Hartford' INTERSECT SELECT membership_@@ card FROM member WHERE address = 'W@@ at@@ erb@@ ur@@ y'
SELECT name FROM driver WHERE home_city = 'Hartford' AND age < 40
SELECT LName FROM STUDENT WHERE Sex = "F" ORDER BY Age DESC
SELECT count(*) FROM Customers_cards AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.customer_first_name = "B@@ lanc@@ he@@ " AND T2.customer_last_name = "H@@ uels" AND T1.@@ card_type_code = "Credit"
SELECT date_from FROM Project_Staff ORDER BY date_from ASC LIMIT 1
SELECT fname , lname FROM student WHERE major != (SELECT major FROM student GROUP BY major ORDER BY count(*) DESC LIMIT 1)
SELECT campus FROM campuses WHERE LOCATION = "N@@ orthridg@@ e" AND county = "Los Angeles" UNION SELECT campus FROM campuses WHERE LOCATION = "San Francisco" AND county = "San Francisco"
SELECT name , flag FROM ship WHERE ship_id NOT IN (SELECT ship_id FROM captain WHERE rank = 'Midshipman@@ ')
SELECT Age FROM people ORDER BY Height DESC LIMIT 1
SELECT avg(no_of_customers) FROM bank WHERE state = 'Utah'
SELECT T2.@@ Store_@@ Email_Address FROM Addresses AS T1 JOIN Drama_Workshop_Groups AS T2 ON T1.Address_ID = T2.Address_ID WHERE T1.@@ Stat@@ e_@@ County = "A@@ la@@ sk@@ a"
SELECT name FROM procedures WHERE cost > 1000 UNION SELECT T3.name FROM physician AS T1 JOIN trained_in AS T2 ON T1.employeeid = T2.physician JOIN procedures AS T3 ON T3.code = T2.treatment WHERE T1.name = "John Wen"
SELECT name FROM instructor ORDER BY salary DESC LIMIT 1
SELECT t1.name FROM people AS t1 JOIN candidate AS t2 ON t1.people_id = t2.people_id WHERE t2.support_rate < t2.@@ oppose_rate
SELECT t1.color_code , t2.color_description FROM products AS t1 JOIN ref_colors AS t2 ON t1.color_code = t2.color_code WHERE t1.product_name = "cherv@@ il"
SELECT name , CLASS , date FROM race
SELECT t2.@@ service_name FROM first_notification_of_loss AS t1 JOIN services AS t2 ON t1.service_id = t2.service_id GROUP BY t1.service_id HAVING count(*) > 2
SELECT title , directed_by FROM film
SELECT T1.property_id , count(*) FROM propert@@ ies AS T1 JOIN residents AS T2 ON T1.property_id = T2.@@ property_id GROUP BY T1.property_id
SELECT avg(age) , sex FROM Student GROUP BY sex
SELECT gname FROM Video_games WHERE gtype = "Col@@ le@@ ctible card game"
SELECT Advisor FROM Student WHERE StuID = 100@@ 4
SELECT DISTINCT T1.forename FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid WHERE T2.position = 1 AND T2.wins = 1 AND T2.points > 20
SELECT problem_log_id FROM problem_log ORDER BY log_entry_date DESC LIMIT 1
SELECT International_Passengers , Domestic_Passeng@@ ers FROM airport WHERE Airport_Name = "London Heathrow"
SELECT count(*) , time_of_day FROM broadcast GROUP BY time_of_day
SELECT T1.name , T2.alid FROM airlines AS T1 JOIN routes AS T2 ON T1.alid = T2.alid GROUP BY T2.alid ORDER BY count(*) DESC LIMIT 10
SELECT sum(@@ settlement_amount) , avg(@@ settlement_amount) FROM settlements
SELECT email_address , date_of_birth FROM Customers WHERE first_name = "Carole"
SELECT job_title , AVG(salary) FROM employees AS T1 JOIN jobs AS T2 ON T1.job_id = T2.job_id GROUP BY T2.job_title
SELECT count(*) , T1.blockcode FROM BLOCK AS T1 JOIN room AS T2 ON T1.blockfloor = T2.blockfloor AND T1.blockcode = T2.blockcode GROUP BY T1.blockcode
SELECT T3.name FROM course AS T1 JOIN takes AS T2 ON T1.course_id = T2.course_id JOIN student AS T3 ON T2.id = T3.id WHERE T1.dept_name = 'Statistics'
SELECT Title FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId = T2.ArtistId WHERE T2.Name = "AC/D@@ C"
SELECT max(@@ num_of_@@ shop@@ s) , avg(@@ Num_of_@@ F@@ act@@ or@@ i@@ es) FROM manufacturer WHERE open_year < 1990
SELECT T2.Name , T2.Score FROM GRAPES AS T1 JOIN WINE AS T2 ON T1.Grape = T2.Grape WHERE T1.Color = "White"
SELECT T2.Name FROM phone_market AS T1 JOIN phone AS T2 ON T1.Phone_ID = T2.@@ Phone_ID GROUP BY T2.Name HAVING sum(T1.Num_of_stock) >= 2000 ORDER BY sum(T1.Num_of_stock) DESC
SELECT count(*) FROM party
SELECT T2.@@ Comptroller FROM election AS T1 JOIN party AS T2 ON T1.Party = T2.Party_ID WHERE T1.District = 1 OR T1.District = 2
SELECT T2.@@ lot_details FROM INVESTORS AS T1 JOIN LOTS AS T2 ON T1.investor_id = T2.investor_id WHERE T1.Investor_details = "@@ l"
SELECT T2.@@ student_details FROM student_course_registrations AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id ORDER BY T1.@@ registr@@ ation_date DESC LIMIT 1
SELECT t3.individual_last_name FROM organizations AS t1 JOIN organization_contact_individuals AS t2 ON t1.organization_id = t2.organization_id JOIN individuals AS t3 ON t2.individual_id = t3.individual_id WHERE t1.organization_name = "Labour Party" ORDER BY t2.date_contact_to DESC LIMIT 1
SELECT name FROM Companies ORDER BY Market_Value_@@ bill@@ ion DESC
SELECT T2.first_name , T2.last_name FROM employees AS T1 JOIN employees AS T2 ON T1.id = T2.@@ reports_@@ to WHERE T1.first_name = "Nancy" AND T1.last_name = "Edwards";
SELECT Shop_Name , LOCATION FROM shop ORDER BY Shop_Name ASC
SELECT count(*) FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID = T2.facID WHERE T1.fname = "Mark" AND T1.lname = "Giuliano"
SELECT T1.statement_details , T2.document_name FROM Statements AS T1 JOIN Documents AS T2 ON T1.statement_id = T2.document_id WHERE T1.statement_details = 'Private Project@@ '
SELECT T1.FacID FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID = T2.advisor GROUP BY T1.FacID HAVING count(*) >= 2
SELECT student_id FROM students WHERE student_id NOT IN (SELECT student_id FROM student_course_attendance)
SELECT T2.name FROM genres AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id JOIN media_types AS T3 ON T3.id = T2.media_type_id WHERE T1.name = "Rock" AND T3.name = "MPEG audio file";
SELECT T1.artist_name , T1.country FROM artist AS T1 JOIN song AS T2 ON T1.artist_name = T2.artist_name ORDER BY T2.rating DESC LIMIT 3
SELECT T3.staff_first_name , T3.staff_last_name FROM problems AS T1 JOIN product AS T2 JOIN staff AS T3 ON T1.product_id = T2.product_id AND T1.reported_by_staff_id = T3.staff_id WHERE T2.product_name = "rem" EXCEPT SELECT T3.staff_first_name , T3.staff_last_name FROM problems AS T1 JOIN product AS T2 JOIN staff AS T3 ON T1.product_id = T2.product_id AND T1.reported_by_staff_id = T3.staff_id WHERE T2.product_name = "aut@@ "
SELECT T1.driverid , count(*) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid GROUP BY T1.driverid HAVING count(*) <= 30
SELECT DISTINCT city FROM branch WHERE membership_amount >= 100
SELECT gtype FROM Video_games GROUP BY gtype ORDER BY count(*) LIMIT 1
SELECT head_id , name FROM head WHERE name LIKE '%@@ H@@ a%'
SELECT Team FROM player ORDER BY Age DESC LIMIT 1
SELECT sum(@@ Num_of_Audi@@ ence) FROM festival_detail
SELECT friend FROM PersonFriend WHERE name = 'Zach' AND YEAR = (SELECT max(YEAR) FROM PersonFriend WHERE name = 'Zach')
SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.country FROM city AS T1 JOIN country AS T2 ON T1.country_id = T2.country_id GROUP BY T2.country_id HAVING count(*) >= 3
SELECT count(*) FROM list AS T1 JOIN teachers AS T2 ON T1.classroom = T2.classroom WHERE T2.firstname = "L@@ ORI@@ A" AND T2.lastname = "@@ ONDERSM@@ A"
SELECT T1.name , T1.id FROM station AS T1 JOIN status AS T2 ON T1.id = T2.station_id GROUP BY T2.station_id HAVING avg(T2.@@ bikes_available) > 14 UNION SELECT name , id FROM station WHERE installation_date LIKE "12@@ /@@ %"
SELECT Payment_Method_Code FROM Payments GROUP BY Payment_Method_Code ORDER BY count(*) DESC LIMIT 1
SELECT name FROM useracct WHERE u_id NOT IN (SELECT u_id FROM review)
SELECT name FROM scientists EXCEPT SELECT T3.name FROM assignedto AS T1 JOIN projects AS T2 ON T1.project = T2.code JOIN scientists AS T3 ON T1.scientist = T3.SSN WHERE T2.hours = (SELECT max(hours) FROM projects)
SELECT Country FROM market ORDER BY Number_cities DESC
SELECT T1.firstname , T1.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom = T2.classroom WHERE T2.firstname = "OTHA" AND T2.lastname = "MOYER"
SELECT * FROM employees WHERE hire_date < '200@@ 2-06-2@@ 1'
SELECT T1.Name FROM people AS T1 JOIN perpetrator AS T2 ON T1.People_ID = T2.People_ID
SELECT main_industry , sum(market_value) FROM company GROUP BY main_industry
SELECT T2.name FROM assignedto AS T1 JOIN scientists AS T2 ON T1.scientist = T2.ssn
SELECT Crime_rate FROM county_public_safety ORDER BY Police_officers ASC
SELECT T1.FirstName , T1.SupportRepId FROM CUSTOMER AS T1 JOIN EMPLOYEE AS T2 ON T1.SupportRepId = T2.EmployeeId GROUP BY T1.SupportRepId HAVING COUNT(*) >= 10
SELECT T1.firstname , T1.lastname FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room = T2.RoomId WHERE T1.Rate - T2.@@ basePrice > 0
SELECT count(*) , T1.product_name FROM product AS T1 JOIN problems AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_name ORDER BY count(*) DESC LIMIT 1
SELECT customer_details FROM customers UNION SELECT staff_details FROM staff
SELECT Payment_Method_Code FROM Payments GROUP BY Payment_Method_Code ORDER BY count(*) ASC LIMIT 1
SELECT DISTINCT region_name FROM region ORDER BY La@@ bel
SELECT T2.@@ pilot FROM operate_company AS T1 JOIN flight AS t2 ON T1.id = T2.company_id WHERE T1.@@ pr@@ inc@@ ip@@ al_@@ activities = 'C@@ ar@@ go@@ ' INTERSECT SELECT T2.@@ pilot FROM operate_company AS T1 JOIN flight AS t2 ON T1.id = T2.company_id WHERE T1.@@ pr@@ inc@@ ip@@ al_@@ activities = 'C@@ at@@ er@@ ing servic@@ es'
SELECT count(DISTINCT course_id) FROM course WHERE dept_name = 'Physic@@ s'
SELECT count(*) FROM salary AS T1 JOIN team AS T2 ON T1.team_id = T2.team_id_br WHERE T2.name = 'Boston Red Stockings' AND T1.year = 2000
SELECT count(*) FROM gas_station WHERE open_year BETWEEN 2000 AND 2005
SELECT T2.faculty FROM campuses AS T1 JOIN faculty AS T2 ON T1.id = t2.campus JOIN degrees AS T3 ON T1.id = t3.campus AND t2.year = t3.year WHERE t2.year = 2002 ORDER BY t3.degrees DESC LIMIT 1
SELECT count(*) FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID = Class_Senator_Vote WHERE T1.city_code = "NYC" AND T2.Election_Cycle = "Spring"
SELECT candidate_id FROM candidate_assessments WHERE asessment_outcome_code = "Pass"
SELECT count(*) , sex FROM student WHERE age > (SELECT avg(age) FROM student) GROUP BY sex
SELECT count(*) FROM accounts
SELECT max(T2.fastestlapspeed) , T1.name , T1.year FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year > 2014 GROUP BY T1.name ORDER BY T1.year
SELECT DISTINCT T1.customer_name FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.customer_id HAVING COUNT (DISTINCT T3.@@ product_id) >= 3
SELECT T1.student_id , T2.personal_name FROM Student_Course_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING COUNT(*) >= 2
SELECT customer_phone FROM customers UNION SELECT supplier_phone FROM suppliers
SELECT count(*) FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id = t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id = t3.characteristic_id JOIN ref_colors AS t4 ON t1.color_code = t4.color_code WHERE t4.color_description = "white" OR t3.characteristic_name = "hot"
SELECT Name FROM climber ORDER BY Points DESC
SELECT document_type_code FROM documents WHERE document_name = "David CV"
SELECT T2.emp_fname , T1.@@ class_room FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num = T2.emp_num JOIN professor AS T3 ON T2.emp_num = T3.emp_num JOIN department AS T4 ON T4.dept_code = T3.dept_code WHERE T4.dept_name = 'Accounting'
SELECT T1.account_id , T1.date_@@ account_opened , T1.account_name , T1.other_account_details FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.customer_first_name = 'Meaghan@@ '
SELECT T1.id , T1.name , T1.@@ I@@ AT@@ A FROM airport AS T1 JOIN flight AS T2 ON T1.id = T2.@@ airport_id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT t1.clubname FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t3.fname = "Dav@@ is" AND t3.lname = "Stev@@ en"
SELECT count(*) , T2.name FROM products AS T1 JOIN manufacturers AS T2 ON T1.Manufacturer = T2.code GROUP BY T2.name
SELECT count(DISTINCT t1.club@@ name) FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t3.fname = "E@@ ric@@ " AND t3.lname = "T@@ ai"
SELECT T1.statement_id , T2.@@ statement_details FROM Accounts AS T1 JOIN Statements AS T2 ON T1.statement_id = T2.@@ statement_id GROUP BY T1.statement_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID = T2.Musical_ID GROUP BY T1.Musical_ID HAVING COUNT(*) >= 3
SELECT classroom , count(DISTINCT grade@@ ) FROM list GROUP BY classroom
SELECT T2.name , T2.salary FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id = T2.id JOIN student AS T3 ON T1.s_id = T3.id WHERE T3.dept_name = 'Math'
SELECT count(*) FROM Activity
SELECT T1.id , T1.@@ score , T1.date FROM game AS T1 JOIN injury_accident AS T2 ON T2.game_id = T1.id GROUP BY T1.id HAVING count(*) >= 2
SELECT Advisor FROM STUDENT GROUP BY Advisor HAVING count(*) > 2
SELECT building , room_number FROM classroom WHERE capacity BETWEEN 50 AND 100
SELECT T2.Name FROM APPELLATIONS AS T1 JOIN WINE AS T2 ON T1.Appelation = T2.Appelation WHERE T1.County = "M@@ ont@@ ere@@ y" AND T2.@@ price < 50
SELECT T2.Store_Name FROM Addresses AS T1 JOIN Drama_Workshop_Groups AS T2 ON T1.Address_ID = T2.Address_ID WHERE T1.City_Town = "F@@ elici@@ ab@@ erg@@ "
SELECT T2.title , avg(T1.stars) FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID GROUP BY T1.mID ORDER BY avg(T1.stars) LIMIT 1
SELECT t3.headquartered_city FROM store AS t1 JOIN store_district AS t2 ON t1.store_id = t2.store_id JOIN district AS t3 ON t2.district_id = t3.district_id GROUP BY t3.headquartered_city ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM DEPARTMENT WHERE Division = "AS"
SELECT document_type_description FROM Ref_document_types WHERE document_type_name = "F@@ ilm@@ "
SELECT count(*) FROM vocals AS T1 JOIN songs AS T2 ON T1.songid = T2.songid WHERE title = "Le Pop"
SELECT manager_name FROM gas_station WHERE open_year > 2000 GROUP BY manager_name ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM driver AS t1 JOIN school_bus AS t2 ON t1.@@ driver_id = t2.@@ driver_id ORDER BY years_@@ working DESC LIMIT 1
SELECT claim_status@@ _description FROM claims_processing_stages WHERE claim_status_name = "Open@@ "
SELECT campus FROM campuses WHERE YEAR >= 1935 AND YEAR <= 193@@ 9
SELECT COUNT (DISTINCT id) FROM teaches
SELECT T1.Famous_Title FROM artist AS T1 JOIN volume AS T2 ON T1.Artist_ID = T2.Artist_ID WHERE T2.Weeks_on_Top > 2
SELECT count(*) FROM Employees
SELECT * FROM COURSE ORDER BY Credits
SELECT T1.Name FROM people AS T1 JOIN perpetrator AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Year DESC
SELECT other_hotel_details , star_rating_code FROM HOTELS ORDER BY price_range ASC LIMIT 3
SELECT T1.id , T1.Name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id = T1.id GROUP BY T1.id HAVING count(*) >= 2
SELECT sum(gamesplayed) FROM Sportsinfo WHERE sportname = "Football" AND onscholarship = 'Y'
SELECT CLASS FROM race GROUP BY CLASS ORDER BY count(*) DESC LIMIT 1
SELECT T1.stuid FROM participates_in AS T1 JOIN activity AS T2 ON T2.actid = T2.actid WHERE T2.activity_name = 'Canoeing' INTERSECT SELECT T1.stuid FROM participates_in AS T1 JOIN activity AS T2 ON T2.actid = T2.actid WHERE T2.activity_name = 'Kayaking'
SELECT T2.Hometown FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID = T2.People_ID GROUP BY T2.Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.product_name FROM problems AS T1 JOIN product AS T2 ON T1.product_id = T2.product_id GROUP BY T2.product_name ORDER BY count(*) DESC LIMIT 3
SELECT max(Price) , max(Score) FROM WINE WHERE Appelation = "St@@ . Helen@@ a"
SELECT T3.Name , COUNT(*) FROM employment AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID JOIN company AS T3 ON T1.Company_ID = T3.Company_ID GROUP BY T3.Name
SELECT count(DISTINCT F@@ ac@@ ID) FROM Faculty_participates_in
SELECT count(*) FROM Ref_locations
SELECT customer_details FROM customers EXCEPT SELECT t2.customer_details FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id = t2.customer_id
SELECT S@@ upport_rate , C@@ on@@ sider_@@ rate , O@@ p@@ pose_@@ rate FROM candidate ORDER BY unsure_rate
SELECT max_page_size FROM product GROUP BY max_page_size HAVING count(*) > 3
SELECT T1.@@ editor_id , T1.Name , COUNT(*) FROM editor AS T1 JOIN journal_committee AS T2 ON T1.Editor_ID = T2.Editor_ID GROUP BY T1.@@ editor_id
SELECT document_type_code FROM Ref_document_types WHERE document_type_name = "Paper"
SELECT T1.stu_fname , T1.stu_lname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num = T2.stu_num WHERE T2.enroll_grade = 'C' OR T2.enroll_grade = 'A'
SELECT Marketing_Region_Code FROM Drama_Workshop_Groups GROUP BY Marketing_Region_Code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM VOTING_RECORD
SELECT T1.Museum@@ _Details , T2.@@ Opening_Hours FROM M@@ U@@ SE@@ UM@@ S AS T1 JOIN TOURIST_ATTRACTIONS AS T2 ON T1.Museum@@ _ID = T2.Tourist_Attraction_ID
SELECT count(DISTINCT claim_@@ outco@@ me_@@ code) FROM claims_process@@ ing
SELECT decor FROM Rooms WHERE roomName = "Recluse and defianc@@ e";
SELECT first_name , department_id FROM employees WHERE last_name = 'M@@ cEw@@ en'
SELECT t2.@@ unit_of_measure FROM products AS t1 JOIN ref_product_categories AS t2 ON t1.@@ product_category_code = t2.product_category_code WHERE t1.product_name = "cumin"
SELECT f_id FROM song WHERE resolution > (SELECT max(@@ resolution) FROM song WHERE rating < 8@@ )
SELECT player , number_of_@@ matches , S@@ O@@ UR@@ C@@ E FROM injury_accident WHERE injury != 'Knee problem@@ '
SELECT T1.artist_name FROM song AS T1 JOIN files AS T2 ON T1.f_id = T2.f_id ORDER BY T2.duration LIMIT 1
SELECT College FROM match_season GROUP BY College HAVING count(*) >= 2 ORDER BY College DESC
SELECT customer_details FROM customers ORDER BY customer_details
SELECT first_name , last_name FROM Customers;
SELECT avg(access_count) FROM documents
SELECT count(*) FROM Rooms;
SELECT T2.@@ zip_postcode FROM Customers AS T1 JOIN Addresses AS T2 ON T1.customer_address_id = T2.address_id WHERE T1.first_name = "Carole" AND T1.last_name = "Bernhard"
SELECT T1.name FROM station AS T1 JOIN status AS T2 ON T1.id = T2.station_id GROUP BY T2.station_id HAVING avg(bikes_available) > 10 EXCEPT SELECT name FROM station WHERE city = "San Jo@@ se@@ "
SELECT dept_name FROM department ORDER BY dept_name
SELECT stu_fname , stu_gpa FROM student WHERE stu_gpa < (SELECT avg(stu_gpa) FROM student)
SELECT avg(T1.@@ duration) FROM files AS T1 JOIN song AS T2 ON T1.f_id = T2.f_id WHERE T1.formats = "mp3" AND T2.resolution < 800
SELECT distinct(@@ Bill@@ ing@@ Country) FROM INVOICE
SELECT avg(T1.salary) , count(*) FROM instructor AS T1 JOIN department AS T2 ON T1.dept_name = T2.dept_name ORDER BY T2.@@ budget DESC LIMIT 1
SELECT max(@@ t2.@@ active_@@ to_@@ date) FROM customers AS t1 JOIN customer_contact_channels AS t2 ON t1.customer_id = t2.customer_id WHERE t1.customer_name = "Tillman Ernser@@ "
SELECT T2.Name , T1.Company FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Money_Requested
SELECT category FROM book_club WHERE YEAR > 1989 GROUP BY category HAVING count(*) >= 2
SELECT Song FROM volume ORDER BY Weeks_on_Top DESC LIMIT 1
SELECT pName , HS FROM Player WHERE HS < 1500
SELECT mascot FROM school WHERE enrollment > (SELECT avg(enrollment) FROM school@@ )
SELECT max(@@ Market_Value_@@ in_Bill@@ ion) , min(@@ Market_Value_@@ in_Bill@@ ion) FROM company
SELECT Date_Claim_Made , Date_Claim_Settled FROM Claims WHERE Amount_Claimed > ( SELECT avg(@@ Amount_Claimed) FROM Claims )
SELECT count(*) , T1.name FROM airports AS T1 JOIN routes AS T2 ON T1.apid = T2.src_apid GROUP BY T1.name ORDER BY count(*) DESC
SELECT T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid = T2.custid JOIN savings AS T3 ON T1.custid = T3.custid WHERE T2.balance > T3.balance
SELECT count(DISTINCT Part@@ y) FROM representative
SELECT customer_name FROM customers
SELECT T1.customer_id FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status = "On Road" INTERSECT SELECT T1.customer_id FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status = "Shipped"
SELECT name FROM captain ORDER BY age DESC
SELECT T2.dept_name , T2.dept_address FROM student AS T1 JOIN department AS T2 ON T1.dept_code = T2.dept_code GROUP BY T1.dept_code ORDER BY count(*) DESC LIMIT 1
SELECT name , year_join FROM artist WHERE country != 'United States'
SELECT T3.name FROM exhibition_record AS T1 JOIN exhibition AS T2 ON T1.exhibition_id = T2.exhibition_id JOIN artist AS T3 ON T3.@@ artist_id = T2.artist_id GROUP BY T3.@@ artist_id HAVING avg(T1.@@ attendance) > 200
SELECT T1.Name , T2.Tourist_Attraction_ID FROM Tourist_Attractions AS T1 JOIN VISITS AS T2 ON T1.Tourist_Attraction_ID = T2.Tourist_Attraction_ID GROUP BY T2.Tourist_Attraction_ID HAVING count(*) >= 2
SELECT count(@@ patient@@ ) FROM stay WHERE room = 11@@ 2
SELECT sum(T2.room_count) FROM Apartment_Buildings AS T1 JOIN Apartments AS T2 ON T1.building_id = T2.building_id WHERE T1.building_@@ short_name = "Columbus Squ@@ ar@@ e"
SELECT Country_name , C@@ apit@@ al FROM country
SELECT phone FROM employees WHERE first_name = "Nancy" AND last_name = "Edwards";
SELECT staff_details FROM Research_Staff ORDER BY staff_details ASC
SELECT document_type_code FROM documents GROUP BY document_type_code HAVING sum(access_count) > 10000
SELECT document_type_name , document_type_description FROM Ref_document_types WHERE document_type_code = "R@@ V"
SELECT DISTINCT t1.title FROM papers AS t1 JOIN authorship AS t2 ON t1.paperid = t2.paperid JOIN inst AS t3 ON t2.instid = t3.instid WHERE t3.name = "Google"
SELECT student_id FROM student_course_attendance WHERE course_id = 301
SELECT Name FROM ship ORDER BY Tonnage DESC LIMIT 1
SELECT T1.title FROM albums AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id WHERE T2.name = "Balls to the Wall";
SELECT campusfee FROM campuses AS T1 JOIN csu_fees AS T2 ON T1.id = t2.campus WHERE t1.campus = "San Jose State University" AND T2.year = 1996
SELECT count(*) FROM airlines AS T1 JOIN routes AS T2 ON T1.alid = T2.alid WHERE T1.name = 'American Airlines'
SELECT avg(@@ budget_million) , max(@@ budget_million) , min(@@ budget_million) FROM movie WHERE YEAR < 2000
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_allergy
SELECT T1.Time FROM elimination AS T1 JOIN wrestler AS T2 ON T1.Wrestler_ID = T2.Wrestler_ID ORDER BY T2.Days_held DESC LIMIT 1
SELECT count(*) FROM customers
SELECT T1.thing_id , T1.@@ type_@@ of_@@ Thing_Code , T2.@@ organization@@ _details FROM Things AS T1 JOIN Organiz@@ ations AS T2 ON T1.@@ organization_id = T2.@@ organization_id
SELECT T1.activity_name , count(*) FROM Activity AS T1 JOIN Faculty_participates_in AS T2 ON T1.actID = T2.actID GROUP BY T1.actID
SELECT Fname FROM STUDENT WHERE Age > 2@@ 2
SELECT Birth_Place FROM people GROUP BY Birth_Place ORDER BY COUNT(*) DESC LIMIT 1
SELECT ResType@@ Name FROM Restaurant@@ _@@ Type;
SELECT count(*) FROM APPELLATIONS WHERE County = "N@@ ap@@ a"
SELECT Major FROM STUDENT GROUP BY Major HAVING COUNT(*) < 3
SELECT Name FROM wrestler WHERE Wrestler_ID NOT IN (SELECT Wrestler_ID FROM elimin@@ ation)
SELECT count(*) , avg(age) , city_code FROM student WHERE sex = 'M' GROUP BY city_code
SELECT T1.cName FROM tryout AS T1 JOIN player AS T2 ON T1.pID = T2.pID WHERE T2.p@@ Name LIKE 'D@@ %'
SELECT grant_id , count(*) FROM Documents GROUP BY grant_id ORDER BY count(*) DESC LIMIT 1
SELECT sum(grant_amount) , organisation_id FROM Grants GROUP BY organisation_id
SELECT DISTINCT Winery FROM WINE WHERE Price BETWEEN 50 AND 100
SELECT T1.name FROM user_profiles AS T1 JOIN tweets AS T2 ON T1.uid = T2.uid GROUP BY T2.uid HAVING count(*) > 1
SELECT T1.facility_code FROM Apartment_Facilities AS T1 JOIN Apartments AS T2 ON T1.apt_id = T2.apt_id WHERE T2.bedroom_count > 4
SELECT sum(@@ amount_piad) , avg(@@ amount_piad) FROM claim_headers
SELECT TYPE FROM vocals AS T1 JOIN band AS T2 ON T1.bandmate = T2.id WHERE firstname = "Solveig" GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1
SELECT T1.@@ Position FROM match_season AS T1 JOIN team AS T2 ON T1.Team = T2.Team_id WHERE T2.Name = "Ry@@ ley G@@ ol@@ dn@@ er"
SELECT document_type_code FROM documents WHERE document_name = "David CV"
SELECT Event_ID FROM Participants_in_Events GROUP BY Event_ID ORDER BY count(*) DESC LIMIT 1
SELECT flag FROM ship GROUP BY flag ORDER BY count(*) DESC LIMIT 1
SELECT T2.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid = T2.custid WHERE T1.name IN (SELECT T1.name FROM accounts AS T1 JOIN savings AS T2 ON T1.custid = T2.custid WHERE T2.balance > (SELECT avg(balance) FROM saving@@ s)@@ )
SELECT T1.account_id , T1.date_@@ account_opened , T1.account_name , T1.other_account_details FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.customer_first_name = 'Meaghan@@ '
SELECT T1.company_name FROM culture_company AS T1 JOIN book_club AS T2 ON T1.@@ book_club_id = T2.book_club_id WHERE T2.@@ publisher = '@@ Aly@@ son'
SELECT count(*) FROM customers
SELECT count(*) , T1.name FROM airports AS T1 JOIN routes AS T2 ON T1.apid = T2.src_apid GROUP BY T1.name ORDER BY count(*) DESC
SELECT DISTINCT premises_type FROM premises
SELECT Name FROM technician WHERE technician_id NOT IN (SELECT technician_id FROM repair_assign@@ ment)
SELECT title FROM item WHERE i_id NOT IN (SELECT i_id FROM review)
SELECT LName FROM STUDENT WHERE Major = 50
SELECT * FROM employees WHERE department_id = "null"
SELECT DISTINCT state FROM college AS T1 JOIN tryout AS T2 ON T1.cName = T2.cName
SELECT name , city , country FROM airports ORDER BY elevation LIMIT 1
SELECT T2.invoice_number , T2.invoice_date FROM Financial_transactions AS T1 JOIN Invoices AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name , COUNT(*) FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID = T2.Musical_ID GROUP BY T1.Musical_ID
SELECT flno FROM Flight WHERE origin = "Los Angeles"
SELECT T1.@@ Status FROM city AS T1 JOIN farm_competition AS T2 ON T1.City_ID = T2.Host_city_ID GROUP BY T2.Host_city_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT appoint@@ ment@@ id FROM appointment ORDER BY ST@@ AR@@ T DESC LIMIT 1
SELECT start_station_id , start_station_name FROM trip GROUP BY start_station_name HAVING COUNT(*) >= 200
SELECT DISTINCT T1.customer_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status = "Pack@@ ing"
SELECT name FROM media_typ@@ es@@ ;
SELECT count(*) FROM Student_Tests_Taken WHERE test_result = "Fail"
SELECT name , stre@@ et_@@ address , floors FROM building ORDER BY floors
SELECT COUNT(*) FROM (SELECT cName FROM tryout WHERE pPos = 'goalie' INTERSECT SELECT cName FROM tryout WHERE pPos = 'mid@@ ')
SELECT email_address , phone_number FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM complaint@@ s)
SELECT match_id FROM MATCH WHERE competition = "1994 FIFA World Cup qualification"
SELECT T2.name , T2.@@ location FROM race AS T1 JOIN track AS T2 ON T1.track_id = T2.track_id GROUP BY T1.track_id HAVING count(*) = 1
SELECT open_date , count(*) FROM church GROUP BY open_date
SELECT T2.@@ decor FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room = T2.RoomId GROUP BY T2.@@ decor ORDER BY count(@@ T2.@@ decor@@ ) ASC LIMIT 1;
SELECT region_name FROM region WHERE region_id NOT IN (SELECT region_id FROM affected_region)
SELECT T1.artist_name , count(*) FROM artist AS T1 JOIN song AS T2 ON T1.artist_name = T2.artist_name GROUP BY T2.artist_name ORDER BY count(*) DESC LIMIT 3
SELECT T2.friend FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.friend WHERE T2.name = 'Alice' AND T1.gender = 'male' AND T1.job = 'doctor'
SELECT avg(weight) FROM Player
SELECT part@@ ition@@ id FROM user_profiles WHERE name = 'I@@ ro@@ n M@@ an'
SELECT player_api_id FROM Player WHERE height >= 180 INTERSECT SELECT player_api_id FROM Player_Attributes WHERE overall_rating > 85
SELECT AVG(@@ Milliseconds) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId = T2.GenreId WHERE T1.Name = "L@@ at@@ in" OR T1.Name = "Pop"
SELECT count(*) FROM perpetrator
SELECT count(*) FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id = t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id = t3.characteristic_id JOIN ref_colors AS t4 ON t1.color_code = t4.color_code WHERE t4.color_description = "red" AND t3.characteristic_name = "slow@@ "
SELECT count(*) FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room = T2.RoomId WHERE T2.@@ maxOccupancy = T1.A@@ dults + T1.@@ K@@ id@@ s;
SELECT sum(grant_amount) FROM Grants AS T1 JOIN Organisations AS T2 ON T1.organisation_id = T2.organisation_id JOIN organisation_Types AS T3 ON T2.organisation_type = T3.organisation_type WHERE T3.@@ organisation_type_description = 'Research'
SELECT T1.problem_id FROM problems AS T1 JOIN staff AS T2 ON T1.reported_by_staff_id = T2.staff_id WHERE date_problem_reported > ( SELECT max(@@ date_problem_reported) FROM problems AS T3 JOIN staff AS T4 ON T3.reported_by_staff_id = T4.staff_id WHERE T4.staff_first_name = "Rylan" AND T4.staff_last_name = "Homenick" )
SELECT sum(grant_amount) , organisation_id FROM Grants GROUP BY organisation_id
SELECT count(*) FROM AD@@ D@@ RES@@ SES WHERE zip_postcode = "197@@ "
SELECT name FROM manufacturers WHERE revenue BETWEEN 100 AND 150
SELECT course_name FROM courses ORDER BY course_name
SELECT T2.company , count(*) FROM station_company AS T1 JOIN company AS T2 ON T1.company_id = T2.company_id GROUP BY T1.company_id
SELECT Country FROM mountain WHERE Height > 5600 INTERSECT SELECT Country FROM mountain WHERE Height < 5@@ 200
SELECT avg(campusfee) FROM csu_fees WHERE YEAR = 2005
SELECT Lieutenant@@ _@@ Governor , Comptroller FROM party WHERE Party = "Democratic"
SELECT count(*) FROM wedding WHERE YEAR = 2016
SELECT rank , company , market_value FROM company WHERE main_industry = 'Banking' ORDER BY sal@@ es_bill@@ ion , profit@@ s_billion
SELECT sum(@@ Sh@@ are_@@ in_percent) FROM channel WHERE OWNER = 'CCTV'
SELECT T2.Party FROM election AS T1 JOIN party AS T2 ON T1.Party = T2.Party_ID GROUP BY T1.Party ORDER BY COUNT(*) DESC LIMIT 1
SELECT Comptroller , COUNT(*) FROM party GROUP BY Comptroller ORDER BY COUNT(*) DESC LIMIT 1
SELECT avg(T2.fastestlapspeed) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2008 AND T1.name = "Monaco Grand Prix"
SELECT member_name FROM member EXCEPT SELECT T1.member_name FROM member AS T1 JOIN party_events AS T2 ON T1.member_id = T2.member_in_charge_id
SELECT Festival_Name , LOCATION FROM festival_detail
SELECT T2.name FROM Office_locations AS T1 JOIN buildings AS T2 ON T1.building_id = T2.id JOIN Companies AS T3 ON T1.company_id = T3.id GROUP BY T1.building_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) , Grape FROM WINE GROUP BY Grape
SELECT other_details FROM Res@@ ident@@ s WHERE other_details LIKE '%M@@ iss@@ %'
SELECT T1.product_name FROM products AS T1 JOIN ref_colors AS T2 ON T1.color_code = T2.color_code WHERE T2.color_description = 'yellow'
SELECT customer_name FROM customers EXCEPT SELECT t1.customer_name FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id = t2.customer_id
SELECT T1.fname , T1.lname FROM Student AS T1 JOIN Participates_in AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID ORDER BY count(*) DESC LIMIT 1
SELECT avg(T2.@@ stu_gpa) FROM enroll AS T1 JOIN student AS T2 ON T1.stu_num = T2.stu_num JOIN CLASS AS T3 ON T1.class_code = T3.class_code WHERE T3.crs_code = 'ACCT-211'
SELECT name_first , name_last FROM player WHERE de@@ ath@@ _year = '@@ ';
SELECT t3.fname , t3.lname FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t1.clubname = "Bootup Baltimore" AND t3.sex = "F"
SELECT T2.party_name FROM Member AS T1 JOIN party AS T2 ON T1.party_id = T2.party_id GROUP BY T1.party_id ORDER BY count(*) DESC LIMIT 1
SELECT gtype , count(*) FROM Video_games GROUP BY gtype
SELECT Name FROM pilot ORDER BY Age DESC
SELECT count(*) FROM College WHERE enr > 15000
SELECT name , Assets_billion FROM Companies ORDER BY name ASC
SELECT T1.name , T1.part@@ ition@@ id FROM user_profiles AS T1 JOIN tweets AS T2 ON T1.uid = T2.uid GROUP BY T2.uid HAVING count(*) < 2
SELECT T2.name FROM Flight AS T1 JOIN Aircraft AS T2 ON T1.aid = T2.aid WHERE T1.flno = 99
SELECT count(*) FROM Faculty WHERE Rank = "Professor" AND building = "NEB"
SELECT name FROM stadium WHERE id NOT IN (SELECT stadium_id FROM event@@ )
SELECT Name FROM city ORDER BY Name ASC
SELECT T2.name FROM membership_register_branch AS T1 JOIN branch AS T2 ON T1.branch_id = T2.branch_id JOIN member AS T3 ON T1.member_id = T3.member_id WHERE T3.@@ Hometown = 'L@@ ouis@@ vil@@ le , Kentuck@@ y' INTERSECT SELECT T2.name FROM membership_register_branch AS T1 JOIN branch AS T2 ON T1.branch_id = T2.branch_id JOIN member AS T3 ON T1.member_id = T3.member_id WHERE T3.@@ Hometown = 'H@@ ir@@ am , Georgi@@ a'
SELECT T1.organisation_type FROM Organisations AS T1 JOIN Research_Staff AS T2 ON T1.organisation_id = T2.employer_organisation_id GROUP BY T1.organisation_type ORDER BY count(*) DESC LIMIT 1
SELECT product_type_code FROM products GROUP BY product_type_code HAVING count(*) >= 2
SELECT stu_fname , stu_gpa FROM student WHERE stu_gpa < (SELECT avg(stu_gpa) FROM student)
SELECT T1.balance + T2.balance FROM checking AS T1 JOIN savings AS T2 ON T1.custid = T2.custid ORDER BY T1.balance + T2.balance
SELECT T1.name , T1.@@ height_feet FROM building AS T1 JOIN institution AS T2 ON T1.building_id = T2.building_id WHERE T2.f@@ ounded > 1880 GROUP BY T1.building_id HAVING count(*) >= 2
SELECT budget_type_code FROM Documents_with_expenses GROUP BY budget_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name , T1.Name FROM college AS T1 JOIN member AS T2 ON T1.College_ID = T2.College_ID
SELECT T2.emp_fname , T1.prof_office FROM professor AS T1 JOIN employee AS T2 ON T1.emp_num = T2.emp_num JOIN department AS T3 ON T1.dept_code = T3.dept_code WHERE T3.dept_name = 'History' AND T1.prof_high_degree != 'Ph.D.'
SELECT count(*) FROM Accounts
SELECT avg(T2.fastestlapspeed) , T1.name , T1.year FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year > 2014 GROUP BY T1.name ORDER BY T1.year
SELECT count(DISTINCT title) FROM vocals AS T1 JOIN songs AS T2 ON T1.songid = T2.songid WHERE TYPE = "lead"
SELECT DISTINCT product_name FROM products ORDER BY product_name
SELECT instrument FROM instruments AS T1 JOIN Band AS T2 ON T1.bandmateid = T2.id WHERE T2.lastname = "Heilo"
SELECT code , name , min(@@ price) FROM products GROUP BY name
SELECT forename , surname FROM drivers WHERE nationality = "German@@ "
SELECT T2.F@@ irstName , T2.@@ LastName FROM CUSTOMER AS T1 JOIN EMPLOYEE AS T2 ON T1.SupportRepId = T2.EmployeeId WHERE T1.FirstName = "L@@ e@@ on@@ ie"
SELECT DISTINCT T2.Hardware_Model_name FROM screen_mode AS T1 JOIN phone AS T2 ON T1.Graphics_mode = T2.screen_mode WHERE T1.Type = "Graphic@@ s" OR t2.@@ Company_name = "Nokia Corporation"
SELECT DISTINCT building_@@ description FROM Apartment_Buildings
SELECT T1.Aircraft FROM aircraft AS T1 JOIN airport_aircraft AS T2 ON T1.Aircraft_ID = T2.Aircraft_ID JOIN airport AS T3 ON T2.Airport_ID = T3.Airport_ID WHERE T3.Airport_Name = "London Gatwick"
SELECT name FROM projects ORDER BY hours DESC LIMIT 1
SELECT T2.name FROM Certificate AS T1 JOIN Aircraft AS T2 ON T2.aid = T1.aid GROUP BY T1.aid ORDER BY count(*) DESC LIMIT 1
SELECT city_code FROM Student WHERE LName = "Kim"
SELECT max(@@ support_@@ rate) , min(@@ con@@ sider_@@ rate) , min(oppose_rate) FROM candidate
SELECT apt_type_code FROM Apartments GROUP BY apt_type_code ORDER BY avg(room_count) DESC LIMIT 3
SELECT match_id FROM MATCH WHERE competition = "1994 FIFA World Cup qualification"
SELECT count(*) FROM Movie WHERE YEAR < 2000
SELECT unit_price FROM tracks WHERE name = "Fast As a Shark";
SELECT name FROM enzyme WHERE name LIKE "%A@@ LA@@ %"
SELECT Builder FROM railway GROUP BY Builder ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.date_order_placed FROM orders AS T1 JOIN shipments AS T2 ON T1.order_id = T2.order_id WHERE T2.@@ shipment_tracking_number = 345@@ 2
SELECT founder FROM manufacturers WHERE name = 'Sony'
SELECT DISTINCT city FROM addresses
SELECT count(DISTINCT instrument) FROM instruments AS T1 JOIN songs AS T2 ON T1.songid = T2.songid WHERE title = "Badlands"
SELECT DISTINCT label FROM Albums
SELECT T1.City_Town FROM Addresses AS T1 JOIN Stores AS T2 ON T1.Address_ID = T2.Address_ID WHERE T2.Store_Name = "F@@ J@@ A Film@@ ing"
SELECT T2.firstname , T2.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom = T2.classroom GROUP BY T2.firstname , T2.lastname ORDER BY count(*) DESC LIMIT 1
SELECT max(T1.stars) , T2.year FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID WHERE T2.year = (SELECT max(YEAR) FROM Movie)
SELECT T1.driverid , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid GROUP BY T1.driverid ORDER BY count(*) DESC LIMIT 1
SELECT T1.id , T1.name , T1.gender FROM architect AS T1 JOIN bridge AS T2 ON T1.id = T2.architect_id GROUP BY T1.id HAVING count(*) = 2 UNION SELECT T1.id , T1.name , T1.gender FROM architect AS T1 JOIN mill AS T2 ON T1.id = T2.architect_id GROUP BY T1.id HAVING count(*) = 1
SELECT count(*) FROM Songs
SELECT rID FROM Rating EXCEPT SELECT rID FROM Rating WHERE stars = 4
SELECT id FROM station WHERE city = "San Francisco" INTERSECT SELECT station_id FROM status GROUP BY station_id HAVING avg(bikes_available) > 10
SELECT fname , lname FROM Faculty WHERE Rank = "@@ Instruct@@ or"
SELECT T2.title , T1.rID , T1.stars , min(T1.stars) FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID GROUP BY T1.rID
SELECT count(*) FROM customers
SELECT count(*) FROM services
SELECT count(DISTINCT OWN@@ ER@@ ) FROM channel
SELECT T1.name , T2.balance FROM accounts AS T1 JOIN savings AS T2 ON T1.custid = T2.custid ORDER BY T2.balance DESC LIMIT 3
SELECT shop_id , count(*) FROM happy_hour GROUP BY shop_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT publisher FROM book_club
SELECT T3.Name , T2.Name FROM employment AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID JOIN company AS T3 ON T1.Company_ID = T3.Company_ID ORDER BY T1.@@ Year_@@ working
SELECT T1.name FROM airlines AS T1 JOIN routes AS T2 ON T1.alid = T2.alid GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT pName FROM Player WHERE yCard = 'yes' ORDER BY HS DESC
SELECT minister FROM party ORDER BY left_office DESC LIMIT 1
SELECT max_page_size FROM product GROUP BY max_page_size ORDER BY count(*) DESC LIMIT 1
SELECT Competition_type , Country FROM competition
SELECT count(*) , T1.maintenance_contract_id FROM Maintenance_Contracts AS T1 JOIN Assets AS T2 ON T1.maintenance_contract_id = T2.@@ maintenance_contract_id GROUP BY T1.maintenance_contract_id
SELECT AVG(T2.@@ Price) FROM APPELLATIONS AS T1 JOIN WINE AS T2 ON T1.Appelation = T2.Appelation WHERE T1.County = "S@@ on@@ om@@ a"
SELECT min(T1.@@ duration) , min(T2.@@ rating) , T2.genre_is FROM files AS T1 JOIN song AS T2 ON T1.f_id = T2.f_id GROUP BY T2.genre_is ORDER BY T2.genre_is
SELECT T1.FacID , count(*) FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID = T2.advisor GROUP BY T1.FacID
SELECT origin FROM Flight WHERE destination = "Honolulu"
SELECT name , cost FROM procedures ORDER BY cost DESC
SELECT fname , lname FROM authors ORDER BY lname
SELECT DISTINCT T1.Fate FROM mission AS T1 JOIN ship AS T2 ON T1.Ship_ID = T2.Ship_ID WHERE T2.@@ Nationality = "United States"
SELECT Name FROM GENRE
SELECT T2.dept_name , avg(T1.stu_gpa) FROM student AS T1 JOIN department AS T2 ON T1.dept_code = T2.dept_code GROUP BY T1.dept_code ORDER BY avg(T1.stu_gpa) DESC LIMIT 1
SELECT LOCATION FROM railway GROUP BY LOCATION HAVING COUNT(*) > 1
SELECT bname FROM bank WHERE state = 'New York'
SELECT catalog_entry_name FROM catalog_contents WHERE nex@@ t_@@ entr@@ y_id > 8
SELECT T1.dorm_name , T1.student_capacity FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid = T2.dormid JOIN dorm_amenity AS T3 ON T2.amenid = T3.amenid GROUP BY T2.dormid ORDER BY count(*) LIMIT 1
SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.date_order_placed >= "@@ 2009-01@@ -01" AND T2.date_order_placed <= "2010@@ -01-01"
SELECT T1.name FROM instructor AS T1 JOIN teaches AS T2 ON T1.id = T2.id JOIN course AS T3 ON T2.course_id = T3.course_id WHERE T3.title = '@@ C Programm@@ ing'
SELECT DISTINCT Reign FROM wrestler WHERE LOCATION != "T@@ okyo , Japan"
SELECT G@@ ender , Occupation FROM player
SELECT count(*) FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.customer_first_name = "A@@ r@@ t" AND T2.customer_last_name = "Turcotte"
SELECT count(*) FROM Products_for_hire WHERE product_id NOT IN ( SELECT product_id FROM products_booked WHERE booked_@@ amount > 200 )
SELECT T2.Fname , T2.Lname FROM MINOR_IN AS T1 JOIN STUDENT AS T2 ON T1.StuID = T2.StuID WHERE T1.DNO = 140
SELECT founder FROM manufacturers WHERE name = 'Sony'
SELECT Allergy , count(*) FROM Has_allergy GROUP BY Allergy
SELECT count(*) FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id = t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id = t3.characteristic_id WHERE t1.product_name = "laurel"
SELECT count(*) FROM budget WHERE budgeted > 3000 AND YEAR <= 2001
SELECT Industry FROM Companies GROUP BY Industry ORDER BY COUNT(*) DESC
SELECT T1.city FROM city AS T1 JOIN temperature AS T2 ON T1.city_id = T2.city_id WHERE T2.Mar < T2.@@ Dec EXCEPT SELECT T3.city FROM city AS T3 JOIN hosting_city AS T4 ON T3.city_id = T4.host_city
SELECT Software_Platform FROM device GROUP BY Software_Platform ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.first_name , T1.last_name FROM customers AS T1 JOIN invoices AS T2 ON T2.customer_id = T1.id ORDER BY total LIMIT 10;
SELECT avg(T1.HS) FROM player AS T1 JOIN tryout AS T2 ON T1.pID = T2.pID WHERE T2.decision = '@@ no@@ '
SELECT StuID FROM Sportsinfo WHERE onscholarship = 'Y'
SELECT T1.driverid , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds DESC LIMIT 1
SELECT T1.staff_id , T1.staff_name FROM staff AS T1 JOIN Staff_Department_Assignments AS T2 ON T1.staff_id = T2.staff_id ORDER BY date_assigned_to - date_assigned_from LIMIT 1
SELECT count(*) FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id = t2.customer_id WHERE t1.customer_name = "Dayana Robel"
SELECT t1.name FROM ship AS t1 JOIN captain AS t2 ON t1.ship_id = t2.ship_id GROUP BY t2.ship_id HAVING count(*) > 1
SELECT sum(T1.@@ lesson_time) FROM Lessons AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.first_name = "Rylan" AND T2.last_name = "Goodwin@@ ";
SELECT DName FROM DEPARTMENT EXCEPT SELECT T1.DName FROM DEPARTMENT AS T1 JOIN MINOR_IN AS T2 ON T1.DNO = T2.DNO
SELECT name FROM program WHERE origin != 'Beijing'
SELECT T1.id , T1.name FROM browser AS T1 JOIN accelerator_compatible_browser AS T2 ON T1.id = T2.browser_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , count(*) FROM camera_lens AS T1 JOIN photos AS T2 ON T1.id = T2.camera_lens_id GROUP BY T1.id ORDER BY count(*)
SELECT count(*) FROM club_rank WHERE Total < 10
SELECT * FROM student_course_registrations WHERE student_id NOT IN (SELECT student_id FROM student_course_attendance)
SELECT sum(city_population) FROM district WHERE city_area > (SELECT avg(@@ city_@@ are@@ a) FROM distric@@ t@@ )
SELECT TYPE , count(*) FROM store GROUP BY TYPE
SELECT T1.name FROM student AS T1 JOIN takes AS T2 ON T1.id = T2.id WHERE T2.course_id IN (SELECT T4.@@ prereq_id FROM course AS T3 JOIN prereq AS T4 ON T3.course_id = T4.@@ course_id WHERE T3.title = '@@ International Financ@@ e')
SELECT document_type_code FROM documents GROUP BY document_type_code HAVING count(*) > 2
SELECT count(DISTINCT role@@ _code) FROM Project_Staff
SELECT document_name FROM documents WHERE document_code NOT IN (SELECT document_code FROM document_section@@ s)
SELECT T1.teacher_id , T2.last_name FROM Detention AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id WHERE T1.@@ detent@@ ion@@ _type_code = "A@@ F@@ TER@@ " GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(no_of_customers) FROM bank WHERE state = 'Utah'
SELECT allergytype FROM Allergy_type GROUP BY allergytype ORDER BY count(*) ASC LIMIT 1
SELECT count(@@ T1.S@@ S@@ N@@ ) FROM patient AS T1 JOIN prescribes AS T2 ON T1.SSN = T2.patient JOIN physician AS T3 ON T2.physician = T3.@@ employe@@ eid WHERE T3.name = "John Dorian@@ "
SELECT document_id FROM Documents WHERE document_status_code = "done" AND document_type_code = "Paper" INTERSECT SELECT document_id FROM Documents JOIN Ref_Shipping_Agents ON Documents.shipping_agent_code = Ref_Shipping_Agents.shipping_agent_code WHERE Ref_Shipping_Agents.shipping_agent_name = "US@@ PS";
SELECT DISTINCT T2.emp_fname , T3.@@ prof_high_degree FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num = T2.emp_num JOIN professor AS T3 ON T2.emp_num = T3.emp_num JOIN department AS T4 ON T4.dept_code = T3.dept_code WHERE T4.dept_name = 'Computer Info. Systems'
SELECT document_type_code FROM Document_Types WHERE document_description LIKE 'Initial@@ %'
SELECT T2.@@ company_name FROM movie AS T1 JOIN culture_company AS T2 ON T1.movie_id = T2.movie_id WHERE T1.year = 1999
SELECT T3.forename , T3.surname FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T1.name = "Australian Grand Prix" EXCEPT SELECT T3.forename , T3.surname FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T1.name = "Chinese Grand Prix"
SELECT Competition_type , COUNT(*) FROM competition GROUP BY Competition_type
SELECT Nominee FROM musical GROUP BY Nominee HAVING COUNT(*) > 2
SELECT transaction_type FROM Financial_transactions GROUP BY transaction_type ORDER BY sum(transaction_amount) DESC LIMIT 1
SELECT How_to_Get_There , COUNT(*) FROM Tourist_Attractions GROUP BY How_to_Get_There
SELECT count(*) FROM branch WHERE membership_amount > (SELECT avg(@@ membership_amount) FROM branch)
SELECT DISTINCT T1.city FROM addresses AS T1 JOIN people_addresses AS T2 ON T1.address_id = T2.address_id
SELECT A@@ dults FROM Reservations WHERE CheckIn = "2010@@ -@@ 10@@ -2@@ 3" AND FirstName = "@@ CONRA@@ D@@ " AND LastName = "@@ SELBI@@ G@@ ";
SELECT Fname FROM STUDENT WHERE Age > 2@@ 2
SELECT DISTINCT YEAR FROM party WHERE Governor = "Eliot Spit@@ zer"
SELECT country FROM addresses GROUP BY country HAVING count(@@ address_id) > 4
SELECT DISTINCT Product_Name FROM PRODUCTS WHERE Product_Price > (SELECT avg(Product_Price) FROM PRODU@@ CT@@ S@@ )
SELECT sum(T2.amount) FROM bank AS T1 JOIN loan AS T2 ON T1.branch_id = T2.branch_id WHERE T1.state = 'New York'
SELECT T1.first_name , T1.last_name FROM employees AS T1 JOIN customers AS T2 ON T1.id = T2.support_rep_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT country , count(*) FROM airlines GROUP BY country ORDER BY count(*) DESC
SELECT T3.@@ Party_Theme , T2.Name FROM party_host AS T1 JOIN HOST AS T2 ON T1.Host_ID = T2.Host_ID JOIN party AS T3 ON T1.Party_ID = T3.Party_ID
SELECT headquarters FROM company WHERE main_industry = 'Banking' INTERSECT SELECT headquarters FROM company WHERE main_industry = 'O@@ il and gas'
SELECT Name , Opening_Hours FROM TOURIST_ATTRACTIONS WHERE How_to_Get_There = "bus" OR How_to_Get_There = "walk"
SELECT count(*) FROM institution AS T1 JOIN protein AS T2 ON T1.institution_id = T2.institution_id JOIN building AS T3 ON T3.@@ building_id = T1.building_id WHERE T3.@@ floors >= 20
SELECT T2.Author , T1.Result FROM acceptance AS T1 JOIN submission AS T2 ON T1.Submission_ID = T2.Submission_ID
SELECT count(*) FROM browser WHERE market_share >= 5
SELECT count(*) , nationality FROM constructors GROUP BY nationality
SELECT count(*) FROM Student WHERE city_code = "H@@ KG@@ " OR city_code = "CHI"
SELECT T2.Height FROM climber AS T1 JOIN mountain AS T2 ON T1.Mountain_ID = T2.Mountain_ID ORDER BY T1.@@ Points DESC LIMIT 1
SELECT DISTINCT building_@@ description FROM Apartment_Buildings
SELECT count(*) FROM storm WHERE Number_Deaths > 0
SELECT DISTINCT card_type_code FROM Customers_@@ C@@ ard@@ s
SELECT T2.name FROM albums AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id WHERE T1.title = "Balls to the Wall";
SELECT T4.name FROM stay AS T1 JOIN patient AS T2 ON T1.@@ P@@ atient = T2.SSN JOIN Prescribes AS T3 ON T3.@@ P@@ atient = T2.SSN JOIN Medication AS T4 ON T3.@@ Medication = T4.@@ Code WHERE room = 111
SELECT T1.name , T1.type FROM operate_company AS T1 JOIN flight AS t2 ON T1.id = T2.company_id
SELECT T1.f@@ ault@@ _description , T2.f@@ ault_@@ status FROM Fault_Log AS T1 JOIN Fault_Log_Parts AS T2 ON T1.fault_log_entry_id = T2.f@@ ault_log_entry_id
SELECT count(*) , class_room FROM CLASS GROUP BY class_room HAVING count(*) >= 2
SELECT T1.White , T2.Crime_rate FROM city AS T1 JOIN county_public_safety AS T2 ON T1.County_ID = T2.County_ID
SELECT rank FROM Faculty GROUP BY rank ORDER BY count(*) ASC LIMIT 1
SELECT order_id FROM orders ORDER BY date_order_placed DESC LIMIT 1
SELECT DISTINCT city FROM addresses
SELECT Date , LOCATION FROM performance
SELECT document_type_code FROM Documents GROUP BY document_type_code HAVING count(*) < 3
SELECT College FROM submission GROUP BY College ORDER BY COUNT(*) DESC LIMIT 1
SELECT avg(@@ order_quantity) FROM order_items
SELECT Team FROM player ORDER BY Age DESC LIMIT 5
SELECT Company FROM entrepreneur ORDER BY Money_Requested DESC
SELECT t1.@@ Primar@@ y_conference FROM university AS t1 JOIN basketball_match AS t2 ON t1.school_id = t2.school_id ORDER BY t2.@@ acc_percent LIMIT 1
SELECT DISTINCT T2.name FROM undergoes AS T1 JOIN patient AS T2 ON T1.patient = T2.SSN JOIN stay AS T3 ON T1.S@@ ta@@ y = T3.S@@ ta@@ yID WHERE T3.@@ room = 111
SELECT count(*) , dept_code FROM student GROUP BY dept_code
SELECT LEVEL FROM member GROUP BY LEVEL ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT asset_model FROM Assets
SELECT DISTINCT product_name FROM product ORDER BY product_name
SELECT T1.document_id FROM Documents_with_expenses AS T1 JOIN Ref_@@ Budget_@@ Co@@ des AS T2 ON T1.@@ Budget_Type_code = T2.@@ Budget_Type_code WHERE T2.@@ budget@@ _type_@@ Description = "G@@ overnment@@ "
SELECT count(*) FROM authors
SELECT T2.name FROM game AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.id JOIN injury_accident AS T3 ON T1.id = T3.game_id WHERE T3.@@ player = 'Walter Samuel' INTERSECT SELECT T2.name FROM game AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.id JOIN injury_accident AS T3 ON T1.id = T3.game_id WHERE T3.@@ player = 'T@@ hi@@ ag@@ o M@@ ot@@ ta'
SELECT T1.Name , T2.Tourist_Attraction_ID , COUNT(*) FROM Tourist_Attractions AS T1 JOIN VISITS AS T2 ON T1.Tourist_Attraction_ID = T2.Tourist_Attraction_ID GROUP BY T2.Tourist_Attraction_ID
SELECT name FROM PersonFriend WHERE friend = 'Alice' AND YEAR = (SELECT min(YEAR) FROM PersonFriend WHERE friend = 'Alice')
SELECT email FROM employees WHERE commission_pct = "null" AND salary BETWEEN 7000 AND 12000 AND department_id = 50
SELECT apt_type_code FROM Apartments GROUP BY apt_type_code ORDER BY count(*) DESC LIMIT 1
SELECT catalog_entry_name FROM catalog_contents ORDER BY height DESC LIMIT 1
SELECT T1.stuid FROM participates_in AS T1 JOIN activity AS T2 ON T2.actid = T2.actid WHERE T2.activity_name = 'Canoeing' INTERSECT SELECT T1.stuid FROM participates_in AS T1 JOIN activity AS T2 ON T2.actid = T2.actid WHERE T2.activity_name = 'Kayaking'
SELECT email , phone FROM customers WHERE first_name = "Astrid" AND last_name = "Grub@@ er";
SELECT dept_name , building FROM department ORDER BY budget DESC
SELECT T1.first_name , T1.job_id FROM employees AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = 'Finance'
SELECT count(*) FROM (SELECT city FROM airports GROUP BY city HAVING count(*) > 3)
SELECT count(*) FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t1.clubname = "Bootup Baltimore" AND t3.age < 18
SELECT avg(room_count) FROM Apartments WHERE apt_type_code = "Studio"
SELECT flno , distance FROM Flight ORDER BY price DESC LIMIT 1
SELECT T1.name , count(*) FROM physician AS T1 JOIN patient AS T2 ON T1.employeeid = T2.PCP GROUP BY T1.employeeid
SELECT sum(@@ credit@@ s) , dept_name FROM course GROUP BY dept_name
SELECT count(*) , avg(age) , city_code FROM student GROUP BY city_code
SELECT count(*) , rank FROM captain WHERE age < 50 GROUP BY rank
SELECT count(*) , building FROM classroom WHERE capacity > 50 GROUP BY building
SELECT document_id , count(DISTINCT employee_id) FROM Circulation_History GROUP BY document_@@ id;
SELECT TYPE , COUNT(*) FROM artwork GROUP BY TYPE
SELECT T2.Player FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id = T2.Country WHERE T1.Country_name = "@@ In@@ don@@ esi@@ a"
SELECT t3.individual_last_name FROM organizations AS t1 JOIN organization_contact_individuals AS t2 ON t1.organization_id = t2.organization_id JOIN individuals AS t3 ON t2.individual_id = t3.individual_id WHERE t1.organization_name = "Labour Party" ORDER BY t2.date_contact_to DESC LIMIT 1
SELECT bike_id FROM trip WHERE zip_code = 9400@@ 2 GROUP BY bike_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT bedType , avg(basePrice) FROM Rooms GROUP BY bedType;
SELECT T1.member_name FROM member AS T1 JOIN party_events AS T2 ON T1.member_id = T2.member_in_charge_id GROUP BY T2.member_in_charge_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT name FROM gen@@ res@@ ;
SELECT date , zip_code FROM weather WHERE max_temperature_f >= 80
SELECT role_name , role_description FROM ROLES WHERE role_code = "MG@@ "
SELECT count(*) FROM dorm
SELECT district FROM address GROUP BY district HAVING count(*) >= 2
SELECT T1.product_name FROM products AS T1 JOIN ref_colors AS T2 ON T1.color_code = T2.color_code WHERE T2.color_description = 'yellow'
SELECT city FROM city WHERE regional_population > 10000000 UNION SELECT city FROM city WHERE regional_population < 5000000
SELECT DISTINCT YEAR FROM Movie AS T1 JOIN Rating AS T2 ON T1.mID = T2.mID WHERE T2.stars >= 4 ORDER BY T1.year
SELECT avg(@@ student_capacity) , sum(student_capacity) FROM dorm WHERE gender = '@@ X'
SELECT TYPE FROM vocals AS T1 JOIN songs AS T2 ON T1.songid = T2.songid WHERE title = "Le Pop"
SELECT origin FROM Flight WHERE destination = "Honolulu"
SELECT T1.name , count(*) FROM user_profiles AS T1 JOIN tweets AS T2 ON T1.uid = T2.uid GROUP BY T2.uid
SELECT DISTINCT T2.Name FROM APPELLA@@ TION@@ s AS T1 JOIN WINE AS T2 ON T1.Appelation = T2.Appelation WHERE T1.Area = "N@@ orth Coast"
SELECT title FROM Movie WHERE director = "James Camer@@ on" OR YEAR < 1980
SELECT member_name FROM member WHERE party_id = 3 INTERSECT SELECT member_name FROM member WHERE party_id = 1
SELECT count(*) FROM csu_fees WHERE campusfee > (SELECT avg(campusfee) FROM csu_fe@@ es)
SELECT T1.name , count(*) FROM storm AS T1 JOIN affected_region AS T2 ON T1.storm_id = T2.storm_id GROUP BY T1.storm_id
SELECT tru@@ ck@@ _details FROM trucks ORDER BY tru@@ ck_@@ lic@@ enc@@ e_number
SELECT max(@@ Sales_billion) , min(@@ Sales_billion) FROM Companies WHERE Industry != "Banking"
SELECT name FROM track WHERE track_id NOT IN (SELECT track_id FROM rac@@ e)
SELECT Order_Date FROM BOOKINGS
SELECT T1.name , T1.date , T2.name FROM race AS T1 JOIN track AS T2 ON T1.track_id = T2.track_id
SELECT card_number , name , hometown FROM member ORDER BY LEVEL DESC
SELECT FacID FROM Faculty_participates_in INTERSECT SELECT advisor FROM Student
SELECT name FROM Person WHERE age > (SELECT min(age) FROM person WHERE job = 'engineer') ORDER BY age
SELECT count(DISTINCT OWN@@ ER@@ ) FROM channel
SELECT name FROM player WHERE points > (SELECT avg(@@ point@@ s) FROM play@@ er)
SELECT Song FROM volume WHERE Weeks_on_Top > 1
SELECT Studio FROM film GROUP BY Studio HAVING avg(Gross_in_dollar) >= 4500@@ 000
SELECT role_description FROM Staff_Roles WHERE role_code = 'researcher'
SELECT * FROM student_course_registrations WHERE student_id NOT IN (SELECT student_id FROM student_course_attendance)
SELECT count(*) FROM Customers_cards WHERE card_type_code = "De@@ bit@@ "
SELECT count(*) FROM Staff WHERE first_name = "L@@ udie";
SELECT sum(T2.@@ total) FROM customers AS T1 JOIN invoices AS T2 ON T1.id = T2.customer_id WHERE T1.first_name = "Lucas" AND T1.last_name = "Mancini";
SELECT name , CLASS , rank FROM captain
SELECT T3.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid = T2.custid JOIN savings AS T3 ON T1.custid = T3.custid ORDER BY T2.balance DESC LIMIT 1
SELECT T1.title , T3.@@ book_title FROM movie AS T1 JOIN culture_company AS T2 ON T1.movie_id = T2.movie_id JOIN book_club AS T3 ON T3.@@ book_club_id = T2.book_club_id WHERE T2.@@ incorpor@@ ated_@@ in = 'China'
SELECT T1.vehicle_id , T1.@@ vehicle_details FROM Vehicles AS T1 JOIN Lessons AS T2 ON T1.vehicle_id = T2.@@ vehicle_id GROUP BY T1.vehicle_id ORDER BY count(*) DESC LIMIT 1
SELECT COUNT(DISTINCT StuID) FROM ENROLLED_IN WHERE Gra@@ de = "B"
SELECT DISTINCT T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Spain" AND T1.year > 2000
SELECT StuID FROM Student WHERE age > 20
SELECT T2.name FROM film AS T1 JOIN L@@ AN@@ G@@ U@@ A@@ G@@ E AS T2 ON T1.@@ language_id = T2.@@ language_id WHERE T1.title = 'AIRPORT POLLOCK'
SELECT count(*) FROM Video_games WHERE gtype = "M@@ ass@@ iv@@ ely mult@@ i@@ player on@@ line game"
SELECT count(DISTINCT instrument) FROM instruments AS T1 JOIN songs AS T2 ON T1.songid = T2.songid WHERE title = "Le Pop"
SELECT product FROM product WHERE max_page_size = "A4" OR pages_per_minute_color < 5
SELECT student_id FROM student_course_attendance WHERE course_id = 301 ORDER BY date_of_@@ attendance DESC LIMIT 1
SELECT policy_type_code FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id = t2.customer_id WHERE t2.customer_details = "Dayana Robel"
SELECT T1.name , T1.@@ salary FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid = T2.eid GROUP BY T1.eid ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.LName FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID = T2.CLASS@@ _P@@ resident_VOTE
SELECT T1.Name FROM ST@@ A@@ F@@ F AS T1 JOIN TOURIST_ATTRACTIONS AS T2 ON T1.Tourist_Attraction_ID = T2.Tourist_Attraction_ID WHERE T2.Name = "US museum@@ "
SELECT roomName FROM Rooms WHERE bedType = "K@@ ing" OR bedType = "@@ Qu@@ e@@ en@@ ";
SELECT T1.staff_name , T1.staff_id FROM Staff AS T1 JOIN Fault_Log AS T2 ON T1.staff_id = T2.@@ recorde@@ d_by_staff_id EXCEPT SELECT T3.@@ staff_name , T3.staff_id FROM Staff AS T3 JOIN Engineer_Visits AS T4 ON T3.staff_id = T4.@@ contact_staff_id
SELECT * FROM item
SELECT * FROM Assessment_Notes ORDER BY date_of_@@ notes ASC
SELECT roomName , decor FROM Rooms WHERE bedtype = 'K@@ ing' ORDER BY basePrice;
SELECT T1.name FROM constructors AS T1 JOIN constructor@@ standings AS T2 ON T1.@@ constructorid = T2.@@ constructorid WHERE T1.nationality = "Japan@@ es@@ e" AND T2.points > 5
SELECT faculty FROM faculty AS T1 JOIN campuses AS T2 ON T1.campus = T2.id WHERE T1.year = 2002 AND T2.campus = "Long Beach State University"
SELECT T2.Author FROM acceptance AS T1 JOIN submission AS T2 ON T1.Submission_ID = T2.Submission_ID GROUP BY T2.Author HAVING COUNT(DISTINCT T1.workshop_id) > 1
SELECT T2.faculty FROM campuses AS T1 JOIN faculty AS T2 ON T1.id = t2.campus JOIN degrees AS T3 ON T1.id = t3.campus AND t2.year = t3.year WHERE t2.year = 2002 ORDER BY t3.degrees DESC LIMIT 1
SELECT T1.Title , T2.AlbumID , COUNT(*) FROM ALBUM AS T1 JOIN TRACK AS T2 ON T1.AlbumId = T2.AlbumId GROUP BY T2.AlbumID
SELECT count(*) FROM student
SELECT Name FROM city ORDER BY White DESC LIMIT 5
SELECT date_of_@@ transaction , share_count FROM TRANSACTIONS
SELECT origin FROM train GROUP BY origin HAVING count(*) > 1
SELECT lastname FROM teachers WHERE classroom = 10@@ 9
SELECT bedType , avg(basePrice) FROM Rooms GROUP BY bedType;
SELECT T1.id , count(*) FROM stadium AS T1 JOIN game AS T2 ON T1.id = T2.stadium_id GROUP BY T1.id
SELECT T2.title , T2.year FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID ORDER BY T1.stars DESC LIMIT 3
SELECT headquarters FROM company WHERE main_industry = 'Banking' INTERSECT SELECT headquarters FROM company WHERE main_industry = 'O@@ il and gas'
SELECT Player , Years_Played FROM player
SELECT CLASS FROM captain GROUP BY CLASS HAVING count(*) > 2
SELECT Name , Other_@@ Details FROM Staff
SELECT avg(@@ amount_@@ du@@ e) FROM payments
SELECT T3.location , T3.@@ Representativ@@ e_@@ Name FROM station_company AS T1 JOIN company AS T2 ON T1.company_id = T2.company_id JOIN gas_station AS T3 ON T1.station_id = T3.station_id ORDER BY T2.@@ Assets_billion DESC LIMIT 3
SELECT count(*) , T1.name FROM medication AS T1 JOIN prescribes AS T2 ON T1.code = T2.medication GROUP BY T1.brand
SELECT T1.company_name FROM culture_company AS T1 JOIN book_club AS T2 ON T1.@@ book_club_id = T2.book_club_id WHERE T2.@@ publisher = '@@ Aly@@ son'
SELECT count(*) FROM customers AS t1 JOIN customer_addresses AS t2 ON t1.customer_id = t2.customer_id JOIN addresses AS t3 ON t2.address_id = t3.address_id WHERE t3.city = "Lake Geovannyton@@ "
SELECT count(*) FROM university WHERE school_id NOT IN (SELECT school_id FROM basketball_@@ match@@ )
SELECT dorm_name FROM dorm WHERE dormid NOT IN (SELECT dormid FROM has_@@ amen@@ ity)
SELECT T1.name FROM physician AS T1 JOIN patient AS T2 ON T1.employeeid = T2.PCP GROUP BY T1.employeeid HAVING count(*) > 1
SELECT customer_id , customer_first_name FROM Customers EXCEPT SELECT T1.customer_id , T2.customer_first_name FROM Customers_cards AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id WHERE card_type_code = "Credit"
SELECT DISTINCT T2.name FROM undergoes AS T1 JOIN nurse AS T2 ON T1.@@ Ass@@ ist@@ ing@@ N@@ urse = T2.EmployeeID
SELECT count(*) FROM player WHERE birth_country = 'USA' AND bats = 'R@@ ';
SELECT sum(revenue) FROM manufacturers WHERE revenue > (SELECT min(revenue) FROM manufacturers WHERE headquarter = 'Austin')
SELECT fname FROM authors WHERE lname = "Uen@@ o"
SELECT sum(T1.@@ salary) FROM salary AS T1 JOIN player AS T2 ON T1.player_id = T2.player_id WHERE T2.name_first = 'L@@ en' AND T2.name_last = 'B@@ ark@@ er' AND T1.year BETWEEN 1985 AND 199@@ 0;
SELECT DISTINCT characteristic_name FROM CHARACTERISTICS
SELECT product FROM product WHERE max_page_size = "A4" OR pages_per_minute_color < 5
SELECT T1.City_Town , count(*) FROM Addresses AS T1 JOIN Drama_Workshop_Groups AS T2 ON T1.Address_ID = T2.Address_ID GROUP BY T1.City_Town
SELECT How_to_Get_There FROM Tourist_Attractions GROUP BY How_to_Get_There ORDER BY COUNT(*) DESC LIMIT 1
SELECT address , num_of_@@ staff FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM happy_@@ hour@@ )
SELECT Height , Weight FROM people ORDER BY Height DESC
SELECT count(*) FROM region AS t1 JOIN party AS t2 ON t1.@@ region_id = t2.@@ region_id JOIN party_events AS t3 ON t2.party_id = t3.@@ party_id WHERE t1.@@ region_name = "United Kingdom" AND t3.@@ Event@@ _Name = "An@@ nau@@ al Meet@@ ing"
SELECT avg(T1.salary) FROM salary AS T1 JOIN team AS T2 ON T1.team_id = T2.team_id_br WHERE T2.name = 'Boston Red Stockings'
SELECT T3.title FROM albums AS T1 JOIN tracklists AS T2 ON T1.aid = T2.albumid JOIN songs AS T3 ON T2.songid = T3.songid WHERE t1.@@ label = "Univers@@ al M@@ usic Group@@ "
SELECT T1.name , T1.@@ lat , min(T2.@@ duration) FROM station AS T1 JOIN trip AS T2 ON T1.id = T2.@@ end_station_id GROUP BY T2.@@ end_station_id
SELECT avg(T1.stars) , T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID WHERE T2.year = (SELECT min(YEAR) FROM Movie)
SELECT count(DISTINCT c@@ Name) FROM tryout
SELECT count(*) FROM store
SELECT count(DISTINCT maj@@ or) , count(DISTINCT city_@@ code) FROM student
SELECT payment_method_code , party_@@ phone FROM parties WHERE party_email = "enrico09@example.com@@ "
SELECT T1.Name , T2.Name FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID = T2.Musical_ID
SELECT catalog_entry_name FROM catalog_contents ORDER BY price_in_dollars DESC LIMIT 1
SELECT name FROM instructor WHERE salary > (SELECT max(salary) FROM instructor WHERE dept_name = 'Biology')
SELECT Denomination , COUNT(*) FROM school GROUP BY Denomination
SELECT count(*) FROM Staff WHERE first_name = "L@@ udie";
SELECT T1.member_name FROM member AS T1 JOIN party_events AS T2 ON T1.member_id = T2.member_in_charge_id GROUP BY T2.member_in_charge_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.problem_id FROM problems AS T1 JOIN staff AS T2 ON T1.reported_by_staff_id = T2.staff_id WHERE T2.staff_last_name = "Bosco"
SELECT count(*) FROM vocals AS T1 JOIN songs AS T2 ON T1.songid = T2.songid WHERE title = "Le Pop"
SELECT DISTINCT detent@@ ion@@ _type_code FROM Detention
SELECT t1.organization_name FROM organizations AS t1 JOIN organization_contact_individuals AS t2 ON t1.organization_id = t2.organization_id GROUP BY t1.organization_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.name , T1.age , T1.job FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.name WHERE T2.friend = 'Alice' AND T2.year = (SELECT max(YEAR) FROM PersonFriend WHERE friend = 'Alice')
SELECT count(*) FROM Customers
SELECT name , email FROM user_profiles ORDER BY followers LIMIT 1
SELECT department_id , AVG(salary) FROM employees WHERE commission_pct != "null" GROUP BY department_id
SELECT rID FROM Reviewer WHERE name LIKE "%M@@ ike@@ %"
SELECT T2.name , T2.@@ open_year FROM membership_register_branch AS T1 JOIN branch AS T2 ON T1.branch_id = T2.branch_id WHERE T1.register_year = 2016 GROUP BY T2.branch_id ORDER BY count(*) DESC LIMIT 1
SELECT characteristic_name , other_characteristic_details , characteristic_data_type FROM CHARACTERISTICS EXCEPT SELECT t1.@@ characteristic_name , t1.@@ other_characteristic_details , t1.@@ characteristic_data_type FROM CHARACTERISTICS AS t1 JOIN product_characteristics AS t2 ON t1.@@ characteristic_id = t2.characteristic_id
SELECT employee_id FROM Employees EXCEPT SELECT Destroyed_by_Employee_ID FROM Documents_to_be_destroyed
SELECT card_number , name , hometown FROM member ORDER BY LEVEL DESC
SELECT preferred_foot , count(*) FROM Player_Attributes WHERE overall_rating > 80 GROUP BY preferred_foot
SELECT count(*) FROM university WHERE school_id NOT IN (SELECT school_id FROM basketball_@@ match@@ )
SELECT cust_name , acc_bal FROM customer WHERE cust_name LIKE '%a%'
SELECT address FROM employees WHERE first_name = "Nancy" AND last_name = "Edwards";
SELECT T2.friend FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.friend WHERE T2.name = 'Alice' AND T1.gender = 'male' AND T1.job = 'doctor'
SELECT date FROM weather WHERE mean_@@ sea_level_pressure_inch@@ es BETWEEN 30.3 AND 31
SELECT Official_Name , Status FROM city ORDER BY Population DESC LIMIT 1
SELECT T1.id , T1.name FROM stadium AS T1 JOIN game AS T2 ON T1.id = T2.stadium_id JOIN injury_accident AS T3 ON T2.id = T3.game_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT max(T2.resolution) , min(T2.@@ resolution) FROM files AS T1 JOIN song AS T2 ON T1.f_id = T2.f_id WHERE T1.duration LIKE "3@@ :%"
SELECT count(*) FROM has_@@ allergy AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.@@ sex = "F" AND T1.allergy = "Milk" OR T1.allergy = "E@@ g@@ g@@ s"
SELECT name FROM city WHERE county_id IN (SELECT county_id FROM county_public_safety WHERE Crime_rate < 100@@ )
SELECT founded FROM university WHERE affiliation != 'Public' ORDER BY founded DESC LIMIT 1
SELECT first_name , department_id FROM employees WHERE last_name = 'M@@ cEw@@ en'
SELECT count(*) FROM game WHERE season > 2007
SELECT count(*) FROM Aircraft
SELECT Country FROM mountain WHERE Height > 5600 INTERSECT SELECT Country FROM mountain WHERE Height < 5@@ 200
SELECT Headquarters , COUNT(*) FROM company GROUP BY Headquarters
SELECT document_type_code FROM Documents GROUP BY document_type_code ORDER BY count(*) DESC LIMIT 1
SELECT TYPE , COUNT(*) FROM ship GROUP BY TYPE
SELECT count(*) FROM Reservations WHERE FirstName = "ROY" AND LastName = "SWEAZY";
SELECT Fname FROM FACULTY WHERE Rank = "Professor" ORDER BY Fname
SELECT Name FROM mountain ORDER BY Name ASC
SELECT document_id FROM Documents WHERE document_type_code = "CV" EXCEPT SELECT document_id FROM Documents_with_expenses
SELECT T1.@@ event_id , T1.@@ event_details FROM EVENTS AS T1 JOIN Participants_in_Events AS T2 ON T1.Event_ID = T2.Event_ID GROUP BY T1.Event_ID HAVING count(*) > 1
SELECT count(*) FROM item WHERE i_id NOT IN (SELECT i_id FROM review)
SELECT Name FROM ship WHERE Nationality = "United States" OR Nationality = "United Kingdom"
SELECT count(*) FROM Customers_cards WHERE card_type_code = "De@@ bit@@ "
SELECT T2.Height FROM climber AS T1 JOIN mountain AS T2 ON T1.Mountain_ID = T2.Mountain_ID ORDER BY T1.@@ Points DESC LIMIT 1
SELECT avg(T2.@@ Points) FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.name = "AIB"
SELECT count(*) FROM player WHERE birth_country = 'USA' AND bats = 'R@@ ';
SELECT dept_name FROM course GROUP BY dept_name ORDER BY count(*) DESC LIMIT 3
SELECT song_name , releasedate FROM song ORDER BY releasedate DESC LIMIT 1
SELECT College FROM submission WHERE Scores > 90 INTERSECT SELECT College FROM submission WHERE Scores < 80
SELECT campus FROM campuses WHERE county = "Los Angeles"
SELECT max(T2.fastestlapspeed) , T1.name , T1.year FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year > 2014 GROUP BY T1.name ORDER BY T1.year
SELECT count(*) FROM salary AS T1 JOIN team AS T2 ON T1.team_id = T2.team_id_br WHERE T2.name = 'Boston Red Stockings' AND T1.year = 2000
SELECT T1.first_name , T1.last_name FROM employees AS T1 JOIN customers AS T2 ON T1.id = T2.support_rep_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM club
SELECT name , origin , OWNER FROM program
SELECT Author , College FROM submission
SELECT T1.S@@ eason , T1.Player , T2.Name FROM match_season AS T1 JOIN team AS T2 ON T1.Team = T2.Team_id
SELECT firstname FROM list WHERE classroom = 10@@ 8
SELECT test_result , COUNT(*) FROM Student_Tests_Taken GROUP BY test_result ORDER BY COUNT(*) DESC
SELECT T2.customer_first_name , T2.customer_last_name , T1.customer_id FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) ASC LIMIT 1
SELECT t1.@@ form@@ _name FROM forms AS t1 JOIN party_forms AS t2 ON t1.@@ form_id = t2.form_id GROUP BY t2.form_id ORDER BY count(*) DESC LIMIT 1
SELECT LName FROM Student WHERE age = (SELECT min(age) FROM Student)
SELECT avg(T1.@@ RO@@ M@@ _Mi@@ B) FROM chip_model AS T1 JOIN phone AS T2 ON T1.Model_name = T2.chip_model WHERE T2.Company_name = "Nokia Corporation";
SELECT Winery FROM WINE ORDER BY S@@ COR@@ E LIMIT 1
SELECT T2.emp_fname , T1.prof_office FROM professor AS T1 JOIN employee AS T2 ON T1.emp_num = T2.emp_num JOIN department AS T3 ON T1.dept_code = T3.dept_code WHERE T3.dept_name = 'History' AND T1.prof_high_degree != 'Ph.D.'
SELECT name FROM ship ORDER BY built_year , CLASS
SELECT customer_id , customer_name FROM customers WHERE customer_address LIKE "%@@ W@@ Y@@ %" AND payment_method_code != "Cre@@ dit C@@ ard"
SELECT name FROM airports WHERE country = 'C@@ uba' OR country = 'Ar@@ gentin@@ a'
SELECT DISTINCT T1.@@ Advisor FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID = T2.Treasurer_Vote WHERE T2.Election_Cycle = "Spring"
SELECT product_name FROM products WHERE product_type_code = 'H@@ ardw@@ ar@@ e' ORDER BY product_price DESC LIMIT 1
SELECT T1.Date_@@ of_ceremony FROM music_festival AS T1 JOIN volume AS T2 ON T1.Volume = T2.Volume_ID WHERE T2.Weeks_on_Top > 2
SELECT employee_id , first_name , last_name FROM employees WHERE department_id IN ( SELECT department_id FROM employees WHERE first_name LIKE '%@@ T@@ %' )
SELECT fname FROM authors WHERE lname = "Uen@@ o"
SELECT count(*) FROM student
SELECT Team , COUNT(*) FROM elimination GROUP BY Team
SELECT Pilot_name FROM pilot ORDER BY Rank ASC
SELECT count(DISTINCT state) FROM college WHERE enr > (SELECT avg(enr) FROM college)
SELECT max(@@ t1.@@ low@@ _@@ temperature) , avg(t1.@@ precipit@@ ation) FROM weekly_weather AS t1 JOIN station AS t2 ON t1.station_id = t2.id WHERE t2.@@ network@@ _name = "A@@ m@@ ers@@ ham@@ "
SELECT T1.Name , T2.@@ De@@ cor@@ ation@@ _T@@ h@@ eme FROM member AS T1 JOIN round AS T2 ON T1.Member_ID = T2.Member_ID
SELECT DISTINCT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.milliseconds < 93000
SELECT avg(price) FROM products WHERE Manufacturer = 2
SELECT T1.project_id , T1.project_details FROM Projects AS T1 JOIN Documents AS T2 ON T1.project_id = T2.project_id GROUP BY T1.project_id HAVING count(*) > 2
SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM Customers_cards AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM county
SELECT count(DISTINCT role@@ _code) FROM Project_Staff
SELECT T2.Name , T1.Team FROM elimination AS T1 JOIN wrestler AS T2 ON T1.Wrestler_ID = T2.Wrestler_ID ORDER BY T2.Days_held DESC
SELECT count(*) FROM climber
SELECT T2.Weight FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Money_Requested DESC
SELECT Author , College FROM submission
SELECT avg(T1.Price) , T2.name FROM products AS T1 JOIN Manufacturers AS T2 ON T1.manufacturer = T2.code GROUP BY T2.name
SELECT Major FROM STUDENT WHERE Sex = "F" GROUP BY major ORDER BY count(*) DESC LIMIT 1
SELECT dept_name FROM instructor WHERE name LIKE '%S@@ oisalon@@ %'
SELECT T1.Name , T2.Tourist_Attraction_ID FROM Tourist_Attractions AS T1 JOIN VISITS AS T2 ON T1.Tourist_Attraction_ID = T2.Tourist_Attraction_ID GROUP BY T2.Tourist_Attraction_ID HAVING count(*) >= 2
SELECT count(DISTINCT student_@@ id) FROM Student_Course_Enrolment
SELECT TYPE , Nationality FROM ship
SELECT T2.Name , T1.Company FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Money_Requested
SELECT Studio , COUNT(*) FROM film GROUP BY Studio
SELECT product_name FROM products ORDER BY product_price DESC LIMIT 1
SELECT count(*) FROM list AS T1 JOIN teachers AS T2 ON T1.classroom = T2.classroom WHERE T2.firstname = "T@@ ARR@@ ING@@ " AND T2.lastname = "@@ LE@@ I@@ A"
SELECT T2.title , T2.film_id , T2.@@ description FROM film_actor AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id GROUP BY T2.film_id ORDER BY count(*) DESC LIMIT 1
SELECT document_type_code FROM documents GROUP BY document_type_code HAVING count(*) > 2
SELECT T2.Author , T1.Result FROM acceptance AS T1 JOIN submission AS T2 ON T1.Submission_ID = T2.Submission_ID
SELECT RoomId , roomName FROM Rooms ORDER BY basePrice DESC LIMIT 3;
SELECT T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid = T2.custid WHERE T2.balance < (SELECT avg(balance) FROM checking)
SELECT avg(@@ high_@@ temperature) , day@@ _of_@@ week FROM weekly_weather GROUP BY day@@ _of_@@ week
SELECT artist_name FROM artist WHERE country = "UK" INTERSECT SELECT T1.artist_name FROM artist AS T1 JOIN song AS T2 ON T1.artist_name = T2.artist_name WHERE T2.languages = "english"
SELECT AVG(T2.@@ UnitPrice) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId = T2.GenreId WHERE T1.Name = "Rock"
SELECT patient FROM stay WHERE room = 111 ORDER BY stay@@ start DESC LIMIT 1
SELECT count(DISTINCT crs_@@ code) FROM CLASS
SELECT school_code FROM department WHERE dept_name = "Accounting"
SELECT T3.name FROM assignedto AS T1 JOIN projects AS T2 ON T1.project = T2.code JOIN scientists AS T3 ON T1.scientist = T3.SSN WHERE T2.name = 'Matter of Time' INTERSECT SELECT T3.name FROM assignedto AS T1 JOIN projects AS T2 ON T1.project = T2.code JOIN scientists AS T3 ON T1.scientist = T3.SSN WHERE T2.name = 'A Puzzling Paralla@@ x'
SELECT Party FROM party WHERE Party_ID NOT IN (SELECT Party FROM election)
SELECT max(@@ stars) , min(@@ stars) FROM Rating
SELECT Name FROM climber WHERE Country != "S@@ witzerland"
SELECT T2.name FROM Flight AS T1 JOIN Aircraft AS T2 ON T1.aid = T2.aid GROUP BY T1.aid HAVING count(*) >= 2
SELECT customer_details FROM Customers EXCEPT SELECT T1.customer_details FROM Customers AS T1 JOIN Customer_Policies AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.@@ interaction_type FROM medicine_enzyme_interaction AS T1 JOIN medicine AS T2 ON T1.@@ medicine_id = T2.id JOIN enzyme AS T3 ON T1.@@ enzyme_id = T3.id WHERE T3.name = 'ALA synthase' AND T2.name = 'Aripiprazole@@ '
SELECT customer_details FROM customers ORDER BY customer_details
SELECT DISTINCT t3.policy_type_code FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id = t2.customer_id JOIN available_policies AS t3 ON t2.policy_id = t3.policy_id WHERE t1.customer_name = (SELECT t1.customer_name FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.customer_name ORDER BY count(*) DESC LIMIT 1)
SELECT id FROM instructor EXCEPT SELECT id FROM teaches
SELECT TYPE , avg(@@ Ton@@ n@@ age) FROM ship GROUP BY TYPE
SELECT T1.building_@@ address FROM Apartment_Buildings AS T1 JOIN Apartments AS T2 ON T1.building_id = T2.building_id WHERE T2.@@ bathroom_count > 2
SELECT DISTINCT name FROM races ORDER BY name DESC
SELECT title FROM albums WHERE title LIKE 'A@@ %' ORDER BY title;
SELECT T2.S@@ eason , T2.Player , T1.Country_name FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id = T2.Country
SELECT venue FROM MATCH ORDER BY date DESC
SELECT T2.emp_fname , T3.crs_description FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num = T2.emp_num JOIN course AS T3 ON T1.crs_code = T3.crs_code
SELECT min(@@ s@@ nat@@ ch@@ ) FROM body_builder
SELECT T1.@@ address_details FROM addresses AS T1 JOIN customer_addresses AS T2 ON T1.address_id = T2.address_id WHERE T2.customer_id = 10
SELECT T1.Committee FROM election AS T1 JOIN party AS T2 ON T1.Party = T2.Party_ID WHERE T2.Party = "Democratic"
SELECT T1.fname , T1.lname , count(*) , T1.FacID FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID = T2.facID GROUP BY T1.FacID
SELECT sum(hoursperweek) , sum(gamesplayed) FROM Sportsinfo AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.age < 20
SELECT label FROM albums GROUP BY label ORDER BY count(*) DESC LIMIT 1
SELECT state_province_county FROM addresses WHERE address_id NOT IN (SELECT employee_@@ address_id FROM Employe@@ es)
SELECT card_type_code , count(DISTINCT customer_id) FROM Customers_cards GROUP BY card_type_code
SELECT Residence FROM player WHERE gender = "M" INTERSECT SELECT Residence FROM player WHERE gender = "F"
SELECT count(*) FROM Documents_with_expenses
SELECT product FROM product WHERE product != (SELECT max_page_size FROM product GROUP BY max_page_size ORDER BY count(*) DESC LIMIT 1)
SELECT campus FROM campuses WHERE YEAR = 195@@ 8
SELECT * FROM employees WHERE hire_date < '200@@ 2-06-2@@ 1'
SELECT attribute_data_type FROM Attribute_Definitions WHERE attribu@@ te_name = "G@@ re@@ en"
SELECT t1.@@ phone_number FROM customers AS t1 JOIN complaints AS t2 ON t1.customer_id = t2.customer_id ORDER BY t2.date_complaint_raised DESC LIMIT 1
SELECT cName FROM college ORDER BY enr DESC LIMIT 3
SELECT Total_Points FROM gymnast ORDER BY Total_Points DESC
SELECT name FROM building WHERE building_id NOT IN (SELECT building_id FROM institution@@ )
SELECT title FROM Movie WHERE director = '@@ James Cameron@@ ' AND YEAR > 2000
SELECT t1.clubname FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t3.major = "600" GROUP BY t1.clubname ORDER BY count(*) DESC LIMIT 1
SELECT max_page_size FROM product GROUP BY max_page_size HAVING count(*) > 3
SELECT max(@@ settlement_amount) , min(@@ settlement_amount) FROM settlements
SELECT document_name , access_count FROM documents ORDER BY access_count DESC LIMIT 1
SELECT T3.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid = T2.eid JOIN Aircraft AS T3 ON T3.aid = T2.aid WHERE T1.name = "John William@@ s"
SELECT T1.@@ role_description FROM ROLES AS T1 JOIN Employees AS T2 ON T1.role_code = T2.role_code WHERE T2.employee_name = "K@@ ob@@ y@@ ";
SELECT name FROM channel ORDER BY rating_in_percent DESC
SELECT T2.Name FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID = T2.Musical_ID GROUP BY T1.Musical_ID HAVING COUNT(*) >= 3
SELECT t2.color_description FROM products AS t1 JOIN ref_colors AS t2 ON t1.color_code = t2.color_code GROUP BY t2.color_description ORDER BY count(*) DESC LIMIT 1
SELECT customer_@@ event_id , date_@@ mov@@ ed_in , property_id FROM customer_@@ events
SELECT T2.party_name , count(*) FROM party_events AS T1 JOIN party AS T2 ON T1.party_id = T2.party_id GROUP BY T1.party_id
SELECT count(*) FROM actor
SELECT T1.@@ coupon@@ _amount FROM Dis@@ count@@ _C@@ ou@@ pon@@ s AS T1 JOIN customers AS T2 ON T1.@@ coupon_id = T2.@@ coupon_id WHERE T2.@@ good@@ _@@ or@@ _b@@ ad@@ _@@ customer = '@@ good@@ ' INTERSECT SELECT T1.@@ coupon@@ _amount FROM Dis@@ count@@ _C@@ ou@@ pon@@ s AS T1 JOIN customers AS T2 ON T1.@@ coupon_id = T2.@@ coupon_id WHERE T2.@@ good@@ _@@ or@@ _b@@ ad@@ _@@ customer = '@@ b@@ ad@@ '
SELECT avg(product_price) FROM products WHERE product_type_code = 'Clo@@ thes'
SELECT T1.artist_name , T1.country FROM artist AS T1 JOIN song AS T2 ON T1.artist_name = T2.artist_name WHERE T2.song_name LIKE "%@@ lo@@ ve%"
SELECT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName = T2.cName WHERE T2.pPos = 'mid' EXCEPT SELECT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName = T2.cName WHERE T2.pPos = 'goalie'
SELECT color_description FROM ref_colors
SELECT T1.LastName FROM CUSTOMER AS T1 JOIN EMPLOYEE AS T2 ON T1.SupportRepId = T2.EmployeeId GROUP BY T1.SupportRepId HAVING COUNT(*) <= 20
SELECT count(*) FROM journalist
SELECT Nationality FROM HOST GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM HOST WHERE Host_ID NOT IN (SELECT Host_ID FROM party_@@ host@@ )
SELECT DISTINCT form@@ _type_code FROM forms
SELECT T2.Shop_Name FROM stock AS T1 JOIN shop AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T1.Shop_ID HAVING COUNT(*) > 1
SELECT DISTINCT LOCATION FROM cinema
SELECT COUNT(*) FROM (SELECT cName FROM tryout WHERE pPos = 'goalie' INTERSECT SELECT cName FROM tryout WHERE pPos = 'mid@@ ')
SELECT product_name FROM products WHERE product_category_code = "Spices"
SELECT TIME FROM elimination WHERE Eliminated_By = "Punk" OR Eliminated_By = "Orton"
SELECT name FROM buildings WHERE id NOT IN (SELECT building_id FROM Office_@@ location@@ s)
SELECT flno , origin , destination FROM Flight ORDER BY origin
SELECT t1.title FROM film AS T1 JOIN film_market_estimation AS T2 ON T1.Film_ID = T2.Film_ID ORDER BY high_@@ estimate DESC LIMIT 1
SELECT t2.@@ document_structure@@ _description FROM documents AS t1 JOIN document_@@ struct@@ ures AS t2 ON t1.document_structure_code = t2.@@ document_structure_code GROUP BY t1.document_structure_code ORDER BY count(*) DESC LIMIT 1
SELECT card_number FROM member WHERE Hometown LIKE "%@@ Kentuck@@ y%"
SELECT city_code FROM STUDENT GROUP BY city_code ORDER BY count(*) DESC LIMIT 1
SELECT outcome_code , count(*) FROM mailshot_customers GROUP BY outcome_code
SELECT Category FROM music_festival GROUP BY Category HAVING COUNT(*) > 1
SELECT T1.lname FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID = T2.facID JOIN activity AS T3 ON T2.actid = T2.actid WHERE T3.activity_name = 'Canoeing' INTERSECT SELECT T1.lname FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID = T2.facID JOIN activity AS T3 ON T2.actid = T2.actid WHERE T3.activity_name = 'Kayaking'
SELECT DISTINCT f@@ ault_@@ status FROM Fault_Log_Parts
SELECT Name FROM editor ORDER BY Age ASC
SELECT T2.lastname FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate = T2.id JOIN Songs AS T3 ON T3.SongId = T1.SongId GROUP BY lastname ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM ship
SELECT Competition_type FROM competition GROUP BY Competition_type ORDER BY COUNT(*) DESC LIMIT 1
SELECT Fname , Lname FROM Student
SELECT count(*) FROM gas_station WHERE open_year BETWEEN 2000 AND 2005
SELECT T1.department_name , T2.city , T2.@@ state_province FROM departments AS T1 JOIN locations AS T2 ON T2.location_id = T1.@@ location_id
SELECT name , nationality , id FROM architect WHERE gender = 'male' ORDER BY name
SELECT count(*) FROM company WHERE Headquarters = 'USA'
SELECT headquarter FROM manufacturers WHERE founder = '@@ Jam@@ es'
SELECT Date FROM perpetrator ORDER BY K@@ il@@ led DESC
SELECT name FROM captain ORDER BY age LIMIT 1
SELECT DISTINCT cName FROM tryout ORDER BY cName
SELECT T2.driverid , T3.forename FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T1.name = "Australian Grand Prix" INTERSECT SELECT T2.driverid , T3.forename FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T1.name = "Chinese Grand Prix"
SELECT T1.first_name , T1.last_name FROM Customers AS T1 JOIN Addresses AS T2 ON T1.customer_address_id = T2.address_id WHERE T2.city = "L@@ ockmanfur@@ t";
SELECT T2.dept_name FROM student AS T1 JOIN department AS T2 ON T1.dept_code = T2.dept_code ORDER BY stu_gpa LIMIT 1
SELECT order_id FROM orders ORDER BY date_order_placed DESC LIMIT 1
SELECT yearid FROM hall_of_fame GROUP BY yearid ORDER BY count(*) ASC LIMIT 1;
SELECT count(*) FROM inst
SELECT T2.@@ Pilot_name , COUNT(*) FROM pilot_record AS T1 JOIN pilot AS T2 ON T1.@@ pilot@@ _ID = T2.@@ pilot@@ _ID GROUP BY T2.@@ Pilot_name
SELECT transaction_type FROM Financial_transactions GROUP BY transaction_type ORDER BY sum(transaction_amount) DESC LIMIT 1
SELECT T1.M@@ arket@@ ing_Region_@@ Name FROM Market@@ ing_Reg@@ ions AS T1 JOIN Stores AS T2 ON T1.M@@ arketing_Region_Code = T2.M@@ arketing_Region_Code WHERE T2.Store_Name = "Ro@@ b D@@ inn@@ ing"
SELECT T2.firstname , T2.lastname FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate = T2.id JOIN Songs AS T3 ON T3.SongId = T1.SongId WHERE T3.Title = "Badlands"
SELECT region_name FROM region WHERE region_name != 'Denmark'
SELECT T2.name FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID = T2.rID WHERE T1.stars = 3 INTERSECT SELECT T2.name FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID = T2.rID WHERE T1.stars = 4
SELECT COUNT (DISTINCT direct@@ or) FROM movie
SELECT DISTINCT payment_method FROM customers
SELECT count(DISTINCT bik@@ e_@@ id) FROM trip
SELECT T2.Name FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID = T2.People_ID WHERE T2.Hometown != "Santo Doming@@ o"
SELECT T1.Result FROM acceptance AS T1 JOIN submission AS T2 ON T1.Submission_ID = T2.Submission_ID ORDER BY T2.Scor@@ es DESC LIMIT 1
SELECT count(*) , T1.product_name FROM product AS T1 JOIN problems AS T2 ON T1.product_id = T2.product_id GROUP BY T1.product_name ORDER BY count(*) DESC LIMIT 1
SELECT avg(age) FROM Person
SELECT catalog_entry_name FROM catalog_contents ORDER BY price_in_dollars DESC LIMIT 1
SELECT sum(T2.@@ balance) , T1.name FROM accounts AS T1 JOIN savings AS T2 ON T1.custid = T2.custid GROUP BY T1.name
SELECT TIME FROM elimination WHERE Eliminated_By = "Punk" OR Eliminated_By = "Orton"
SELECT count(*) , gender FROM Person WHERE age < 40 GROUP BY gender
SELECT count(DISTINCT job@@ ) FROM Person
SELECT max(Milliseconds) , min(Milliseconds) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId = T2.GenreId WHERE T1.Name = "Pop"
SELECT Famous_Title , Age FROM artist ORDER BY Age DESC
SELECT DISTINCT t2.customer_details FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id = t2.customer_id WHERE t1.policy_type_code = "Deputy" OR t1.policy_type_code = "Uniform@@ "
SELECT T1.name FROM physician AS T1 JOIN trained_in AS T2 ON T1.employeeid = T2.physician JOIN procedures AS T3 ON T3.code = T2.treatment ORDER BY T3.cost DESC LIMIT 1
SELECT T1.@@ institution , count(*) FROM institution AS T1 JOIN protein AS T2 ON T1.institution_id = T2.institution_id GROUP BY T1.institution_id
SELECT address_line_1 FROM Course_Authors_and_Tutors
SELECT count(*) FROM Companies WHERE Industry = "Banking" OR Industry = "Conglomerate"
SELECT state_province_county , count(*) FROM addresses GROUP BY state_province_county
SELECT T2.party_name FROM party_events AS T1 JOIN party AS T2 ON T1.party_id = T2.party_id GROUP BY T1.party_id HAVING count(*) >= 2
SELECT avg(Gross_in_dollar) FROM film
SELECT YEAR , avg(@@ attendance) FROM home_game GROUP BY YEAR@@ ;
SELECT T1.name FROM physician AS T1 JOIN affiliated_with AS T2 ON T1.EmployeeID = T2.physician JOIN department AS T3 ON T2.department = T3.DepartmentID WHERE T3.name = 'Surgery' INTERSECT SELECT T1.name FROM physician AS T1 JOIN affiliated_with AS T2 ON T1.EmployeeID = T2.physician JOIN department AS T3 ON T2.department = T3.DepartmentID WHERE T3.name = 'Psychiatry'
SELECT count(*) FROM Financial_transactions
SELECT Carrier FROM device WHERE Device_ID NOT IN (SELECT Device_ID FROM stock)
SELECT T2.employee_name , T3.@@ employee_name FROM Documents_to_be_destroyed AS T1 JOIN Employees AS T2 ON T1.@@ Destruction_Authorised_by_Employee_ID = T2.employee_id JOIN Employees AS T3 ON T1.D@@ est@@ royed_by_Employee_ID = T3.@@ employee_@@ id;
SELECT account_id , account_details FROM Accounts
SELECT count(*) FROM courses AS T1 JOIN student_course_attendance AS T2 ON T1.course_id = T2.course_id WHERE T2.student_id = 171
SELECT rank FROM captain GROUP BY rank ORDER BY count(*) DESC LIMIT 1
SELECT login_name FROM Course_Authors_and_Tutors INTERSECT SELECT login_name FROM Students
SELECT TYPE FROM ship GROUP BY TYPE ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM list AS T1 JOIN teachers AS T2 ON T1.classroom = T2.classroom WHERE T2.firstname = "K@@ AW@@ A" AND T2.lastname = "G@@ ORDON@@ "
SELECT count(DISTINCT T2.@@ id) , count(DISTINCT T3.@@ id) , T3.dept_name FROM department AS T1 JOIN student AS T2 ON T1.dept_name = T2.dept_name JOIN instructor AS T3 ON T1.dept_name = T3.dept_name GROUP BY T3.dept_name
SELECT company , main_industry FROM company WHERE company_id NOT IN (SELECT company_id FROM station_@@ compan@@ y)
SELECT cust_name FROM customer WHERE credit_score < (SELECT avg(credit_score) FROM customer@@ )
SELECT DISTINCT T2.Name FROM GRAPES AS T1 JOIN WINE AS T2 ON T1.Grape = T2.Grape WHERE T1.Color = "R@@ ed"
SELECT project_id FROM Documents GROUP BY project_id ORDER BY count(*) ASC LIMIT 1
SELECT Nominee FROM musical GROUP BY Nominee ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM Employee
SELECT T2.Fname , T2.Lname FROM COURSE AS T1 JOIN FACULTY AS T2 ON T1.Instructor = T2.FacID GROUP BY T1.Instructor ORDER BY count(*) DESC LIMIT 3
SELECT DISTINCT T3.product_name FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id GROUP BY T3.product_id HAVING COUNT (DISTINCT T1.customer_@@ id) >= 2
SELECT DISTINCT T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID JOIN Reviewer AS T3 ON T1.rID = T3.rID WHERE T3.name = 'B@@ rittany Harri@@ s' OR T2.year > 2000
SELECT service_name FROM services EXCEPT SELECT t1.@@ service_name FROM services AS t1 JOIN party_services AS t2 ON t1.service_id = t2.service_id
SELECT T2.title , avg(T1.stars) FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID GROUP BY T1.mID ORDER BY avg(T1.stars) DESC LIMIT 1
SELECT POSITION , COUNT(*) FROM match_season GROUP BY POSITION
SELECT date_@@ join@@ ed_@@ staff FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn";
SELECT t1.document_name FROM documents AS t1 JOIN document_sections AS t2 ON t1.document_code = t2.document_code GROUP BY t1.document_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM phone WHERE Company_name = "Nokia Corporation";
SELECT sum(@@ bed@@ s) FROM Rooms WHERE bedtype = 'K@@ ing@@ ';
SELECT count(*) FROM postseason AS T1 JOIN team AS T2 ON T1.team_id_loser = T2.team_id_br WHERE T2.name = 'Boston Red Stockings' AND T1.year = 200@@ 9@@ ;
SELECT DISTINCT T1.Fname , T1.LName FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID = T2.VICE_P@@ resident_VOTE WHERE T1.age = 18
SELECT Official_Name FROM city ORDER BY Population DESC
SELECT count(*) FROM routes WHERE dst_apid IN (SELECT apid FROM airports WHERE country = 'Canad@@ a') AND src_apid IN (SELECT apid FROM airports WHERE country = 'United States')
SELECT T1.name , T2.alid FROM airlines AS T1 JOIN routes AS T2 ON T1.alid = T2.alid GROUP BY T2.alid ORDER BY count(*) DESC LIMIT 10
SELECT DISTINCT home_city FROM driver
SELECT T2.Lname FROM DEPARTMENT AS T1 JOIN FACULTY AS T2 ON T1.DNO = T3.@@ DNO JOIN MEMBER_OF AS T3 ON T2.FacID = T3.F@@ acID WHERE T1.DName = "Computer Science"
SELECT name FROM PersonFriend GROUP BY name HAVING count(*) = 1
SELECT Employees.@@ employee_name FROM Employees JOIN Circulation_History ON Circulation_History.@@ employee_id = Employees.@@ employee_id WHERE Circulation_History.@@ document_id = 1;
SELECT mode@@ l_name FROM chip_model ORDER BY launch@@ _year
SELECT Shop_Name FROM shop WHERE Shop_ID NOT IN (SELECT Shop_ID FROM stock)
SELECT avg(Age) FROM STUDENT WHERE Sex = "F"
SELECT count(*) , T1.blockfloor FROM BLOCK AS T1 JOIN room AS T2 ON T1.blockfloor = T2.blockfloor AND T1.blockcode = T2.blockcode GROUP BY T1.blockfloor
SELECT avg(enr) FROM College WHERE state = 'F@@ L'
SELECT T2.name , T2.country FROM exhibition AS T1 JOIN artist AS T2 ON T1.artist_id = T2.artist_id GROUP BY T1.artist_id ORDER BY count(*) DESC LIMIT 1
SELECT id FROM station WHERE city = "San Francisco" INTERSECT SELECT station_id FROM status GROUP BY station_id HAVING avg(bikes_available) > 10
SELECT document_type_code FROM Documents GROUP BY document_type_code HAVING count(*) < 3
SELECT catalog_publisher FROM catalogs GROUP BY catalog_publisher ORDER BY count(*) DESC LIMIT 1
SELECT T2.Name , T1.@@ Date FROM election AS T1 JOIN representative AS T2 ON T1.Representative_ID = T2.Representative_ID
SELECT Publisher FROM publication GROUP BY Publisher HAVING COUNT(*) > 1
SELECT T2.roomName , count(*) , T1.Room FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room = T2.RoomId GROUP BY T1.Room
SELECT T2.investor_id , T1.Investor_details FROM INVESTORS AS T1 JOIN TRANSACTIONS AS T2 ON T1.investor_id = T2.investor_id GROUP BY T2.investor_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT District_name , City_Population FROM district WHERE City_Population BETWEEN 200000 AND 2000000
SELECT T2.Country , T1.Year FROM film_market_estimation AS T1 JOIN market AS T2 ON T1.Market_ID = T2.Market_ID
SELECT order_id , count(*) FROM Order_items GROUP BY order_id
SELECT T2.customer_name , count(*) FROM orders AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id HAVING count(*) >= 2
SELECT asset_@@ acqui@@ red@@ _date FROM Assets ORDER BY asset_@@ acqui@@ red@@ _date ASC LIMIT 1
SELECT t3.title FROM authors AS t1 JOIN authorship AS t2 ON t1.authid = t2.authid JOIN papers AS t3 ON t2.paperid = t3.paperid WHERE t1.fname = "Aar@@ on" AND t1.lname = "Turon"
SELECT sum(@@ total) FROM invoices WHERE billing_@@ city = "C@@ hicag@@ o" AND billing_state = "@@ IL@@ ";
SELECT T3.@@ stu_fname FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code = T2.class_code JOIN student AS T3 ON T2.stu_num = T3.stu_num WHERE T1.crs_code = 'ACCT-211' AND T2.enroll_grade = 'C'
SELECT Country FROM manager WHERE Age > 50 INTERSECT SELECT Country FROM manager WHERE Age < 46
SELECT count(DISTINCT T1.@@ name) , T2.@@ Headquarter FROM products AS T1 JOIN manufacturers AS T2 ON T1.Manufacturer = T2.code GROUP BY T2.@@ Headquarter
SELECT FacID FROM Faculty WHERE Sex = 'M'
SELECT T1.name FROM instructor AS T1 JOIN advisor AS T2 ON T1.id = T2.i_id GROUP BY T2.i_id HAVING count(*) > 1
SELECT t1.name FROM channel AS t1 JOIN broadcast AS t2 ON t1.channel_id = t2.channel_id WHERE t2.time_of_day = 'Morning'
SELECT Player_name FROM player ORDER BY Votes ASC
SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id = T2.cust_id GROUP BY T1.cust_name ORDER BY sum(T2.amount)
SELECT T2.name , avg(T1.age) FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.friend GROUP BY T2.name ORDER BY avg(T1.age) DESC LIMIT 1
SELECT name FROM user_profiles ORDER BY followers DESC LIMIT 1
SELECT T2.investor_id FROM INVESTORS AS T1 JOIN TRANSACTIONS AS T2 ON T1.investor_id = T2.investor_id GROUP BY T2.investor_id HAVING COUNT(*) >= 2
SELECT count(*) FROM park WHERE city = 'Atlanta';
SELECT avg(age) , min(age) , CLASS FROM captain GROUP BY CLASS
SELECT Studio , COUNT(*) FROM film GROUP BY Studio
SELECT TYPE , count(*) FROM store GROUP BY TYPE
SELECT problem_log_id , log_entr@@ y_description FROM problem_log
SELECT campus FROM campuses WHERE YEAR = 195@@ 8
SELECT T1.fname FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid = T2.stuid WHERE T2.dormid IN (SELECT T2.dormid FROM dorm AS T3 JOIN has_amenity AS T4 ON T3.dormid = T4.dormid JOIN dorm_amenity AS T5 ON T4.amenid = T5.@@ amenid GROUP BY T3.dormid ORDER BY count(*) DESC LIMIT 1)
SELECT TYPE FROM vocals GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT dept_name) FROM course
SELECT count(*) , t1.@@ network@@ _name , t1.@@ services FROM station AS t1 JOIN route AS t2 ON t1.id = t2.station_id GROUP BY t2.station_id
SELECT T1.Aircraft FROM aircraft AS T1 JOIN MATCH AS T2 ON T1.Aircraft_ID = T2.Winning_Aircraft GROUP BY T2.Winning_Aircraft ORDER BY COUNT(*) DESC LIMIT 1
SELECT title , director FROM film WHERE film_id NOT IN (SELECT film_id FROM film_market_estimation AS T1 JOIN market AS T2 ON T1.@@ market@@ _id = T2.Market_ID WHERE country = 'Chin@@ a')
SELECT name , headquarter FROM manufacturers ORDER BY revenue DESC
SELECT count(*) FROM gymnast
SELECT document_type_code , document_type_name , document_type_description FROM Ref_document_types
SELECT count(*) FROM Vehicles;
SELECT T3.title FROM albums AS T1 JOIN tracklists AS T2 ON T1.aid = T2.albumid JOIN songs AS T3 ON T2.songid = T3.songid WHERE T1.title = "A Kiss Before You Go: Live in Hamburg@@ "
SELECT T1.employee_id , T2.job_title FROM employees AS T1 JOIN jobs AS T2 ON T1.job_id = T2.job_id WHERE T1.department_id = 80
SELECT title FROM album@@ s;
SELECT t1.lname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid = t2.authid JOIN papers AS t3 ON t2.paperid = t3.paperid WHERE t3.title = "Binders Unboun@@ d"
SELECT T1.Committee FROM election AS T1 JOIN party AS T2 ON T1.Party = T2.Party_ID WHERE T2.Party = "Democratic" INTERSECT SELECT T1.Committee FROM election AS T1 JOIN party AS T2 ON T1.Party = T2.Party_ID WHERE T2.Party = "L@@ i@@ ber@@ al"
SELECT T1.City_Town FROM Addresses AS T1 JOIN Customers AS T2 ON T1.Address_ID = T2.Address_ID EXCEPT SELECT T1.City_Town FROM Addresses AS T1 JOIN Per@@ form@@ ers AS T2 ON T1.Address_ID = T2.Address_ID
SELECT count(*) FROM Project_outcomes WHERE outcome_code = 'Patent'
SELECT artist_name FROM song WHERE resolution > 500 GROUP BY languages ORDER BY count(*) DESC LIMIT 1
SELECT name , headquarter , revenue FROM manufacturers ORDER BY revenue DESC
SELECT DISTINCT T2.problem_id , T2.@@ problem_log_id FROM staff AS T1 JOIN problem_log AS T2 ON T1.staff_id = T2.assigned_to_staff_id WHERE T1.@@ staff_first_name = "Rylan" AND T1.@@ staff_last_name = "Homenick"
SELECT name FROM ship ORDER BY built_year , CLASS
SELECT DISTINCT T2.department_name FROM employees AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id
SELECT district FROM address GROUP BY district HAVING count(*) >= 2
SELECT publisher FROM book_club EXCEPT SELECT publisher FROM book_club WHERE YEAR = 1989
SELECT t1.customer_name FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.customer_name ORDER BY count(*) DESC LIMIT 1
SELECT T3.title FROM albums AS T1 JOIN tracklists AS T2 ON T1.aid = T2.albumid JOIN songs AS T3 ON T2.songid = T3.songid WHERE T1.title = "A Kiss Before You Go: Live in Hamburg@@ "
SELECT T2.name , count(*) FROM race AS T1 JOIN track AS T2 ON T1.track_id = T2.track_id GROUP BY T1.track_id
SELECT N@@ ick@@ name FROM school@@ _details WHERE Division != "D@@ i@@ vision 1"
SELECT T2.first_name , T2.last_name FROM candidates AS T1 JOIN people AS T2 ON T1.candidate_id = T2.person_id
SELECT count(*) FROM employees AS T1 JOIN customers AS T2 ON T2.support_rep_id = T1.id WHERE T1.first_name = "Stev@@ e" AND T1.last_name = "Jo@@ h@@ n@@ son@@ ";
SELECT city FROM station GROUP BY city ORDER BY max(lat) DESC
SELECT T1.Famous_Title FROM artist AS T1 JOIN volume AS T2 ON T1.Artist_ID = T2.Artist_ID WHERE T2.Weeks_on_Top > 2 INTERSECT SELECT T1.Famous_Title FROM artist AS T1 JOIN volume AS T2 ON T1.Artist_ID = T2.Artist_ID WHERE T2.Weeks_on_Top < 2
SELECT campus FROM campuses WHERE YEAR >= 1935 AND YEAR <= 193@@ 9
SELECT payment_method_code , party_@@ phone FROM parties WHERE party_email = "enrico09@example.com@@ "
SELECT employee_id , MAX(@@ end_@@ date) FROM job_history GROUP BY employee_id
SELECT T2.firstname , T2.lastname FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate = T2.id JOIN Songs AS T3 ON T3.SongId = T1.SongId WHERE T3.Title = "Der Kapitan" AND T1.StagePosition = "back"
SELECT cName , state , min(enr) FROM college GROUP BY state
SELECT count(*) FROM professor AS T1 JOIN department AS T2 ON T1.dept_code = T2.dept_code WHERE DEPT_NAME = "Accounting"
SELECT order_id , sum(@@ product_quantity) FROM Order_items GROUP BY order_id
SELECT DISTINCT T2.thing_id , T2.@@ Type_@@ of_@@ Thing_Code FROM T@@ i@@ med@@ _@@ Status@@ _of_@@ Things AS T1 JOIN Things AS T2 ON T1.thing_id = T2.thing_id WHERE T1.@@ Status@@ _of_@@ Thing_Code = 'Clo@@ se' OR T1.Date_@@ and@@ _Date < '@@ 201@@ 7@@ -06@@ -19 02@@ :5@@ 9:2@@ 1'
SELECT Name , Nationality FROM HOST ORDER BY Age DESC LIMIT 1
SELECT count(*) FROM Student
SELECT year_opened FROM track WHERE seating BETWEEN 4000 AND 5000
SELECT DISTINCT T1.type FROM mill AS T1 JOIN architect AS t2 ON T1.architect_id = T2.id WHERE T2.@@ nationality = 'A@@ meric@@ an' OR T2.@@ nationality = 'C@@ an@@ adi@@ an'
SELECT country_id , COUNT(*) FROM locations GROUP BY country_id
SELECT Country , COUNT(*) FROM climber GROUP BY Country
SELECT advisor FROM Student GROUP BY advisor ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , major FROM student GROUP BY major
SELECT act@@ ual_@@ order_id FROM act@@ ual_@@ orders WHERE order_status_code = 'Success@@ '
SELECT T3.Name , T2.Name FROM news_report AS T1 JOIN event AS T2 ON T1.Event_ID = T2.Event_ID JOIN journalist AS T3 ON T1.journalist_ID = T3.journalist_ID ORDER BY T2.@@ Event@@ _@@ Attendance ASC
SELECT T1.project_id , T1.project_details FROM Projects AS T1 JOIN Documents AS T2 ON T1.project_id = T2.project_id GROUP BY T1.project_id HAVING count(*) > 2
SELECT name FROM artist EXCEPT SELECT T2.name FROM exhibition AS T1 JOIN artist AS T2 ON T1.artist_id = T2.artist_id WHERE T1.year = 2004
SELECT account_id , customer_id , account_name FROM Accounts
SELECT sum(t1.@@ amount_@@ clai@@ med) FROM claim_headers AS t1 JOIN claims_@@ documents AS t2 ON t1.@@ claim_head@@ er_id = t2.@@ claim_id WHERE t2.@@ created_date = (SELECT created_date FROM claims_@@ documents ORDER BY created_date LIMIT 1)
SELECT DISTINCT Name FROM WINE WHERE Price > (SELECT min(@@ Price) FROM wine WHERE Winery = "John Anth@@ on@@ y")
SELECT count(DISTINCT city) FROM airports WHERE country = 'G@@ reenland@@ '
SELECT T1.Title , T2.AlbumID FROM ALBUM AS T1 JOIN TRACK AS T2 ON T1.AlbumId = T2.AlbumId WHERE T2.@@ Unit@@ Price > 1 GROUP BY T2.AlbumID
SELECT count(*) FROM book
SELECT T1.name_first , T1.name_last , T2.player_id FROM player AS T1 JOIN manag@@ er_@@ award AS T2 ON T1.player_id = T2.player_id GROUP BY T2.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT CName FROM COURSE WHERE Credits = 3 UNION SELECT CName FROM COURSE WHERE Credits = 1 AND Hours = 4
SELECT DISTINCT T1.forename FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid WHERE T2.position = 1 AND T2.wins = 1
SELECT count(*) , dept_code FROM CLASS AS T1 JOIN course AS T2 ON T1.crs_code = T2.crs_code GROUP BY dept_code
SELECT avg(campusfee) FROM csu_fees WHERE YEAR = 2005
SELECT school_name FROM school WHERE school_id NOT IN (SELECT school_id FROM endow@@ ment)
SELECT product_id FROM Order_@@ Ite@@ ms GROUP BY product_id HAVING count(*) > 3 UNION SELECT product_id FROM Product_Suppliers GROUP BY product_id HAVING sum(@@ total_amount_purchased) > 80000
SELECT DISTINCT product_@@ size FROM Products
SELECT course_description FROM COURSES WHERE course_name = "@@ database"
SELECT count(*) FROM airports AS T1 JOIN routes AS T2 ON T1.apid = T2.dst_apid WHERE T1.name = '@@ John F K@@ enn@@ ed@@ y International Airport@@ '
SELECT title FROM album@@ s;
SELECT Payment_Method_Code , Date_Payment_Made , Amount_Payment FROM Payments ORDER BY Date_Payment_Made ASC
SELECT company , main_industry FROM company WHERE company_id NOT IN (SELECT company_id FROM station_@@ compan@@ y)
SELECT city , count(*) FROM airports GROUP BY city HAVING count(*) > 1
SELECT T1.id FROM trip AS T1 JOIN weather AS T2 ON T1.@@ zip_code = T2.@@ zip_code GROUP BY T2.@@ zip_code HAVING avg(T2.@@ mean_@@ temperature_f) > 60
SELECT TYPE FROM ship WHERE Tonnage > 6000 INTERSECT SELECT TYPE FROM ship WHERE Tonnage < 4000
SELECT Name FROM Team
SELECT T1.region_name FROM region AS T1 JOIN affected_region AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id HAVING count(*) >= 2
SELECT count(DISTINCT bed@@ Typ@@ e) FROM Rooms;
SELECT count(*) FROM Documents WHERE document_status_code = "don@@ e";
SELECT Country_name , C@@ apit@@ al FROM country
SELECT location_code FROM Ref_locations WHERE location_name = "Canada"
SELECT count(*) FROM department WHERE department_id NOT IN (SELECT department_id FROM manage@@ ment@@ );
SELECT Name FROM WINE WHERE Price > (SELECT max(Price) FROM WINE WHERE YEAR = 200@@ 6@@ )
SELECT count(*) FROM Student_Tests_Taken WHERE test_result = "Fail"
SELECT DISTINCT T2.product_id FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id WHERE T1.date_order_placed >= "197@@ 5@@ -01-01" AND T1.date_order_placed <= "197@@ 6@@ -01-01"
SELECT count(*) FROM Accounts
SELECT Nominee FROM musical GROUP BY Nominee ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) , T1.name FROM medication AS T1 JOIN prescribes AS T2 ON T1.code = T2.medication GROUP BY T1.brand
SELECT avg(T1.age) FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid = T2.stuid JOIN dorm AS T3 ON T3.dormid = T2.dormid WHERE T3.@@ student_capacity = (SELECT max(@@ student_capacity) FROM dorm@@ )
SELECT T2.name FROM train_station AS T1 JOIN station AS T2 ON T1.station_id = T2.station_id GROUP BY T1.station_id ORDER BY count(*) DESC LIMIT 1
SELECT AVG(UnitPrice) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId = T2.GenreId WHERE T1.Name = "Jazz"
SELECT book_title , author@@ _@@ or_@@ editor FROM book_club WHERE YEAR > 1989
SELECT lname FROM faculty WHERE rank = 'Pro@@ fess@@ or' EXCEPT SELECT DISTINCT T1.lname FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID = T2.facID JOIN activity AS T3 ON T2.actid = T2.actid WHERE T3.activity_name = 'Canoeing' OR T3.activity_name = 'Kayaking'
SELECT DISTINCT Winery FROM WINE WHERE Price BETWEEN 50 AND 100
SELECT sum(revenue) , founder FROM manufacturers GROUP BY founder
SELECT count(*) , dept_code FROM professor WHERE prof_high_degree = 'Ph.D.' GROUP BY dept_code
SELECT clublocation FROM club WHERE clubname = "Pen and Paper Gaming"
SELECT T1.id , T1.trade_name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id = T1.id GROUP BY T1.id HAVING COUNT(*) >= 3
SELECT max(capacity) , avg(capacity) , building FROM classroom GROUP BY building
SELECT title , phone , hire_date FROM employees WHERE first_name = "Nancy" AND last_name = "Edwards";
SELECT count(*) , T1.name FROM scientists AS T1 JOIN assignedto AS T2 ON T1.ssn = T2.@@ scientist GROUP BY T1.name
SELECT count(*) FROM artist
SELECT party FROM driver WHERE home_city = 'Hartford' AND age > 40
SELECT T1.name , T1.age FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.name WHERE T2.friend = 'Dan' INTERSECT SELECT T1.name , T1.age FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.name WHERE T2.friend = 'Alice'
SELECT COUNT(DISTINCT city) FROM EMPLOYEE
SELECT T2.name FROM appointment AS T1 JOIN physician AS T2 ON T1.Physician = T2.EmployeeID
SELECT T1.organisation_id , count(*) FROM Projects AS T1 JOIN Project_outcomes AS T2 ON T1.project_id = T2.project_id GROUP BY T1.organisation_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.campusfee FROM csu_fees AS t1 JOIN campuses AS t2 ON t1.campus = t2.id WHERE t2.campus = "San Jose State University" AND t1.year = 2000
SELECT city FROM addresses WHERE zip_postcode = 255
SELECT name FROM club ORDER BY Start@@ _year ASC
SELECT count(*) FROM Customers;
SELECT DISTINCT department_id FROM employees GROUP BY department_id , manager_id HAVING COUNT(employee_id) >= 4
SELECT name FROM buildings WHERE id NOT IN (SELECT building_id FROM Office_@@ location@@ s)
SELECT Carrier FROM device ORDER BY Carrier ASC
SELECT max(@@ elevation) FROM airports WHERE country = 'Iceland@@ '
SELECT DISTINCT t3.name FROM authors AS t1 JOIN authorship AS t2 ON t1.authid = t2.authid JOIN inst AS t3 ON t2.instid = t3.instid WHERE t1.fname = "Matthi@@ as" AND t1.lname = "B@@ lume"
SELECT Denomination FROM school GROUP BY Denomination HAVING COUNT(*) > 1
SELECT school_name , LOCATION , mascot FROM school
SELECT min(@@ Order_Quantity) , avg(Order_Quantity) , max(@@ Order_Quantity) FROM INVOICES
SELECT T1.Name FROM editor AS T1 JOIN journal_committee AS T2 ON T1.Editor_ID = T2.Editor_ID GROUP BY T1.Name HAVING COUNT(*) >= 2
SELECT T1.organisation_type , T1.organisation_id FROM Organisations AS T1 JOIN Research_Staff AS T2 ON T1.organisation_id = T2.employer_organisation_id GROUP BY T1.organisation_id ORDER BY count(*) DESC LIMIT 1
SELECT Name FROM WINE WHERE score > 90
SELECT T1.pName , T1.HS FROM player AS T1 JOIN tryout AS T2 ON T1.pID = T2.pID WHERE T2.decision = 'yes'
SELECT hire_date FROM employees WHERE first_name NOT LIKE '%M%'
SELECT T1.custid , T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid = T2.custid WHERE T2.balance < (SELECT max(@@ balance) FROM checking)
SELECT sum(revenue) , founder FROM manufacturers GROUP BY founder
SELECT catalog_level_name , catalog_level_number FROM Catalog_@@ S@@ tructure WHERE catalog_level_number BETWEEN 5 AND 10
SELECT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName = T2.cName JOIN player AS T3 ON T2.pID = T3.@@ p@@ ID WHERE T3.@@ pName = 'Ch@@ ar@@ le@@ s'
SELECT T2.@@ location_name , T1.location_code FROM Document_locations AS T1 JOIN Ref_locations AS T2 ON T1.location_code = T2.@@ location_code GROUP BY T1.location_code ORDER BY count(*) ASC LIMIT 1
SELECT title FROM course WHERE course_id IN (SELECT T1.course_id FROM prereq AS T1 JOIN course AS T2 ON T1.prereq_id = T2.course_id WHERE T2.title = 'D@@ i@@ fferential Geome@@ try')
SELECT Status FROM city GROUP BY Status ORDER BY COUNT(*) DESC LIMIT 1
SELECT city FROM branch WHERE open_year = 2001 AND membership_amount > 100
SELECT city FROM city WHERE regional_population > 10000000
SELECT count(*) FROM farm
SELECT Team FROM technician GROUP BY Team ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM program EXCEPT SELECT t1.name FROM program AS t1 JOIN broadcast AS t2 ON t1.program_id = t2.program_id WHERE t2.Time_of_day = "Morning"
SELECT T1.id FROM trip AS T1 JOIN station AS T2 ON T1.@@ start_station_id = T2.id ORDER BY T2.do@@ ck_@@ count DESC LIMIT 1
SELECT T1.Name , T3.Name , T3.@@ Hours FROM Sc@@ ient@@ ists AS T1 JOIN Assigned@@ T@@ o AS T2 ON T1.SSN = T2.S@@ c@@ ient@@ ist JOIN Projects AS T3 ON T2.@@ Project = T3.Code ORDER BY T3.Name , T1.Name
SELECT t3.characteristic_name FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id = t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id = t3.characteristic_id GROUP BY t3.characteristic_name HAVING count(*) >= 2
SELECT instrument FROM instruments AS T1 JOIN Band AS T2 ON T1.bandmateid = T2.id WHERE T2.lastname = "Heilo"
SELECT Allergy FROM Has_allergy GROUP BY Allergy ORDER BY count(*) DESC LIMIT 1
SELECT sum(@@ total_pounds) FROM purchase AS T1 JOIN branch AS T2 ON T1.branch_id = T2.branch_id WHERE T2.city = 'London' AND T1.year = 2018
SELECT date_of_@@ enrolment , date_of_@@ completion FROM Student_Course_Enrolment
SELECT T2.Name , T1.Colleg@@ e_@@ Location FROM college AS T1 JOIN member AS T2 ON T1.College_ID = T2.College_ID ORDER BY T2.Name ASC
SELECT t1.@@ email_address FROM customers AS t1 JOIN complaints AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.customer_id ORDER BY count(*) LIMIT 1
SELECT DISTINCT T1.customer_details FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status = "On Road"
SELECT DISTINCT name FROM nurse ORDER BY name
SELECT id FROM teaches WHERE semester = 'Fall' AND YEAR = 2009 EXCEPT SELECT id FROM teaches WHERE semester = 'Spring' AND YEAR = 2010
SELECT T2.title , T2.film_id , T2.@@ description FROM film_actor AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id GROUP BY T2.film_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(age) , job FROM Person GROUP BY job
SELECT sum(acc_bal) FROM customer WHERE state = 'Utah' OR state = 'T@@ ex@@ as'
SELECT T2.first_name , T2.last_name FROM Customer_Payments AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) > 2;
SELECT College , COUNT(*) FROM submission GROUP BY College
SELECT count(DISTINCT city) FROM airports WHERE country = 'G@@ reenland@@ '
SELECT Total_Points FROM gymnast ORDER BY F@@ lo@@ or_@@ Ex@@ er@@ cis@@ e_@@ Points DESC
SELECT T2.company , count(*) FROM station_company AS T1 JOIN company AS T2 ON T1.company_id = T2.company_id GROUP BY T1.company_id
SELECT t3.city FROM customers AS t1 JOIN customer_addresses AS t2 ON t1.customer_id = t2.customer_id JOIN addresses AS t3 ON t2.address_id = t3.address_id GROUP BY t3.city ORDER BY count(*) DESC LIMIT 1
SELECT StuID FROM Student WHERE Sex = 'M'
SELECT T1.facility_code FROM Apartment_Facilities AS T1 JOIN Apartments AS T2 ON T1.apt_id = T2.apt_id WHERE T2.bedroom_count > 4
SELECT count(*) , T2.name FROM products AS T1 JOIN manufacturers AS T2 ON T1.Manufacturer = T2.code GROUP BY T2.name
SELECT i_id FROM advisor AS T1 JOIN student AS T2 ON T1.s_id = T2.id WHERE T2.dept_name = 'History'
SELECT title FROM film WHERE spec@@ ial_@@ feat@@ ures LIKE '%D@@ eleted Scen@@ es@@ %'
SELECT apt_number , room_count FROM Apartments
SELECT T1.date_of_enrolment , T1.date_of_completion FROM Student_Course_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.f@@ amily_name = "Zieme" AND T2.personal_name = "Bernie"
SELECT T2.name , T1.category_id , count(*) FROM film_category AS T1 JOIN category AS T2 ON T1.category_id = T2.category_id GROUP BY T1.category_id
SELECT order_id , count(DISTINCT product_id) FROM Order_items GROUP BY order_id
SELECT creation , name , budget_in_bill@@ ions FROM department
SELECT name FROM person EXCEPT SELECT T2.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.friend WHERE T1.job = 'student'
SELECT avg(enrollment) FROM university WHERE founded < 1850
SELECT T1.country , T1.state_province_county FROM Addresses AS T1 JOIN Staff AS T2 ON T1.address_id = T2.staff_address_id WHERE T2.first_name = "Janessa" AND T2.last_name = "Sawayn";
SELECT dept_name , building FROM department ORDER BY budget DESC
SELECT count(DISTINCT allergy@@ type) FROM Allergy_type
SELECT DISTINCT T2.@@ source_system_code FROM customer_@@ master_@@ index AS T1 JOIN cmi_cross_references AS T2 ON T1.master_customer_id = T2.master_customer_id WHERE T1.@@ cmi_details = 'G@@ ot@@ t@@ lie@@ b , B@@ ec@@ k@@ er and W@@ yman@@ '
SELECT count(*) FROM customers AS t1 JOIN customer_addresses AS t2 ON t1.customer_id = t2.customer_id JOIN addresses AS t3 ON t2.address_id = t3.address_id WHERE t3.city = "Lake Geovannyton@@ "
SELECT T1.S@@ chool@@ _name , T1.M@@ as@@ co@@ t , T1.@@ I@@ HS@@ A@@ A@@ _F@@ oot@@ ball_@@ Cla@@ ss FROM school AS T1 JOIN budget AS T2 ON T1.school_id = T2.school_id WHERE Budg@@ et@@ ed > 6000 OR YEAR < 200@@ 3 ORDER BY T2.total_@@ budget_@@ percent@@ _@@ invested , T2.total_@@ budget_@@ percent@@ _@@ budgeted
SELECT count(DISTINCT POSITION) FROM player
SELECT Amount_Settled , Amount_Claimed FROM Claims ORDER BY Amount_Settled ASC LIMIT 1
SELECT DISTINCT t1.fname , t1.lname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid = t2.authid JOIN inst AS t3 ON t2.instid = t3.instid WHERE t3.name = "Google"
SELECT T2.budget_type_code , T2.@@ budget_type_description , T1.document_id FROM Documents_with_expenses AS T1 JOIN Ref_budget_codes AS T2 ON T1.@@ budget_type_code = T2.budget_type_code
SELECT count(DISTINCT region@@ _id) FROM affected_region
SELECT address_content FROM addresses WHERE city = "E@@ ast Julianaside@@ " AND state_province_county = "Texas" UNION SELECT address_content FROM addresses WHERE city = "G@@ leasonmou@@ th" AND state_province_county = "A@@ rizon@@ a"
SELECT T2.emp_fname , T4.prof_office , T3.crs_description , T5.dept_name FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num = T2.emp_num JOIN course AS T3 ON T1.crs_code = T3.crs_code JOIN professor AS T4 ON T2.emp_num = T4.emp_num JOIN department AS T5 ON T4.dept_code = T5.dept_code
SELECT max(@@ used_kb) , min(@@ used_kb) , avg(@@ used_kb) FROM screen_@@ mode@@ ;
SELECT T2.name , T2.country FROM exhibition AS T1 JOIN artist AS T2 ON T1.artist_id = T2.artist_id GROUP BY T1.artist_id ORDER BY count(*) DESC LIMIT 1
SELECT T3.name , T2.name FROM membership_register_branch AS T1 JOIN branch AS T2 ON T1.branch_id = T2.branch_id JOIN member AS T3 ON T1.member_id = T3.member_id ORDER BY T1.register_year
SELECT count(*) FROM Band
SELECT avg(no_of_customers) FROM bank
SELECT avg(enrollment) FROM university WHERE founded < 1850
SELECT count(*) FROM Faculty
SELECT rank , Fname , Lname FROM Faculty
SELECT T2.Name , T3.Theme FROM journal_committee AS T1 JOIN editor AS T2 ON T1.Editor_ID = T2.Editor_ID JOIN journal AS T3 ON T1.Journal_ID = T3.Journal_ID
SELECT DISTINCT T2.Name FROM climber AS T1 JOIN mountain AS T2 ON T1.Mountain_ID = T2.Mountain_ID WHERE T1.@@ Country = "West German@@ y"
SELECT count(DISTINCT g@@ type) FROM Video_games
SELECT role_description FROM ROLES WHERE role_code = (SELECT role_code FROM users WHERE user_login = 1 GROUP BY role_code ORDER BY count(*) DESC LIMIT 1)
SELECT count(DISTINCT national@@ ity) FROM swimmer
SELECT avg(age) , min(age) FROM artist WHERE country = 'United States'
SELECT T1.line_1 , avg(T2.@@ monthly_rental) FROM Addresses AS T1 JOIN Student_Addresses AS T2 ON T1.address_id = T2.address_id GROUP BY T2.address_id
SELECT Name FROM wrestler ORDER BY Days_held DESC
SELECT count(*) FROM manufacturers WHERE headquarter = 'Tokyo' OR headquarter = 'Beijing'
SELECT first_name , middle_name , last_name FROM Staff;
SELECT flno FROM Flight WHERE origin = "Los Angeles"
SELECT song_name FROM song WHERE rating < (SELECT max(rating) FROM song WHERE genre_is = "@@ bl@@ ues")
SELECT avg(T2.@@ Age) FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID = T2.People_ID
SELECT T1.Festival_ID , T3.Festival_Name FROM nomination AS T1 JOIN artwork AS T2 ON T1.Artwork_ID = T2.Artwork_ID JOIN festival_detail AS T3 ON T1.Festival_ID = T3.Festival_ID GROUP BY T1.Festival_ID HAVING COUNT(*) >= 2
SELECT T1.activity_name FROM Activity AS T1 JOIN Participates_in AS T2 ON T1.actID = T2.actID GROUP BY T1.actID ORDER BY count(*) DESC LIMIT 1
SELECT Character , D@@ uration FROM actor
SELECT problem_log_id , log_entry_date FROM problem_log WHERE problem_id = 10
SELECT T1.address_line_1 , T2.author_id FROM Course_Authors_and_Tutors AS T1 JOIN Courses AS T2 ON T1.author_id = T2.author_id GROUP BY T2.author_id HAVING Count@@ (*) >= 2
SELECT document_status_code FROM Ref_Document_@@ Status@@ ;
SELECT T1.club_id , T1.@@ club_@@ name, count(*) FROM club AS T1 JOIN coach AS T2 ON T1.club_id = T2.@@ club_id GROUP BY T1.club_id
SELECT T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Spain" AND T1.year > 2017
SELECT avg(@@ M@@ oney_Requested) FROM entrepreneur
SELECT clublocation FROM club WHERE clubname = "Hopkins Student Enterprises"
SELECT College FROM match_season GROUP BY College ORDER BY count(*) DESC LIMIT 3
SELECT T2.product_name FROM problems AS T1 JOIN product AS T2 JOIN staff AS T3 ON T1.product_id = T2.product_id AND T1.reported_by_staff_id = T3.staff_id WHERE T3.staff_first_name = "L@@ ac@@ ey" AND T3.staff_last_name = "Bosco" INTERSECT SELECT T2.product_name FROM problems AS T1 JOIN product AS T2 JOIN staff AS T3 ON T1.product_id = T2.product_id AND T1.reported_by_staff_id = T3.staff_id WHERE T3.staff_first_name = "Kent@@ on" AND T3.staff_last_name = "Ch@@ amp@@ lin"
SELECT clublocation FROM club WHERE clubname = "Pen and Paper Gaming"
SELECT T2.StuID FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID = T2.advisor WHERE T1.rank = "Professor"
SELECT t1.@@ payment_method FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id = t2.customer_id JOIN order_items AS t3 ON t2.order_id = t3.order_id GROUP BY t1.customer_name ORDER BY sum(t3.order_quantity) LIMIT 1
SELECT product_type_code FROM products GROUP BY product_type_code HAVING avg(product_price) > (SELECT avg(product_price) FROM products)
SELECT T2.product_description FROM products_booked AS T1 JOIN products_for_hire AS T2 ON T1.product_id = T2.product_id WHERE T1.@@ booked_@@ amount = 10@@ 2.@@ 7@@ 6
SELECT T1.@@ login_name FROM Course_Authors_and_Tutors AS T1 JOIN Courses AS T2 ON T1.author_id = T2.author_id WHERE T2.course_name = "advanced database"
SELECT T1.first_name , T1.last_name FROM customer AS T1 JOIN rental AS T2 ON T1.customer_id = T2.customer_id ORDER BY T2.@@ rental_date ASC LIMIT 1
SELECT Fname , Lname FROM Student WHERE Age > 18 AND Major = 6@@ 00@@ ;
SELECT count(*) FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t3.fname = "T@@ rac@@ y" AND t3.lname = "Kim"
SELECT city FROM park GROUP BY city HAVING count(*) BETWEEN 2 AND 4;
SELECT count(*) FROM Ref_colors WHERE color_code NOT IN ( SELECT color_code FROM products )
SELECT T1.staff_name , T1.staff_gender FROM staff AS T1 JOIN Staff_Department_Assignments AS T2 ON T1.staff_id = T2.staff_id WHERE T2.job_title_code = "S@@ ales Person" EXCEPT SELECT T1.staff_name , T1.staff_gender FROM staff AS T1 JOIN Staff_Department_Assignments AS T2 ON T1.staff_id = T2.staff_id WHERE T2.job_title_code = "C@@ lerical Staff@@ "
SELECT dept_name FROM instructor GROUP BY dept_name ORDER BY avg(salary) DESC LIMIT 1
SELECT name FROM projects ORDER BY hours DESC LIMIT 1
SELECT avg(G@@ ol@@ d) FROM club_rank
SELECT payment_method_code FROM INVOICES GROUP BY payment_method_code ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT cName FROM college WHERE enr > (SELECT min(enr) FROM college WHERE state = 'FL')
SELECT count(DISTINCT rank@@ ) FROM captain
SELECT count(*) FROM campuses
SELECT address_content FROM addresses WHERE city = "E@@ ast Julianaside@@ " AND state_province_county = "Texas" UNION SELECT address_content FROM addresses WHERE city = "G@@ leasonmou@@ th" AND state_province_county = "A@@ rizon@@ a"
SELECT Name FROM pilot WHERE Age >= 25
SELECT T1.Name FROM Tourist_Attractions AS T1 JOIN VISITORS AS T2 JOIN VISITS AS T3 ON T1.Tourist_Attraction_ID = T3.Tourist_Attraction_ID AND T2.Tourist_ID = T3.Tourist_ID WHERE T2.Tourist_Details = "Vincent" INTERSECT SELECT T1.Name FROM Tourist_Attractions AS T1 JOIN VISITORS AS T2 JOIN VISITS AS T3 ON T1.Tourist_Attraction_ID = T3.Tourist_Attraction_ID AND T2.Tourist_ID = T3.Tourist_ID WHERE T2.Tourist_Details = "Mar@@ cel@@ le"
SELECT building_full_name FROM Apartment_Buildings WHERE building_full_name LIKE "%@@ court@@ %"
SELECT t1.name FROM channel AS t1 JOIN broadcast AS t2 ON t1.channel_id = t2.channel_id WHERE t2.time_of_day = 'Morning' INTERSECT SELECT t1.name FROM channel AS t1 JOIN broadcast AS t2 ON t1.channel_id = t2.channel_id WHERE t2.time_of_day = 'Night'
SELECT * FROM Albums WHERE YEAR = 2010
SELECT T4.instrument FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate = T2.id JOIN Songs AS T3 ON T3.SongId = T1.SongId JOIN Instruments AS T4 ON T4.songid = T3.songid AND T4.bandmateid = T2.id WHERE T2.lastname = "Heilo" AND T3.title = "Le Pop"
SELECT name , salary FROM instructor WHERE salary < (SELECT avg(salary) FROM instructor WHERE dept_name = 'Physic@@ s@@ ')
SELECT T1.country FROM artist AS T1 JOIN song AS T2 ON T1.artist_name = T2.artist_name WHERE T1.gender = "Female" AND T2.languages = "bangla"
SELECT avg(balance) FROM checking
SELECT count(*) FROM claims_processing_stages
SELECT T1.name_first , T1.name_last , T1.player_id , count(*) FROM player AS T1 JOIN all_@@ star AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 1;
SELECT product_id FROM problems AS T1 JOIN staff AS T2 ON T1.reported_by_staff_id = T2.staff_id WHERE T2.staff_first_name = "Christop" AND T2.staff_last_name = "B@@ erg@@ e" INTERSECT SELECT product_id FROM problems AS T1 JOIN staff AS T2 ON T1.@@ clos@@ ure_authorised_by_staff_id = T2.staff_id WHERE T2.staff_first_name = "Ashley" AND T2.staff_last_name = "Medhurst"
SELECT T1.campus FROM campuses AS T1 JOIN faculty AS T2 ON T1.id = T2.campus WHERE T2.year = 2002 AND faculty > (SELECT max(@@ faculty) FROM campuses AS T1 JOIN faculty AS T2 ON T1.id = T2.campus WHERE T2.year = 2002 AND T1.county = "Orang@@ e")
SELECT customer_status_code , count(*) FROM Customers GROUP BY customer_@@ status@@ _@@ code;
SELECT name FROM buildings ORDER BY Height DESC
SELECT count(DISTINCT name) FROM products WHERE name NOT IN (SELECT T1.name FROM products AS T1 JOIN manufacturers AS T2 ON T1.Manufacturer = T2.code WHERE T2.name = 'Son@@ y')
SELECT T1.fname , T1.age FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid = T2.stuid WHERE T2.dormid NOT IN (SELECT T3.dormid FROM has_amenity AS T3 JOIN dorm_amenity AS T4 ON T3.amenid = T4.amenid WHERE T4.amenity_name = 'TV Lounge')
SELECT T1.@@ lat , T1.@@ long , T1.city FROM station AS T1 JOIN trip AS T2 ON T1.id = T2.start_station_id ORDER BY T2.duration LIMIT 1
SELECT title FROM course ORDER BY title , credits
SELECT count(DISTINCT Status@@ ) FROM city
SELECT avg(@@ HS) FROM Player
SELECT name FROM manufacturers WHERE revenue > (SELECT avg(revenue) FROM manufactur@@ ers)
SELECT T1.staff_name , T1.staff_gender FROM staff AS T1 JOIN Staff_Department_Assignments AS T2 ON T1.staff_id = T2.staff_id WHERE T2.job_title_code = "S@@ ales Person" EXCEPT SELECT T1.staff_name , T1.staff_gender FROM staff AS T1 JOIN Staff_Department_Assignments AS T2 ON T1.staff_id = T2.staff_id WHERE T2.job_title_code = "C@@ lerical Staff@@ "
SELECT council_tax_id , cmi_cross_ref_id FROM park@@ ing_@@ fin@@ es
SELECT T2.title , max(T1.@@ price) FROM schedule AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id GROUP BY T1.film_id
SELECT pets_allowed_yn , avg(price_range) FROM HOTELS GROUP BY pets_allowed_yn
SELECT DISTINCT YEAR FROM competition WHERE Competition_type != "Tournam@@ ent"
SELECT t1.name , t1.sex FROM people AS t1 JOIN candidate AS t2 ON t1.people_id = t2.people_id ORDER BY t2.support_rate DESC LIMIT 1
SELECT Pay@@ ment@@ _ID , Date_Payment_Made , Amount_Payment FROM Payments WHERE Payment_Method_Code = 'Visa'
SELECT RESULT FROM music_festival GROUP BY RESULT ORDER BY COUNT(*) DESC LIMIT 1
SELECT Headquarters , Industry FROM company
SELECT investor_id , avg(amount_of_transaction) FROM TRANSACTIONS GROUP BY investor_id
SELECT product_category_description , unit_of_measure FROM ref_product_categories WHERE product_category_code = "Herbs"
SELECT salary , manager_id FROM employees WHERE manager_id != "null"
SELECT T3.Title FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate = T2.id JOIN Songs AS T3 ON T3.SongId = T1.SongId WHERE T2.firstname = "Marianne"
SELECT T1.Name , T3.@@ Visit_Date FROM Tourist_Attractions AS T1 JOIN VISITORS AS T2 JOIN VISITS AS T3 ON T1.Tourist_Attraction_ID = T3.Tourist_Attraction_ID AND T2.Tourist_ID = T3.Tourist_ID WHERE T2.Tourist_Details = "Vincent" OR T2.Tourist_Details = "@@ Vivi@@ an"
SELECT nurse FROM on_call WHERE block@@ floor = 1 AND blockcode = 1
SELECT T1.personal_name , T1.f@@ amily_name , T2.author_id FROM Course_Authors_and_Tutors AS T1 JOIN Courses AS T2 ON T1.author_id = T2.author_id GROUP BY T2.author_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT employee_name , role_code , date_of_birth FROM Employees WHERE employee_@@ Name = 'Armani@@ '
SELECT Fname FROM STUDENT ORDER BY Age DESC
SELECT COUNT(DISTINCT Artist_ID) FROM volume
SELECT S@@ ponsor@@ _name FROM player WHERE Residence = "Bran@@ don@@ " OR Residence = "B@@ ir@@ t@@ le"
SELECT Product_Name FROM PRODUCTS ORDER BY Product_Price DESC LIMIT 1
SELECT count(*) FROM company
SELECT languages FROM song GROUP BY languages ORDER BY count(*) DESC LIMIT 1
SELECT max(@@ customer_code) , min(@@ customer_code) FROM Customers
SELECT firstname FROM list WHERE classroom = 10@@ 8
SELECT * FROM products WHERE price BETWEEN 60 AND 120
SELECT f_id FROM files ORDER BY duration DESC LIMIT 1
SELECT country FROM competition EXCEPT SELECT country FROM competition WHERE competition_type = 'Friendly'
SELECT DISTINCT Director FROM film
SELECT t1.name FROM program AS t1 JOIN broadcast AS t2 ON t1.program_id = t2.program_id GROUP BY t2.program_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM instructor WHERE id NOT IN (SELECT id FROM teaches WHERE semester = 'Spr@@ ing')
SELECT Name FROM Products
SELECT Player FROM match_season WHERE College = "UCLA"
SELECT T1.flno FROM Flight AS T1 JOIN Aircraft AS T2 ON T1.aid = T2.aid WHERE T2.name = "Airbus A340-300"
SELECT artist_name FROM artist WHERE country = "UK" INTERSECT SELECT artist_name FROM song WHERE languages = "english"
SELECT Date_of_ceremony , RESULT FROM music_festival
SELECT count(*) FROM Person WHERE age > 30 AND job = 'engine@@ er'
SELECT cust_name FROM customer WHERE acc_type = 'saving' INTERSECT SELECT cust_name FROM customer WHERE acc_type = '@@ check@@ ing'
SELECT product_id FROM problems AS T1 JOIN staff AS T2 ON T1.reported_by_staff_id = T2.staff_id WHERE T2.staff_first_name = "D@@ ame@@ on" AND T2.staff_last_name = "F@@ ram@@ i" UNION SELECT product_id FROM problems AS T1 JOIN staff AS T2 ON T1.reported_by_staff_id = T2.staff_id WHERE T2.staff_first_name = "J@@ ol@@ ie" AND T2.staff_last_name = "W@@ eber"
SELECT T2.name FROM race AS T1 JOIN track AS T2 ON T1.track_id = T2.track_id GROUP BY T1.track_id ORDER BY count(*) DESC LIMIT 1
SELECT season , home_@@ team , away@@ _@@ team FROM game
SELECT count(*) FROM airport WHERE id NOT IN ( SELECT airport_id FROM flight WHERE pilot = 'Thompson' );
SELECT Title FROM book WHERE Writer != "E@@ la@@ in@@ e Le@@ e"
SELECT name_first , name_last FROM player AS T1 JOIN all_@@ star AS T2 ON T1.player_id = T2.player_id WHERE YEAR = 1998
SELECT Carrier FROM phone GROUP BY Carrier ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.name WHERE T2.friend IN (SELECT name FROM Person WHERE age > 40) EXCEPT SELECT T1.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.name WHERE T2.friend IN (SELECT name FROM Person WHERE age < 30)
SELECT T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid = T2.custid WHERE T2.balance > (SELECT avg(balance) FROM checking) INTERSECT SELECT T1.name FROM accounts AS T1 JOIN savings AS T2 ON T1.custid = T2.custid WHERE T2.balance < (SELECT avg(balance) FROM savings)
SELECT t1.name , t1.@@ capacity FROM stadium AS t1 JOIN event AS t2 ON t1.id = t2.stadium_id WHERE t2.@@ name = 'W@@ orld J@@ uni@@ or'
SELECT T1.@@ cmi_details FROM Customer@@ _M@@ ast@@ er_@@ In@@ dex AS T1 JOIN CMI_Cross_References AS T2 ON T1.master_customer_id = T2.master_customer_id WHERE T2.@@ source_system_code = 'T@@ a@@ x'
SELECT T3.name FROM physician AS T1 JOIN trained_in AS T2 ON T1.employeeid = T2.physician JOIN procedures AS T3 ON T3.code = T2.treatment WHERE T1.name = "John Wen"
SELECT T1.part_name , T1.part_id FROM Parts AS T1 JOIN Part@@ _F@@ ault@@ s AS T2 ON T1.part_id = T2.part_id GROUP BY T1.part_id HAVING count(*) > 2
SELECT Publication_Date FROM publication ORDER BY Price ASC LIMIT 3
SELECT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds LIMIT 1
SELECT T2.Store_Name FROM Bookings AS T1 JOIN Drama_Workshop_Groups AS T2 ON T1.Workshop_Group_ID = T2.Workshop_Group_ID WHERE T1.@@ Status_Code = "@@ stop"
SELECT T1.Famous_Title FROM artist AS T1 JOIN volume AS T2 ON T1.Artist_ID = T2.Artist_ID WHERE T2.Weeks_on_Top > 2 INTERSECT SELECT T1.Famous_Title FROM artist AS T1 JOIN volume AS T2 ON T1.Artist_ID = T2.Artist_ID WHERE T2.Weeks_on_Top < 2
SELECT building FROM Faculty WHERE rank = "Professor" GROUP BY building HAVING count(*) >= 10
SELECT Hometown FROM people WHERE Age > 23 INTERSECT SELECT Hometown FROM people WHERE Age < 20
SELECT count(*) , constructorid FROM constructor@@ St@@ andings GROUP BY constructorid
SELECT T1.staff_id , T1.staff_name FROM staff AS T1 JOIN Staff_Department_Assignments AS T2 ON T1.staff_id = T2.staff_id ORDER BY date_assigned_to - date_assigned_from LIMIT 1
SELECT T3.name FROM course AS T1 JOIN takes AS T2 ON T1.course_id = T2.course_id JOIN student AS T3 ON T2.id = T3.id WHERE T1.dept_name = 'Statistics'
SELECT Store_Name FROM Drama_Workshop_Groups
SELECT T1.Time FROM climber AS T1 JOIN mountain AS T2 ON T1.Mountain_ID = T2.Mountain_ID WHERE T2.Country = "U@@ gand@@ a"
SELECT product_category_description , unit_of_measure FROM ref_product_categories WHERE product_category_code = "Herbs"
SELECT count(DISTINCT POSITION) FROM player
SELECT Studio FROM film EXCEPT SELECT Studio FROM film WHERE Director = "W@@ alter Hill@@ "
SELECT avg(@@ active_to_date - active_from_date) FROM customer_contact_channels
SELECT DISTINCT Name FROM WINE WHERE YEAR < 2000 OR YEAR > 2010
SELECT DISTINCT headquarter FROM manufacturers
SELECT count(*) FROM BOOKINGS
SELECT count(*) FROM review
SELECT T3.activity_name FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID = T2.facID JOIN Activity AS T3 ON T3.@@ act@@ id = T2.actid WHERE T1.fname = "Mark" AND T1.lname = "Giuliano"
SELECT max(Age) FROM STUDENT
SELECT LName FROM STUDENT WHERE Sex = "F" ORDER BY Age DESC
SELECT customer_name , customer_phone , payment_method_code FROM customers ORDER BY customer_@@ number DESC
SELECT count(*) FROM pilot
SELECT t1.@@ gdp , t1.@@ Regional_Population FROM city AS T1 JOIN hosting_city AS T2 ON T1.city_id = T2.host_city GROUP BY t2.@@ Ho@@ st_@@ City HAVING count(*) > 1
SELECT sum(@@ faculty) FROM faculty WHERE YEAR = 2002
SELECT LOCATION FROM county_public_safety GROUP BY LOCATION ORDER BY COUNT(*) DESC LIMIT 1
SELECT Headquarters FROM company WHERE Industry = "Banking" INTERSECT SELECT Headquarters FROM company WHERE Industry = "O@@ il and g@@ as"
SELECT Name FROM pilot ORDER BY Age DESC
SELECT count(DISTINCT title) FROM vocals AS T1 JOIN songs AS T2 ON T1.songid = T2.songid WHERE TYPE = "@@ shar@@ ed"
SELECT name FROM scientists ORDER BY name
SELECT t1.customer_name , t2.@@ active_from_date FROM customers AS t1 JOIN customer_contact_channels AS t2 ON t1.customer_id = t2.customer_id WHERE t2.@@ channel_code = 'E@@ mail@@ '
SELECT T2.name FROM genres AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id WHERE T1.name = "Rock@@ ";
SELECT count(*) FROM routes AS T1 JOIN airports AS T2 ON T1.@@ dst_apid = T2.@@ apid WHERE T2.country = 'I@@ tal@@ y'
SELECT T2.first_name , T2.last_name FROM candidates AS T1 JOIN people AS T2 ON T1.candidate_id = T2.person_id
SELECT T2.name , T2.salary FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id = T2.id JOIN student AS T3 ON T1.s_id = T3.id WHERE T3.dept_name = 'Math'
SELECT T1.id , T1.name FROM architect AS T1 JOIN bridge AS T2 ON T1.id = T2.architect_id GROUP BY T1.id HAVING count(*) >= 3
SELECT name , openning_year , capacity FROM cinema
SELECT max(@@ gradepoint) , min(@@ gradepoint) FROM GRADECONVERSION
SELECT DISTINCT grade FROM list WHERE classroom = 10@@ 3
SELECT T3.Location , T2.Name FROM party_host AS T1 JOIN HOST AS T2 ON T1.Host_ID = T2.Host_ID JOIN party AS T3 ON T1.Party_ID = T3.Party_ID ORDER BY T2.Age
SELECT name FROM instructor WHERE name LIKE '%@@ dar@@ %'
SELECT first_name , last_name FROM actor GROUP BY first_name , last_name ORDER BY count(*) DESC LIMIT 1
SELECT flag FROM ship GROUP BY flag ORDER BY count(*) DESC LIMIT 1
SELECT sportname , count(*) FROM Sportsinfo GROUP BY sportname
SELECT lname FROM authors ORDER BY lname
SELECT avg(product_price) , product_category_code FROM products GROUP BY product_category_code
SELECT DISTINCT POSITION FROM match_season WHERE College = "UCLA" OR College = "Duke"
SELECT T2.Party , COUNT(*) FROM election AS T1 JOIN party AS T2 ON T1.Party = T2.Party_ID GROUP BY T1.Party
SELECT T2.name , avg(T1.stars) FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID = T2.rID GROUP BY T2.name
SELECT DISTINCT allergy FROM Allergy_type WHERE allergytype = "food"
SELECT Advisor FROM STUDENT GROUP BY Advisor HAVING COUNT(*) > 2
SELECT minister , party_name FROM party ORDER BY took_office DESC
SELECT T2.Name FROM nomination AS T1 JOIN artwork AS T2 ON T1.Artwork_ID = T2.Artwork_ID JOIN festival_detail AS T3 ON T1.Festival_ID = T3.Festival_ID ORDER BY T3.@@ Year
SELECT T2.name , T2.year FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T1.driverid = T3.driverid WHERE T3.forename = "L@@ ew@@ is"
SELECT T2.school_name , T1.@@ budgeted , T1.@@ invested FROM budget AS T1 JOIN school AS T2 ON T1.school_id = T2.school_id WHERE T1.year >= 2002
SELECT T2.Name FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID = T2.People_ID ORDER BY T2.Height ASC
SELECT first_name , last_name FROM employees WHERE department_id = 70 OR department_id = 90
SELECT flno FROM Flight ORDER BY distance ASC LIMIT 3
SELECT DISTINCT name FROM medication ORDER BY name
SELECT avg(room_count) FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id = T2.apt_id WHERE T1.booking_status_code = "Provisional"
SELECT T1.County_name FROM county AS T1 JOIN election AS T2 ON T1.County_id = T2.District GROUP BY T1.County_id HAVING COUNT(*) >= 2
SELECT * FROM chip_model
SELECT count(*) FROM Customers
SELECT country FROM airlines WHERE name LIKE 'Orbit@@ %'
SELECT other_account_details FROM Accounts WHERE account_name = "@@ 33@@ 8"
SELECT Name FROM TOURIST_ATTRACTIONS WHERE How_to_Get_There = "bus"
SELECT customer_name FROM customers WHERE payment_method = (SELECT payment_method FROM customers GROUP BY payment_method ORDER BY count(*) DESC LIMIT 1)
SELECT name FROM captain WHERE rank = 'Midshipman' OR rank = 'Lieutenant'
SELECT T3.born_state FROM department AS T1 JOIN management AS T2 ON T1.department_id = T2.department_id JOIN head AS T3 ON T2.head_id = T3.head_id WHERE T1.name = 'T@@ reasur@@ y' INTERSECT SELECT T3.born_state FROM department AS T1 JOIN management AS T2 ON T1.department_id = T2.department_id JOIN head AS T3 ON T2.head_id = T3.head_id WHERE T1.name = '@@ Ho@@ me@@ land Se@@ cur@@ ity@@ '
SELECT count(*) , avg(age) , city_code FROM student GROUP BY city_code
SELECT count(*) FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t3.fname = "Linda" AND t3.lname = "Smith"
SELECT characteristic_name , other_characteristic_details , characteristic_data_type FROM CHARACTERISTICS EXCEPT SELECT t1.@@ characteristic_name , t1.@@ other_characteristic_details , t1.@@ characteristic_data_type FROM CHARACTERISTICS AS t1 JOIN product_characteristics AS t2 ON t1.@@ characteristic_id = t2.characteristic_id
SELECT count(*) FROM Employee WHERE salary BETWEEN 100000 AND 200000
SELECT Major FROM STUDENT GROUP BY Major HAVING COUNT(*) < 3
SELECT name FROM airport WHERE country != 'Iceland@@ '
SELECT id FROM teaches WHERE semester = 'Fall' AND YEAR = 2009 EXCEPT SELECT id FROM teaches WHERE semester = 'Spring' AND YEAR = 2010
SELECT T2.@@ day_Number , T1.Date_@@ Stor@@ ed FROM All_documents AS T1 JOIN Ref_calendar AS T2 ON T1.date_@@ stored = T2.@@ calendar_date
SELECT catalog_entry_name FROM catalog_contents WHERE nex@@ t_@@ entr@@ y_id > 8
SELECT count(*) FROM exhibition_record AS T1 JOIN exhibition AS T2 ON T1.exhibition_id = T2.exhibition_id WHERE T1.attendance > 100 OR T2.@@ ticket_price < 10
SELECT count(*) FROM candidate
SELECT max(capacity) , avg(capacity) , building FROM classroom GROUP BY building
SELECT Party , COUNT(*) FROM people GROUP BY Party
SELECT DISTINCT classroom , grade FROM list
SELECT course_id FROM SECTION WHERE semester = 'Fall' AND YEAR = 2009 INTERSECT SELECT course_id FROM SECTION WHERE semester = 'Spring' AND YEAR = 2010
SELECT address_line_1 FROM Course_Authors_and_Tutors
SELECT count(*) , role_code FROM users GROUP BY role_code
SELECT destination FROM Flight GROUP BY destination ORDER BY count(*) LIMIT 1
SELECT avg(T2.fastestlapspeed) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2008 AND T1.name = "Monaco Grand Prix"
SELECT t3.characteristic_name FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id = t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id = t3.characteristic_id WHERE t1.product_name = "sesame"
SELECT count(DISTINCT party_@@ name) FROM party
SELECT Name FROM actor ORDER BY Name ASC
SELECT avg(@@ Years_@@ working) FROM journalist
SELECT K@@ ids FROM Reservations WHERE CheckIn = "2010@@ -0@@ 9@@ -2@@ 1" AND FirstName = "D@@ AMI@@ EN@@ " AND LastName = "T@@ RAC@@ H@@ SEL@@ ";
SELECT T1.Name FROM Tourist_Attractions AS T1 JOIN VISITORS AS T2 JOIN VISITS AS T3 ON T1.Tourist_Attraction_ID = T3.Tourist_Attraction_ID AND T2.Tourist_ID = T3.Tourist_ID WHERE T2.Tourist_Details = "A@@ li@@ son" EXCEPT SELECT T1.Name FROM Tourist_Attractions AS T1 JOIN VISITORS AS T2 JOIN VISITS AS T3 ON T1.Tourist_Attraction_ID = T3.Tourist_Attraction_ID AND T2.Tourist_ID = T3.Tourist_ID WHERE T2.Tourist_Details = "Ro@@ sal@@ ind@@ "
SELECT cust_name , acc_bal FROM customer WHERE cust_name LIKE '%a%'
SELECT S@@ natch , Cle@@ an_@@ J@@ erk FROM body_builder ORDER BY S@@ natch ASC
SELECT product_category_code , typical_buying_price FROM products WHERE product_name = "cumin"
SELECT name FROM mill WHERE LOCATION != 'D@@ onc@@ eel@@ '
SELECT count(*) FROM savings WHERE balance > (SELECT avg(balance) FROM savings)
SELECT sportname FROM Sportsinfo WHERE onscholarship = 'Y' GROUP BY sportname ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID = Class_Senator_Vote WHERE T1.S@@ e@@ x = "M" AND T2.Election_Cycle = "Fall"
SELECT DISTINCT Name FROM WINE ORDER BY price
SELECT T2.customer_name FROM mailshot_customers AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM swimmer AS t1 JOIN record AS t2 ON t1.id = t2.swimmer_id WHERE RESULT = 'Win'
SELECT avg(@@ Num_of_@@ F@@ act@@ or@@ i@@ es) FROM manufacturer WHERE num_of_@@ shops > 20
SELECT count(*) FROM course WHERE course_id NOT IN (SELECT course_id FROM prereq)
SELECT T2.first_name , T2.last_name , count(T1.reports_to) FROM employees AS T1 JOIN employees AS T2 ON T1.reports_to = T2.id GROUP BY T1.reports_to ORDER BY count(T1.reports_to) DESC LIMIT 1;
SELECT t1.customer_name , t1.@@ customer_phone FROM customers AS t1 JOIN customer_addresses AS t2 ON t1.customer_id = t2.customer_id JOIN addresses AS t3 ON t2.address_id = t3.address_id WHERE t3.state_province_county = 'California'
SELECT DISTINCT instrument FROM Instruments
SELECT T1.statement_details , T2.document_name FROM Statements AS T1 JOIN Documents AS T2 ON T1.statement_id = T2.document_id WHERE T1.statement_details = 'Private Project@@ '
SELECT dept_name FROM student GROUP BY dept_name ORDER BY count(*) DESC LIMIT 1
SELECT Festival_Name FROM festival_detail ORDER BY YEAR DESC LIMIT 3
SELECT f_id FROM song WHERE resolution > (SELECT avg(resolution) FROM song WHERE genre_is = "modern@@ ")
SELECT name FROM airports WHERE elevation BETWEEN -50 AND 50
SELECT T2.product_name FROM problems AS T1 JOIN product AS T2 JOIN staff AS T3 ON T1.product_id = T2.product_id AND T1.reported_by_staff_id = T3.staff_id WHERE T3.staff_first_name = "L@@ ac@@ ey" AND T3.staff_last_name = "Bosco" INTERSECT SELECT T2.product_name FROM problems AS T1 JOIN product AS T2 JOIN staff AS T3 ON T1.product_id = T2.product_id AND T1.reported_by_staff_id = T3.staff_id WHERE T3.staff_first_name = "Kent@@ on" AND T3.staff_last_name = "Ch@@ amp@@ lin"
SELECT T1.staff_name , count(*) FROM Staff AS T1 JOIN Engineer_Visits AS T2 ON T1.staff_id = T2.@@ contact_staff_id GROUP BY T1.staff_name
SELECT * FROM Albums WHERE YEAR = 2012
SELECT building_full_name FROM Apartment_Buildings WHERE building_full_name LIKE "%@@ court@@ %"
SELECT count(*) FROM Video_games
SELECT T1.age FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.friend WHERE T2.name = 'Zach' AND T2.year = (SELECT max(YEAR) FROM PersonFriend WHERE name = 'Zach')
SELECT T2.Name FROM Locations AS T1 JOIN Tourist_Attractions AS T2 ON T1.Location_ID = T2.Location_ID WHERE T1.Address = "@@ 254 Ottilie Junction@@ " OR T2.How_to_Get_There = "bus"
SELECT count(*) FROM region
SELECT Police_force , COUNT(*) FROM county_public_safety GROUP BY Police_force
SELECT dept_name FROM department ORDER BY budget LIMIT 1
SELECT gtype FROM Video_games WHERE gname = "Call of Destiny"
SELECT Delegate FROM election WHERE District = 1
SELECT customer_name , customer_id FROM customers WHERE customer_address LIKE "%@@ TN@@ %"
SELECT T1.id , T2.@@ installation_date FROM trip AS T1 JOIN station AS T2 ON T1.end_station_id = T2.id
SELECT document_name FROM documents GROUP BY document_type_code ORDER BY count(*) DESC LIMIT 3 INTERSECT SELECT document_name FROM documents GROUP BY document_structure_code ORDER BY count(*) DESC LIMIT 3
SELECT dept_address FROM department WHERE dept_name = 'History'
SELECT sum(hour@@ s) FROM projects
SELECT price_range FROM HOTELS
SELECT T2.name FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID = T2.rID GROUP BY T1.rID HAVING COUNT(*) >= 3
SELECT OWNER FROM channel ORDER BY rating_in_percent DESC LIMIT 1
SELECT T3.name , T2.title , T1.stars , T1.@@ ratingDate FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID JOIN Reviewer AS T3 ON T1.rID = T3.rID ORDER BY T3.name , T2.title , T1.stars
SELECT T1.@@ product_category_description FROM ref_product_categories AS T1 JOIN products AS T2 ON T1.@@ product_category_code = T2.@@ product_category_code WHERE T2.product_description LIKE '%@@ t%'
SELECT count(*) FROM Accounts
SELECT product_categor@@ y , count(*) FROM mailshot_@@ camp@@ a@@ igns GROUP BY product_categor@@ y
SELECT avg(hours) FROM projects
SELECT DISTINCT Name FROM WINE WHERE YEAR < 2000 OR YEAR > 2010
SELECT fname , lname FROM Faculty WHERE Rank = "@@ Instruct@@ or"
SELECT T2.party_name , count(*) FROM Member AS T1 JOIN party AS T2 ON T1.party_id = T2.party_id GROUP BY T1.party_id
SELECT avg(T1.HS) FROM player AS T1 JOIN tryout AS T2 ON T1.pID = T2.pID WHERE T2.decision = '@@ no@@ '
SELECT Name FROM scientists WHERE ssn NOT IN (SELECT scientist FROM AssignedTo)
SELECT T2.Name FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID = T2.People_ID
SELECT count(DISTINCT Name) FROM PHOTOS
SELECT T1.Title FROM Al@@ bum AS T1 JOIN T@@ rac@@ k AS T2 ON T1.AlbumId = T2.AlbumId JOIN G@@ enr@@ e AS T3 ON T2.G@@ enreID = T3.@@ G@@ enreID WHERE T3.Name = '@@ Reg@@ ga@@ e' INTERSECT SELECT T1.Title FROM Al@@ bum AS T1 JOIN T@@ rac@@ k AS T2 ON T1.AlbumId = T2.AlbumId JOIN G@@ enr@@ e AS T3 ON T2.G@@ enreID = T3.@@ G@@ enreID WHERE T3.Name = 'R@@ ock@@ '
SELECT T1.problem_id FROM problems AS T1 JOIN staff AS T2 ON T1.reported_by_staff_id = T2.staff_id WHERE T2.staff_last_name = "Bosco"
SELECT product_description FROM products WHERE product_name = "Chocol@@ ate"
SELECT apt_type_code , bathroom_count , bedroom_count FROM Apartments GROUP BY apt_type_code ORDER BY sum(@@ room_count) DESC LIMIT 1
SELECT * FROM employees WHERE employee_id NOT IN (SELECT employee_id FROM job_@@ histor@@ y)
SELECT publisher FROM book_club EXCEPT SELECT publisher FROM book_club WHERE YEAR = 1989
SELECT T2.@@ Invoic@@ e@@ Date FROM CUSTOMER AS T1 JOIN INVOICE AS T2 ON T1.CustomerId = T2.CustomerId WHERE T1.FirstName = "Astrid" AND LastName = "Grub@@ er"
SELECT name , home_city , age FROM driver
SELECT MAX(@@ cost) , MIN@@ (@@ cost) , AVG(@@ cost) FROM procedures
SELECT apt_type_code FROM Apartments GROUP BY apt_type_code ORDER BY count(*) DESC LIMIT 1
SELECT document_name FROM documents EXCEPT SELECT t1.document_name FROM documents AS t1 JOIN document_sections AS t2 ON t1.document_code = t2.document_code JOIN document_section@@ s_@@ images AS t3 ON t2.@@ section_id = t3.@@ section_id
SELECT G@@ name FROM Plays_games AS T1 JOIN Video_games AS T2 ON T1.gameid = T2.gameid JOIN Student AS T3 ON T3.@@ Stuid = T1.@@ Stuid WHERE T3.@@ Lname = "Smith" AND T3.Fname = "Linda"
SELECT crs_credit , crs_description FROM course WHERE crs_code = 'QM-261'
SELECT document_name , document_date FROM Documents AS T1 JOIN projects AS T2 ON T1.project_id = T2.project_id WHERE T2.project_details = 'Graph Database project@@ '
SELECT Reign FROM wrestler GROUP BY Reign ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.name FROM useracct AS T1 JOIN review AS T2 ON T1.u_id = T2.u_id GROUP BY T2.u_id ORDER BY count(*) DESC LIMIT 1
SELECT t1.customer_name FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id = t2.customer_id JOIN order_items AS t3 ON t2.order_id = t3.order_id GROUP BY t1.customer_name ORDER BY sum(t3.order_quantity) DESC LIMIT 1
SELECT service_name FROM services EXCEPT SELECT t1.@@ service_name FROM services AS t1 JOIN party_services AS t2 ON t1.service_id = t2.service_id
SELECT Software_Platform FROM device GROUP BY Software_Platform ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) , customer_id FROM Accounts GROUP BY customer_id
SELECT LOCATION FROM cinema WHERE capacity > 300 GROUP BY LOCATION HAVING count(*) > 1
SELECT t3.@@ customer_details FROM claim_headers AS t1 JOIN policies AS t2 ON t1.@@ policy_id = t2.policy_id JOIN customers AS t3 ON t2.customer_id = t3.customer_id WHERE t1.@@ amount_pi@@ ad = (SELECT min(@@ amount_piad) FROM claim_head@@ ers)
SELECT T1.pName FROM player AS T1 JOIN tryout AS T2 ON T1.pID = T2.pID WHERE T2.decision = 'yes' AND T2.pPos = 'striker'
SELECT count(*) FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t1.clubname = "Pen and Paper Gaming"
SELECT count(*) FROM performance AS T1 JOIN band AS T2 ON T1.bandmate = T2.id JOIN songs AS T3 ON T3.songid = T1.songid WHERE T3.Title = "F@@ la@@ sh"
SELECT T1.member_name FROM Member AS T1 JOIN party AS T2 ON T1.party_id = T2.party_id WHERE T2.@@ Part@@ y_name != "Pro@@ gress Party"
SELECT calendar_date , day_Number FROM Ref_calendar
SELECT job_title , max_salary - min_salary FROM jobs WHERE max_salary BETWEEN 12000 AND 18000
SELECT POSITION , Team FROM pilot
SELECT count(DISTINCT job@@ ) FROM Person
SELECT t1.sex FROM people AS t1 JOIN candidate AS t2 ON t1.people_id = t2.people_id GROUP BY t1.sex ORDER BY avg(@@ t2.@@ unsure_rate) DESC LIMIT 1
SELECT T1.Time FROM climber AS T1 JOIN mountain AS T2 ON T1.Mountain_ID = T2.Mountain_ID WHERE T2.Country = "U@@ gand@@ a"
SELECT payment_method_code , count(*) FROM INVOICES GROUP BY payment_method_code
SELECT T2.@@ directed_by FROM schedule AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id GROUP BY T2.@@ directed_by ORDER BY sum(T1.@@ sho@@ w_times_per_day) DESC LIMIT 1
SELECT count(DISTINCT StuID) FROM Plays_games
SELECT t1.product_name FROM products AS t1 JOIN ref_colors AS t2 ON t1.color_code = t2.color_code WHERE t2.color_description = "white"
SELECT product_details FROM products WHERE product_details LIKE "%@@ Latte@@ %" OR product_details LIKE "%A@@ merican@@ o@@ %"
SELECT count(*) FROM budget WHERE budgeted < invested
SELECT t3.fname , t3.lname FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t1.clubname = "Bootup Baltimore" AND t2.position = "P@@ resident@@ "
SELECT DISTINCT T2.director FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID JOIN Reviewer AS T3 ON T1.rID = T3.rID WHERE T3.name = 'S@@ arah Martinez@@ '
SELECT count(DISTINCT c@@ Name) FROM tryout
SELECT avg(@@ damage_millions_USD) , max(@@ damage_millions_USD) FROM storm WHERE max_speed > 1000
SELECT employee_id , salary FROM employees WHERE manager_id = (SELECT employee_id FROM employees WHERE first_name = 'P@@ ay@@ am@@ ' )
SELECT school , TYPE FROM school WHERE school_id NOT IN (SELECT school_id FROM school_@@ bu@@ s)
SELECT T2.J@@ an FROM city AS T1 JOIN temperature AS T2 ON T1.city_id = T2.city_id WHERE T1.city = "Shanghai"
SELECT TYPE FROM vocals AS T1 JOIN songs AS T2 ON T1.songid = T2.songid WHERE title = "Badlands"
SELECT DISTINCT T2.Type FROM nomination AS T1 JOIN artwork AS T2 ON T1.Artwork_ID = T2.Artwork_ID JOIN festival_detail AS T3 ON T1.Festival_ID = T3.Festival_ID WHERE T3.@@ Year = 2007
SELECT T2.D@@ elegate , T1.County_name FROM county AS T1 JOIN election AS T2 ON T1.County_id = T2.District
SELECT T1.lot_details FROM LOTS AS T1 JOIN TRANSAC@@ TION@@ S_@@ LOTS AS T2 ON T1.lot_id = T2.transaction_id JOIN TRANSACTIONS AS T3 ON T2.transaction_id = T3.@@ transaction_id WHERE T3.@@ share_count < 50
SELECT avg(T1.salary) FROM salary AS T1 JOIN team AS T2 ON T1.team_id = T2.team_id_br WHERE T2.name = 'Boston Red Stockings'
SELECT state_province_county FROM addresses WHERE line_@@ 1@@ _@@ number_@@ building LIKE "%@@ 6@@ 862 Kaitlyn Knolls@@ %"
SELECT Open_Date , Open_Year FROM shop WHERE Shop_Name = "App@@ le"
SELECT T1.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.name WHERE T2.friend = 'Zach' AND T1.gender = 'female'
SELECT T2.name , T3.name FROM assignedto AS T1 JOIN projects AS T2 ON T1.project = T2.code JOIN scientists AS T3 ON T1.scientist = T3.SSN WHERE T2.hours = (SELECT min(@@ hours) FROM projects)
SELECT Name FROM artwork WHERE TYPE != "Program Talent Sho@@ w"
SELECT T2.faculty FROM campuses AS T1 JOIN faculty AS T2 ON T1.id = t2.campus JOIN degrees AS T3 ON T1.id = t3.campus AND t2.year = t3.year WHERE t2.year = 2001 ORDER BY t3.degrees LIMIT 1
SELECT count(*) FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t1.clubname = "Bootup Baltimore" AND t3.age > 18
SELECT DISTINCT T1.lname FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID = T2.facID JOIN activity AS T3 ON T2.actid = T2.actid WHERE T3.activity_name = 'Canoeing' OR T3.activity_name = 'Kayaking'
SELECT O@@ b@@ ject@@ Number FROM railway WHERE Railway_ID NOT IN (SELECT Railway_ID FROM train@@ )
SELECT FirstName , LastName FROM CUSTOMER WHERE Email = "luisg@embraer.com.br@@ "
SELECT date_valid@@ _from , date_valid@@ _to FROM Customers_cards WHERE card_number = "4560596484842"
SELECT count(DISTINCT StuID) FROM Sportsinfo
SELECT count(DISTINCT dept_address) , school_code FROM department GROUP BY school_code
SELECT T1.stu_lname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num = T2.stu_num WHERE T2.enroll_grade = 'A' AND T2.class_code = 100@@ 18
SELECT T1.Product_Name , COUNT(*) FROM Products AS T1 JOIN Product@@ s_in_Events AS T2 ON T1.Product_ID = T2.Product_ID GROUP BY T1.Product_Name ORDER BY COUNT(*) DESC
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Australian Grand Prix" AND YEAR = 2009
SELECT District_name , City_Population FROM district WHERE City_Population BETWEEN 200000 AND 2000000
SELECT count(DISTINCT payment_method_@@ code) FROM parties
SELECT Policy_Type_Code FROM Customer_Policies GROUP BY Policy_Type_Code ORDER BY count(*) DESC LIMIT 1
SELECT lot_details , investor_id FROM LOTS
SELECT Name FROM phone WHERE Phon@@ e_id NOT IN (SELECT Phone_ID FROM phone_@@ market@@ )
SELECT max(YEAR) FROM perpetrat@@ or@@ ;
SELECT count(DISTINCT p@@ Po@@ s) FROM tryout
SELECT title FROM course WHERE course_id NOT IN (SELECT course_id FROM prereq)
SELECT country , count(*) FROM people GROUP BY country
SELECT T2.roomName FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room = T2.RoomId GROUP BY T1.Room HAVING count(*) > 60
SELECT * FROM departments WHERE department_name = 'Marketing'
SELECT product_name FROM products WHERE product_type_code = 'H@@ ardw@@ ar@@ e' ORDER BY product_price DESC LIMIT 1
SELECT count(*) FROM customers WHERE state = "CA";
SELECT count(*) FROM COURSE WHERE Credits > 2
SELECT channel_code , contact@@ _number FROM customer_contact_channels WHERE active_to_date - active_from_date = (SELECT active_to_date - active_from_date FROM customer_contact_channels ORDER BY (@@ active_to_date - active_from_date) DESC LIMIT 1)
SELECT t3.District_name FROM store AS t1 JOIN store_district AS t2 ON t1.store_id = t2.store_id JOIN district AS t3 ON t2.district_id = t3.district_id WHERE t1.Type = "C@@ ity M@@ all" INTERSECT SELECT t3.District_name FROM store AS t1 JOIN store_district AS t2 ON t1.store_id = t2.store_id JOIN district AS t3 ON t2.district_id = t3.district_id WHERE t1.Type = "Vil@@ lage Stor@@ e"
SELECT enrollment , primary_conference FROM university ORDER BY founded LIMIT 1
SELECT rank , count(*) FROM Faculty GROUP BY rank
SELECT Location_Name FROM LOCATIONS WHERE Location_Name LIKE "%@@ film@@ %"
SELECT count(*) FROM people WHERE people_id NOT IN (SELECT People_ID FROM body_@@ build@@ er)
SELECT poll_source FROM candidate ORDER BY oppose_rate DESC LIMIT 1
SELECT DISTINCT T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID JOIN Reviewer AS T3 ON T1.rID = T3.rID WHERE T3.name = 'B@@ rittany Harri@@ s' OR T2.year > 2000
SELECT investor_id , COUNT(*) FROM TRANSACTIONS GROUP BY investor_id
SELECT date , max_temperature_f - min_temperature_f FROM weather ORDER BY max_temperature_f - min_temperature_f LIMIT 1
SELECT DISTINCT POSITION FROM match_season
SELECT count(*) FROM party
SELECT sum(@@ stu_@@ h@@ r@@ s) , dept_code FROM student GROUP BY dept_code
SELECT amenity_name FROM dorm_amenity ORDER BY amenity_name
SELECT t1.name FROM people AS t1 JOIN candidate AS t2 ON t1.people_id = t2.people_id WHERE t1.sex = 'F' ORDER BY t1.name
SELECT role_code FROM Employees GROUP BY role_code ORDER BY count(*) ASC LIMIT 1
SELECT Address FROM LOCATIONS WHERE Location_Name = "UK Gallery"
SELECT count(*) FROM DEPARTMENT WHERE Division = "AS"
SELECT cName FROM college WHERE enr > (SELECT max(@@ enr) FROM college WHERE state = 'FL')
SELECT t1.name FROM ship AS t1 JOIN captain AS t2 ON t1.ship_id = t2.ship_id WHERE t2.rank = 'Midshipman' INTERSECT SELECT t1.name FROM ship AS t1 JOIN captain AS t2 ON t1.ship_id = t2.ship_id WHERE t2.rank = 'Lieutenant'
SELECT Other_@@ Details FROM LOCATIONS WHERE Location_Name = "UK Gallery"
SELECT first_name , last_name FROM Customers;
SELECT bname FROM bank ORDER BY no_of_@@ customers DESC LIMIT 1
SELECT fname , lname FROM student WHERE age < (SELECT avg(age) FROM student)
SELECT avg(T1.Price) , T2.name FROM products AS T1 JOIN Manufacturers AS T2 ON T1.manufacturer = T2.code GROUP BY T2.name HAVING avg(T1.price) >= 150
SELECT DISTINCT rank FROM Faculty
SELECT T2.name FROM Office_locations AS T1 JOIN buildings AS T2 ON T1.building_id = T2.id JOIN Companies AS T3 ON T1.company_id = T3.id GROUP BY T1.building_id HAVING COUNT(*) > 1
SELECT T1.Aircraft FROM aircraft AS T1 JOIN airport_aircraft AS T2 ON T1.Aircraft_ID = T2.Aircraft_ID JOIN airport AS T3 ON T2.Airport_ID = T3.Airport_ID WHERE T3.Airport_Name = "London Heathrow" INTERSECT SELECT T1.Aircraft FROM aircraft AS T1 JOIN airport_aircraft AS T2 ON T1.Aircraft_ID = T2.Aircraft_ID JOIN airport AS T3 ON T2.Airport_ID = T3.Airport_ID WHERE T3.Airport_Name = "London Gatwick"
SELECT T1.id , T1.name FROM enzyme AS T1 JOIN medicine_enzyme_interaction AS T2 ON T1.id = T2.enzyme_id WHERE T2.interaction_type = 'activitor' GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Student
SELECT * FROM employees WHERE hire_date > '@@ 198@@ 7@@ -0@@ 9-07@@ '
SELECT count(*) FROM results AS T1 JOIN races AS T2 ON T1.raceid = T2.raceid WHERE T2.name = "Australian Grand Prix" AND YEAR = 2009
SELECT DISTINCT T1.first_name , T1.last_name FROM staff AS T1 JOIN rental AS T2 ON T1.staff_id = T2.staff_id JOIN customer AS T3 ON T2.customer_id = T3.@@ customer_id WHERE T3.@@ first_name = 'A@@ P@@ R@@ I@@ L' AND T3.@@ last_name = 'B@@ UR@@ N@@ S'
SELECT count(*) FROM Person WHERE gender = 'female'
SELECT T1.student_id , T2.@@ login_name FROM Student_Course_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name , COUNT(*) FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID = T2.Musical_ID GROUP BY T1.Musical_ID
SELECT name FROM physician EXCEPT SELECT T2.name FROM appointment AS T1 JOIN physician AS T2 ON T1.Physician = T2.EmployeeID
SELECT Delegate , Committee FROM election
SELECT DISTINCT T1.fname , T1.city_code FROM Student AS T1 JOIN Has_@@ Allergy AS T2 ON T1.stuid = T2.stuid WHERE T2.Allergy = "Milk" OR T2.Allergy = "Cat"
SELECT DISTINCT t1.product_name FROM products AS t1 JOIN complaints AS t2 ON t1.product_id = t2.product_id JOIN customers AS t3 GROUP BY t3.customer_id ORDER BY count(*) LIMIT 1
SELECT Destroyed_by_Employee_ID , count(*) FROM Documents_to_be_destroyed GROUP BY Destroyed_by_Employee_ID
SELECT Ro@@ le@@ s.@@ role_description , count(@@ Employees.@@ employee_id) FROM ROLES JOIN Employees ON Employees.@@ role_code = Ro@@ le@@ s.@@ role_code GROUP BY Employees.@@ role_code HAVING count(@@ Employees.@@ employee_id) > 1;
SELECT DISTINCT T1.Fname , T1.LName FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID = T2.P@@ resident_VOTE WHERE T1.sex = "F"
SELECT avg(price_@@ in_@@ e@@ uros) , min(@@ price_@@ in_@@ e@@ uros) FROM catalog_contents
SELECT T1.crs_code FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code = T2.class_code JOIN student AS T3 ON T3.stu_num = T2.stu_num WHERE T3.stu_lname = 'Smithson'
SELECT theme , YEAR FROM exhibition ORDER BY ticket_price DESC
SELECT count(DISTINCT student_@@ id) FROM Student_Course_Enrolment
SELECT StuID FROM Student WHERE city_code = "CHI"
SELECT Name FROM county_public_safety ORDER BY Population DESC LIMIT 1
SELECT Name FROM roller_coaster ORDER BY LENGTH ASC
SELECT T1.name FROM instructor AS T1 JOIN advisor AS T2 ON T1.id = T2.i_id GROUP BY T2.i_id HAVING count(*) > 1
SELECT Name FROM People ORDER BY Age DESC LIMIT 5
SELECT count(*) FROM Employees
SELECT Famous_Title FROM artist WHERE Artist = "Triumf@@ all"
SELECT sum(gamesplayed) FROM Sportsinfo WHERE sportname = "Football" AND onscholarship = 'Y'
SELECT minister , took_office , left_office FROM party ORDER BY left_office
SELECT count(DISTINCT dorm@@ id) FROM has_amenity
SELECT date , zip_code FROM weather WHERE min_dew_point_@@ f < (SELECT min(@@ min_dew_point_@@ f) FROM weather WHERE zip_code = 94107@@ )
SELECT DISTINCT T1.name FROM station AS T1 JOIN status AS T2 ON T1.id = T2.station_id WHERE T2.bikes_available = 7
SELECT How_to_Get_There , COUNT(*) FROM Tourist_Attractions GROUP BY How_to_Get_There
SELECT first_name , last_name , hire_date FROM employees WHERE department_id = (SELECT department_id FROM employees WHERE first_name = "Clara")
SELECT Nationality FROM journalist ORDER BY Years_working DESC LIMIT 1
SELECT city FROM addresses WHERE zip_postcode = 255
SELECT T1.County_name FROM county AS T1 JOIN election AS T2 ON T1.County_id = T2.District WHERE T2.@@ Committee = "Appropriations"
SELECT T1.Title , T2.Type FROM film AS T1 JOIN film_market_estimation AS T2 ON T1.Film_ID = T2.Film_ID
SELECT count(*) FROM film WHERE title LIKE "%D@@ ummy%"
SELECT T3.Player_name , T3.gender FROM player_coach AS T1 JOIN coach AS T2 ON T1.Coach_ID = T2.Coach_ID JOIN player AS T3 ON T1.Player_ID = T3.Player_ID WHERE T1.@@ Starting_@@ year > 2011
SELECT T1.@@ W@@ i@@ F@@ i , T3.@@ Type FROM chip_model AS T1 JOIN phone AS T2 ON T1.Model_name = T2.chip_model JOIN screen_mode AS T3 ON T2.screen_mode = T3.@@ Graphics_mode WHERE T2.Hardware_Model_name = "LG-P760@@ ";
SELECT count(*) FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id = t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id = t3.characteristic_id WHERE t1.product_name = "laurel"
SELECT College FROM submission GROUP BY College ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.lastname FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate = T2.id JOIN Songs AS T3 ON T3.SongId = T1.SongId GROUP BY lastname ORDER BY count(*) DESC LIMIT 1
SELECT country FROM addresses GROUP BY country HAVING count(@@ address_id) > 4
SELECT T1.Time FROM elimination AS T1 JOIN wrestler AS T2 ON T1.Wrestler_ID = T2.Wrestler_ID WHERE T2.Days_held > 50
SELECT document_type_code FROM Ref_Document_@@ Typ@@ es@@ ;
SELECT Product_Name , avg(Product_Price) FROM PRODUCTS GROUP BY Product_Name
SELECT document_type_code FROM documents GROUP BY document_type_code HAVING sum(access_count) > 10000
SELECT avg(age) , gender FROM Person GROUP BY gender
SELECT count(DISTINCT driver@@ I@@ d) FROM results WHERE raceId NOT IN( SELECT raceId FROM races WHERE YEAR != 2009 )
SELECT T2.balance , T3.balance , T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid = T2.custid JOIN savings AS T3 ON T1.custid = T3.custid
SELECT T1.customer_name , T1.customer_phone FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T3.order_id = T2.order_id GROUP BY T1.customer_id ORDER BY sum(@@ T3.@@ order_quantity) DESC LIMIT 1
SELECT count(*) , T1.project_details FROM Projects AS T1 JOIN Tasks AS T2 ON T1.project_id = T2.project_id GROUP BY T1.project_id
SELECT LName FROM STUDENT WHERE Major = 50
SELECT customer_name , customer_phone FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM customer_@@ address_@@ histor@@ y)
SELECT T3.Name FROM debate_people AS T1 JOIN debate AS T2 ON T1.Debate_ID = T2.Debate_ID JOIN people AS T3 ON T1.Affirmative = T3.People_ID WHERE T2.@@ Num_of_Audience > 200
SELECT T1.name , avg(T2.rating) FROM useracct AS T1 JOIN review AS T2 ON T1.u_id = T2.u_id GROUP BY T2.u_id
SELECT Famous_Title , Age FROM artist ORDER BY Age DESC
SELECT Name FROM ARTIST WHERE Name LIKE "%a%"
SELECT t2.customer_details FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id = t2.customer_id GROUP BY t2.customer_details ORDER BY count(*) DESC LIMIT 1
SELECT sum(@@ Amount_Pay@@ ment) FROM Payments
SELECT t1.@@ first_name FROM staff AS t1 JOIN complaints AS t2 ON t1.staff_id = t2.staff_id GROUP BY t2.staff_id ORDER BY count(*) LIMIT 5
SELECT acc_percent FROM basketball_match ORDER BY acc_percent DESC LIMIT 1
SELECT document_name , document_date FROM Documents AS T1 JOIN projects AS T2 ON T1.project_id = T2.project_id WHERE T2.project_details = 'Graph Database project@@ '
SELECT DISTINCT T1.name , T1.age FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.name WHERE T2.friend = 'Dan' OR T2.friend = 'Alice'
SELECT T1.name FROM physician AS T1 JOIN affiliated_with AS T2 ON T1.EmployeeID = T2.physician JOIN department AS T3 ON T2.department = T3.DepartmentID WHERE T3.name = 'Surgery' OR T3.name = 'Psychiatry'
SELECT * FROM employees WHERE hire_date > '@@ 198@@ 7@@ -0@@ 9-07@@ '
SELECT * FROM Course_Authors_and_Tutors ORDER BY personal_name
SELECT title FROM Movie WHERE director = "James Camer@@ on" OR YEAR < 1980
SELECT T2.song_name FROM files AS T1 JOIN song AS T2 ON T1.f_id = T2.f_id WHERE T1.duration LIKE "4@@ :%" UNION SELECT song_name FROM song WHERE languages = "english"
SELECT DISTINCT T1.LName FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID = PRESIDENT_Vote INTERSECT SELECT DISTINCT LName FROM STUDENT WHERE Advisor = "@@ 874@@ 1"
SELECT count(*) FROM rent@@ _@@ arrears
SELECT * FROM basketball_match
SELECT depart@@ ure_date , arriv@@ al_@@ date FROM Flight WHERE origin = "Los Angeles" AND destination = "Honolulu"
SELECT count(DISTINCT u@@ _id) FROM review
SELECT T2.Name FROM party_host AS T1 JOIN HOST AS T2 ON T1.Host_ID = T2.Host_ID JOIN party AS T3 ON T1.Party_ID = T3.Party_ID WHERE T3.@@ Number_of_hosts > 20
SELECT count(*) FROM county
SELECT T1.amenity_name FROM dorm_amenity AS T1 JOIN has_amenity AS T2 ON T2.amenid = T1.amenid JOIN dorm AS T3 ON T2.dormid = T3.dormid WHERE T3.dorm_name = '@@ Anonymous Donor Hall' ORDER BY T1.amenity_name
SELECT count(*) FROM vocals AS T1 JOIN songs AS T2 ON T1.songid = T2.songid WHERE title = "Demon Kitty Rag@@ "
SELECT color_description FROM ref_colors
SELECT T2.invoice_number , T2.invoice_date FROM Financial_transactions AS T1 JOIN Invoices AS T2 ON T1.invoice_number = T2.invoice_number GROUP BY T1.invoice_number ORDER BY count(*) DESC LIMIT 1
SELECT t3.fname , t3.lname FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t1.clubname = "Hopkins Student Enterprises" AND t3.sex = "M"
SELECT card_type_code FROM Customers_cards GROUP BY card_type_code ORDER BY count(*) DESC LIMIT 1
SELECT Shop_Name FROM shop ORDER BY Open_Year ASC
SELECT semester , YEAR FROM SECTION GROUP BY semester , YEAR ORDER BY count(*) DESC LIMIT 1
SELECT T1.campus FROM campuses AS t1 JOIN faculty AS t2 ON t1.id = t2.campus WHERE t2.@@ faculty >= 600 AND t2.@@ faculty <= 1000 AND T1.year = 2004
SELECT product FROM product WHERE product LIKE "%@@ S@@ cann@@ er@@ %"
SELECT count(*) FROM institution AS T1 JOIN protein AS T2 ON T1.institution_id = T2.institution_id WHERE T1.@@ founded > 1880 OR T1.type = 'Priv@@ at@@ e'
SELECT grade , count(DISTINCT classroom@@ ) , count(*) FROM list GROUP BY grade
SELECT fname , lname , address FROM employee ORDER BY B@@ date
SELECT T2.Railway_ID , T1.@@ Builder FROM railway AS T1 JOIN train AS T2 ON T1.Railway_ID = T2.Railway_ID GROUP BY T2.Railway_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT catalog_publisher FROM catalogs GROUP BY catalog_publisher ORDER BY count(*) DESC LIMIT 1
SELECT * FROM election
SELECT Room FROM FACULTY WHERE Rank = "Professor" AND Building = "NEB"
SELECT LOCATION FROM school ORDER BY Enrollment ASC
SELECT Name FROM county_public_safety WHERE County_ID NOT IN (SELECT County_ID FROM city)
SELECT name , built_year FROM mill WHERE TYPE = '@@ Gr@@ ond@@ zeiler'
SELECT count(*) FROM papers
SELECT * FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40
SELECT T1.city FROM city AS T1 JOIN hosting_city AS T2 ON T1.city_id = T2.host_city GROUP BY T2.host_city ORDER BY count(*) DESC LIMIT 1
SELECT t1.clubname FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t3.major = "600" GROUP BY t1.clubname ORDER BY count(*) DESC LIMIT 1
SELECT fname , lname FROM student WHERE city_code != 'H@@ KG@@ ' ORDER BY age
SELECT name , salary FROM Employee WHERE eid = 24251896@@ 5
SELECT customer_name FROM customers WHERE payment_method = "Cash"
SELECT T1.id FROM trip AS T1 JOIN station AS T2 ON T1.@@ start_station_id = T2.id ORDER BY T2.do@@ ck_@@ count DESC LIMIT 1
SELECT T2.lastname FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate = T2.id WHERE st@@ age@@ position = "back" GROUP BY lastname ORDER BY count(*) DESC LIMIT 1
SELECT manager_name FROM gas_station WHERE open_year > 2000 GROUP BY manager_name ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM region
SELECT DISTINCT title FROM Movie EXCEPT SELECT T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID JOIN Reviewer AS T3 ON T1.rID = T3.rID WHERE T3.name = 'Ch@@ ri@@ s J@@ ack@@ son'
SELECT first_name , last_name , salary , department_id , MAX@@ (salary) FROM employees GROUP BY department_id
SELECT sum(@@ crs_credit) , dept_code FROM course GROUP BY dept_code
SELECT DISTINCT T2.Name FROM climber AS T1 JOIN mountain AS T2 ON T1.Mountain_ID = T2.Mountain_ID WHERE T1.@@ Country = "West German@@ y"
SELECT POSITION FROM pilot WHERE Join_@@ Year@@ 	 < 2000 INTERSECT SELECT POSITION FROM pilot WHERE Join_@@ Year@@ 	 > 2005
SELECT count(DISTINCT dept_address) FROM department WHERE school_code = 'B@@ US@@ '
SELECT count(*) FROM artist WHERE age > 46 AND year_join > 1990
SELECT min(@@ membership_amount) , max(@@ membership_amount) FROM branch WHERE open_year = 2011 OR city = 'London'
SELECT age , count(*) FROM Student GROUP BY age
SELECT max(T1.@@ duration) , max(T2.resolution) , T2.languages FROM files AS T1 JOIN song AS T2 ON T1.f_id = T2.f_id GROUP BY T2.languages ORDER BY T2.languages
SELECT count(*) , T1.name FROM genres AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id GROUP BY T1.@@ name@@ ;
SELECT count(*) FROM Student WHERE sex = "M" AND StuID IN (SELECT StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy = T2.Allergy WHERE T2.allergytype = "food@@ ")
SELECT T1.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid = T2.eid JOIN Aircraft AS T3 ON T3.aid = T2.aid WHERE T3.name = "Boeing 737-800"
SELECT roomName FROM Rooms WHERE basePrice < 160 AND beds = 2 AND decor = 'modern';
SELECT Fname FROM STUDENT WHERE StuID NOT IN (SELECT StuID FROM ENROLLED@@ _@@ IN@@ )
SELECT gname FROM Plays_games AS T1 JOIN Video_games AS T2 ON T1.gameid = T2.gameid GROUP BY T1.gameid HAVING sum(hours_played) >= 1000
SELECT T2.name FROM genres AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id JOIN media_types AS T3 ON T3.id = T2.media_type_id WHERE T1.name = "Rock" OR T3.name = "MPEG audio file";
SELECT DISTINCT T2.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom = T2.classroom WHERE grade = 5
SELECT Party FROM representative GROUP BY Party HAVING COUNT(*) >= 3
SELECT TYPE , count(*) , sum(enrollment) FROM institution GROUP BY TYPE
SELECT T2.@@ Carrier FROM stock AS T1 JOIN device AS T2 ON T1.Device_ID = T2.@@ Device_ID GROUP BY T1.Device_ID HAVING COUNT(*) > 1
SELECT T1.Aircraft , COUNT(*) FROM aircraft AS T1 JOIN MATCH AS T2 ON T1.Aircraft_ID = T2.Winning_Aircraft GROUP BY T2.Winning_Aircraft
SELECT state FROM customers GROUP BY state ORDER BY count(*) LIMIT 1
SELECT T1.@@ Attraction_@@ Type_Description , T2.Attraction_Type_Code FROM Ref_@@ Attraction_@@ Types AS T1 JOIN Tourist_Attractions AS T2 ON T1.@@ Attraction_Type_Code = T2.Attraction_Type_Code GROUP BY T2.Attraction_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.M@@ arket_@@ Details FROM St@@ re@@ et_@@ Market@@ s AS T1 JOIN TOURIST_ATTRACTIONS AS T2 ON T1.Market_ID = T2.Tourist_Attraction_ID WHERE T2.How_to_Get_There = "walk" OR T2.How_to_Get_There = "bus"
SELECT name FROM instructor WHERE dept_name = 'Comp. Sci.' AND salary > 80000
SELECT T3.@@ Party_Theme , T2.Name FROM party_host AS T1 JOIN HOST AS T2 ON T1.Host_ID = T2.Host_ID JOIN party AS T3 ON T1.Party_ID = T3.Party_ID
SELECT count(DISTINCT acc@@ _type) FROM customer
SELECT FacID FROM Faculty WHERE Sex = 'M'
SELECT avg(bikes_available) FROM status WHERE station_id NOT IN (SELECT id FROM station WHERE city = "Palo Al@@ to")
SELECT incident@@ _type_description FROM Ref_@@ Inc@@ ident@@ _Type WHERE incident_type_code = "@@ VI@@ O@@ LEN@@ CE@@ "
SELECT dorm_name FROM dorm WHERE gender = 'F'
SELECT date FROM weather WHERE mean_@@ sea_level_pressure_inch@@ es BETWEEN 30.3 AND 31
SELECT T3.@@ venue FROM city AS T1 JOIN hosting_city AS T2 ON T1.city_id = T2.host_city JOIN MATCH AS T3 ON T2.@@ match_id = T3.@@ match_id WHERE T1.city = "Nanjing ( Jiangsu )" AND T3.@@ competition = "1994 FIFA World Cup qualification"
SELECT student_id FROM student_course_attendance
SELECT count(*) FROM useracct WHERE u_id NOT IN (SELECT u_id FROM review)
SELECT Num_of_Audience FROM festival_detail WHERE YEAR = 2008 OR YEAR = 2010
SELECT T3.@@ course_name , count(*) FROM students AS T1 JOIN student_course_registrations AS T2 ON T1.student_id = T2.student_id JOIN courses AS T3 ON T2.course_id = T3.course_id GROUP BY T2.course_id
SELECT T1.p@@ urchase_@@ details FROM P@@ UR@@ CHA@@ SES AS T1 JOIN TRANSACTIONS AS T2 ON T1.p@@ urchase_@@ transaction_id = T2.transaction_id WHERE T2.@@ amount_of_transaction > 10000
SELECT zip_code , count(*) FROM weather WHERE max_@@ wind_@@ Sp@@ e@@ ed_mp@@ h >= 25 GROUP BY zip_code
SELECT T2.first_name , T2.last_name FROM employees AS T1 JOIN employees AS T2 ON T1.id = T2.@@ reports_@@ to WHERE T1.first_name = "Nancy" AND T1.last_name = "Edwards";
SELECT T2.school_name FROM budget AS T1 JOIN school AS T2 ON T1.school_id = T2.school_id JOIN endowment AS T3 ON T2.school_id = T3.@@ school_id GROUP BY T2.school_name HAVING sum(T1.@@ budget@@ ed) > 100 OR sum(@@ T3.@@ amount) > 10
SELECT T1.name FROM physician AS T1 JOIN affiliated_with AS T2 ON T1.EmployeeID = T2.physician JOIN department AS T3 ON T2.department = T3.DepartmentID WHERE T3.name = 'Surgery' INTERSECT SELECT T1.name FROM physician AS T1 JOIN affiliated_with AS T2 ON T1.EmployeeID = T2.physician JOIN department AS T3 ON T2.department = T3.DepartmentID WHERE T3.name = 'Psychiatry'
SELECT CName FROM COURSE WHERE Credits = 3 UNION SELECT CName FROM COURSE WHERE Credits = 1 AND Hours = 4
SELECT name FROM Aircraft WHERE distance > (SELECT avg(distance) FROM Aircraft@@ )
SELECT formats FROM files GROUP BY formats ORDER BY COUNT (*) DESC LIMIT 1
SELECT Investor FROM entrepreneur GROUP BY Investor ORDER BY COUNT(*) DESC LIMIT 1
SELECT LOCATION FROM school ORDER BY Founded DESC
SELECT Date , Venue FROM debate
SELECT T3.name FROM affected_region AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id JOIN storm AS T3 ON T1.storm_id = T3.storm_id WHERE T2.region_name = 'Denmark'
SELECT sum(@@ maxOccup@@ anc@@ y) FROM Rooms WHERE decor = 'modern';
SELECT name FROM PersonFriend WHERE friend = 'Alice' AND YEAR = (SELECT min(YEAR) FROM PersonFriend WHERE friend = 'Alice')
SELECT T1.@@ Offici@@ al_@@ nat@@ iv@@ e_@@ language FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id = T2.Country WHERE T2.College = "Mar@@ yland" OR T2.College = "Duke"
SELECT sum(t2.order_quantity) FROM customer_orders AS t1 JOIN order_items AS t2 ON t1.order_id = t2.order_id WHERE t1.@@ order_status = "Cancelled"
SELECT t1.name FROM bridge AS t1 JOIN architect AS t2 ON t1.@@ architect_id = t2.id WHERE t2.@@ nationality = 'A@@ meric@@ an' ORDER BY t1.@@ length@@ _feet
SELECT count(*) FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id = t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id = t3.characteristic_id JOIN ref_colors AS t4 ON t1.color_code = t4.color_code WHERE t4.color_description = "red" AND t3.characteristic_name = "slow@@ "
SELECT mID , avg(stars) FROM Rating WHERE mID NOT IN (SELECT T1.mID FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID = T2.rID WHERE T2.name = "Brittany Harri@@ s@@ ") GROUP BY mID
SELECT T1.emp_fname FROM employee AS T1 JOIN CLASS AS T2 ON T1.emp_num = T2.prof_num WHERE crs_code = 'CIS-220' INTERSECT SELECT T1.emp_fname FROM employee AS T1 JOIN CLASS AS T2 ON T1.emp_num = T2.prof_num WHERE crs_code = 'QM-261'
SELECT T2.organisation_id , T2.organisation_details FROM Grants AS T1 JOIN Organisations AS T2 ON T1.organisation_id = T2.organisation_id GROUP BY T2.organisation_id HAVING sum(T1.@@ grant_amount) > 6000
SELECT LOCATION FROM festival_detail ORDER BY Num_of_Audience DESC LIMIT 1
SELECT DISTINCT name FROM races ORDER BY name DESC
SELECT name FROM Employee WHERE salary > (SELECT avg(salary) FROM Employe@@ e)
SELECT DISTINCT District_name FROM district ORDER BY city_area DESC
SELECT T2.customer_first_name , T2.customer_last_name , T2.customer_phone FROM Customers_cards AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id WHERE T1.@@ card_number = "4560596484842"
SELECT T1.@@ product_category_description FROM ref_product_categories AS T1 JOIN products AS T2 ON T1.@@ product_category_code = T2.@@ product_category_code WHERE T2.product_description LIKE '%@@ t%'
SELECT Participant_ID , Participant@@ _@@ Type_Code , Participant@@ _Details FROM Participant@@ s
SELECT T2.Song FROM artist AS T1 JOIN volume AS T2 ON T1.Artist_ID = T2.Artist_ID WHERE T1.age >= 32
SELECT count(*) FROM Apartments WHERE apt_id NOT IN (SELECT apt_id FROM Apartment_Facil@@ iti@@ es)
SELECT CName FROM COURSE ORDER BY Credits
SELECT T1.member_name , T2.party_name FROM Member AS T1 JOIN party AS T2 ON T1.party_id = T2.party_id
SELECT Restaurant.ResName , sum(@@ Visits_Restaurant.@@ Sp@@ ent) FROM Visits_Restaurant JOIN Restaurant ON Visits_Restaurant.ResID = Restaurant.ResID GROUP BY Restaurant.ResID ORDER BY sum(@@ Visits_Restaurant.@@ Sp@@ ent) ASC LIMIT 1;
SELECT Status FROM city WHERE Population > 1500 INTERSECT SELECT Status FROM city WHERE Population < 500
SELECT T1.customer_name FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id WHERE shipping_@@ metho@@ d_code = 'F@@ ed@@ Ex@@ ' AND order_status_code = 'Pa@@ id'
SELECT count(DISTINCT FDA_@@ approv@@ ed) FROM medicine
SELECT T1.firstname , T1.lastname FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room = T2.RoomId WHERE T1.Rate - T2.@@ basePrice > 0
SELECT t3.fname , t3.lname FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t1.clubname = "Bootup Baltimore" AND t3.sex = "F"
SELECT T1.date_of_enrolment , T1.date_of_completion FROM Student_Course_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.f@@ amily_name = "Zieme" AND T2.personal_name = "Bernie"
SELECT T1.Country_name FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id = T2.Country WHERE T2.Position = "F@@ or@@ ward" INTERSECT SELECT T1.Country_name FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id = T2.Country WHERE T2.Position = "Defender"
SELECT COUNT(*) FROM Students WHERE personal_name LIKE "%@@ son@@ %"
SELECT count(DISTINCT T3.@@ title) FROM albums AS T1 JOIN tracklists AS T2 ON T1.aid = T2.albumid JOIN songs AS T3 ON T2.songid = T3.songid WHERE t1.@@ type = "Studio"
SELECT T3.@@ ssn , T3.name FROM assignedto AS T1 JOIN projects AS T2 ON T1.project = T2.code JOIN scientists AS T3 ON T1.scientist = T3.SSN WHERE T2.hours = (SELECT max(hours) FROM projects)
SELECT DISTINCT title FROM vocals AS t1 JOIN songs AS t2 ON t1.songid = t2.songid EXCEPT SELECT t2.title FROM vocals AS t1 JOIN songs AS t2 ON t1.songid = t2.songid WHERE TYPE = "back"
SELECT count(*) , T1.school_code FROM department AS T1 JOIN professor AS T2 ON T1.dept_code = T2.dept_code GROUP BY T1.school_code
SELECT billing_state , COUNT(*) FROM invoices WHERE billing_country = "USA" GROUP BY billing_@@ state@@ ;
SELECT count(*) FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t1.clubname = "Bootup Baltimore" AND t3.age < 18
SELECT building FROM Faculty GROUP BY building ORDER BY count(*) DESC LIMIT 1
SELECT T1.Total_Points FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID = T2.People_ID ORDER BY T2.Age ASC LIMIT 1
SELECT max(T2.@@ Price) FROM APPELLATIONS AS T1 JOIN WINE AS T2 ON T1.Appelation = T2.Appelation WHERE T1.Area = "Central Coast" AND T2.year < 2005
SELECT count(*) FROM Player WHERE HS > 1000
SELECT T1.customer_id , T1.first_name , count(*) FROM Customers AS T1 JOIN bookings AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT count(*) FROM Addresses WHERE state_province_county = "G@@ e@@ orgi@@ a";
SELECT name FROM stadium ORDER BY capacity DESC LIMIT 1
SELECT Nationality , COUNT(*) FROM HOST GROUP BY Nationality
SELECT LastName FROM CUSTOMER EXCEPT SELECT T1.LastName FROM CUSTOMER AS T1 JOIN Invoic@@ e AS T2 ON T1.CustomerId = T2.CustomerId WHERE T2.@@ total > 20
SELECT Country , COUNT(*) FROM member GROUP BY Country
SELECT job_id , hire_date FROM employees WHERE hire_date BETWEEN '200@@ 7@@ -11@@ -05' AND '200@@ 9-07@@ -05'
SELECT T1.name , T1.@@ long , avg(T2.@@ duration) FROM station AS T1 JOIN trip AS T2 ON T1.id = T2.start_station_id GROUP BY T2.start_station_id
SELECT store_id FROM customer GROUP BY store_id ORDER BY count(*) DESC LIMIT 1
SELECT roomName , bedType FROM Rooms WHERE decor = "@@ tradition@@ al@@ ";
SELECT count(*) FROM Lessons WHERE lesson_status_code = "Cancelle@@ d";
SELECT problem_log_id , log_entr@@ y_description FROM problem_log
SELECT document_id FROM Documents WHERE document_status_code = "done" AND document_type_code = "Pap@@ er";
SELECT T1.name FROM church AS T1 JOIN wedding AS T2 ON T1.@@ church_id = T2.@@ church_id GROUP BY T1.@@ church_id HAVING count(*) >= 2
SELECT title , YEAR , director FROM movie ORDER BY budget_@@ mill@@ ion
SELECT T2.Name FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID = T2.People_ID WHERE T2.Hometown != "Santo Doming@@ o"
SELECT dorm_name , gender FROM dorm WHERE student_capacity > 300 OR student_capacity < 100
SELECT open_date FROM church GROUP BY open_date HAVING count(*) >= 2
SELECT sum(t1.@@ gradu@@ ate) FROM discipline_enrollments AS t1 JOIN campuses AS t2 ON t1.campus = t2.id WHERE t1.year = 2004 AND t2.campus = "San Francisco State University"
SELECT name , damage_millions_@@ US@@ D FROM storm ORDER BY max_speed DESC
SELECT AVG(Price) , Manufacturer FROM Products GROUP BY Manufacturer
SELECT T1.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.name WHERE T2.friend = 'Zach' AND T1.gender = 'female'
SELECT RESULT , COUNT(*) FROM music_festival GROUP BY RESULT ORDER BY COUNT(*) DESC
SELECT t1.name FROM train AS t1 JOIN route AS t2 ON t1.id = t2.train_id GROUP BY t2.train_id ORDER BY count(*) DESC LIMIT 1
SELECT instrument FROM instruments GROUP BY instrument ORDER BY count(*) DESC LIMIT 1
SELECT rID FROM Reviewer WHERE name = "D@@ aniel Lew@@ is"
SELECT count(*) FROM professor AS T1 JOIN department AS T2 ON T1.dept_code = T2.dept_code WHERE DEPT_NAME = "Accounting"
SELECT staff_id FROM Staff_Department_Assignments WHERE date_assigned_to < (SELECT max(@@ date_assigned_@@ to) FROM Staff_Department_Assignments WHERE job_@@ title_code = 'C@@ lerical Staff@@ ')
SELECT Pay@@ ment@@ _ID , Date_Payment_Made , Amount_Payment FROM Payments WHERE Payment_Method_Code = 'Visa'
SELECT count(*) FROM (SELECT city FROM airports GROUP BY city HAVING count(*) > 3)
SELECT aid , name FROM Aircraft ORDER BY distance DESC LIMIT 1
SELECT DISTINCT T1.supplier_name , T1.supplier_phone FROM suppliers AS T1 JOIN product_suppliers AS T2 ON T1.supplier_id = T2.supplier_id JOIN products AS T3 ON T2.product_id = T3.product_id WHERE T3.product_name = "@@ red je@@ ans@@ "
SELECT sum(@@ total) FROM invoices WHERE billing_@@ city = "C@@ hicag@@ o" AND billing_state = "@@ IL@@ ";
SELECT T3.Name , T2.Date FROM news_report AS T1 JOIN event AS T2 ON T1.Event_ID = T2.Event_ID JOIN journalist AS T3 ON T1.journalist_ID = T3.journalist_ID
SELECT T1.Name , T2.Name FROM climber AS T1 JOIN mountain AS T2 ON T1.Mountain_ID = T2.Mountain_ID
SELECT country FROM stadium GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT train_number , name FROM train ORDER BY TIME
SELECT song_name FROM song WHERE genre_is = "modern@@ " OR languages = "english"
SELECT sum(@@ faculty) FROM faculty WHERE YEAR = 2002
SELECT count(*) FROM stadium
SELECT phone_number FROM employees WHERE salary BETWEEN 8000 AND 12000
SELECT name FROM instructor WHERE dept_name = 'Statistics' ORDER BY salary LIMIT 1
SELECT T2.name FROM genres AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id JOIN media_types AS T3 ON T3.id = T2.media_type_id WHERE T1.name = "Rock" AND T3.name = "MPEG audio file";
SELECT T1.title , T3.@@ book_title FROM movie AS T1 JOIN culture_company AS T2 ON T1.movie_id = T2.movie_id JOIN book_club AS T3 ON T3.@@ book_club_id = T2.book_club_id WHERE T2.@@ incorpor@@ ated_@@ in = 'China'
SELECT count(*) FROM entrepreneur
SELECT DISTINCT T1.artist_name , T1.country FROM artist AS T1 JOIN song AS T2 ON T1.artist_name = T2.artist_name WHERE T2.rating > 9
SELECT count(*) FROM event
SELECT student_capacity , gender FROM dorm WHERE dorm_name LIKE '%@@ Donor@@ %'
SELECT milliseconds FROM tracks WHERE name = "Fast As a Shark";
SELECT T1.Name , T1.Description FROM PHOTOS AS T1 JOIN TOURIST_ATTRACTIONS AS T2 ON T1.Tourist_Attraction_ID = T2.Tourist_Attraction_ID WHERE T2.Name = "film festival@@ "
SELECT Name FROM wrestler ORDER BY Days_held ASC LIMIT 1
SELECT T1.@@ organisation_type_description FROM organisation_Types AS T1 JOIN Organisations AS T2 ON T1.organisation_type = T2.organisation_type WHERE T2.organisation_details = '@@ qu@@ o'
SELECT count(DISTINCT dst_@@ ap@@ id) FROM airlines AS T1 JOIN routes AS T2 ON T1.alid = T2.alid WHERE T1.name = 'American Airlines'
SELECT T2.@@ email_address FROM Addresses AS T1 JOIN Teachers AS T2 ON T1.address_id = T2.address_id WHERE T1.zip_postcode = "9@@ 18@@ "
SELECT t2.@@ firstname FROM Performance AS t1 JOIN Band AS t2 ON t1.@@ band@@ mate = t2.id JOIN Songs AS T3 ON T3.SongId = T1.SongId GROUP BY firstname ORDER BY count(*) DESC LIMIT 1
SELECT Author FROM submission ORDER BY Scores DESC LIMIT 1
SELECT T1.driverid , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.@@ year > 2010 GROUP BY T1.driverid ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM professor WHERE prof_high_degree = 'Ph.D.'
SELECT building , room_number FROM classroom WHERE capacity BETWEEN 50 AND 100
SELECT sum(@@ Domestic_Passeng@@ ers) FROM airport WHERE Airport_Name LIKE "%@@ London@@ %"
SELECT COUNT(DISTINCT city) FROM EMPLOYEE
SELECT t3.headquartered_city , count(*) FROM store AS t1 JOIN store_district AS t2 ON t1.store_id = t2.store_id JOIN district AS t3 ON t2.district_id = t3.district_id GROUP BY t3.headquartered_city
SELECT city_code FROM Student WHERE Fname = "Linda" AND Lname = "Smith@@ ";
SELECT title , directed_by FROM film WHERE film_id NOT IN (SELECT film_id FROM schedu@@ le@@ )
SELECT T1.employee_id , T4.country_name FROM employees AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id JOIN locations AS T3 ON T2.location_id = T3.location_id JOIN countries AS T4 ON T3.country_id = T4.country_id
SELECT count(DISTINCT state) FROM college WHERE enr > (SELECT avg(enr) FROM college)
SELECT count(*) FROM products WHERE product_price > (SELECT avg(product_price) FROM products)
SELECT T2.name FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID = T2.rID GROUP BY T1.rID HAVING COUNT(*) >= 3
SELECT title , Studio FROM film WHERE Studio LIKE "%@@ Univers@@ al%"
SELECT DISTINCT t1.clubname FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t3.city_code = "HOU@@ "
SELECT personal_name FROM Course_Authors_and_Tutors INTERSECT SELECT personal_name FROM Students
SELECT avg(credit_score) FROM customer WHERE cust_id NOT IN (SELECT cust_id FROM loan)
SELECT count(*) FROM AS@@ SE@@ S@@ S@@ MENT@@ _@@ NO@@ TE@@ S
SELECT count(*) FROM Customers
SELECT DISTINCT start_station_name FROM trip WHERE duration < 100
SELECT t3.@@ address_content FROM customers AS t1 JOIN customer_addresses AS t2 ON t1.customer_id = t2.customer_id JOIN addresses AS t3 ON t2.address_id = t3.address_id WHERE t1.customer_name = "Maudie Kertzman@@ n"
SELECT T3.Name , T2.M@@ achin@@ e_@@ series FROM repair_assignment AS T1 JOIN machine AS T2 ON T1.machine_id = T2.machine_id JOIN technician AS T3 ON T1.technician_ID = T3.technician_ID
SELECT DISTINCT T1.state , T1.@@ enr FROM college AS T1 JOIN tryout AS T2 ON T1.cName = T2.cName WHERE T2.decision = 'yes'
SELECT name FROM captain ORDER BY age LIMIT 1
SELECT T2.customer_first_name , T2.customer_last_name , T2.customer_phone FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id WHERE T1.account_name = "@@ 16@@ 2"
SELECT Nationality , Age FROM journalist
SELECT T2.@@ Birth_Date , T2.@@ Birth_Place FROM body_builder AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Total DESC LIMIT 1
SELECT department_name , COUNT(*) FROM employees AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id GROUP BY department_name
SELECT T3.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid = T2.custid JOIN savings AS T3 ON T1.custid = T3.custid ORDER BY T2.balance DESC LIMIT 1
SELECT T1.amenity_name FROM dorm_amenity AS T1 JOIN has_amenity AS T2 ON T2.amenid = T1.amenid JOIN dorm AS T3 ON T2.dormid = T3.dormid WHERE T3.dorm_name = '@@ Anonymous Donor Hall' ORDER BY T1.amenity_name
SELECT T2.Hometown , COUNT(*) FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID = T2.People_ID GROUP BY T2.Hometown
SELECT T2.D@@ name , T2.@@ Room FROM COURSE AS T1 JOIN DEPARTMENT AS T2 ON T1.DNO = T2.DNO WHERE T1.CName = "@@ INTRODUCTION TO COMPUTER SCIENCE@@ "
SELECT Character FROM actor ORDER BY age DESC
SELECT T1.Title , T2.AlbumID FROM ALBUM AS T1 JOIN TRACK AS T2 ON T1.AlbumId = T2.AlbumId WHERE T2.@@ Unit@@ Price > 1 GROUP BY T2.AlbumID
SELECT T2.Name , T2.age , T3.Theme FROM journal_committee AS T1 JOIN editor AS T2 ON T1.Editor_ID = T2.Editor_ID JOIN journal AS T3 ON T1.Journal_ID = T3.Journal_ID ORDER BY T3.Theme ASC
SELECT DISTINCT Carrier FROM phone WHERE Memory_in_G > 32
SELECT count(*) FROM All_documents WHERE document_type_code = "CV" OR document_type_code = "BK"
SELECT t2.product_details , t2.product_id FROM order_items AS t1 JOIN products AS t2 ON t1.product_id = t2.product_id GROUP BY t1.product_id ORDER BY sum(t1.@@ order_quantity) LIMIT 1
SELECT sum(no_of_customers) FROM bank
SELECT name , date FROM races ORDER BY date DESC LIMIT 1
SELECT DISTINCT P@@ resident_Vote , VICE_P@@ resident_Vote FROM VOTING_RECORD
SELECT t3.characteristic_name FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id = t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id = t3.characteristic_id WHERE t1.product_name = "sesame"
SELECT T1.@@ login_name FROM Course_Authors_and_Tutors AS T1 JOIN Courses AS T2 ON T1.author_id = T2.author_id WHERE T2.course_name = "advanced database"
SELECT product_type_code FROM products GROUP BY product_type_code HAVING avg(product_price) > (SELECT avg(product_price) FROM products)
SELECT T2.firstname , T2.lastname FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate = T2.id JOIN Songs AS T3 ON T3.SongId = T1.SongId WHERE T3.Title = "Der Kapitan" AND T1.StagePosition = "back"
SELECT count(DISTINCT class_@@ code) FROM CLASS
SELECT T1.Name FROM Tourist_Attractions AS T1 JOIN Tourist_Attraction@@ _F@@ eatures AS T2 ON T1.@@ tourist_attraction_id = T2.@@ tourist_attraction_id JOIN F@@ eatures AS T3 ON T2.F@@ eature_ID = T3.F@@ eature_ID WHERE T3.@@ feat@@ ure_Details = '@@ park@@ ' UNION SELECT T1.Name FROM Tourist_Attractions AS T1 JOIN Tourist_Attraction@@ _F@@ eatures AS T2 ON T1.@@ tourist_attraction_id = T2.@@ tourist_attraction_id JOIN F@@ eatures AS T3 ON T2.F@@ eature_ID = T3.F@@ eature_ID WHERE T3.@@ feat@@ ure_Details = '@@ sho@@ pp@@ ing'
SELECT T2.fname , T2.lname FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID = T2.advisor WHERE T1.fname = "M@@ icha@@ el@@ " AND T1.lname = "G@@ oodric@@ h"
SELECT T1.staff_name , T2.job_title_code FROM staff AS T1 JOIN staff_department_assignments AS T2 ON T1.staff_id = T2.staff_id ORDER BY T2.@@ date_assigned_to DESC LIMIT 1
SELECT Author FROM submission ORDER BY Scores DESC LIMIT 1
SELECT campus FROM campuses WHERE county = "Los Angeles" AND YEAR > 19@@ 50
SELECT T3.dept_name , T2.prof_office FROM employee AS T1 JOIN professor AS T2 ON T1.emp_num = T2.emp_num JOIN department AS T3 ON T2.dept_code = T3.dept_code WHERE T1.emp_lname = 'He@@ ff@@ ing@@ ton@@ '
SELECT count(*) FROM CHARACTERISTICS
SELECT Reign , Days_held FROM wrestler
SELECT class_code FROM CLASS WHERE class_room = 'K@@ L@@ R@@ 20@@ 9@@ '
SELECT T3.@@ Pilot_name , T2.@@ Mode@@ l FROM pilot_record AS T1 JOIN aircraft AS T2 ON T1.Aircraft_ID = T2.Aircraft_ID JOIN pilot AS T3 ON T1.Pilot_ID = T3.Pilot_ID
SELECT vehicle_details FROM Vehicles WHERE vehicle_id = 1;
SELECT category , count(*) FROM book_club GROUP BY category
SELECT T1.Allergy , T1.@@ Allergy@@ Type FROM Allergy_type AS T1 JOIN Has_allergy AS T2 ON T1.Allergy = T2.Allergy JOIN Student AS T3 ON T3.StuID = T2.StuID WHERE T3.Fname = "L@@ is@@ a" ORDER BY T1.Allergy
SELECT investor_id , avg(@@ share_@@ count) FROM TRANSACTIONS GROUP BY investor_id
SELECT DISTINCT firstname , lastname FROM teachers
SELECT name , CLASS FROM ship WHERE ship_id NOT IN (SELECT ship_id FROM captain@@ )
SELECT T1.Store_Phone , T1.Store_Email_Address FROM Drama_Workshop_Groups AS T1 JOIN Services AS T2 ON T1.Workshop_Group_ID = T2.Workshop_Group_ID WHERE T2.Product_Name = "film@@ "
SELECT avg(@@ bed@@ room_count) FROM Apartments
SELECT name , distance FROM Aircraft
SELECT t3.title FROM authors AS t1 JOIN authorship AS t2 ON t1.authid = t2.authid JOIN papers AS t3 ON t2.paperid = t3.paperid WHERE t1.fname = "Aar@@ on" AND t1.lname = "Turon"
SELECT employee_name FROM Employees EXCEPT SELECT Employees.@@ employee_name FROM Employees JOIN Circulation_History ON Circulation_History.@@ employee_id = Employees.@@ employee_id
SELECT count(@@ T2.f@@ riend@@ ) FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.name WHERE T1.name = 'Dan'
SELECT T1.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.name WHERE T2.friend IN (SELECT name FROM Person WHERE age > 40) INTERSECT SELECT T1.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.name WHERE T2.friend IN (SELECT name FROM Person WHERE age < 30)
SELECT T1.@@ document_date FROM Documents AS T1 JOIN Documents_with_@@ Ex@@ pen@@ ses AS T2 ON T1.document_id = T2.document_id WHERE T2.budget_type_code = 'G@@ V' INTERSECT SELECT T1.@@ document_date FROM Documents AS T1 JOIN Documents_with_@@ Ex@@ pen@@ ses AS T2 ON T1.document_id = T2.document_id WHERE T2.budget_type_code = 'SF'
SELECT t1.rou@@ te_name FROM Delivery_Rout@@ es AS t1 JOIN Delivery_Rout@@ e_@@ Locations AS t2 ON t1.rou@@ te_id = t2.@@ rou@@ te_id GROUP BY t1.rou@@ te_id ORDER BY count(*) DESC LIMIT 1
SELECT campus FROM campuses WHERE county = "Los Angeles"
SELECT count(*) FROM election
SELECT T1.city , count(*) FROM Addresses AS T1 JOIN Staff AS T2 ON T1.address_id = T2.staff_address_id GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT avg(age) , gender FROM Person GROUP BY gender
SELECT count(*) FROM head WHERE age > 5@@ 6
SELECT T2.Name FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Weight DESC LIMIT 1
SELECT first_name , last_name FROM actor GROUP BY first_name , last_name ORDER BY count(*) DESC LIMIT 1
SELECT district_name FROM district ORDER BY city_area ASC LIMIT 1
SELECT name FROM projects WHERE hours > (SELECT avg(hours) FROM projects)
SELECT T2.Fname , T2.Lname FROM COURSE AS T1 JOIN FACULTY AS T2 ON T1.Instructor = T2.FacID WHERE T1.CName = "@@ COMPUTER LITERAC@@ Y"
SELECT DISTINCT salary FROM instructor WHERE salary < (SELECT max(salary) FROM instruct@@ or)
SELECT name FROM enzyme ORDER BY name DESC
SELECT count(*) FROM flight WHERE velocity > 200
SELECT avg(credit_score) FROM customer WHERE cust_id IN (SELECT cust_id FROM loan)
SELECT yearid , count(*) FROM hall_of_fame GROUP BY yearid;
SELECT t1.customer_name FROM customers AS t1 JOIN first_notification_of_loss AS t2 ON t1.customer_id = t2.customer_id JOIN services AS t3 ON t2.service_id = t3.service_id WHERE t3.service_name = "Close a policy" INTERSECT SELECT t1.customer_name FROM customers AS t1 JOIN first_notification_of_loss AS t2 ON t1.customer_id = t2.customer_id JOIN services AS t3 ON t2.service_id = t3.service_id WHERE t3.service_name = "New policy app@@ lic@@ ation"
SELECT count(*) FROM bank
SELECT name , email FROM user_profiles WHERE name LIKE '%S@@ wif@@ t%'
SELECT first_name , last_name , hire_date , salary , department_id FROM employees WHERE first_name NOT LIKE '%M%' ORDER BY department_id
SELECT supplier_id FROM Product_Suppliers GROUP BY supplier_id HAVING avg(total_amount_purchased) > 50000 OR avg(total_amount_purchased) < 30000
SELECT count(*) FROM list AS T1 JOIN teachers AS T2 ON T1.classroom = T2.classroom WHERE T2.firstname = "T@@ ARR@@ ING@@ " AND T2.lastname = "@@ LE@@ I@@ A"
SELECT count(DISTINCT P@@ resident_@@ V@@ ote@@ ) FROM VOTING_RECORD
SELECT count(DISTINCT product_type_code) FROM products
SELECT College FROM match_season GROUP BY College ORDER BY count(*) DESC LIMIT 3
SELECT Market@@ ing_Region_@@ D@@ esc@@ ri@@ p@@ tr@@ ion FROM Market@@ ing_Reg@@ ions WHERE Market@@ ing_Region_@@ Name = "China"
SELECT T1.name FROM useracct AS T1 JOIN trust AS T2 ON T1.u_id = T2.@@ source_@@ u_id GROUP BY T2.@@ source_@@ u_id ORDER BY avg(@@ tr@@ ust@@ ) DESC LIMIT 1
SELECT city , GDP FROM city ORDER BY GDP LIMIT 1
SELECT count(*) FROM debate
SELECT avg(amount_of_transaction) FROM TRANSACTIONS WHERE transaction_type_code = "S@@ A@@ LE"
SELECT t1.fname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid = t2.authid JOIN papers AS t3 ON t2.paperid = t3.paperid WHERE t3.title LIKE "%@@ F@@ unctional%"
SELECT count(*) , cName FROM tryout GROUP BY cName ORDER BY count(*) DESC
SELECT T1.Name FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId = T2.GenreId GROUP BY T2.GenreId ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM patient EXCEPT SELECT T1.name FROM patient AS T1 JOIN Prescribes AS T2 ON T2.P@@ atient = T1.SSN JOIN Medication AS T3 ON T2.M@@ edication = T3.Code WHERE T3.name = 'Procrastin-X'
SELECT max(@@ Cows) , min(@@ Cows) FROM farm
SELECT T2.name FROM film AS T1 JOIN L@@ AN@@ G@@ U@@ A@@ G@@ E AS T2 ON T1.@@ language_id = T2.@@ language_id WHERE T1.title = 'AIRPORT POLLOCK'
SELECT name FROM building ORDER BY height_feet DESC LIMIT 1
SELECT t3.lname FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t1.clubname = "Bootup Baltimore"
SELECT T2.dept_name FROM professor AS T1 JOIN department AS T2 ON T1.dept_code = T2.dept_code GROUP BY T1.dept_code ORDER BY count(*) LIMIT 1
SELECT role_code , role_name , role_description FROM ROLES
SELECT transaction_type , sum(transaction_amount) FROM Financial_transactions GROUP BY transaction_type
SELECT T2.name FROM Certificate AS T1 JOIN Aircraft AS T2 ON T2.aid = T1.aid WHERE T2.@@ distance > 5000 GROUP BY T1.aid ORDER BY count(*) >= 5
SELECT count(*) FROM products
SELECT T3.@@ cell_mobile_number FROM candidates AS T1 JOIN candidate_assessments AS T2 ON T1.candidate_id = T2.candidate_id JOIN people AS T3 ON T1.candidate_id = T3.@@ person_id WHERE T2.@@ asessment_outcome_code = "Fail"
SELECT Name FROM editor ORDER BY Age ASC LIMIT 1
SELECT Product_Name FROM Products ORDER BY Product_Price ASC
SELECT DISTINCT Region FROM club ORDER BY Region ASC
SELECT image_name , im@@ age_@@ url FROM images ORDER BY image_name
SELECT Name FROM technician WHERE Team != "NY@@ Y"
SELECT count(*) , T1.name FROM projects AS T1 JOIN assignedto AS T2 ON T1.code = T2.project GROUP BY T1.name
SELECT sum(no_of_customers) FROM bank WHERE city = 'New York City@@ '
SELECT product_id FROM order_items GROUP BY product_id ORDER BY count(*) DESC LIMIT 1
SELECT Company_name , count(*) FROM phone GROUP BY Company_name ORDER BY count(*) ASC LIMIT 1;
SELECT T2.dept_name , T2.dept_address , count(*) FROM student AS T1 JOIN department AS T2 ON T1.dept_code = T2.dept_code GROUP BY T1.dept_code ORDER BY count(*) DESC LIMIT 3
SELECT login_name FROM Course_Authors_and_Tutors INTERSECT SELECT login_name FROM Students
SELECT T2.name FROM Flight AS T1 JOIN Aircraft AS T2 ON T1.aid = T2.aid WHERE T1.flno = 99
SELECT T1.Museum@@ _Details , T2.@@ Opening_Hours FROM M@@ U@@ SE@@ UM@@ S AS T1 JOIN TOURIST_ATTRACTIONS AS T2 ON T1.Museum@@ _ID = T2.Tourist_Attraction_ID
SELECT Name FROM Team
SELECT T2.name FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID = T2.rID WHERE T1.stars = 3 INTERSECT SELECT T2.name FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID = T2.rID WHERE T1.stars = 4
SELECT T1.bname FROM bank AS T1 JOIN loan AS T2 ON T1.branch_id = T2.branch_id GROUP BY T1.bname ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT T1.fname , T1.lname FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID = T2.facID GROUP BY T1.FacID ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT grade FROM list WHERE classroom = 10@@ 5
SELECT lastname FROM list WHERE classroom = 111
SELECT emp_fname FROM employee WHERE emp_jobcode = 'P@@ RO@@ F' EXCEPT SELECT T1.emp_fname FROM employee AS T1 JOIN CLASS AS T2 ON T1.emp_num = T2.prof_num
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Course_Enrolment AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name FROM climber ORDER BY Points DESC
SELECT POSITION FROM match_season GROUP BY POSITION ORDER BY count(*) DESC LIMIT 1
SELECT T2.name , T2.salary FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id = T2.id JOIN student AS T3 ON T1.s_id = T3.id WHERE T3.dept_name = 'History'
SELECT Festival_Name FROM festival_detail WHERE YEAR = 2007
SELECT T1.booking_start_date , T1.booking_start_date FROM Apartment_Bookings AS T1 JOIN Guests AS T2 ON T1.guest_id = T2.guest_id WHERE T2.@@ gender_code = "Female"
SELECT Name FROM People ORDER BY Name ASC
SELECT customer_phone FROM available_policies
SELECT CLASS , count(*) FROM race GROUP BY CLASS
SELECT customer_name FROM customers EXCEPT SELECT t1.customer_name FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id = t2.customer_id
SELECT name , trade_name FROM medicine WHERE FDA_@@ approved = 'Yes'
SELECT T1.company_name FROM Third_Party_Companies AS T1 JOIN Maintenance_Contracts AS T2 ON T1.company_id = T2.@@ maintenance_contract_company_id ORDER BY T2.@@ contract@@ _@@ start_date ASC LIMIT 1
SELECT T2.name , T2.@@ location FROM race AS T1 JOIN track AS T2 ON T1.track_id = T2.track_id GROUP BY T1.track_id HAVING count(*) = 1
SELECT avg(T2.@@ Points) FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T1.name = "AIB"
SELECT sum(enrollment) , affiliation FROM university GROUP BY affiliation
SELECT COUNT(DISTINCT Artist_ID) FROM volume
SELECT count(DISTINCT room@@ type) FROM room
SELECT name FROM enzyme WHERE product != 'Heme@@ '
SELECT LOCATION FROM county_public_safety GROUP BY LOCATION ORDER BY COUNT(*) DESC LIMIT 1
SELECT gtype FROM Video_games WHERE gname = "Call of Destiny"
SELECT DISTINCT T1.state , T1.@@ enr FROM college AS T1 JOIN tryout AS T2 ON T1.cName = T2.cName WHERE T2.decision = 'yes'
SELECT sum(enr) FROM College
SELECT count(DISTINCT city) FROM bank
SELECT T1.first_name , T1.last_name , SUM(T2.total) FROM customers AS T1 JOIN invoices AS T2 ON T2.customer_id = T1.id GROUP BY T1.id ORDER BY SUM(T2.total) DESC LIMIT 10;
SELECT Country FROM market ORDER BY Country ASC
SELECT document_id , document_name FROM Documents
SELECT title FROM item ORDER BY title
SELECT order_id FROM shipments WHERE shipment_tracking_number = "@@ 345@@ 2"
SELECT Official_Name , Status FROM city ORDER BY Population DESC LIMIT 1
SELECT DISTINCT T3.name FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID JOIN Reviewer AS T3 ON T1.rID = T3.rID WHERE T2.title = 'G@@ one with the W@@ ind@@ '
SELECT Governor FROM party GROUP BY Governor ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM Ch@@ ur@@ ch WHERE Open_Date < 1850
SELECT count(*) FROM student
SELECT TYPE FROM vocals AS T1 JOIN songs AS T2 ON T1.songid = T2.songid JOIN band AS T3 ON T1.bandmate = T3.id WHERE T3.@@ lastname = "Heilo" AND T2.title = "Der Kapitan"
SELECT T1.@@ Builder FROM railway AS T1 JOIN train AS T2 ON T1.Railway_ID = T2.Railway_ID WHERE T2.Name = "An@@ dam@@ an Exp@@ "
SELECT name FROM student WHERE id IN (SELECT id FROM takes WHERE semester = 'Fall' AND YEAR = 200@@ 3)
SELECT count(*) FROM chip_model WHERE wifi = 'N@@ o'
SELECT avg(G@@ ol@@ d) FROM club_rank
SELECT name , headquarter , founder FROM manufacturers ORDER BY revenue DESC LIMIT 1
SELECT count(*) FROM addresses WHERE country = 'USA'
SELECT T2.@@ L@@ if@@ esp@@ an FROM election AS T1 JOIN representative AS T2 ON T1.Representative_ID = T2.Representative_ID ORDER BY Vote_Perc@@ ent DESC
SELECT * FROM swimmer
SELECT T2.bname FROM loan AS T1 JOIN bank AS T2 ON T1.branch_id = T2.branch_id JOIN customer AS T3 ON T1.cust_id = T3.cust_id WHERE T3.credit_score < 100 GROUP BY T2.bname ORDER BY sum(T1.amount) DESC LIMIT 1
SELECT T2.guest_first_name , T2.@@ guest_last_name FROM Apartment_Bookings AS T1 JOIN Guests AS T2 ON T1.guest_id = T2.guest_id WHERE T1.booking_status_code = "Confirmed"
SELECT name , city , country , elevation FROM airports WHERE city = 'New York'
SELECT name , max(revenue) , Headquarter FROM manufacturers GROUP BY Headquarter
SELECT count(*) FROM Faculty
SELECT station_id , LOCATION , manager_name FROM gas_station ORDER BY open_year
SELECT AVG(@@ Milliseconds) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId = T2.GenreId WHERE T1.Name = "L@@ at@@ in" OR T1.Name = "Pop"
SELECT T2.Name , COUNT(*) FROM repair_assignment AS T1 JOIN technician AS T2 ON T1.technician_ID = T2.@@ technician_ID GROUP BY T2.Name
SELECT count(*) FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id = t2.customer_id WHERE t1.customer_name = "Dayana Robel"
SELECT dail@@ y_hire_cost FROM Products_for_hire WHERE product_name LIKE '%@@ Book@@ %'
SELECT max(@@ stars) , min(@@ stars) FROM Rating
SELECT title , YEAR , director FROM movie ORDER BY budget_@@ mill@@ ion
SELECT T1.staff_id , T1.staff_gender FROM staff AS T1 JOIN staff_department_assignments AS T2 ON T1.staff_id = T2.staff_id WHERE T2.job_title_code = "De@@ part@@ ment M@@ anag@@ er"
SELECT sum(@@ Amount_Claimed) FROM Claims
SELECT POSITION FROM player GROUP BY name HAVING avg(Points) >= 20
SELECT distinct(@@ Famous_Release_@@ date) FROM artist
SELECT count(*) FROM professor AS T1 JOIN department AS T2 ON T1.dept_code = T2.dept_code WHERE T2.dept_name = 'Accounting' OR T2.dept_name = 'Biolog@@ y'
SELECT billing_country , SUM(total) FROM invoices GROUP BY billing_country ORDER BY SUM(total) DESC LIMIT 8@@ ;
SELECT count(*) FROM Companies WHERE Industry = "Banking" OR Industry = "Conglomerate"
SELECT DISTINCT firstname , lastname FROM list
SELECT T1.Year FROM film_market_estimation AS T1 JOIN market AS T2 ON T1.Market_ID = T2.Market_ID WHERE T2.Country = "Japan" ORDER BY T1.Year DESC
SELECT eid , salary FROM Employee WHERE name = 'M@@ ar@@ k Y@@ oun@@ g@@ '
SELECT count(DISTINCT t1.club@@ name) FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t3.fname = "E@@ ric@@ " AND t3.lname = "T@@ ai"
SELECT T2.name FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id = T2.id JOIN student AS T3 ON T1.s_id = T3.id ORDER BY T3.@@ tot_cred DESC LIMIT 1
SELECT count(*) FROM school
SELECT T2.Lname FROM Sportsinfo AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T1.@@ onscholarship = 'Y'
SELECT title FROM songs WHERE title LIKE '@@ % the %'
SELECT count(*) FROM aircraft
SELECT T1.booking_start_date , T1.booking_start_date FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id = T2.apt_id WHERE T2.bedroom_count > 2
SELECT gtype FROM Video_games GROUP BY gtype ORDER BY count(*) LIMIT 1
SELECT DISTINCT CLASS FROM race
SELECT T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid = T2.custid JOIN savings AS T3 ON T1.custid = T3.custid WHERE T2.balance > T3.balance
SELECT T1.name FROM physician AS T1 JOIN trained_in AS T2 ON T1.employeeid = T2.physician JOIN procedures AS T3 ON T3.code = T2.treatment WHERE T3.cost > 5000
SELECT T1.name FROM physician AS T1 JOIN prescribes AS T2 ON T1.employeeid = T2.physician ORDER BY T2.do@@ se DESC LIMIT 1
SELECT destination FROM Flight GROUP BY destination ORDER BY count(*) LIMIT 1
SELECT poll_source FROM candidate GROUP BY poll_source ORDER BY count(*) DESC LIMIT 1
SELECT date , zip_code FROM weather WHERE max_temperature_f >= 80
SELECT count(*) FROM routes AS T1 JOIN airports AS T2 ON T1.@@ dst_apid = T2.@@ apid JOIN airlines AS T3 ON T1.alid = T3.@@ alid WHERE T2.country = 'I@@ tal@@ y' AND T3.name = 'American Airlines'
SELECT count(*) FROM product AS T1 JOIN problems AS T2 ON T1.product_id = T2.product_id WHERE T1.product_name = "voluptatem"
SELECT Nationality FROM HOST GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT name FROM swimmer WHERE id NOT IN (SELECT swimmer_id FROM recor@@ d)
SELECT DISTINCT T2.Hardware_Model_name FROM screen_mode AS T1 JOIN phone AS T2 ON T1.Graphics_mode = T2.screen_mode WHERE t2.@@ Company_name = "Nokia Corporation" AND T1.Type != "Tex@@ t";
SELECT T2.name , T1.category_id , count(*) FROM film_category AS T1 JOIN category AS T2 ON T1.category_id = T2.category_id GROUP BY T1.category_id
SELECT Name FROM phone WHERE Carrier = "S@@ pri@@ nt@@ " OR Carrier = "T@@ Mo@@ bi@@ le"
SELECT DISTINCT T1.customer_first_name , T1.customer_last_name FROM Customers AS T1 JOIN Accounts AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 JOIN order_items AS T3 JOIN products AS T4 ON T1.customer_id = T2.customer_id AND T2.order_id = T3.order_id AND T3.product_id = T4.product_id WHERE T3.@@ order_item@@ _@@ status = "Cancel@@ " AND T4.product_name = "food" GROUP BY T1.customer_id HAVING count(*) >= 1
SELECT T1.cust_name , T1.@@ acc_type FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id = T2.cust_id GROUP BY T1.cust_name HAVING sum(T2.amount) > 5000
SELECT T1.name FROM useracct AS T1 JOIN trust AS T2 ON T1.u_id = T2.@@ tar@@ g@@ et_@@ u_id ORDER BY trust LIMIT 1
SELECT t3.city FROM customers AS t1 JOIN customer_addresses AS t2 ON t1.customer_id = t2.customer_id JOIN addresses AS t3 ON t2.address_id = t3.address_id GROUP BY t3.city ORDER BY count(*) DESC LIMIT 1
SELECT employee_id , first_name , last_name , job_id FROM employees WHERE salary > ( SELECT max(salary) FROM employees WHERE job_id = 'P@@ U@@ _MAN' )
SELECT T2.firstname , T2.lastname FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate = T2.id JOIN Songs AS T3 ON T3.SongId = T1.SongId WHERE T3.Title = "Le Pop"
SELECT patient FROM undergoes ORDER BY dat@@ e@@ undergoes LIMIT 1
SELECT DISTINCT allergytype FROM Allergy_type
SELECT date_valid@@ _from , date_valid@@ _to FROM Customers_cards WHERE card_number = "4560596484842"
SELECT dept_name FROM instructor GROUP BY dept_name ORDER BY avg(salary) DESC LIMIT 1
SELECT customer_id , count(*) FROM Customers_cards GROUP BY customer_id
SELECT count(*) FROM campuses WHERE county = "Los Angeles"
SELECT DISTINCT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName = T2.cName WHERE T2.decision = 'yes'
SELECT fname , major FROM Student WHERE StuID NOT IN (SELECT StuID FROM Has_allergy WHERE Allergy = "S@@ o@@ y")
SELECT POSITION FROM player WHERE Points > 20 INTERSECT SELECT POSITION FROM player WHERE Points < 10
SELECT avg(t1.@@ access_count) FROM documents AS t1 JOIN document_@@ functional_areas AS t2 ON t1.document_code = t2.document_code JOIN functional_areas AS t3 ON t2.@@ functional_area@@ _code = t3.functional_area@@ _code WHERE t3.functional_area@@ _description = "Acknowledgement@@ "
SELECT T1.name FROM products AS T1 JOIN manufacturers AS T2 ON T1.Manufacturer = T2.code WHERE T2.name = 'C@@ re@@ ative Lab@@ s' INTERSECT SELECT T1.name FROM products AS T1 JOIN manufacturers AS T2 ON T1.Manufacturer = T2.code WHERE T2.name = 'Sony'
SELECT organization_name FROM organizations ORDER BY date_formed ASC
SELECT role_code FROM Employees GROUP BY role_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.fname , T1.lname FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID = T2.advisor GROUP BY T1.FacID ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid = T2.custid GROUP BY T1.name
SELECT count(*) , building FROM classroom WHERE capacity > 50 GROUP BY building
SELECT Name FROM musical WHERE Nominee = "Bob Fosse"
SELECT T2.Fname , T2.Lname FROM COURSE AS T1 JOIN FACULTY AS T2 ON T1.Instructor = T2.FacID WHERE T1.CName = "@@ COMPUTER LITERAC@@ Y"
SELECT COUNT (DISTINCT team) FROM elimination
SELECT T2.Year , T1.Official_Name FROM city AS T1 JOIN farm_competition AS T2 ON T1.City_ID = T2.Host_city_ID
SELECT count(*) , sum(student_capacity) , gender FROM dorm GROUP BY gender
SELECT region_name FROM region ORDER BY region_name
SELECT T2.card_type_code , count(*) FROM Financial_transactions AS T1 JOIN Customers_cards AS T2 ON T1.@@ card_id = T2.@@ card_id GROUP BY T2.card_type_code
SELECT sum(@@ amount_piad) , avg(@@ amount_piad) FROM claim_headers
SELECT t2.@@ team_name , t2.@@ AC@@ C@@ _@@ Regular@@ _@@ Se@@ ason FROM university AS t1 JOIN basketball_match AS t2 ON t1.school_id = t2.school_id ORDER BY t1.@@ founded LIMIT 1
SELECT date , cloud_cover FROM weather ORDER BY cloud_cover DESC LIMIT 5
SELECT T3.amenity_name FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid = T2.dormid JOIN dorm_amenity AS T3 ON T2.amenid = T3.amenid WHERE T1.dorm_name = 'Smith Hall' ORDER BY T3.amenity_name
SELECT name , price FROM products WHERE price >= 180 ORDER BY price DESC , name ASC
SELECT degrees FROM campuses AS T1 JOIN degrees AS T2 ON t1.id = t2.campus WHERE t1.campus = "San Francisco State University" AND t2.year = 2001
SELECT T1.task_details , T1.task_id , T2.project_id FROM Tasks AS T1 JOIN Projects AS T2 ON T1.project_id = T2.project_id WHERE T2.project_details = 'omnis' UNION SELECT T1.task_details , T1.task_id , T2.project_id FROM Tasks AS T1 JOIN Projects AS T2 ON T1.project_id = T2.project_id JOIN Project_outcomes AS T3 ON T2.project_id = T3.project_id GROUP BY T2.project_id HAVING count(*) > 2
SELECT T2.@@ Comptroller FROM election AS T1 JOIN party AS T2 ON T1.Party = T2.Party_ID WHERE T1.District = 1 OR T1.District = 2
SELECT T1.@@ compatible@@ _s@@ ince_@@ year FROM accelerator_compatible_browser AS T1 JOIN browser AS T2 ON T1.b@@ rows@@ er_id = T2.id JOIN web_client_accelerator AS T3 ON T1.@@ accelerator_id = T3.id WHERE T3.name = 'CACHEbox' AND T2.name = '@@ Int@@ ern@@ et Exp@@ lor@@ er'
SELECT district_name FROM district WHERE city_area > 10 OR City_Population > 100000
SELECT count(*) FROM Lessons WHERE lesson_status_code = "Cancelle@@ d";
SELECT Shop_Name FROM shop ORDER BY Open_Year DESC LIMIT 1
SELECT T1.title FROM course AS T1 JOIN prereq AS T2 ON T1.course_id = T2.course_id GROUP BY T2.course_id HAVING count(*) = 2
SELECT StuID FROM Student WHERE city_code = "CHI"
SELECT date_from , date_to FROM Project_Staff WHERE role_code = 'researcher'
SELECT name FROM club ORDER BY Start@@ _year ASC
SELECT t2.title FROM authorship AS t1 JOIN papers AS t2 ON t1.paperid = t2.paperid WHERE t1.@@ authorder = (SELECT max(@@ auth@@ order@@ ) FROM author@@ ship@@ )
SELECT avg(T1.@@ Age) FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID = SE@@ CR@@ ET@@ AR@@ Y@@ _Vote WHERE T1.city_code = "NYC" AND T2.Election_Cycle = "Spring"
SELECT Studio FROM film GROUP BY Studio HAVING COUNT(*) >= 2
SELECT HOST FROM performance ORDER BY Attendance ASC
SELECT count(*) FROM Project_outcomes WHERE outcome_code = 'Patent'
SELECT Name FROM TRACK WHERE Name LIKE '%@@ you@@ %'
SELECT count(*) FROM Documents
SELECT count(*) , city_code FROM student GROUP BY city_code HAVING count(*) > 1
SELECT count(*) FROM Reservations WHERE FirstName = "ROY" AND LastName = "SWEAZY";
SELECT T2.investor_id , T1.Investor_details FROM INVESTORS AS T1 JOIN TRANSACTIONS AS T2 ON T1.investor_id = T2.investor_id GROUP BY T2.investor_id ORDER BY COUNT(*) DESC LIMIT 3
SELECT T2.dept_name FROM course AS T1 JOIN department AS T2 ON T1.dept_code = T2.dept_code WHERE T1.@@ crs_description LIKE '%@@ Statistic@@ s%'
SELECT Headquarters FROM Companies GROUP BY Headquarters HAVING COUNT(*) > 2
SELECT T2.Song FROM artist AS T1 JOIN volume AS T2 ON T1.Artist_ID = T2.Artist_ID WHERE T1.age >= 32
SELECT T1.first_name , T1.last_name , T1.employee_id , T4.country_name FROM employees AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id JOIN locations AS T3 ON T2.location_id = T3.location_id JOIN countries AS T4 ON T3.country_id = T4.country_id
SELECT T1.@@ outcome_description FROM Research_outcomes AS T1 JOIN Project_outcomes AS T2 ON T1.outcome_code = T2.outcome_code
SELECT T1.cName FROM tryout AS T1 JOIN player AS T2 ON T1.pID = T2.pID WHERE T2.p@@ Name LIKE 'D@@ %'
SELECT customer_id , count(*) FROM Customers_cards GROUP BY customer_id ORDER BY count(*) DESC LIMIT 1
SELECT max(@@ gradepoint) , min(@@ gradepoint) FROM GRADECONVERSION
SELECT count(*) FROM body_builder
SELECT Name FROM HOST WHERE Host_ID NOT IN (SELECT Host_ID FROM party_@@ host@@ )
SELECT avg(T1.@@ duration) FROM files AS T1 JOIN song AS T2 ON T1.f_id = T2.f_id WHERE T1.formats = "mp3" AND T2.resolution < 800
SELECT DISTINCT T1.FirstName FROM CUSTOMER AS T1 JOIN INVOICE AS T2 ON T1.CustomerId = T2.CustomerId WHERE T1.country = "B@@ raz@@ il"
SELECT T1.fname , T1.lname FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID = T2.advisor WHERE T2.fname = "Linda" AND T2.lname = "Smith"
SELECT Ho@@ sts FROM farm_competition WHERE Theme != 'A@@ lien@@ s'
SELECT f_id , genre_is , artist_name FROM song WHERE languages = "english" ORDER BY rating
SELECT patient FROM undergoes ORDER BY dat@@ e@@ undergoes LIMIT 1
SELECT count(DISTINCT G@@ overn@@ or) FROM party
SELECT sum(t2.order_quantity) FROM customer_orders AS t1 JOIN order_items AS t2 ON t1.order_id = t2.order_id WHERE t1.@@ order_status = "Cancelled"
SELECT phone , room , building FROM Faculty WHERE Fname = "Jer@@ r@@ y" AND Lname = "P@@ rinc@@ e"
SELECT Fir@@ st_year , La@@ st_year FROM party WHERE Party_Theme = "Spring" OR Party_Theme = "Teqnolog@@ y"
SELECT T1.Year FROM film_market_estimation AS T1 JOIN market AS T2 ON T1.Market_ID = T2.Market_ID WHERE T2.Country = "Japan" ORDER BY T1.Year DESC
SELECT state , acc_type , credit_score FROM customer WHERE no_of_@@ loans = 0
SELECT T1.Official_Name FROM city AS T1 JOIN farm_competition AS T2 ON T1.City_ID = T2.Host_city_ID GROUP BY T2.Host_city_ID HAVING COUNT(*) > 1
SELECT Name FROM member ORDER BY Name ASC
SELECT T2.name_first , T2.name_last FROM salary AS T1 JOIN player AS T2 ON T1.player_id = T2.player_id JOIN team AS T3 ON T3.team_id_br = T1.team_id WHERE T1.year = 2005 AND T3.name = 'Washington Nationals' INTERSECT SELECT T2.name_first , T2.name_last FROM salary AS T1 JOIN player AS T2 ON T1.player_id = T2.player_id JOIN team AS T3 ON T3.team_id_br = T1.team_id WHERE T1.year = 2007 AND T3.name = 'Washington Nationals'
SELECT t1.organization_name FROM organizations AS t1 JOIN organization_contact_individuals AS t2 ON t1.organization_id = t2.organization_id GROUP BY t1.organization_name ORDER BY count(*) DESC LIMIT 1
SELECT role_code FROM Employees GROUP BY role_code HAVING count(*) >= 3
SELECT TYPE FROM film_market_estimation WHERE YEAR = 1995
SELECT last_name FROM Teachers EXCEPT SELECT T1.last_name FROM Teachers AS T1 JOIN Detention AS T2 ON T1.teacher_id = T2.teacher_id
SELECT t3.characteristic_name FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id = t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id = t3.characteristic_id WHERE t1.product_name = "sesame" AND t3.characteristic@@ _type_code = "Grade@@ "
SELECT name FROM buildings WHERE Status = "on-hold" ORDER BY Stories ASC
SELECT T1.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid = T2.eid JOIN Aircraft AS T3 ON T3.aid = T2.aid WHERE T3.@@ distance > 5000 GROUP BY T1.eid ORDER BY count(*) DESC LIMIT 1
SELECT * FROM election
SELECT t1.name , t1.age FROM pilot AS t1 JOIN MATCH AS t2 ON t1.pilot_id = t2.winning_pilot WHERE t1.age < 30 GROUP BY t2.winning_pilot ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Rooms;
SELECT role_code FROM Project_Staff GROUP BY role_code ORDER BY count(*) DESC LIMIT 1
SELECT Investor , COUNT(*) FROM entrepreneur GROUP BY Investor
SELECT avg(transaction_amount) , sum(transaction_amount) FROM Financial_transactions
SELECT DISTINCT Visit_Date FROM VISITS
SELECT T2.theme FROM exhibition_record AS T1 JOIN exhibition AS T2 ON T1.exhibition_id = T2.exhibition_id WHERE T1.attendance < 100 INTERSECT SELECT T2.theme FROM exhibition_record AS T1 JOIN exhibition AS T2 ON T1.exhibition_id = T2.exhibition_id WHERE T1.attendance > 500
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Course_Enrolment AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name HAVING COUNT(*) = 1
SELECT T2.apt_type_code , T2.apt_number FROM Apartment_Buildings AS T1 JOIN Apartments AS T2 ON T1.building_id = T2.building_id WHERE T1.building_@@ manager = "K@@ yle"
SELECT sportname FROM Sportsinfo WHERE onscholarship = 'Y' GROUP BY sportname ORDER BY count(*) DESC LIMIT 1
SELECT max(@@ budget_in_bill@@ ion@@ s) , min(@@ budget_in_bill@@ ion@@ s) FROM department
SELECT count(*) FROM STUDENT
SELECT t1.name FROM people AS t1 JOIN candidate AS t2 ON t1.people_id = t2.people_id WHERE t1.sex = 'F' ORDER BY t1.name
SELECT country FROM airlines GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM customers GROUP BY customer_type_code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id = t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id = t3.characteristic_id WHERE t1.product_name = "flax"
SELECT T1.Service_Type_Description FROM Ref_Service_Types AS T1 JOIN Services AS T2 ON T1.Service_Type_Code = T2.Service_Type_Code WHERE T2.@@ Product_Price > 100
SELECT invoice_number , count(*) FROM Financial_transactions GROUP BY invoice_number
SELECT sum(t1.@@ undergraduate) FROM discipline_enrollments AS t1 JOIN campuses AS t2 ON t1.campus = t2.id WHERE t1.year = 2004 AND t2.campus = "San Jose State University"
SELECT building FROM Faculty WHERE rank = "Professor" GROUP BY building HAVING count(*) >= 10
SELECT name FROM pilot WHERE pilot_id NOT IN (SELECT Win@@ ning_@@ Pilo@@ t FROM MATCH WHERE country = 'Australi@@ a')
SELECT T1.name FROM category AS T1 JOIN film_category AS T2 ON T1.category_id = T2.category_id JOIN film AS T3 ON T2.film_id = T3.@@ film_id WHERE T3.title = 'HUNGER ROOF'
SELECT name FROM playlist@@ s;
SELECT T1.city FROM city AS T1 JOIN temperature AS T2 ON T1.city_id = T2.city_id WHERE T2.Mar < T2.Jul OR T2.Mar > T2.@@ Oct
SELECT College , COUNT(*) FROM submission GROUP BY College
SELECT name , main_@@ services FROM station ORDER BY total_passengers DESC LIMIT 3
SELECT phone_number FROM customers UNION SELECT phone_number FROM staff
SELECT email_address FROM Students WHERE first_name = "Emma" AND last_name = "Ro@@ h@@ an"
SELECT t1.customer_name FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id = t2.customer_id JOIN order_items AS t3 ON t2.order_id = t3.order_id GROUP BY t1.customer_name ORDER BY sum(t3.order_quantity) DESC LIMIT 1
SELECT COUNT(*) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId = T2.GenreId WHERE T1.Name = "Rock"
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Participates_in
SELECT fname FROM student WHERE age > 20
SELECT bedType , avg(basePrice) FROM Rooms GROUP BY bedType;
SELECT count(*) FROM Aircraft WHERE distance BETWEEN 1000 AND 5000
SELECT avg(campusfee) FROM csu_fees WHERE YEAR = 1996
SELECT campusfee FROM campuses AS T1 JOIN csu_fees AS T2 ON T1.id = t2.campus WHERE t1.campus = "San Jose State University" AND T2.year = 1996
SELECT T1.employee_id , T2.job_title FROM employees AS T1 JOIN jobs AS T2 ON T1.job_id = T2.job_id WHERE T1.department_id = 80
SELECT max(@@ support_@@ rate) , min(@@ con@@ sider_@@ rate) , min(oppose_rate) FROM candidate
SELECT T1.city , count(*) FROM Addresses AS T1 JOIN Staff AS T2 ON T1.address_id = T2.staff_address_id GROUP BY T1.city ORDER BY count(*) DESC LIMIT 1;
SELECT Name FROM manager ORDER BY Age DESC LIMIT 1
SELECT DISTINCT T1.city FROM addresses AS T1 JOIN people_addresses AS T2 ON T1.address_id = T2.address_id
SELECT dept_store_chain_id FROM department_stores GROUP BY dept_store_chain_id ORDER BY count(*) DESC LIMIT 2
SELECT cust_name FROM customer EXCEPT SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id = T2.cust_id WHERE T2.loan_type = 'M@@ ortg@@ ag@@ es'
SELECT MIN(salary) , department_id FROM employees GROUP BY department_id
SELECT t3.fname , t3.lname FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t1.clubname = "Hopkins Student Enterprises" AND t2.position = "CTO"
SELECT campus FROM campuses WHERE county = "Los Angeles"
SELECT avg(ticket_price) , min(@@ ticket_price) , max(@@ ticket_price) FROM exhibition WHERE YEAR < 2009
SELECT count(DISTINCT t1.title) FROM papers AS t1 JOIN authorship AS t2 ON t1.paperid = t2.paperid JOIN inst AS t3 ON t2.instid = t3.instid WHERE t3.name = "@@ University of P@@ ennsylvani@@ a"
SELECT count(*) FROM ROLES
SELECT Company_name FROM phone GROUP BY Company_name HAVING count(*) > 1;
SELECT name FROM races WHERE YEAR = 2017
SELECT t2.@@ catalog_level_name FROM catalog_contents AS t1 JOIN catalog_structure AS t2 ON t1.@@ catalog_level_number = t2.catalog_level_number ORDER BY t1.@@ price_in_dollars LIMIT 1
SELECT T2.Name , T3.Festival_Name FROM nomination AS T1 JOIN artwork AS T2 ON T1.Artwork_ID = T2.Artwork_ID JOIN festival_detail AS T3 ON T1.Festival_ID = T3.Festival_ID
SELECT Area , County FROM APPELLATIONS
SELECT document_type_code , document_name , document_description FROM Documents WHERE document_name = 'Noel CV' OR document_name = 'King Book'
SELECT T2.balance , T3.balance , T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid = T2.custid JOIN savings AS T3 ON T1.custid = T3.custid ORDER BY T2.balance + T3.balance DESC
SELECT LOCATION FROM cinema WHERE openning_year = 2010 INTERSECT SELECT LOCATION FROM cinema WHERE openning_year = 2011
SELECT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName = T2.cName WHERE T2.pPos = 'striker'
SELECT T1.company_id , T1.company_name FROM Third_Party_Companies AS T1 JOIN Maintenance_Engineers AS T2 ON T1.company_id = T2.company_id GROUP BY T1.company_id HAVING count(*) >= 2 UNION SELECT T3.company_id , T3.@@ company_name FROM Third_Party_Companies AS T3 JOIN Maintenance_Contracts AS T4 ON T3.company_id = T4.@@ maintenance_contract_company_id GROUP BY T3.company_id HAVING count(*) >= 2
SELECT DISTINCT POSITION FROM match_season
SELECT count(DISTINCT T1.Colleg@@ e) FROM match_season AS T1 JOIN team AS T2 ON T1.Team = T2.Team_id WHERE T2.Name = "Columbus Crew"
SELECT max(T1.@@ duration) , max(T2.resolution) , T2.languages FROM files AS T1 JOIN song AS T2 ON T1.f_id = T2.f_id GROUP BY T2.languages ORDER BY T2.languages
SELECT avg(T1.Price) , T2.name FROM products AS T1 JOIN Manufacturers AS T2 ON T1.manufacturer = T2.code GROUP BY T2.name
SELECT Player , Years_Played FROM player
SELECT Nominee FROM musical WHERE Award = "Tony Award" OR Award = "Cleavant Derrick@@ s"
SELECT T2.@@ weight FROM body_builder AS T1 JOIN people AS T2 ON T1.people_id = T2.people_id WHERE T1.@@ snatch > 140 OR T2.@@ height > 200@@ ;
SELECT Name FROM wrestler WHERE Wrestler_ID NOT IN (SELECT Wrestler_ID FROM elimin@@ ation)
SELECT product_name , typical_buying_price FROM products
SELECT count(*) FROM customer WHERE active = '1'
SELECT theme , YEAR FROM exhibition WHERE ticket_price < 15
SELECT rID FROM Reviewer WHERE name LIKE "%M@@ ike@@ %"
SELECT title FROM course WHERE dept_name = 'Statistics' INTERSECT SELECT title FROM course WHERE dept_name = 'Psychology'
SELECT customer_phone FROM available_policies WHERE policy_type_code = "Life Insuranc@@ e"
SELECT role_code FROM Project_Staff GROUP BY role_code ORDER BY count(*) DESC LIMIT 1
SELECT Title FROM ALBUM ORDER BY Title
SELECT T1.first_name , T1.last_name , T1.@@ other_details , T3.@@ skill@@ _description FROM Maintenance_Engineers AS T1 JOIN Engineer_@@ Skills AS T2 ON T1.engineer_id = T2.engineer_id JOIN Skills AS T3 ON T2.@@ skill_id = T3.@@ skill_id
SELECT t3.headquartered_city , count(*) FROM store AS t1 JOIN store_district AS t2 ON t1.store_id = t2.store_id JOIN district AS t3 ON t2.district_id = t3.district_id GROUP BY t3.headquartered_city
SELECT city_code FROM Student WHERE LName = "Kim"
SELECT count(*) FROM member
SELECT t3.title FROM authors AS t1 JOIN authorship AS t2 ON t1.authid = t2.authid JOIN papers AS t3 ON t2.paperid = t3.paperid WHERE t1.fname = "Steph@@ an@@ ie" AND t1.lname = "W@@ eirich"
SELECT Product_Type_Code , COUNT(*) FROM Products GROUP BY Product_Type_Code
SELECT count(*) FROM rooms WHERE room@@ id NOT IN (SELECT DISTINCT room FROM reserv@@ ation@@ s)
SELECT employe@@ e_ID FROM Employees WHERE employee_name = "Ebba"
SELECT T2.lastname FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate = T2.id JOIN Songs AS T3 ON T3.SongId = T1.SongId GROUP BY lastname ORDER BY count(*) DESC LIMIT 1
SELECT sum(t3.order_quantity) FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id = t2.customer_id JOIN order_items AS t3 ON t2.order_id = t3.order_id WHERE t1.customer_name = "Rodrick Heaney"
SELECT count(DISTINCT Birth_P@@ lac@@ e) FROM people
SELECT T1.name , T1.city , T2.src_apid FROM airports AS T1 JOIN routes AS T2 ON T1.apid = T2.src_apid GROUP BY T2.src_apid ORDER BY count(*) DESC LIMIT 1
SELECT name FROM instructor WHERE salary > (SELECT max(salary) FROM instructor WHERE dept_name = 'Biology')
SELECT DISTINCT name FROM nurse ORDER BY name
SELECT T2.dept_name FROM course AS T1 JOIN department AS T2 ON T1.dept_code = T2.dept_code WHERE T1.@@ crs_description LIKE '%@@ Statistic@@ s%'
SELECT T1.Name FROM actor AS T1 JOIN musical AS T2 ON T1.Musical_ID = T2.Musical_ID WHERE T2.Name = "T@@ he P@@ ha@@ nt@@ om of the Oper@@ a"
SELECT T1.@@ name_full , T1.college_id FROM college AS T1 JOIN player_college AS T2 ON T1.college_id = T2.college_id GROUP BY T1.college_id ORDER BY count(*) DESC LIMIT 1;
SELECT Name , Ar@@ riv@@ al FROM train
SELECT transaction_id FROM Financial_transactions WHERE transaction_amount > (SELECT avg(transaction_amount) FROM Financial_@@ transactions)
SELECT count(DISTINCT e@@ id) FROM Certificate
SELECT fname FROM student WHERE city_code = 'P@@ H@@ L' AND age BETWEEN 20 AND 25
SELECT DISTINCT product_@@ color FROM Products
SELECT sum(hoursperweek) , sum(gamesplayed) FROM Sportsinfo AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T2.Fname = "Dav@@ id@@ " AND T2.Lname = "Shi@@ eber"
SELECT DISTINCT T1.@@ Age FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID = T2.S@@ e@@ cretary_Vote WHERE T2.Election_Cycle = "Fall"
SELECT count(DISTINCT rating) FROM film
SELECT t2.id , t2.@@ local_authority FROM weekly_weather AS t1 JOIN station AS t2 ON t1.station_id = t2.id GROUP BY t1.station_id ORDER BY avg(@@ high_@@ temperature) DESC LIMIT 1
SELECT count(*) FROM Lessons AS T1 JOIN Staff AS T2 ON T1.staff_id = T2.staff_id WHERE T2.first_name LIKE "%a%"
SELECT document_type_code FROM documents GROUP BY document_type_code HAVING count(*) > 4
SELECT count(*) , project_id FROM Documents WHERE document_type_code = "BK" GROUP BY project_id
SELECT t1.@@ product FROM product AS t1 JOIN store_@@ product AS t2 ON t1.product_id = t2.product_id JOIN store AS t3 ON t2.store_id = t3.@@ store_id WHERE t3.@@ store_name = "M@@ iram@@ ic@@ hi@@ "
SELECT count(*) , city_code FROM student GROUP BY city_code HAVING count(*) > 1
SELECT T1.first_name , T1.last_name , T1.staff_id FROM staff AS T1 JOIN payment AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id ORDER BY count(*) ASC LIMIT 1
SELECT DISTINCT T1.@@ creation FROM department AS T1 JOIN management AS T2 ON T1.department_id = T2.department_id JOIN head AS T3 ON T2.head_id = T3.head_id WHERE T3.born_state = 'A@@ la@@ b@@ am@@ a'
SELECT T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid = T2.custid WHERE T2.balance > (SELECT avg(balance) FROM checking) INTERSECT SELECT T1.name FROM accounts AS T1 JOIN savings AS T2 ON T1.custid = T2.custid WHERE T2.balance < (SELECT avg(balance) FROM savings)
SELECT max(@@ LEVEL) FROM manager WHERE Country != "A@@ ustrali@@ a@@ 	@@ "
SELECT Range FROM mountain GROUP BY Range ORDER BY COUNT(*) DESC LIMIT 1
SELECT rank FROM captain WHERE CLASS = 'Cut@@ t@@ er' INTERSECT SELECT rank FROM captain WHERE CLASS = 'Ar@@ med scho@@ on@@ er'
SELECT Name FROM member WHERE Member_ID NOT IN (SELECT Member_ID FROM ro@@ un@@ d)
SELECT company FROM customers WHERE first_name = "E@@ du@@ ar@@ do@@ " AND last_name = "M@@ art@@ in@@ s";
SELECT count(*) , role_code FROM users GROUP BY role_code
SELECT Fname , Lname FROM Student WHERE Age > 18 AND Major != 600 AND Sex = 'F@@ ';
SELECT T2.guest_first_name , T1.booking_start_date , T1.booking_start_date FROM Apartment_Bookings AS T1 JOIN Guests AS T2 ON T1.guest_id = T2.guest_id
SELECT t1.@@ pixels FROM screen_mode AS t1 JOIN phone AS t2 ON t1.@@ Graphics_mode = t2.@@ screen_mode WHERE t2.@@ Accreditation_type = 'Pro@@ vision@@ al@@ ' INTERSECT SELECT t1.@@ pixels FROM screen_mode AS t1 JOIN phone AS t2 ON t1.@@ Graphics_mode = t2.@@ screen_mode WHERE t2.@@ Accreditation_type = 'F@@ ul@@ l@@ '
SELECT count(*) FROM CUSTOMERS
SELECT T2.dept_store_id , T2.store_name FROM departments AS T1 JOIN department_stores AS T2 ON T1.dept_store_id = T2.dept_store_id WHERE T1.department_name = "@@ market@@ ing" INTERSECT SELECT T2.dept_store_id , T2.store_name FROM departments AS T1 JOIN department_stores AS T2 ON T1.dept_store_id = T2.dept_store_id WHERE T1.department_name = "@@ manag@@ ing"
SELECT artist_name FROM artist WHERE country = "UK" INTERSECT SELECT T1.artist_name FROM artist AS T1 JOIN song AS T2 ON T1.artist_name = T2.artist_name WHERE T2.languages = "english"
SELECT count(*) FROM classroom WHERE building != 'Lamberton'
SELECT count(*) FROM city WHERE county_ID IN (SELECT county_ID FROM county_public_safety WHERE population > 200@@ 00@@ )
SELECT asset_@@ make , asset_model , asset_@@ details FROM Assets ORDER BY asset_@@ dis@@ po@@ se@@ d@@ _date ASC
SELECT sum(enr) FROM college WHERE cName NOT IN (SELECT cName FROM tryout WHERE pPos = "@@ goali@@ e")
SELECT T2.order_id , T2.order_status FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T1.customer_name = "Jeramie"
SELECT T1.Total_Points FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID = T2.People_ID ORDER BY T2.Age ASC LIMIT 1
SELECT name , headquarter FROM manufacturers ORDER BY revenue DESC
SELECT T2.Name , T1.ArtistId FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId = T2.@@ Artist@@ ID GROUP BY T1.ArtistId HAVING COUNT(*) >= 3 ORDER BY T2.Name
SELECT LOCATION FROM cinema EXCEPT SELECT LOCATION FROM cinema WHERE capacity > 800
SELECT College FROM match_season GROUP BY College HAVING count(*) >= 2 ORDER BY College DESC
SELECT dept_name FROM department ORDER BY dept_name
SELECT name FROM people WHERE height < (SELECT avg(height) FROM people@@ )
SELECT grant_id , count(*) FROM Documents GROUP BY grant_id ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT name) FROM projects
SELECT first_name , last_name , department_id FROM employees WHERE salary IN (SELECT MIN(salary) FROM employees GROUP BY department_@@ id)
SELECT policy_type_code FROM available_policies GROUP BY policy_type_code ORDER BY count(*) DESC LIMIT 1
SELECT TYPE FROM vocals AS T1 JOIN band AS T2 ON T1.bandmate = T2.id WHERE firstname = "Marianne" GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Employee WHERE salary BETWEEN 100000 AND 200000
SELECT Name FROM ship ORDER BY Tonnage ASC
SELECT DISTINCT customer_details FROM Customers
SELECT document_name FROM documents GROUP BY document_type_code ORDER BY count(*) DESC LIMIT 3 INTERSECT SELECT document_name FROM documents GROUP BY document_structure_code ORDER BY count(*) DESC LIMIT 3
SELECT avg(T1.Price) , T2.name FROM products AS T1 JOIN Manufacturers AS T2 ON T1.manufacturer = T2.code GROUP BY T2.name HAVING avg(T1.price) >= 150
SELECT count(*) FROM product AS T1 JOIN problems AS T2 ON T1.product_id = T2.product_id WHERE T1.product_name = "voluptatem"
SELECT activity_name FROM Activity
SELECT title FROM film WHERE rating = 'R@@ '
SELECT product_id FROM Order_@@ Ite@@ ms GROUP BY product_id HAVING count(*) > 3 UNION SELECT product_id FROM Product_Suppliers GROUP BY product_id HAVING sum(@@ total_amount_purchased) > 80000
SELECT T2.title , T2.director FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID WHERE T1.stars > (SELECT avg(T1.stars) FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID WHERE T2.director = "James Cameron@@ ")
SELECT T2.first_name , T2.last_name , count(T1.reports_to) FROM employees AS T1 JOIN employees AS T2 ON T1.reports_to = T2.id GROUP BY T1.reports_to ORDER BY count(T1.reports_to) DESC LIMIT 1;
SELECT T1.campus , sum(T2.@@ degrees) FROM campuses AS T1 JOIN degrees AS T2 ON T1.id = T2.campus WHERE T2.year >= 1998 AND T2.year <= 2002 GROUP BY T1.campus
SELECT T2.dept_name , avg(T1.stu_gpa) FROM student AS T1 JOIN department AS T2 ON T1.dept_code = T2.dept_code GROUP BY T1.dept_code ORDER BY avg(T1.stu_gpa) DESC LIMIT 1
SELECT T1.name FROM category AS T1 JOIN film_category AS T2 ON T1.category_id = T2.category_id JOIN film AS T3 ON T2.film_id = T3.@@ film_id WHERE T3.title = 'HUNGER ROOF'
SELECT T2.@@ monthly_@@ rental FROM Addresses AS T1 JOIN Student_Addresses AS T2 ON T1.address_id = T2.address_id WHERE T1.state_province_county = "Texas"
SELECT T1.subject_id , T2.subject_name , COUNT(*) FROM Courses AS T1 JOIN Subjects AS T2 ON T1.subject_id = T2.subject_id GROUP BY T1.subject_id ORDER BY COUNT(*) ASC
SELECT Address FROM LOCATIONS WHERE Location_Name = "UK Gallery"
SELECT count(*) , T1.name FROM airports AS T1 JOIN routes AS T2 ON T1.apid = T2.src_apid GROUP BY T1.name
SELECT name FROM member WHERE member_id NOT IN (SELECT member_id FROM membership_register_branch)
SELECT DISTINCT T1.name , T1.@@ location , T1.@@ product FROM enzyme AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.enzyme_id = T1.id WHERE T2.interaction_type = 'inhibitor'
SELECT customer_details FROM Customers EXCEPT SELECT T1.customer_details FROM Customers AS T1 JOIN Customer_Policies AS T2 ON T1.customer_id = T2.customer_id
SELECT count(*) FROM region AS t1 JOIN party AS t2 ON t1.@@ region_id = t2.@@ region_id JOIN party_events AS t3 ON t2.party_id = t3.@@ party_id WHERE t1.@@ region_name = "United Kingdom" AND t3.@@ Event@@ _Name = "An@@ nau@@ al Meet@@ ing"
SELECT order_id FROM shipments WHERE shipment_@@ date = (SELECT max(@@ shipment_@@ date) FROM ship@@ ment@@ s)
SELECT player_api_id FROM Player WHERE height >= 180 AND height <= 190 INTERSECT SELECT player_api_id FROM Player_Attributes WHERE preferred_foot = "@@ lef@@ t"
SELECT customer_name FROM customers WHERE customer_name LIKE "%A@@ lex@@ %"
SELECT name FROM procedures WHERE cost > 1000 UNION SELECT T3.name FROM physician AS T1 JOIN trained_in AS T2 ON T1.employeeid = T2.physician JOIN procedures AS T3 ON T3.code = T2.treatment WHERE T1.name = "John Wen"
SELECT T1.name , COUNT(*) FROM genres AS T1 JOIN tracks AS T2 ON T2.genre_id = T1.id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 5;
SELECT count(*) FROM Tasks
SELECT Investor FROM entrepreneur GROUP BY Investor ORDER BY COUNT(*) DESC LIMIT 1
SELECT Can@@ di@@ date_@@ ID FROM candidate ORDER BY oppose_rate LIMIT 1
SELECT problem_log_id , log_entry_date FROM problem_log WHERE problem_id = 10
SELECT count(*) FROM courses AS T1 JOIN student_course_attendance AS T2 ON T1.course_id = T2.course_id WHERE T2.student_id = 171
SELECT policy_type_code FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id = t2.customer_id WHERE t2.customer_details = "Dayana Robel"
SELECT department_id , SUM@@ (salary) FROM employees GROUP BY department_id HAVING count(*) >= 2
SELECT T1.name FROM physician AS T1 JOIN trained_in AS T2 ON T1.employeeid = T2.physician JOIN procedures AS T3 ON T3.code = T2.treatment WHERE T3.cost > 5000
SELECT Total_Horses FROM farm ORDER BY Total_Horses ASC
SELECT count(*) FROM device
SELECT count(*) , rank FROM captain WHERE age < 50 GROUP BY rank
SELECT Name FROM phone ORDER BY Price ASC
SELECT DISTINCT T1.city FROM addresses AS T1 JOIN people_addresses AS T2 ON T1.address_id = T2.address_id JOIN students AS T3 ON T2.person_id = T3.@@ student_id
SELECT t1.name FROM swimmer AS t1 JOIN record AS t2 ON t1.id = t2.swimmer_id GROUP BY t2.swimmer_id HAVING count(*) >= 2
SELECT COUNT(DISTINCT StuID) FROM ENROLLED_IN WHERE Gra@@ de = "B"
SELECT Name FROM member WHERE Country = "United States" OR Country = "Canada"
SELECT sum(T1.crs_credit) , T1.dept_code FROM course AS T1 JOIN CLASS AS T2 ON T1.crs_code = T2.crs_code GROUP BY T1.dept_code
SELECT avg(T3.@@ cost) FROM physician AS T1 JOIN trained_in AS T2 ON T1.employeeid = T2.physician JOIN procedures AS T3 ON T3.code = T2.treatment WHERE T1.name = "John Wen"
SELECT T1.customer_name , T1.customer_phone FROM customers AS T1 JOIN mailshot_customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.outcome_code = 'No Response'
SELECT T1.booking_id , T1.@@ amount_of_@@ re@@ f@@ und FROM Bookings AS T1 JOIN Payments AS T2 ON T1.booking_id = T2.@@ booking_id GROUP BY T1.booking_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.country FROM artist AS T1 JOIN song AS T2 ON T1.artist_name = T2.artist_name WHERE T1.gender = "Female" AND T2.languages = "bangla"
SELECT mail@@ ing_@@ date FROM Documents_@@ M@@ ai@@ led WHERE document_id = 7@@ ;
SELECT D@@ Phone FROM DEPARTMENT WHERE Room = 26@@ 8
SELECT count(DISTINCT la@@ st_@@ name) FROM actor
SELECT count(*) FROM ALBUM
SELECT title FROM course ORDER BY title , credits
SELECT name FROM buildings WHERE Status = "on-hold" ORDER BY Stories ASC
SELECT avg(@@ International_Passeng@@ ers) FROM airport
SELECT T2.@@ document_type_name FROM All_documents AS T1 JOIN Ref_document_types AS T2 ON T1.document_type_code = T2.document_type_code WHERE T1.@@ document_name = "@@ How to re@@ ad a book@@ "
SELECT T2.cmi_cross_ref_id , T2.master_customer_id , count(*) FROM B@@ usiness@@ _@@ R@@ ates AS T1 JOIN CMI_Cross_References AS T2 ON T1.cmi_cross_ref_id = T2.cmi_cross_ref_id GROUP BY T2.cmi_cross_ref_id
SELECT Open_Date , Open_Year FROM shop WHERE Shop_Name = "App@@ le"
SELECT count(*) FROM Employee
SELECT T2.Name , COUNT(*) FROM repair_assignment AS T1 JOIN technician AS T2 ON T1.technician_ID = T2.@@ technician_ID GROUP BY T2.Name
SELECT phone , post@@ al@@ _code FROM address WHERE address = '@@ 10@@ 31 D@@ au@@ g@@ av@@ p@@ ils Park@@ way@@ '
SELECT T2.lot_id , avg(amount_of_transaction) FROM TRANSACTIONS AS T1 JOIN Transaction@@ s_@@ Lots AS T2 ON T1.@@ transaction_id = T2.transaction_id GROUP BY T2.lot_id ORDER BY avg(amount_of_transaction)
SELECT party_name FROM party WHERE party_id NOT IN (SELECT party_id FROM M@@ ember@@ )
SELECT country FROM stadium WHERE capacity > 6@@ 0000 INTERSECT SELECT country FROM stadium WHERE capacity < 50000
SELECT gname FROM Plays_games AS T1 JOIN Video_games AS T2 ON T1.gameid = T2.gameid GROUP BY T1.gameid ORDER BY sum(hours_played) DESC LIMIT 1
SELECT StuID FROM Student WHERE sex = 'F' INTERSECT SELECT StuID FROM Sportsinfo WHERE sportname = "Football"
SELECT T2.song_name FROM files AS T1 JOIN song AS T2 ON T1.f_id = T2.f_id WHERE T1.formats = "mp3" INTERSECT SELECT song_name FROM song WHERE resolution < 1000
SELECT TYPE FROM ship WHERE flag = 'Pa@@ nam@@ a' INTERSECT SELECT TYPE FROM ship WHERE flag = 'M@@ al@@ ta'
SELECT last_name FROM staff WHERE email_address LIKE "%@@ wrau%"
SELECT count(*) , T1.name FROM genres AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id GROUP BY T1.@@ name@@ ;
SELECT name FROM artist EXCEPT SELECT T2.name FROM exhibition AS T1 JOIN artist AS T2 ON T1.artist_id = T2.artist_id WHERE T1.year = 2004
SELECT Name FROM wrestler WHERE Days_held < 100
SELECT T1.@@ sent_date FROM documents AS T1 JOIN Grants AS T2 ON T1.grant_id = T2.grant_id JOIN Organisations AS T3 ON T2.organisation_id = T3.@@ organisation_id JOIN organisation_Types AS T4 ON T3.organisation_type = T4.@@ organisation_type WHERE T2.@@ grant_amount > 5000 AND T4.@@ organisation_type_description = 'Research'
SELECT T2.Name FROM debate_people AS T1 JOIN people AS T2 ON T1.@@ N@@ egative = T2.People_ID GROUP BY T2.Name HAVING COUNT(*) >= 2
SELECT T2.title , T1.rID , T1.stars , min(T1.stars) FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID GROUP BY T1.rID
SELECT T2.customer_first_name , T1.customer_id FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 2
SELECT count(DISTINCT T2.D@@ eleg@@ ate) FROM county AS T1 JOIN election AS T2 ON T1.County_id = T2.District WHERE T1.Population > 50000
SELECT state FROM park GROUP BY state HAVING count(*) > 2;
SELECT T1.id , T1.trade_name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id = T1.id GROUP BY T1.id HAVING COUNT(*) >= 3
SELECT count(*) FROM artist WHERE country = "Bangladesh"
SELECT name FROM storm EXCEPT SELECT T1.name FROM storm AS T1 JOIN affected_region AS T2 ON T1.storm_id = T2.storm_id GROUP BY T1.storm_id HAVING count(*) >= 2
SELECT count(*) FROM department AS T1 JOIN course AS T2 ON T1.dept_code = T2.dept_code WHERE dept_name = "Computer Info. System@@ s"
SELECT Date , Venue FROM workshop ORDER BY Venue
SELECT customer_name FROM customers WHERE payment_method != 'C@@ ash@@ '
SELECT DISTINCT source_system_code FROM cmi_cross_references WHERE source_system_code LIKE '%@@ en@@ %'
SELECT min(age) , max(age) , avg(age) FROM people
SELECT T1.Aircraft , COUNT(*) FROM aircraft AS T1 JOIN MATCH AS T2 ON T1.Aircraft_ID = T2.Winning_Aircraft GROUP BY T2.Winning_Aircraft
SELECT T1.order_id FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id ORDER BY count(*) DESC LIMIT 1
SELECT bedType , avg(basePrice) FROM Rooms GROUP BY bedType;
SELECT t2.@@ unit_of_measure , t2.product_category_code FROM products AS t1 JOIN ref_product_categories AS t2 ON t1.@@ product_category_code = t2.product_category_code WHERE t1.product_name = "cherv@@ il"
SELECT avg(@@ HS) FROM Player
SELECT avg(T1.HS) , max(T1.HS) FROM player AS T1 JOIN tryout AS T2 ON T1.pID = T2.pID WHERE T2.decision = 'yes'
SELECT T2.Name FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId = T2.ArtistId GROUP BY T2.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT max(Age) FROM STUDENT
SELECT T1.surname , T1.driverid FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid = T2.driverid GROUP BY T1.driverid HAVING count(*) = 11 INTERSECT SELECT T1.surname , T1.driverid FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid GROUP BY T1.driverid HAVING count(*) > 5
SELECT T2.department_name , COUNT(*) FROM employees AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id GROUP BY T2.department_name
SELECT Team FROM player ORDER BY Team ASC
SELECT flno FROM Flight WHERE distance > 2000
SELECT T1.first_name , T1.job_id FROM employees AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id WHERE T2.department_name = 'Finance'
SELECT DISTINCT address@@ _type_code FROM customer_addresses
SELECT * FROM College ORDER BY enr
SELECT count(*) FROM list
SELECT T1.project_id , count(*) FROM Project_Staff AS T1 JOIN Projects AS T2 ON T1.project_id = T2.project_id GROUP BY T1.project_id ORDER BY count(*) ASC
SELECT payment_method FROM Customers GROUP BY payment_method ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT pName FROM Player WHERE pName LIKE '%a%'
SELECT T4.instrument FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate = T2.id JOIN Songs AS T3 ON T3.SongId = T1.SongId JOIN Instruments AS T4 ON T4.songid = T3.songid AND T4.bandmateid = T2.id WHERE T2.lastname = "Heilo" AND T3.title = "Le Pop"
SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id = T2.track_id JOIN playlists AS T3 ON T2.playlist_id = T3.id WHERE T3.name = '@@ Movi@@ es' INTERSECT SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id = T2.track_id JOIN playlists AS T3 ON T2.playlist_id = T3.id WHERE T3.name = 'M@@ usic'
SELECT COUNT(DISTINCT Artist_ID) FROM volume
SELECT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName = T2.cName WHERE T2.pPos = 'goalie' INTERSECT SELECT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName = T2.cName WHERE T2.pPos = 'mid'
SELECT T1.forename , T1.surname , T1.driverid FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid = T2.driverid GROUP BY T1.driverid HAVING count(*) > 8 UNION SELECT T1.forename , T1.surname , T1.driverid FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid GROUP BY T1.driverid HAVING count(*) > 5
SELECT count(*) FROM Settlements
SELECT fname , lname FROM authors ORDER BY lname
SELECT price_range FROM HOTELS
SELECT count(*) FROM postseason WHERE YEAR = 1885 AND ties = 1;
SELECT count(*) FROM Customers WHERE customer_id NOT IN (SELECT customer_id FROM Accounts)
SELECT count(*) , dept_code FROM CLASS AS T1 JOIN course AS T2 ON T1.crs_code = T2.crs_code GROUP BY dept_code
SELECT f_id FROM files WHERE formats = "mp3"
SELECT eid FROM Employee WHERE salary > 100000
SELECT T1.Name FROM ST@@ A@@ F@@ F AS T1 JOIN TOURIST_ATTRACTIONS AS T2 ON T1.Tourist_Attraction_ID = T2.Tourist_Attraction_ID WHERE T2.Name = "US museum@@ "
SELECT Amount_Settled , Amount_Claimed FROM Claims ORDER BY Amount_Settled ASC LIMIT 1
SELECT user_name , pass@@ word FROM users GROUP BY role_code ORDER BY count(*) DESC LIMIT 1
SELECT name , headquarter , revenue FROM manufacturers ORDER BY revenue DESC
SELECT T2.roomName , T1.Rate , T1.C@@ heckIn , T1.C@@ heck@@ O@@ ut FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room = T2.RoomId GROUP BY T1.Room ORDER BY T1.Rate DESC LIMIT 1;
SELECT Fname , Lname , phone FROM Faculty WHERE Sex = 'F'
SELECT f_id FROM song WHERE resolution > (SELECT avg(resolution) FROM song WHERE genre_is = "modern@@ ")
SELECT count(*) , city FROM airports WHERE country = 'United States' GROUP BY city ORDER BY count(*) DESC
SELECT T2.dept_name , T1.dept_code FROM professor AS T1 JOIN department AS T2 ON T1.dept_code = T2.dept_code WHERE T1.prof_high_degree = 'Ph.D.' GROUP BY T1.dept_code ORDER BY count(*) DESC LIMIT 1
SELECT customer_name FROM customers EXCEPT SELECT t1.customer_name FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id = t2.customer_id JOIN order_items AS t3 ON t2.order_id = t3.order_id JOIN products AS t4 ON t3.product_id = t4.product_id WHERE t4.product_details = 'Latte'
SELECT T1.@@ Order_Date FROM Customer_Orders AS T1 JOIN ORDER_ITEMS AS T2 ON T1.@@ Order_ID = T2.@@ Order_ID JOIN Products AS T3 ON T2.Product_ID = T3.@@ Product_ID WHERE T3.@@ Product_price > 1000
SELECT DISTINCT T2.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.friend WHERE T1.age < (SELECT avg(age) FROM person)
SELECT T2.C@@ ity FROM CUSTOMER AS T1 JOIN EMPLOYEE AS T2 ON T1.SupportRepId = T2.EmployeeId WHERE T1.@@ Po@@ st@@ al@@ Code = "@@ 7017@@ 4"
SELECT name FROM people WHERE height > 200 OR height < 190
SELECT T3.Festival_Name FROM nomination AS T1 JOIN artwork AS T2 ON T1.Artwork_ID = T2.Artwork_ID JOIN festival_detail AS T3 ON T1.Festival_ID = T3.Festival_ID WHERE T2.Type = "Program Talent Sho@@ w"
SELECT DISTINCT T1.M@@ a@@ jor FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID = T2.Treasurer_Vote
SELECT T1.employee_name FROM Employees AS T1 JOIN ROLES AS T2 ON T1.role_code = T2.role_code WHERE T2.role_name = "E@@ dit@@ or"
SELECT date , max_temperature_f - min_temperature_f FROM weather ORDER BY max_temperature_f - min_temperature_f LIMIT 1
SELECT count(*) FROM WINE WHERE Winery = "Ro@@ ber@@ t B@@ i@@ ale"
SELECT allergytype , count(*) FROM Allergy_type GROUP BY allergytype
SELECT T2.title , T1.stars , T2.director , max(T1.stars) FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID WHERE director != "null" GROUP BY director
SELECT T1.city FROM Addresses AS T1 JOIN Staff AS T2 ON T1.address_id = T2.staff_address_id WHERE T2.first_name = "Janessa" AND T2.last_name = "Sawayn";
SELECT avg(bikes_available) FROM status WHERE station_id NOT IN (SELECT id FROM station WHERE city = "Palo Al@@ to")
SELECT cust_name , acc_type , acc_bal FROM customer ORDER BY credit_score DESC LIMIT 1
SELECT T1.campus FROM campuses AS T1 JOIN faculty AS T2 ON T1.id = T2.campus WHERE T2.year = 200@@ 3 ORDER BY T2.faculty DESC LIMIT 1
SELECT YEAR , book_title , publisher FROM book_club ORDER BY YEAR DESC
SELECT T1.Name , T1.Description FROM PHOTOS AS T1 JOIN TOURIST_ATTRACTIONS AS T2 ON T1.Tourist_Attraction_ID = T2.Tourist_Attraction_ID WHERE T2.Name = "film festival@@ "
SELECT name FROM head WHERE born_state != 'California'
SELECT DISTINCT T1.customer_first_name , T1.customer_last_name FROM Customers AS T1 JOIN Accounts AS T2 ON T1.customer_id = T2.customer_id
SELECT T1.first_name , T2.department_name FROM employees AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id
SELECT DISTINCT T1.Fname , T1.LName FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID = T2.VICE_P@@ resident_VOTE WHERE T1.age = 18
SELECT avg(age) , job FROM Person GROUP BY job
SELECT Name , LOCATION FROM wrestler
SELECT avg(t1.@@ access_count) FROM documents AS t1 JOIN document_@@ functional_areas AS t2 ON t1.document_code = t2.document_code JOIN functional_areas AS t3 ON t2.@@ functional_area@@ _code = t3.functional_area@@ _code WHERE t3.functional_area@@ _description = "Acknowledgement@@ "
SELECT transaction_type_code , avg(amount_of_transaction) FROM TRANSACTIONS GROUP BY transaction_type_code
SELECT t1.name , t2.@@ price_@@ in_@@ dol@@ lar FROM furniture AS t1 JOIN furniture_manufacte AS t2 ON t1.Furniture_ID = t2.Furniture_ID
SELECT brand , name FROM camera_lens ORDER BY max_@@ ap@@ ert@@ ure DESC
SELECT T1.stu_fname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num = T2.stu_num JOIN CLASS AS T3 ON T2.class_code = T3.class_code JOIN course AS T4 ON T3.crs_code = T4.crs_code JOIN department AS T5 ON T5.dept_code = T4.dept_code WHERE T5.dept_name = 'Accounting' INTERSECT SELECT T1.stu_fname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num = T2.stu_num JOIN CLASS AS T3 ON T2.class_code = T3.class_code JOIN course AS T4 ON T3.crs_code = T4.crs_code JOIN department AS T5 ON T5.dept_code = T4.dept_code WHERE T5.dept_name = 'Computer Info. Systems'
SELECT name FROM web_client_accelerator WHERE name LIKE "%@@ Oper@@ a%"
SELECT name FROM Person WHERE age = (SELECT max(age) FROM person)
SELECT Team , Starting_Year FROM technician
SELECT count(*) FROM list AS T1 JOIN teachers AS T2 ON T1.classroom = T2.classroom WHERE T1.firstname = "M@@ AD@@ LOC@@ K" AND T1.lastname = "@@ RA@@ Y"
SELECT count(*) FROM institution WHERE institution_id NOT IN (SELECT institution_id FROM prote@@ in@@ )
SELECT T1.Service_Type_Description FROM Ref_Service_Types AS T1 JOIN Services AS T2 ON T1.Service_Type_Code = T2.Service_Type_Code WHERE T2.@@ Product_Price > 100
SELECT district_name FROM district WHERE city_area > 10 OR City_Population > 100000
SELECT t1.last_name FROM staff AS t1 JOIN complaints AS t2 ON t1.staff_id = t2.staff_id JOIN products AS t3 ON t2.product_id = t3.product_id ORDER BY t3.@@ product_price LIMIT 1
SELECT count(DISTINCT affili@@ ation) FROM university
SELECT customer_name , customer_id FROM customers WHERE customer_address LIKE "%@@ TN@@ %"
SELECT T1.city FROM city AS T1 JOIN temperature AS T2 ON T1.city_id = T2.city_id ORDER BY T2.F@@ e@@ b DESC LIMIT 1
SELECT DISTINCT T1.type FROM operate_company AS T1 JOIN flight AS t2 ON T1.id = T2.company_id WHERE T2.@@ velocity < 200
SELECT Winery FROM WINE GROUP BY Winery HAVING count(*) >= 4
SELECT name FROM enzyme ORDER BY name DESC
SELECT count(*) FROM COURSES
SELECT T1.lname FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID = T2.facID JOIN activity AS T3 ON T2.actid = T2.actid WHERE T3.activity_name = 'Canoeing' INTERSECT SELECT T1.lname FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID = T2.facID JOIN activity AS T3 ON T2.actid = T2.actid WHERE T3.activity_name = 'Kayaking'
SELECT T2.fname , T2.lname FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID = T2.advisor WHERE T1.fname = "M@@ icha@@ el@@ " AND T1.lname = "G@@ oodric@@ h"
SELECT name FROM city WHERE county_ID = (SELECT county_ID FROM county_public_safety ORDER BY Police_officers DESC LIMIT 1)
SELECT count(*) , customer_id FROM Accounts GROUP BY customer_id
SELECT T2.Party FROM election AS T1 JOIN representative AS T2 ON T1.Representative_ID = T2.Representative_ID ORDER BY votes ASC LIMIT 1
SELECT T1.@@ student_details FROM students AS T1 JOIN student_course_registrations AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT CName FROM COURSE WHERE Credits = 1
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Plays_games
SELECT T2.Hometown FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID = T2.People_ID GROUP BY T2.Hometown HAVING COUNT(*) >= 2
SELECT T1.@@ Order_Date FROM Customer_Orders AS T1 JOIN ORDER_ITEMS AS T2 ON T1.@@ Order_ID = T2.@@ Order_ID JOIN Products AS T3 ON T2.Product_ID = T3.@@ Product_ID WHERE T3.@@ Product_price > 1000
SELECT customer_phone FROM available_policies WHERE policy_type_code = (SELECT policy_type_code FROM available_policies GROUP BY policy_type_code ORDER BY count(*) DESC LIMIT 1)
SELECT product_id , count(DISTINCT order_@@ id) FROM Order_items GROUP BY product_id
SELECT T3.Location FROM party_host AS T1 JOIN HOST AS T2 ON T1.Host_ID = T2.Host_ID JOIN party AS T3 ON T1.Party_ID = T3.Party_ID WHERE T2.Age > 50
SELECT sum(gamesplayed) FROM Sportsinfo
SELECT district_name FROM district ORDER BY city_area ASC LIMIT 1
SELECT DISTINCT last_name FROM Maintenance_Engineers
SELECT count(DISTINCT city) FROM station
SELECT title FROM film WHERE spec@@ ial_@@ feat@@ ures LIKE '%D@@ eleted Scen@@ es@@ %'
SELECT count(*) FROM Person WHERE age > (SELECT max(age) FROM person WHERE job = 'engineer')
SELECT count(*) FROM list AS T1 JOIN teachers AS T2 ON T1.classroom = T2.classroom WHERE T1.firstname = "C@@ HRISS@@ Y" AND T1.lastname = "N@@ ABOZ@@ N@@ Y"
SELECT t1.@@ address , t1.@@ shop_id FROM shop AS t1 JOIN happy_hour AS t2 ON t1.@@ shop_id = t2.@@ shop_id WHERE MONTH = 'M@@ ay@@ '
SELECT LOCATION FROM cinema WHERE capacity > 300 GROUP BY LOCATION HAVING count(*) > 1
SELECT T1.building_@@ address FROM Apartment_Buildings AS T1 JOIN Apartments AS T2 ON T1.building_id = T2.building_id WHERE T2.@@ bathroom_count > 2
SELECT Name FROM technician WHERE Team != "NY@@ Y"
SELECT t1.@@ E@@ ffe@@ ctiv@@ e_@@ Date FROM claims AS t1 JOIN settlements AS t2 ON t1.@@ claim_id = t2.@@ claim_id GROUP BY t1.@@ claim_id ORDER BY sum(t2.@@ settlement_amount) DESC LIMIT 1
SELECT cust_name FROM customer EXCEPT SELECT cust_name FROM customer WHERE acc_type = 'saving'
SELECT AVG(Price) , AVG(@@ Cas@@ es) FROM WINE WHERE YEAR = 2009 AND Grape = "Z@@ inf@@ an@@ de@@ l"
SELECT user_name , pass@@ word FROM users GROUP BY role_code ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.customer_name FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id JOIN products AS T4 ON T3.product_id = T4.product_id WHERE T4.product_name = "@@ ke@@ ybo@@ ard"
SELECT candidate_id FROM candidate_assessments WHERE asessment_outcome_code = "Pass"
SELECT T2.bname FROM loan AS T1 JOIN bank AS T2 ON T1.branch_id = T2.branch_id JOIN customer AS T3 ON T1.cust_id = T3.cust_id WHERE T3.credit_score < 100
SELECT max(@@ Weeks_on_Top) , min(@@ Weeks_on_Top) FROM volume
SELECT T1.part_name , count(*) FROM Parts AS T1 JOIN Ass@@ et_@@ Parts AS T2 ON T1.part_id = T2.part_id GROUP BY T1.part_name
SELECT DISTINCT t1.fname , t1.lname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid = t2.authid JOIN inst AS t3 ON t2.instid = t3.instid WHERE t3.name = "Google"
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.@@ d@@ rib@@ bl@@ ing = ( SELECT max(@@ overall_@@ rating) FROM Player_@@ Attribut@@ es)
SELECT count(*) FROM store
SELECT document_@@ status@@ _description FROM Ref_Document_@@ Status WHERE document_status_code = "@@ working@@ ";
SELECT order_id , count(*) FROM Order_items GROUP BY order_id
SELECT Name FROM WINE WHERE YEAR = "@@ 200@@ 8"
SELECT count(*) FROM roller_coaster
SELECT name FROM person EXCEPT SELECT T2.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.friend WHERE T1.job = 'student'
SELECT first_name , last_name , salary , department_id , MAX@@ (salary) FROM employees GROUP BY department_id
SELECT Name FROM ARTIST WHERE Name LIKE "%a%"
SELECT Cas@@ e_@@ b@@ urden FROM county_public_safety ORDER BY Population DESC
SELECT max(T2.fastestlapspeed) FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid WHERE T1.year = 2008 AND T1.name = "Monaco Grand Prix"
SELECT LOCATION FROM school WHERE School_ID NOT IN (SELECT School_ID FROM Play@@ er)
SELECT T1.date , T2.@@ player FROM game AS T1 JOIN injury_accident AS T2 ON T1.id = T2.game_id ORDER BY T1.season DESC
SELECT T2.guest_first_name , T2.@@ guest_last_name FROM Apartment_Bookings AS T1 JOIN Guests AS T2 ON T1.guest_id = T2.guest_id WHERE T1.booking_status_code = "Confirmed"
SELECT COUNT(DISTINCT Country) FROM climber
SELECT Major FROM STUDENT WHERE Sex = "M"
SELECT birth_country FROM player GROUP BY birth_country ORDER BY count(*) ASC LIMIT 3;
SELECT cell_mobile_number , email_address FROM STUDE@@ N@@ TS
SELECT Date_Claim_Made FROM Claims WHERE Amount_Settled <= ( SELECT avg(@@ Amount_Settled) FROM Claims )
SELECT ResType@@ Description FROM Restaurant@@ _Type WHERE ResType@@ Name = "S@@ and@@ wich@@ ";
SELECT T1.Name FROM Tourist_Attractions AS T1 JOIN VISITORS AS T2 JOIN VISITS AS T3 ON T1.Tourist_Attraction_ID = T3.Tourist_Attraction_ID AND T2.Tourist_ID = T3.Tourist_ID WHERE T2.Tourist_Details = "Vincent" INTERSECT SELECT T1.Name FROM Tourist_Attractions AS T1 JOIN VISITORS AS T2 JOIN VISITS AS T3 ON T1.Tourist_Attraction_ID = T3.Tourist_Attraction_ID AND T2.Tourist_ID = T3.Tourist_ID WHERE T2.Tourist_Details = "Mar@@ cel@@ le"
SELECT DISTINCT T1.Fate FROM mission AS T1 JOIN ship AS T2 ON T1.Ship_ID = T2.Ship_ID WHERE T2.@@ Nationality = "United States"
SELECT Official_Name FROM city WHERE City@@ _ID NOT IN (SELECT Ho@@ st_city_ID FROM farm_@@ competition@@ )
SELECT name FROM stadium WHERE capacity < (SELECT avg(capacity) FROM stadium@@ )
SELECT name FROM track WHERE track_id NOT IN (SELECT track_id FROM rac@@ e)
SELECT state FROM customers GROUP BY state ORDER BY count(*) LIMIT 1
SELECT Policy_Type_Code FROM Customer_Policies GROUP BY Policy_Type_Code ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT product_type_code) FROM products
SELECT T1.zip_postcode FROM Addresses AS T1 JOIN Teachers AS T2 ON T1.address_id = T2.address_id WHERE T2.first_name = "L@@ yla"
SELECT max(@@ Cows) , min(@@ Cows) FROM farm
SELECT Advisor FROM STUDENT GROUP BY Advisor HAVING count(*) > 2
SELECT name FROM products WHERE price <= 200
SELECT country , count(*) FROM stadium GROUP BY country
SELECT count(*) FROM Tasks
SELECT StuID FROM Student WHERE sex = 'M' EXCEPT SELECT StuID FROM Sportsinfo WHERE sportname = "Football"
SELECT count(*) FROM list AS T1 JOIN teachers AS T2 ON T1.classroom = T2.classroom WHERE T1.firstname = "M@@ AD@@ LOC@@ K" AND T1.lastname = "@@ RA@@ Y"
SELECT invoice_number FROM invoices WHERE invoice_date < "1989-09-03" OR invoice_date > "2007-12-25"
SELECT T1.title FROM item AS T1 JOIN review AS T2 ON T1.i_id = T2.i_id GROUP BY T2.i_id ORDER BY avg(T2.rating) LIMIT 1
SELECT classroom , count(*) FROM list GROUP BY classroom
SELECT T2.lname , T2.fname FROM Sports@@ In@@ f@@ o AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T1.SportName = "Football" OR T1.SportName = "Lacross@@ e"
SELECT star_rating_code , avg(price_range) FROM HOTELS GROUP BY star_rating_code
SELECT T1.name , T1.city , T2.src_apid FROM airports AS T1 JOIN routes AS T2 ON T1.apid = T2.src_apid GROUP BY T2.src_apid ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid = T2.custid JOIN savings AS T3 ON T1.custid = T3.custid ORDER BY T2.balance + T3.balance LIMIT 1
SELECT T2.Fname , T2.Lname FROM MINOR_IN AS T1 JOIN STUDENT AS T2 ON T1.StuID = T2.StuID WHERE T1.DNO = 140
SELECT DISTINCT t1.clubname FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t3.@@ advisor = 1121
SELECT T2.product_name FROM problems AS T1 JOIN product AS T2 ON T1.product_id = T2.product_id GROUP BY T2.product_name ORDER BY count(*) DESC LIMIT 3
SELECT fname , age FROM Student WHERE StuID IN (SELECT StuID FROM Sportsinfo WHERE Sport@@ Name = "Football" INTERSECT SELECT StuID FROM Sportsinfo WHERE Sport@@ Name = "Lacross@@ e")
SELECT T2.Name , COUNT(*) FROM debate_people AS T1 JOIN people AS T2 ON T1.Affirmative = T2.People_ID GROUP BY T2.Name
SELECT count(DISTINCT class_@@ section@@ ) FROM CLASS WHERE crs_code = 'ACCT-211'
SELECT building_@@ short_name FROM Apartment_Buildings WHERE building_manager	 = "Emma"
SELECT minister FROM party ORDER BY left_office DESC LIMIT 1
SELECT customer_phone , customer_email FROM Customers WHERE customer_first_name = "A@@ ni@@ yah" AND customer_last_name = "F@@ e@@ est"
SELECT artist_name FROM artist WHERE country = "UK" INTERSECT SELECT artist_name FROM song WHERE languages = "english"
SELECT max(T2.resolution) , min(T2.@@ resolution) FROM files AS T1 JOIN song AS T2 ON T1.f_id = T2.f_id WHERE T1.duration LIKE "3@@ :%"
SELECT faculty FROM faculty AS T1 JOIN campuses AS T2 ON T1.campus = T2.id WHERE T1.year = 2004 AND T2.campus = "San Francisco State University"
SELECT count(*) , T1.blockcode FROM BLOCK AS T1 JOIN room AS T2 ON T1.blockfloor = T2.blockfloor AND T1.blockcode = T2.blockcode GROUP BY T1.blockcode
SELECT T1.name , T1.id FROM station AS T1 JOIN status AS T2 ON T1.id = T2.station_id GROUP BY T2.station_id HAVING avg(T2.@@ bikes_available) > 14 UNION SELECT name , id FROM station WHERE installation_date LIKE "12@@ /@@ %"
SELECT T1.course_name , T1.course_description FROM Courses AS T1 JOIN Subjects AS T2 ON T1.subject_id = T2.subject_id WHERE T2.subject_name = "Computer Science"
SELECT avg(@@ ve@@ loc@@ ity) FROM flight WHERE pilot = 'Thompson'
SELECT languages FROM song GROUP BY languages ORDER BY count(*) DESC LIMIT 1
SELECT avg(@@ Number_of_@@ host@@ s) FROM party
SELECT founded FROM university WHERE affiliation != 'Public' ORDER BY founded DESC LIMIT 1
SELECT T2.friend FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.friend WHERE T2.name = 'Alice' AND T1.gender = 'female'
SELECT T2.@@ prote@@ in_name , T1.@@ institution FROM institution AS T1 JOIN protein AS T2 ON T1.institution_id = T2.institution_id
SELECT cName FROM college ORDER BY enr DESC LIMIT 3
SELECT t1.lname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid = t2.authid JOIN papers AS t3 ON t2.paperid = t3.paperid WHERE t3.title = "Binders Unboun@@ d"
SELECT DISTINCT t2.customer_details FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id = t2.customer_id WHERE t1.policy_type_code = "Deputy"
SELECT T2.Hometown , COUNT(*) FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID = T2.People_ID GROUP BY T2.Hometown
SELECT customer_name FROM customers
SELECT policy_type_code FROM policies GROUP BY policy_type_code ORDER BY count(*) DESC LIMIT 1
SELECT Product_ID FROM INVOICES GROUP BY Product_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT zip_code FROM weather GROUP BY zip_code HAVING avg(mean_@@ humid@@ ity) < 70 INTERSECT SELECT zip_code FROM trip GROUP BY zip_code HAVING count(*) >= 100
SELECT DISTINCT Destruction_Authorised_by_Employee_ID FROM Documents_to_be_destroyed
SELECT name FROM instructor WHERE id NOT IN (SELECT id FROM teaches WHERE semester = 'Spr@@ ing')
SELECT Publisher FROM publication WHERE Price > 10000000 INTERSECT SELECT Publisher FROM publication WHERE Price < 5000000
SELECT T1.task_details , T1.task_id , T2.project_id FROM Tasks AS T1 JOIN Projects AS T2 ON T1.project_id = T2.project_id WHERE T2.project_details = 'omnis' UNION SELECT T1.task_details , T1.task_id , T2.project_id FROM Tasks AS T1 JOIN Projects AS T2 ON T1.project_id = T2.project_id JOIN Project_outcomes AS T3 ON T2.project_id = T3.project_id GROUP BY T2.project_id HAVING count(*) > 2
SELECT T2.@@ Building FROM COURSE AS T1 JOIN FACULTY AS T2 ON T1.Instructor = T2.FacID GROUP BY T1.Instructor ORDER BY count(*) DESC LIMIT 1
SELECT mID FROM Rating EXCEPT SELECT T1.mID FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID = T2.rID WHERE T2.name = "Brittany Harri@@ s"
SELECT DISTINCT Hometown FROM people EXCEPT SELECT DISTINCT T2.Hometown FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID = T2.People_ID
SELECT t1.name , t1.age FROM pilot AS t1 JOIN MATCH AS t2 ON t1.pilot_id = t2.winning_pilot ORDER BY t1.age LIMIT 1
SELECT title FROM course WHERE course_id NOT IN (SELECT course_id FROM prereq)
SELECT count(*) FROM Accounts
SELECT t3.characteristic_name , t3.characteristic@@ _data_type FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id = t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id = t3.characteristic_id WHERE t1.product_name = "cumin"
SELECT count(DISTINCT dept_name) FROM course
SELECT T1.name , T1.@@ salary FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid = T2.eid GROUP BY T1.eid ORDER BY count(*) DESC LIMIT 1
SELECT customer_id , count(*) FROM Accounts GROUP BY customer_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , Compet@@ ition FROM MATCH GROUP BY Compet@@ ition
SELECT T1.age FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.friend WHERE T2.name = 'Zach' AND T2.year = (SELECT max(YEAR) FROM PersonFriend WHERE name = 'Zach')
SELECT count(*) FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t1.clubname = "Pen and Paper Gaming"
SELECT customer_id , count(*) FROM Customers_cards GROUP BY customer_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM manufacturers WHERE revenue > (SELECT avg(revenue) FROM manufactur@@ ers)
SELECT count(*) , semester , YEAR FROM SECTION GROUP BY semester , YEAR
SELECT poll_source FROM candidate ORDER BY oppose_rate DESC LIMIT 1
SELECT T3.Name FROM affected_region AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id JOIN storm AS T3 ON T1.storm_id = T3.storm_id WHERE T2.@@ Region@@ _name = 'A@@ f@@ gh@@ an@@ ist@@ an' INTERSECT SELECT T3.Name FROM affected_region AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id JOIN storm AS T3 ON T1.storm_id = T3.storm_id WHERE T2.@@ Region@@ _name = '@@ Al@@ ban@@ ia'
SELECT t3.characteristic_name FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id = t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id = t3.characteristic_id WHERE t1.product_name = "sesame" AND t3.characteristic@@ _type_code = "Grade@@ "
SELECT DISTINCT T1.LName FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID = PRESIDENT_Vote EXCEPT SELECT DISTINCT LName FROM STUDENT WHERE Advisor = "2@@ 19@@ 2"
SELECT phone_number FROM customers UNION SELECT phone_number FROM staff
SELECT count(*) FROM film WHERE title LIKE "%D@@ ummy%"
SELECT Country , COUNT(*) FROM perpetrator GROUP BY Country
SELECT Denomination , COUNT(*) FROM school GROUP BY Denomination
SELECT T1.project_details FROM Projects AS T1 JOIN Project_outcomes AS T2 ON T1.project_id = T2.project_id JOIN Research_outcomes AS T3 ON T2.outcome_code = T3.@@ outcome_code WHERE T3.@@ outcome_description LIKE '%@@ Publish@@ ed@@ %'
SELECT DISTINCT Name FROM WINE WHERE Price > (SELECT min(@@ Price) FROM wine WHERE Winery = "John Anth@@ on@@ y")
SELECT count(DISTINCT instrument) FROM instruments AS T1 JOIN songs AS T2 ON T1.songid = T2.songid WHERE title = "Le Pop"
SELECT T2.balance , T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid = T2.custid JOIN savings AS T3 ON T1.custid = T3.custid ORDER BY T3.balance LIMIT 1
SELECT t2.date_@@ opened , t2.date_@@ clo@@ sed FROM customers AS t1 JOIN customers_policies AS t2 ON t1.customer_id = t2.customer_id WHERE t1.customer_name LIKE "%Diana%"
SELECT count(*) FROM Student WHERE age = 18
SELECT T1.claim_id , T1.date_claim_made , T1.Date_Claim_Settled FROM Claims AS T1 JOIN Settlements AS T2 ON T1.Claim_id = T2.Claim_id GROUP BY T1.claim_id HAVING count(*) = 1
SELECT DISTINCT title FROM vocals AS t1 JOIN songs AS t2 ON t1.songid = t2.songid EXCEPT SELECT t2.title FROM vocals AS t1 JOIN songs AS t2 ON t1.songid = t2.songid WHERE TYPE = "back"
SELECT T1.duration , T1.@@ file@@ _@@ size , T1.formats FROM files AS T1 JOIN song AS T2 ON T1.f_id = T2.f_id WHERE T2.genre_is = "@@ p@@ op" ORDER BY T2.song_name
SELECT T1.date_of_enrolment FROM Student_Course_Enrolment AS T1 JOIN Student_Tests_Taken AS T2 ON T1.registration_id = T2.registration_id WHERE T2.test_result = "Pass"
SELECT t1.name , t1.sex FROM people AS t1 JOIN candidate AS t2 ON t1.people_id = t2.people_id ORDER BY t2.support_rate DESC LIMIT 1
SELECT AVG(UnitPrice) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId = T2.GenreId WHERE T1.Name = "Jazz"
SELECT DISTINCT title FROM vocals AS t1 JOIN songs AS t2 ON t1.songid = t2.songid EXCEPT SELECT t2.title FROM vocals AS t1 JOIN songs AS t2 ON t1.songid = t2.songid WHERE TYPE = "back"
SELECT T1.organisation_type , T1.organisation_id FROM Organisations AS T1 JOIN Research_Staff AS T2 ON T1.organisation_id = T2.employer_organisation_id GROUP BY T1.organisation_id ORDER BY count(*) DESC LIMIT 1
SELECT shipping_agent@@ _code FROM Ref_Shipping_Agents WHERE shipping_agent@@ _name = "U@@ PS";
SELECT T2.name , count(*) FROM train_station AS T1 JOIN station AS T2 ON T1.station_id = T2.station_id GROUP BY T1.station_id
SELECT employee_id FROM Employees EXCEPT SELECT Destruction_Authorised_by_Employee_ID FROM Documents_to_be_destroyed
SELECT T1.campus FROM campuses AS t1 JOIN enrollments AS t2 ON t1.id = t2.campus WHERE t2.year = 195@@ 6 AND total@@ enroll@@ ment_@@ ay > 4@@ 00 AND F@@ TE@@ _@@ A@@ Y > 200
SELECT count(*) , T1.dormid FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid = T2.dormid WHERE T1.student_capacity > 100 GROUP BY T1.dormid
SELECT name FROM Person WHERE gender = 'male' AND age = (SELECT min(age) FROM person WHERE gender = 'male' )
SELECT other_hotel_details FROM HOTELS ORDER BY price_range DESC LIMIT 3
SELECT count(*) FROM market WHERE Number_cities < 300
SELECT FacID FROM Faculty_participates_in INTERSECT SELECT advisor FROM Student
SELECT max(@@ customer_code) , min(@@ customer_code) FROM Customers
SELECT count(*) FROM technician
SELECT state_province_county , country FROM addresses WHERE zip_postcode LIKE "4@@ %"
SELECT title FROM Movie WHERE YEAR = (SELECT max(YEAR) FROM Movie)
SELECT T2.name , T3.name FROM accelerator_compatible_browser AS T1 JOIN browser AS T2 ON T1.b@@ rows@@ er_id = T2.id JOIN web_client_accelerator AS T3 ON T1.@@ accelerator_id = T3.id ORDER BY T1.@@ compatible@@ _s@@ ince_@@ year DESC
SELECT DISTINCT Name FROM WINE ORDER BY Name
SELECT DISTINCT T3.product_name FROM customer_orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id JOIN products AS T3 ON T2.product_id = T3.product_id GROUP BY T3.product_id HAVING COUNT (DISTINCT T1.customer_@@ id) >= 2
SELECT document_type_code FROM documents GROUP BY document_type_code HAVING count(*) > 4
SELECT first_name FROM actor GROUP BY first_name ORDER BY count(*) DESC LIMIT 1
SELECT Stuid , sum(hours_played) FROM Plays_games GROUP BY Stuid
SELECT T2.friend FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.name WHERE T1.name = 'Bob'
SELECT name FROM instructor WHERE dept_name = 'Comp. Sci.'
SELECT T2.Author , COUNT(DISTINCT T1.workshop_id) FROM acceptance AS T1 JOIN submission AS T2 ON T1.Submission_ID = T2.Submission_ID GROUP BY T2.Author
SELECT category FROM book_club WHERE YEAR > 1989 GROUP BY category HAVING count(*) >= 2
SELECT avg(@@ followers) FROM user_profiles WHERE UID IN (SELECT UID FROM tweets)
SELECT T1.DName FROM DEPARTMENT AS T1 JOIN MEMBER_OF AS T2 ON T1.DNO = T2.DNO GROUP BY T2.DNO ORDER BY count(*) ASC LIMIT 1
SELECT T1.@@ datet@@ i@@ me_@@ detent@@ ion_@@ start , datet@@ i@@ me_@@ detent@@ ion_@@ end FROM Detention AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id WHERE T2.last_name = "S@@ ch@@ ultz@@ "
SELECT LOCATION FROM bridge WHERE name = 'K@@ o@@ lo@@ b Ar@@ ch@@ ' OR name = 'R@@ ain@@ bo@@ w B@@ ridg@@ e'
SELECT count(*) FROM artist WHERE age > 46 AND year_join > 1990
SELECT name FROM Person ORDER BY age DESC
SELECT unit_of_measure FROM ref_product_categories WHERE product_category_code = "Herbs"
SELECT DISTINCT T1.customer_name FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status_code = "Pending" ORDER BY T2.customer_id
SELECT artist_name FROM artist WHERE country = "UK" AND gender = "Male"
SELECT DISTINCT T1.name , T1.@@ location , T1.@@ product FROM enzyme AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.enzyme_id = T1.id WHERE T2.interaction_type = 'inhibitor'
SELECT Country FROM market ORDER BY Country ASC
SELECT friend FROM PersonFriend WHERE name = 'Zach' AND YEAR = (SELECT max(YEAR) FROM PersonFriend WHERE name = 'Zach')
SELECT title , director FROM movie WHERE YEAR <= 2000 ORDER BY g@@ ross_@@ worldwide DESC LIMIT 1
SELECT T2.@@ student_details FROM student_course_registrations AS T1 JOIN students AS T2 ON T1.student_id = T2.student_id ORDER BY T1.@@ registr@@ ation_date DESC LIMIT 1
SELECT DISTINCT T1.Fname FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID = T2.CLASS@@ _Senator_@@ VOTE
SELECT 	@@ booking_@@ status_code , COUNT(*) FROM Apartment_Bookings GROUP BY booking_@@ status_code
SELECT director FROM Movie WHERE title = 'A@@ vatar'
SELECT distinct(@@ catalog_entr@@ y_name) FROM catalog_contents
SELECT date_@@ join@@ ed_@@ staff FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn";
SELECT eid FROM Employee WHERE salary > 100000
SELECT T2.name , T2.@@ hometown FROM membership_register_branch AS T1 JOIN member AS T2 ON T1.member_id = T2.member_id WHERE T1.register_year = 2016
SELECT T1.name FROM physician AS T1 JOIN patient AS T2 ON T1.employeeid = T2.PCP GROUP BY T1.employeeid HAVING count(*) > 1
SELECT count(DISTINCT P@@ resident_@@ V@@ ote@@ ) FROM VOTING_RECORD
SELECT Product_Name , Product_Type_Code FROM Products
SELECT T1.id , T1.Name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id = T1.id GROUP BY T1.id HAVING count(*) >= 2
SELECT T2.organisation_id , T2.organisation_details FROM Grants AS T1 JOIN Organisations AS T2 ON T1.organisation_id = T2.organisation_id GROUP BY T2.organisation_id HAVING sum(T1.@@ grant_amount) > 6000
SELECT song_name FROM song WHERE genre_is = "modern@@ " OR languages = "english"
SELECT Phone FROM EMPLOYEE
SELECT customer_id , count(*) FROM Accounts GROUP BY customer_id ORDER BY count(*) DESC LIMIT 1
SELECT catalog_entry_name FROM catalog_contents WHERE LENGTH < 3 OR width > 5
SELECT T1.student_id , T2.@@ middle_name FROM Student_Course_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING COUNT(*) <= 2
SELECT name FROM races WHERE YEAR BETWEEN 2009 AND 2011
SELECT vehicle_id FROM Vehicles;
SELECT Name FROM mountain WHERE Height > 5000 OR Pro@@ min@@ ence > 1000
SELECT cName FROM college WHERE enr > (SELECT max(@@ enr) FROM college WHERE state = 'FL')
SELECT minister FROM party WHERE took_office > 1961 OR took_office < 195@@ 9
SELECT DISTINCT T2.name , T2.friend , T1.age FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.friend WHERE T1.age > (SELECT avg(age) FROM person)
SELECT T1.employee_id , T4.country_name FROM employees AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id JOIN locations AS T3 ON T2.location_id = T3.location_id JOIN countries AS T4 ON T3.country_id = T4.country_id
SELECT Customer_Phone FROM P@@ ER@@ F@@ OR@@ MERS WHERE Customer_Name = "Ashley"
SELECT sum(student_capacity) FROM dorm
SELECT LOCATION FROM performance WHERE Attendance > 2000 INTERSECT SELECT LOCATION FROM performance WHERE Attendance < 1000
SELECT T1.Title FROM book AS T1 JOIN publication AS T2 ON T1.Book_ID = T2.Book_ID ORDER BY T2.@@ Price DESC
SELECT count(DISTINCT room@@ type) FROM room
SELECT max(@@ Enrollment) FROM university
SELECT T3.Title FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate = T2.id JOIN Songs AS T3 ON T3.SongId = T1.SongId WHERE T2.@@ Last@@ name = "Heilo"
SELECT T2.Hardware_Model_name FROM chip_model AS T1 JOIN phone AS T2 ON T1.Model_name = T2.chip_model JOIN screen_mode AS T3 ON T2.screen_mode = T3.@@ Graphics_mode WHERE T3.@@ Type = "Tex@@ t" OR T1.RAM_MiB > 3@@ 2;
SELECT count(*) , T1.school_code FROM department AS T1 JOIN professor AS T2 ON T1.dept_code = T2.dept_code GROUP BY T1.school_code
SELECT sum(enrollment) , avg(enrollment) FROM school
SELECT organization_name FROM organizations ORDER BY date_formed DESC LIMIT 1
SELECT name FROM member WHERE member_id NOT IN (SELECT member_id FROM membership_register_branch)
SELECT employee_id FROM job_history GROUP BY employee_id HAVING COUNT(*) >= 2
SELECT avg(@@ T2.W@@ eeks_on_Top) FROM artist AS T1 JOIN volume AS T2 ON T1.Artist_ID = T2.Artist_ID WHERE T1.age <= 25
SELECT LOCATION FROM school WHERE School_ID NOT IN (SELECT School_ID FROM Play@@ er)
SELECT Country FROM mountain WHERE Height > 5000
SELECT DISTINCT gtype FROM Video_games
SELECT T1.Product_Name FROM Products AS T1 JOIN Product@@ s_in_Events AS T2 ON T1.Product_ID = T2.Product_ID GROUP BY T1.Product_Name HAVING COUNT(*) >= 2 ORDER BY T1.Product_Name
SELECT student_id FROM student_course_attendance WHERE course_id = 301
SELECT origin , count(*) FROM train GROUP BY origin
SELECT Grape , Appelation , Name FROM WINE WHERE Score > 93 ORDER BY Name
SELECT Ref_Shipping_Agents.shipping_agent_name FROM Ref_Shipping_Agents JOIN Documents ON Documents.shipping_agent_code = Ref_Shipping_Agents.shipping_agent_code WHERE Documents.@@ document_id = 2;
SELECT DISTINCT T1.driverid , T1.nationality FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.milliseconds > 100000
SELECT W@@ ork@@ ing_@@ year_@@ starts FROM manager ORDER BY LEVEL DESC
SELECT T1.engineer_id , T1.first_name , T1.last_name FROM Maintenance_Engineers AS T1 JOIN Engineer_Visits AS T2 ON T1.engineer_id = T2.engineer_id GROUP BY T1.engineer_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.artist_name , T1.gender FROM artist AS T1 JOIN song AS T2 ON T1.artist_name = T2.artist_name WHERE T2.@@ releasedate LIKE "%@@ Mar@@ %"
SELECT count(*) FROM city AS T1 JOIN country AS T2 ON T1.country_id = T2.country_id WHERE T2.country = 'Australi@@ a'
SELECT T1.address_line_1 FROM Course_Authors_and_Tutors AS T1 JOIN Courses AS T2 ON T1.author_id = T2.author_id WHERE T2.course_name = "operating system" OR T2.course_name = "data structure"
SELECT count(*) , T1.name FROM airports AS T1 JOIN routes AS T2 ON T1.apid = T2.src_apid GROUP BY T1.name
SELECT count(*) FROM Customers
SELECT candidate_id FROM candidate_assessments ORDER BY assess@@ ment_@@ date DESC LIMIT 1
SELECT COUNT (DISTINCT ID) FROM teaches WHERE semester = 'Spring' AND YEAR = 2010
SELECT T1.name , T2.balance + T3.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid = T2.custid JOIN savings AS T3 ON T1.custid = T3.custid WHERE T3.balance > (SELECT avg(balance) FROM savings)
SELECT name , born_state , age FROM head ORDER BY age
SELECT T1.name , T1.team_id , max(T2.@@ salary) FROM team AS T1 JOIN salary AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id@@ ;
SELECT name FROM stadium WHERE name LIKE "%@@ B@@ ank@@ %"
SELECT T1.date_of_enrolment , T1.date_of_completion FROM Student_Course_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.personal_name = "Karson"
SELECT T2.name , count(*) FROM membership_register_branch AS T1 JOIN branch AS T2 ON T1.branch_id = T2.branch_id WHERE T1.register_year > 201@@ 5 GROUP BY T2.branch_id
SELECT individual_@@ first_name , individual_@@ middle_name , individual_last_name FROM individuals ORDER BY individual_last_name
SELECT count(*) FROM dorm_amenity
SELECT T1.grant_start_date FROM Grants AS T1 JOIN Documents AS T2 ON T1.grant_id = T2.grant_id JOIN Document_Types AS T3 ON T2.document_type_code = T3.document_type_code WHERE T3.document_description = 'Regular' INTERSECT SELECT T1.grant_start_date FROM Grants AS T1 JOIN Documents AS T2 ON T1.grant_id = T2.grant_id JOIN Document_Types AS T3 ON T2.document_type_code = T3.document_type_code WHERE T3.document_description = 'Initial Application@@ '
SELECT T1.company_name FROM Third_Party_Companies AS T1 JOIN Maintenance_Contracts AS T2 ON T1.company_id = T2.@@ maintenance_contract_company_id JOIN Ref_@@ Compan@@ y_@@ Types AS T3 ON T1.@@ company@@ _type_code = T3.@@ company@@ _type_code ORDER BY T2.@@ contract@@ _@@ end_date DESC LIMIT 1
SELECT County_name FROM county ORDER BY Population DESC LIMIT 1
SELECT project_details FROM Projects WHERE organisation_id IN ( SELECT organisation_id FROM Projects GROUP BY organisation_id ORDER BY count(*) DESC LIMIT 1 )
SELECT count(*) FROM tryout WHERE decision = 'yes'
SELECT count(*) FROM Students WHERE student_id NOT IN (SELECT student_id FROM Student_Course_Enrol@@ ment)
SELECT T1.fname , T1.lname FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid = T2.stuid WHERE T2.dormid IN (SELECT T3.dormid FROM has_amenity AS T3 JOIN dorm_amenity AS T4 ON T3.amenid = T4.amenid WHERE T4.amenity_name = 'TV Lounge')
SELECT Name FROM People ORDER BY Name ASC
SELECT DISTINCT T1.customer_name FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id JOIN order_items AS T3 ON T2.order_id = T3.order_id GROUP BY T1.customer_id HAVING COUNT (DISTINCT T3.@@ product_id) >= 3
SELECT faculty FROM faculty AS T1 JOIN campuses AS T2 ON T1.campus = T2.id WHERE T1.year = 2004 AND T2.campus = "San Francisco State University"
SELECT count(*) FROM entrepreneur
SELECT advisor , count(*) FROM Student GROUP BY advisor
SELECT count(*) FROM tweets
SELECT T1.Time FROM elimination AS T1 JOIN wrestler AS T2 ON T1.Wrestler_ID = T2.Wrestler_ID WHERE T2.Days_held > 50
SELECT first_name , last_name , hire_date FROM employees WHERE department_id = ( SELECT department_id FROM employees WHERE first_name = "Clara") AND first_name != "Clar@@ a"
SELECT r@@ id FROM routes WHERE dst_apid IN (SELECT apid FROM airports WHERE country = 'United States') AND src_apid IN (SELECT apid FROM airports WHERE country = 'United States')
SELECT lastname FROM teachers WHERE classroom = 10@@ 9
SELECT t1.party_email FROM parties AS t1 JOIN party_forms AS t2 ON t1.party_id = t2.party_id WHERE t2.form_id = (SELECT form_id FROM party_forms GROUP BY form_id ORDER BY count(*) DESC LIMIT 1)
SELECT DISTINCT LOCATION FROM station WHERE number_of_@@ platforms >= 15 AND total_passengers > 25
SELECT T1.@@ Ro@@ yal_Famil@@ y_@@ Details , T2.How_to_Get_There FROM RO@@ Y@@ AL@@ _F@@ AMI@@ L@@ Y AS T1 JOIN TOURIST_ATTRACTIONS AS T2 ON T1.@@ Ro@@ yal_Famil@@ y_ID = T2.Tourist_Attraction_ID
SELECT Tourist_Details FROM VISITORS
SELECT count(DISTINCT transaction_type) FROM Financial_Transactions
SELECT DISTINCT Reign FROM wrestler WHERE LOCATION != "T@@ okyo , Japan"
SELECT id , market_share FROM browser WHERE name = 'S@@ af@@ ar@@ i@@ '
SELECT name , average_attendance , total_@@ attendance FROM stadium EXCEPT SELECT T2.name , T2.@@ average_attendance , T2.total_@@ attendance FROM game AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.id JOIN injury_accident AS T3 ON T1.id = T3.game_id
SELECT T1.@@ Attraction_@@ Type_Description , T2.Attraction_Type_Code FROM Ref_@@ Attraction_@@ Types AS T1 JOIN Tourist_Attractions AS T2 ON T1.@@ Attraction_Type_Code = T2.Attraction_Type_Code GROUP BY T2.Attraction_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.Name FROM PHOTOS AS T1 JOIN TOURIST_ATTRACTIONS AS T2 ON T1.Tourist_Attraction_ID = T2.Tourist_Attraction_ID WHERE T1.Name = "game@@ 1"
SELECT T1.customer_name FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT Region FROM club ORDER BY Region ASC
SELECT t1.catalog_entry_name FROM Catalog_Contents AS t1 JOIN Catalog_Contents_Additional_Attributes AS t2 ON t1.catalog_entry_id = t2.catalog_entry_id WHERE t2.catalog_level_number = "@@ 8"
SELECT cName , state , min(enr) FROM college GROUP BY state
SELECT name FROM station WHERE station_id NOT IN (SELECT station_id FROM train_@@ st@@ ation)
SELECT T2.customer_first_name , T2.customer_last_name , T2.customer_phone FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id WHERE T1.account_name = "@@ 16@@ 2"
SELECT sum(@@ Amount_Settled) FROM Settlements
SELECT count(*) , T1.blockfloor FROM BLOCK AS T1 JOIN room AS T2 ON T1.blockfloor = T2.blockfloor AND T1.blockcode = T2.blockcode GROUP BY T1.blockfloor
SELECT DISTINCT allergy FROM Allergy_type WHERE allergytype = "food"
SELECT T1.country , T1.state_province_county FROM Addresses AS T1 JOIN Staff AS T2 ON T1.address_id = T2.staff_address_id WHERE T2.first_name = "Janessa" AND T2.last_name = "Sawayn";
SELECT MONTH FROM happy_hour GROUP BY MONTH HAVING count(*) > 2
SELECT T1.booking_start_date , T1.booking_start_date FROM Apartment_Bookings AS T1 JOIN Guests AS T2 ON T1.guest_id = T2.guest_id WHERE T2.@@ gender_code = "Female"
SELECT transaction_type , sum(transaction_amount) FROM Financial_transactions GROUP BY transaction_type
SELECT Country FROM member GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT roomName , RoomId FROM Rooms WHERE basePrice > 160 AND maxOccupancy > 2;
SELECT name , salary FROM instructor WHERE salary < (SELECT avg(salary) FROM instructor WHERE dept_name = 'Physic@@ s@@ ')
SELECT name , date FROM races ORDER BY date DESC LIMIT 1
SELECT sum(no_of_customers) FROM bank WHERE city = 'New York City@@ '
SELECT count(DISTINCT city) FROM Person
SELECT T4.instrument FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate = T2.id JOIN Songs AS T3 ON T3.SongId = T1.SongId JOIN Instruments AS T4 ON T4.songid = T3.songid AND T4.bandmateid = T2.id WHERE T2.lastname = "Heilo" AND T3.title = "Badlands"
SELECT cName , enr FROM College WHERE enr > 10000 AND state = "LA"
SELECT name , course_id FROM instructor AS T1 JOIN teaches AS T2 ON T1.ID = T2.ID
SELECT sum(@@ total_pounds) FROM purchase AS T1 JOIN branch AS T2 ON T1.branch_id = T2.branch_id WHERE T2.city = 'London' AND T1.year = 2018
SELECT T1.@@ council_tax_id FROM R@@ ent_@@ Ar@@ rears AS T1 JOIN CMI_Cross_References AS T2 ON T1.cmi_cross_ref_id = T2.cmi_cross_ref_id JOIN Customer@@ _M@@ ast@@ er_@@ In@@ dex AS T3 ON T3.@@ master_customer_id = T2.master_customer_id WHERE T3.@@ cmi_details != 'S@@ ch@@ mid@@ t , Kertzman@@ n and L@@ ubowitz@@ '
SELECT start_station_name , end_station_name FROM trip ORDER BY id LIMIT 3
SELECT main_industry , count(*) FROM company GROUP BY main_industry ORDER BY sum(market_value) DESC LIMIT 1
SELECT count(DISTINCT Compan@@ y) FROM entrepreneur
SELECT avg(price) FROM Flight WHERE origin = "Los Angeles" AND destination = "Honolulu"
SELECT avg(@@ num_of_@@ staff@@ ) , avg(@@ score@@ ) FROM shop
SELECT LOCATION FROM wrestler GROUP BY LOCATION HAVING COUNT(*) > 2
SELECT T2.title , T1.stars , T2.director , min(T1.stars) FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID GROUP BY T2.director
SELECT lname , sex FROM Student WHERE StuID IN (SELECT T1.StuID FROM Plays_games AS T1 JOIN Video_games AS T2 ON T1.G@@ ameID = T2.G@@ ameID WHERE T2.G@@ name = "Call of Destiny" INTERSECT SELECT T1.StuID FROM Plays_games AS T1 JOIN Video_games AS T2 ON T1.G@@ ameID = T2.G@@ ameID WHERE T2.G@@ name = "W@@ or@@ ks of W@@ ide@@ ni@@ us@@ ")
SELECT avg(T2.@@ Age) FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID = T2.People_ID
SELECT T1.@@ document_type_name , T1.@@ document_type_description , T2.@@ Document@@ _date FROM Ref_document_types AS T1 JOIN Documents AS T2 ON T1.document_type_code = T2.document_type_code
SELECT gender FROM TE@@ AC@@ HER@@ S WHERE last_name = "Medhurst"
SELECT T1.order_id FROM orders AS T1 JOIN order_items AS T2 ON T1.order_id = T2.order_id GROUP BY T1.order_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM dorm
SELECT max(@@ amount_of_transaction) FROM TRANSACTIONS
SELECT count(*) FROM Documents WHERE document_id NOT IN ( SELECT document_id FROM Documents_with_expenses )
SELECT zip_code FROM weather GROUP BY zip_code HAVING avg(mean_@@ visibility_miles) < 10
SELECT T2.Name FROM Locations AS T1 JOIN Tourist_Attractions AS T2 ON T1.Location_ID = T2.Location_ID WHERE T1.Address = "6@@ 60 Shea Cresc@@ ent" OR T2.How_to_Get_There = "walk"
SELECT name , city , country FROM airports ORDER BY elevation LIMIT 1
SELECT count(*) FROM professor AS T1 JOIN department AS T2 ON T1.dept_code = T2.dept_code WHERE T2.dept_name = 'Accounting' OR T2.dept_name = 'Biolog@@ y'
SELECT player FROM match_season ORDER BY College ASC
SELECT T2.Year , T1.Official_Name FROM city AS T1 JOIN farm_competition AS T2 ON T1.City_ID = T2.Host_city_ID
SELECT creation FROM department GROUP BY creation ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.D@@ i@@ rector FROM film AS T1 JOIN film_market_estimation AS T2 ON T1.Film_ID = T2.Film_ID WHERE T2.Year = 1995
SELECT COUNT(*) FROM MEDIATYPE AS T1 JOIN TRACK AS T2 ON T1.MediaTypeId = T2.MediaTypeId WHERE T1.Name = "AAC audio fi@@ le"
SELECT count(*) , T2.product_id FROM problems AS T1 JOIN product AS T2 ON T1.product_id = T2.product_id WHERE T1.date_problem_reported > "@@ 1986-11-1@@ 3" GROUP BY T2.product_id
SELECT T2.Name FROM employment AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID JOIN company AS T3 ON T1.Company_ID = T3.Company_ID WHERE T3.S@@ al@@ es_in_Billion > 200
SELECT T1.Name , T2.Name FROM city AS T1 JOIN county_public_safety AS T2 ON T1.County_ID = T2.County_ID
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Participates_in
SELECT T3.Name , T2.Date , T2.@@ Venue FROM debate_people AS T1 JOIN debate AS T2 ON T1.Debate_ID = T2.Debate_ID JOIN people AS T3 ON T1.@@ N@@ egative = T3.People_ID ORDER BY T3.Name ASC
SELECT DISTINCT T1.service_type_code FROM services AS T1 JOIN organizations AS T2 ON T1.@@ organization_id = T2.@@ organization_id WHERE T2.@@ organization@@ _details = '@@ Den@@ esi@@ k and S@@ ons Party'
SELECT Total_Points FROM gymnast ORDER BY F@@ lo@@ or_@@ Ex@@ er@@ cis@@ e_@@ Points DESC
SELECT sum(T1.@@ amount_@@ pay@@ ment) FROM Customer_Payments AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.first_name = "Carole" AND T2.last_name = "Bernhard"
SELECT TYPE , Nationality FROM ship
SELECT name , course_id FROM instructor AS T1 JOIN teaches AS T2 ON T1.ID = T2.ID WHERE T1.dept_name = '@@ Art@@ '
SELECT first_name , last_name , salary FROM employees AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id JOIN locations AS T3 ON T2.location_id = T3.location_id WHERE T3.city = 'London'
SELECT Date , Venue FROM workshop ORDER BY Venue
SELECT T1.name FROM airports AS T1 JOIN routes AS T2 ON T1.apid = T2.dst_apid WHERE T1.country = 'China' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT fname , lname FROM student WHERE age < (SELECT avg(age) FROM student)
SELECT id , duration FROM trip ORDER BY duration DESC LIMIT 3
SELECT avg(T3.@@ cost) FROM physician AS T1 JOIN trained_in AS T2 ON T1.employeeid = T2.physician JOIN procedures AS T3 ON T3.code = T2.treatment WHERE T1.name = "John Wen"
SELECT sum(@@ Enrollment) , affiliation FROM university WHERE founded > 1850 GROUP BY affiliation
SELECT donator_name FROM endowment EXCEPT SELECT donator_name FROM endowment WHERE amount < 9
SELECT T2.emp_fname FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num = T2.emp_num GROUP BY T1.prof_num HAVING count(*) > 1
SELECT RESULT FROM musical GROUP BY RESULT ORDER BY COUNT(*) DESC LIMIT 1
SELECT Name , Nationality FROM HOST ORDER BY Age DESC LIMIT 1
SELECT roomName FROM Rooms ORDER BY basePrice;
SELECT count(DISTINCT t3.@@ product_id) FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id = t2.customer_id JOIN order_items AS t3 ON t2.order_id = t3.order_id WHERE t1.customer_name = "Rodrick Heaney"
SELECT count(*) FROM Addresses WHERE state_province_county = "G@@ e@@ orgi@@ a";
SELECT DName FROM DEPARTMENT WHERE Building = "M@@ erg@@ en@@ thal@@ er"
SELECT count(*) , T1.year FROM postseason AS T1 JOIN team AS T2 ON T1.team_id_winner = T2.team_id_br WHERE T2.name = 'Boston Red Stockings' GROUP BY T1.year
SELECT T1.driverid , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid ORDER BY T2.milliseconds DESC LIMIT 1
SELECT count(DISTINCT i@@ _id) FROM review
SELECT city FROM park GROUP BY city HAVING count(*) BETWEEN 2 AND 4;
SELECT LOCATION FROM school ORDER BY Founded DESC
SELECT publisher , count(*) FROM book_club GROUP BY publisher
SELECT T1.CName FROM COURSE AS T1 JOIN ENROLLED_IN AS T2 ON T1.C@@ ID = T2.CID GROUP BY T2.CID HAVING COUNT(*) >= 5
SELECT date_incident_@@ start , date_incident_@@ end FROM Behavior_Incident WHERE incident_type_code = "@@ NO@@ I@@ SE@@ "
SELECT T2.faculty FROM campuses AS T1 JOIN faculty AS T2 ON T1.id = t2.campus JOIN degrees AS T3 ON T1.id = t3.campus AND t2.year = t3.year WHERE t2.year = 2001 ORDER BY t3.degrees LIMIT 1
SELECT director FROM movie WHERE YEAR = 1999 OR YEAR = 2000
SELECT COUNT (DISTINCT church@@ _id) FROM wedding WHERE YEAR = 2016
SELECT DISTINCT T1.EMP@@ _FNAME , T1.EMP_@@ D@@ O@@ B FROM employee AS T1 JOIN CLASS AS T2 ON T1.EMP_NUM = T2.PROF_NUM WHERE CRS_CODE = "ACCT-211"
SELECT T2.title , T2.year FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID ORDER BY T1.stars DESC LIMIT 3
SELECT Studio FROM film GROUP BY Studio ORDER BY COUNT(*) DESC LIMIT 1
SELECT t2.product_details , t2.product_id FROM order_items AS t1 JOIN products AS t2 ON t1.product_id = t2.product_id GROUP BY t1.product_id ORDER BY sum(t1.@@ order_quantity) LIMIT 1
SELECT employee_name , role_code , date_of_birth FROM Employees WHERE employee_@@ Name = 'Armani@@ '
SELECT DISTINCT T2.Hardware_Model_name , T2.Company_name FROM screen_mode AS T1 JOIN phone AS T2 ON T1.Graphics_mode = T2.screen_mode WHERE T1.@@ used_k@@ b BETWEEN 10 AND 1@@ 5;
SELECT * FROM COURSE ORDER BY Credits
SELECT count(*) FROM book_club
SELECT T2.student_id FROM courses AS T1 JOIN student_course_attendance AS T2 ON T1.course_id = T2.course_id WHERE T1.course_name = "@@ statistic@@ s" ORDER BY T2.date_of_@@ attendance
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Course_Enrolment AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name HAVING COUNT(*) = 1
SELECT sum(@@ Points) FROM player
SELECT T3.service_id , T4.@@ S@@ ervice_Type_Code FROM participants AS T1 JOIN Participants_in_Events AS T2 ON T1.Participant_ID = T2.Participant_ID JOIN EVENTS AS T3 ON T2.Event_ID = T3.@@ Event_ID JOIN services AS T4 ON T3.service_id = T4.@@ service_id GROUP BY T3.service_id ORDER BY count(*) ASC LIMIT 1
SELECT Z@@ i@@ p_code FROM county WHERE County_name = "Howard"
SELECT LOCATION FROM shop WHERE Open_Year > 2012 INTERSECT SELECT LOCATION FROM shop WHERE Open_Year < 2008
SELECT product_description FROM products WHERE product_name = "Chocol@@ ate"
SELECT city FROM airports GROUP BY city HAVING count(*) > 2 ORDER BY count(*)
SELECT count(*) FROM STUDE@@ N@@ TS WHERE student_id NOT IN ( SELECT student_id FROM Behavior_Incident )
SELECT name FROM Reviewer UNION SELECT title FROM Movie
SELECT count(*) , sum(student_capacity) , gender FROM dorm GROUP BY gender
SELECT t2.customer_details FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id = t2.customer_id GROUP BY t2.customer_details ORDER BY count(*) DESC LIMIT 1
SELECT name FROM city WHERE county_ID = (SELECT county_ID FROM county_public_safety ORDER BY Police_officers DESC LIMIT 1)
SELECT campus FROM campuses WHERE LOCATION = "N@@ orthridg@@ e" AND county = "Los Angeles" UNION SELECT campus FROM campuses WHERE LOCATION = "San Francisco" AND county = "San Francisco"
SELECT DISTINCT t1.@@ individual_last_name FROM individuals AS t1 JOIN organization_contact_individuals AS t2 ON t1.@@ individual_id = t2.individual_id
SELECT Grape , Appelation FROM WINE
SELECT card_type_code , count(*) FROM Customers_cards GROUP BY card_type_code
SELECT T1.gender , T1.artist_name FROM artist AS T1 JOIN song AS T2 ON T1.artist_name = T2.artist_name ORDER BY T2.resolution LIMIT 1
SELECT gtype , count(*) FROM Video_games GROUP BY gtype
SELECT T1.apt_number FROM Apartments AS T1 JOIN View_Unit_Status AS T2 ON T1.apt_id = T2.apt_id WHERE T2.available_yn = 0 INTERSECT SELECT T1.apt_number FROM Apartments AS T1 JOIN View_Unit_Status AS T2 ON T1.apt_id = T2.apt_id WHERE T2.available_yn = 1
SELECT role_description FROM ROLES WHERE role_name = "Pro@@ of Re@@ ad@@ er"
SELECT Denomination , COUNT(*) FROM school GROUP BY Denomination ORDER BY COUNT(*) DESC
SELECT product_name , product_description FROM products_for_hire WHERE product_type_code = 'Cut@@ ler@@ y' AND dail@@ y_hire_cost < 20
SELECT t1.@@ Primar@@ y_conference FROM university AS t1 JOIN basketball_match AS t2 ON t1.school_id = t2.school_id ORDER BY t2.@@ acc_percent LIMIT 1
SELECT T3.id , count(*) FROM operate_company AS T1 JOIN flight AS t2 ON T1.id = T2.company_id JOIN airport AS T3 ON T2.@@ airport_id = T3.id GROUP BY T3.id
SELECT role_code FROM Employees GROUP BY role_code ORDER BY count(*) DESC LIMIT 1
SELECT T3.name , T2.name FROM Office_locations AS T1 JOIN buildings AS T2 ON T1.building_id = T2.id JOIN Companies AS T3 ON T1.company_id = T3.id
SELECT count(*) FROM ship
SELECT T1.account_id , T2.account_name FROM Financial_transactions AS T1 JOIN Accounts AS T2 ON T1.account_id = T2.account_id GROUP BY T1.account_id HAVING count(*) >= 4
SELECT Team , COUNT(*) FROM technician GROUP BY Team
SELECT Birth@@ Date FROM EMPLOYEE WHERE City = "E@@ d@@ mont@@ on"
SELECT gender FROM staff GROUP BY gender ORDER BY count(*) DESC LIMIT 1
SELECT id FROM instructor EXCEPT SELECT id FROM teaches
SELECT T1.fname , T1.lname FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID = T2.advisor WHERE T2.fname = "Linda" AND T2.lname = "Smith"
SELECT max(T1.@@ wins) FROM postseason AS T1 JOIN team AS T2 ON T1.team_id_winner = T2.team_id_br WHERE T2.name = 'Boston Red Stocking@@ s@@ ';
SELECT aid FROM Aircraft WHERE distance > 1000
SELECT flno FROM Flight WHERE distance > 2000
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.@@ c@@ ross@@ ing > 90 AND T2.@@ preferred_foot = "@@ right@@ "
SELECT semester , YEAR FROM takes GROUP BY semester , YEAR ORDER BY count(*) LIMIT 1
SELECT count(*) FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room = T2.RoomId WHERE T2.@@ maxOccupancy = T1.A@@ dults + T1.@@ K@@ id@@ s;
SELECT Party FROM party WHERE Party_ID NOT IN (SELECT Party FROM election)
SELECT count(DISTINCT name) FROM PersonFriend WHERE friend NOT IN (SELECT name FROM person WHERE city = 'Austin')
SELECT T1.artist_name , T1.country FROM artist AS T1 JOIN song AS T2 ON T1.artist_name = T2.artist_name WHERE T2.song_name LIKE "%@@ lo@@ ve%"
SELECT count(*) FROM inventory WHERE store_id = 1
SELECT Shop_Name FROM shop WHERE Shop_ID NOT IN (SELECT Shop_ID FROM stock)
SELECT count(*) FROM employees WHERE country = "Canad@@ a";
SELECT Team FROM elimination GROUP BY Team HAVING COUNT(*) > 3
SELECT count(*) FROM station
SELECT name , course_id FROM instructor AS T1 JOIN teaches AS T2 ON T1.ID = T2.ID WHERE T1.dept_name = '@@ Art@@ '
SELECT T1.Store_Phone , T1.Store_Email_Address FROM Drama_Workshop_Groups AS T1 JOIN Services AS T2 ON T1.Workshop_Group_ID = T2.Workshop_Group_ID
SELECT count(*) FROM albums AS T1 JOIN artists AS T2 ON T1.artist_id = T2.id WHERE T2.name = "B@@ ill@@ y Cob@@ ham@@ ";
SELECT count(*) FROM Student WHERE age = 18
SELECT name FROM student WHERE id NOT IN (SELECT T1.id FROM takes AS T1 JOIN course AS T2 ON T1.course_id = T2.course_id WHERE T2.dept_name = 'Biology')
SELECT T1.@@ transaction_type_description , T2.date_of_@@ transaction FROM Ref_Transaction_Types AS T1 JOIN TRANSACTIONS AS T2 ON T1.transaction_type_code = T2.@@ transaction_type_code WHERE T2.@@ share_count < 10
SELECT sum(T1.@@ salary) FROM salary AS T1 JOIN player AS T2 ON T1.player_id = T2.player_id WHERE T2.name_first = 'L@@ en' AND T2.name_last = 'B@@ ark@@ er' AND T1.year BETWEEN 1985 AND 199@@ 0;
SELECT avg(room_count) FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id = T2.apt_id WHERE T1.booking_status_code = "Provisional"
SELECT product_type_code , avg(product_price) FROM products GROUP BY product_type_code
SELECT publisher FROM book_club GROUP BY publisher ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT department_id FROM employees GROUP BY department_id , manager_id HAVING COUNT(employee_id) >= 4
SELECT cName FROM College WHERE enr > 18000 ORDER BY cName
SELECT acc_percent FROM basketball_match ORDER BY acc_percent DESC LIMIT 1
SELECT T3.title , T3.@@ credits FROM classroom AS T1 JOIN SECTION AS T2 ON T1.@@ building = T2.building AND T1.@@ room_number = T2.room_number JOIN course AS T3 ON T2.course_id = T3.course_id WHERE T1.@@ capacity = (SELECT max(capacity) FROM classroom@@ )
SELECT T1.driverid , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid WHERE T3.@@ year > 2010 GROUP BY T1.driverid ORDER BY count(*) DESC LIMIT 1
SELECT * FROM job_history AS T1 JOIN employees AS T2 ON T1.employee_id = T2.employee_id WHERE T2.salary >= 12000
SELECT last_name FROM staff WHERE email_address LIKE "%@@ wrau%"
SELECT count(*) FROM Customers WHERE customer_id NOT IN (SELECT customer_id FROM Accounts)
SELECT Fname , Lname , Age FROM Student WHERE Sex = 'F'
SELECT count(*) FROM Rating WHERE stars > 3
SELECT address FROM shop ORDER BY open_year
SELECT region_name FROM region WHERE region_id NOT IN (SELECT region_id FROM affected_region)
SELECT job_title , AVG(salary) FROM employees AS T1 JOIN jobs AS T2 ON T1.job_id = T2.job_id GROUP BY T2.job_title
SELECT gender , count(*) FROM Customers GROUP BY gender
SELECT avg(product_price) FROM products WHERE product_type_code = 'Clo@@ thes'
SELECT count(DISTINCT Software_P@@ lat@@ form@@ ) FROM device
SELECT avg(product_price) , product_category_code FROM products GROUP BY product_category_code
SELECT T1.season FROM game AS T1 JOIN injury_accident AS T2 ON T1.id = T2.game_id WHERE T2.@@ player = 'Walter Samuel'
SELECT Z@@ i@@ p_code FROM county WHERE County_name = "Howard"
SELECT city FROM airports WHERE country = 'United States' GROUP BY city HAVING count(*) > 3
SELECT advisor FROM Student GROUP BY advisor HAVING count(*) >= 2
SELECT stu_fname , stu_lname , stu_gpa FROM student WHERE stu_gpa > 3 ORDER BY stu_@@ do@@ b DESC LIMIT 1
SELECT title , phone , hire_date FROM employees WHERE first_name = "Nancy" AND last_name = "Edwards";
SELECT DISTINCT invoice_@@ details FROM invoices WHERE invoice_date < "1989-09-03" OR invoice_date > "2007-12-25"
SELECT T2.Height FROM body_builder AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Total < 3@@ 15
SELECT job_id , hire_date FROM employees WHERE hire_date BETWEEN '200@@ 7@@ -11@@ -05' AND '200@@ 9-07@@ -05'
SELECT sum(@@ Amount_Settled) FROM Settlements
SELECT count(*) FROM Country AS T1 JOIN L@@ eag@@ ue AS T2 ON T1.id = T2.country_id WHERE T1.name = "@@ Eng@@ land"
SELECT POSITION , avg(Points) FROM player GROUP BY POSITION
SELECT T3.@@ cell_mobile_number FROM candidates AS T1 JOIN candidate_assessments AS T2 ON T1.candidate_id = T2.candidate_id JOIN people AS T3 ON T1.candidate_id = T3.@@ person_id WHERE T2.@@ asessment_outcome_code = "Fail"
SELECT T1.name , T1.trade_name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id = T1.id WHERE interaction_type = 'inhibitor' INTERSECT SELECT T1.name , T1.trade_name FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id = T1.id WHERE interaction_type = 'activitor'
SELECT T1.pName FROM player AS T1 JOIN tryout AS T2 ON T1.pID = T2.pID ORDER BY T1.pName
SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id = T2.track_id JOIN playlists AS T3 ON T2.playlist_id = T3.id WHERE T3.name = '@@ Movi@@ es' EXCEPT SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id = T2.track_id JOIN playlists AS T3 ON T2.playlist_id = T3.id WHERE T3.name = 'M@@ usic'
SELECT id FROM station WHERE lat > 37.@@ 4 EXCEPT SELECT station_id FROM status GROUP BY station_id HAVING min(@@ bikes_available) < 7
SELECT min(@@ amount_of_transaction) FROM TRANSACTIONS WHERE transaction_type_code = "PUR" AND share_count > 50
SELECT count(*) FROM camera_lens WHERE f@@ oc@@ al_@@ length_@@ m@@ m > 15
SELECT t3.characteristic_name , t3.characteristic@@ _data_type FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id = t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id = t3.characteristic_id WHERE t1.product_name = "cumin"
SELECT t1.name FROM people AS t1 JOIN candidate AS t2 ON t1.people_id = t2.people_id WHERE t2.support_rate < t2.@@ oppose_rate
SELECT name FROM instructor WHERE salary > (SELECT min(salary) FROM instructor WHERE dept_name = 'Biology')
SELECT Name FROM ARTIST EXCEPT SELECT T2.Name FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId = T2.ArtistId
SELECT date FROM weather WHERE max_temperature_f > 85
SELECT personal_name FROM Course_Authors_and_Tutors INTERSECT SELECT personal_name FROM Students
SELECT count(DISTINCT rank@@ ) FROM captain
SELECT count(*) FROM Allergy_type WHERE allergytype = "@@ anim@@ al"
SELECT Injured FROM perpetrator ORDER BY Injured ASC
SELECT name , LOCATION , seating FROM track ORDER BY year_opened DESC LIMIT 1
SELECT count(*) FROM Customers WHERE customer_id NOT IN (SELECT customer_id FROM Accounts)
SELECT g_name , rating FROM genre ORDER BY g_name
SELECT count(*) FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID = T2.facID WHERE T1.fname = "Mark" AND T1.lname = "Giuliano"
SELECT guest_first_name , guest_last_name FROM Guests
SELECT avg(T2.@@ stu_gpa) FROM enroll AS T1 JOIN student AS T2 ON T1.stu_num = T2.stu_num JOIN CLASS AS T3 ON T1.class_code = T3.class_code WHERE T3.crs_code = 'ACCT-211'
SELECT local_authority , services FROM station
SELECT headquarters FROM company WHERE main_industry = 'Banking' GROUP BY headquarters HAVING count(*) >= 2
SELECT T1.D@@ elegate , T2.Party FROM election AS T1 JOIN party AS T2 ON T1.Party = T2.Party_ID
SELECT count(DISTINCT payment_method_@@ code) FROM parties
SELECT t2.@@ claim_status_name FROM claims_process@@ ing AS t1 JOIN claims_processing_stages AS t2 ON t1.@@ claim_stage_id = t2.@@ claim_stage_id GROUP BY t1.@@ claim_stage_id ORDER BY count(*) DESC LIMIT 1
SELECT company FROM customers WHERE first_name = "E@@ du@@ ar@@ do@@ " AND last_name = "M@@ art@@ in@@ s";
SELECT dept_name , building FROM department WHERE budget > (SELECT avg(@@ budget) FROM department@@ )
SELECT DISTINCT T1.Address FROM CUSTOMER AS T1 JOIN INVOICE AS T2 ON T1.CustomerId = T2.CustomerId WHERE T1.country = "German@@ y"
SELECT main_industry , count(*) FROM company GROUP BY main_industry ORDER BY sum(market_value) DESC LIMIT 1
SELECT CLASS FROM race GROUP BY CLASS HAVING count(*) >= 2
SELECT payment_method_code FROM parties GROUP BY payment_method_code HAVING count(*) > 3
SELECT T2.candidate_id FROM people AS T1 JOIN candidates AS T2 ON T1.@@ person_id = T2.candidate_id WHERE T1.@@ email_address = "@@ stanley.monahan@example.org@@ "
SELECT Publisher , COUNT(*) FROM publication GROUP BY Publisher
SELECT count(*) FROM College
SELECT document_type_code , document_type_name FROM Ref_document_types
SELECT date_@@ test_taken FROM Student_Tests_Taken WHERE test_result = "Pass"
SELECT avg(@@ Enrollment) FROM school
SELECT CLASS , count(*) FROM race GROUP BY CLASS
SELECT attribute_data_type FROM Attribute_Definitions WHERE attribu@@ te_name = "G@@ re@@ en"
SELECT invoice_number FROM invoices WHERE invoice_date < "1989-09-03" OR invoice_date > "2007-12-25"
SELECT customer_id , customer_first_name , customer_last_name , customer_phone FROM Customers
SELECT major , avg(age) , min(age) , max(age) FROM Student GROUP BY major
SELECT T1.name FROM tracks AS T1 JOIN playlist_tracks AS T2 ON T1.id = T2.track_id JOIN playlists AS T3 ON T3.id = T2.playlist_id WHERE T3.name = "M@@ o@@ vi@@ es@@ ";
SELECT count(DISTINCT dept_name) FROM department
SELECT count(*) FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code = T2.class_code JOIN course AS T3 ON T1.crs_code = T3.crs_code JOIN department AS T4 ON T3.dept_code = T4.dept_code WHERE T4.dept_name = 'Accounting'
SELECT name FROM people WHERE height > 200 OR height < 190
SELECT player FROM match_season ORDER BY College ASC
SELECT T2.Fname , T2.Lname FROM COURSE AS T1 JOIN FACULTY AS T2 ON T1.Instructor = T2.FacID GROUP BY T1.Instructor ORDER BY count(*) DESC LIMIT 3
SELECT T2.date_order_placed FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T1.customer_name = "Jeramie"
SELECT T1.id , T1.name FROM operate_company AS T1 JOIN flight AS t2 ON T1.id = T2.company_id GROUP BY T1.id HAVING count(*) > 1
SELECT T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Spain" AND T1.year > 2017
SELECT sum(amount) FROM payment
SELECT T1.id , T2.@@ installation_date FROM trip AS T1 JOIN station AS T2 ON T1.end_station_id = T2.id
SELECT name , phone FROM appointment AS T1 JOIN patient AS T2 ON T1.patient = T2.ssn GROUP BY T1.patient HAVING count(*) > 1
SELECT * FROM Albums WHERE YEAR = 2012
SELECT cName FROM tryout WHERE pPos = 'goalie' INTERSECT SELECT cName FROM tryout WHERE pPos = 'mid'
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Plays_games
SELECT name FROM races WHERE YEAR = 2017
SELECT T1.id , T1.name FROM stadium AS T1 JOIN game AS T2 ON T1.id = T2.stadium_id JOIN injury_accident AS T3 ON T2.id = T3.game_id GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , crs_code FROM CLASS GROUP BY crs_code
SELECT count(*) FROM BOOKINGS
SELECT AVG(UnitPrice) FROM TRACK
SELECT T1.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid = T2.eid JOIN Aircraft AS T3 ON T3.aid = T2.aid WHERE T3.name = "Boeing 737-800" INTERSECT SELECT T1.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid = T2.eid JOIN Aircraft AS T3 ON T3.aid = T2.aid WHERE T3.name = "Airbus A340-300"
SELECT Starting_Year FROM technician WHERE Team = "CLE" INTERSECT SELECT Starting_Year FROM technician WHERE Team = "CW@@ S"
SELECT age FROM Person WHERE job = 'doctor' AND name = 'Zach'
SELECT TYPE FROM institution GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1
SELECT country FROM stadium GROUP BY country HAVING count(*) <= 3
SELECT supplier_id FROM Product_Suppliers GROUP BY supplier_id HAVING avg(total_amount_purchased) > 50000 OR avg(total_amount_purchased) < 30000
SELECT De@@ pende@@ nt@@ _name FROM dependent WHERE relation@@ ship = 'S@@ p@@ ou@@ se'
SELECT payment_date FROM payment ORDER BY payment_date ASC LIMIT 1
SELECT Shop_Name FROM shop ORDER BY Open_Year ASC
SELECT avg(T1.age) , T3.dorm_name FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid = T2.stuid JOIN dorm AS T3 ON T3.dormid = T2.dormid GROUP BY T3.dorm_name
SELECT T2.title , T1.stars , T2.director , max(T1.stars) FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID WHERE director != "null" GROUP BY director
SELECT DISTINCT t1.title FROM papers AS t1 JOIN authorship AS t2 ON t1.paperid = t2.paperid JOIN inst AS t3 ON t2.instid = t3.instid WHERE t3.name = "@@ Indiana University"
SELECT count(*) FROM College
SELECT T2.Name , T1.ArtistId FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId = T2.@@ Artist@@ ID GROUP BY T1.ArtistId HAVING COUNT(*) >= 3 ORDER BY T2.Name
SELECT interaction_type , count(*) FROM medicine_enzyme_interaction GROUP BY interaction_type ORDER BY count(*) DESC LIMIT 1
SELECT T2.first_name , T2.last_name FROM film_actor AS T1 JOIN actor AS T2 ON T1.actor_id = T2.actor_id GROUP BY T2.actor_id HAVING count(*) > 30
SELECT count(DISTINCT dept_name) , school_code FROM department GROUP BY school_code HAVING count(DISTINCT dept_name) < 5
SELECT * FROM employees WHERE department_id = "null"
SELECT name FROM track EXCEPT SELECT T2.name FROM race AS T1 JOIN track AS T2 ON T1.track_id = T2.track_id WHERE T1.@@ class = 'GT@@ '
SELECT clubname FROM club WHERE clublocation = "AK@@ W"
SELECT Name FROM manager ORDER BY LEVEL ASC
SELECT T1.product_id FROM product_suppliers AS T1 JOIN products AS T2 ON T1.product_id = T2.product_id WHERE T1.supplier_id = 2 AND T2.product_price > (SELECT avg(product_price) FROM products)
SELECT min(T2.@@ HS) , T1.p@@ Pos FROM tryout AS T1 JOIN player AS T2 ON T1.pID = T2.pID GROUP BY T1.p@@ Pos
SELECT Product_Name FROM Products WHERE Product_ID NOT IN (SELECT Product_ID FROM Product@@ s_in_@@ Event@@ s)
SELECT count(*) FROM artwork
SELECT T4.dept_name FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code = T2.class_code JOIN course AS T3 ON T1.crs_code = T3.crs_code JOIN department AS T4 ON T3.dept_code = T4.dept_code GROUP BY T3.dept_code ORDER BY count(*) DESC LIMIT 1
SELECT city FROM airports GROUP BY city HAVING count(*) > 2 ORDER BY count(*)
SELECT avg(@@ Quantity) FROM stock
SELECT count(*) FROM Invoices
SELECT t3.title FROM authors AS t1 JOIN authorship AS t2 ON t1.authid = t2.authid JOIN papers AS t3 ON t2.paperid = t3.paperid JOIN inst AS t4 ON t2.instid = t4.instid WHERE t4.country = "Japan" AND t2.authorder = 1 AND t1.lname = "O@@ hori"
SELECT sum(@@ Amount_Claimed) FROM Claims
SELECT student_capacity , gender FROM dorm WHERE dorm_name LIKE '%@@ Donor@@ %'
SELECT T2.@@ Invoic@@ e@@ Date FROM CUSTOMER AS T1 JOIN INVOICE AS T2 ON T1.CustomerId = T2.CustomerId WHERE T1.FirstName = "Astrid" AND LastName = "Grub@@ er"
SELECT complaint_status_code , count(*) FROM complaints WHERE complaint@@ _type_code = "Product Failure@@ " GROUP BY complaint_status_code
SELECT avg(@@ M@@ oney_Requested) FROM entrepreneur
SELECT count(*) FROM Person WHERE age > (SELECT max(age) FROM person WHERE job = 'engineer')
SELECT DISTINCT building FROM classroom WHERE capacity > 50
SELECT T2.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid = T2.custid WHERE T1.name LIKE '%@@ ee@@ %'
SELECT t1.last_name FROM staff AS t1 JOIN complaints AS t2 ON t1.staff_id = t2.staff_id ORDER BY t2.date_complaint_raised LIMIT 1
SELECT date , zip_code FROM weather WHERE min_dew_point_@@ f < (SELECT min(@@ min_dew_point_@@ f) FROM weather WHERE zip_code = 94107@@ )
SELECT Category FROM music_festival GROUP BY Category HAVING COUNT(*) > 1
SELECT start_station_id , start_station_name FROM trip GROUP BY start_station_name HAVING COUNT(*) >= 200
SELECT T3.EMP@@ _FNAME , T3.EMP@@ _@@ L@@ NAME FROM professor AS T1 JOIN department AS T2 ON T1.dept_code = T2.dept_code JOIN employee AS T3 ON T1.EMP_NUM = T3.EMP@@ _NUM WHERE DEPT_NAME = "B@@ iolog@@ y"
SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 JOIN order_items AS T3 JOIN products AS T4 ON T1.customer_id = T2.customer_id AND T2.order_id = T3.order_id AND T3.product_id = T4.product_id WHERE T4.product_name = "food" GROUP BY T1.customer_id HAVING count(*) >= 1
SELECT Wh@@ e@@ els , LOCATION FROM railway
SELECT count(*) FROM inst
SELECT count(*) FROM albums AS T1 JOIN artists AS T2 ON T1.artist_id = T2.id WHERE T2.name = "B@@ ill@@ y Cob@@ ham@@ ";
SELECT min(age) , job FROM Person GROUP BY job
SELECT T1.pName FROM player AS T1 JOIN tryout AS T2 ON T1.pID = T2.pID ORDER BY T1.pName
SELECT director FROM Movie WHERE title = 'A@@ vatar'
SELECT T2.building , T2.room_number , T2.@@ semester , T2.year FROM course AS T1 JOIN SECTION AS T2 ON T1.course_id = T2.course_id WHERE T1.dept_name = 'Psychology' ORDER BY T1.title
SELECT T2.Age FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID = T2.People_ID ORDER BY T1.Total_Points DESC
SELECT count(*) FROM airlines
SELECT DISTINCT location_code FROM Document_locations
SELECT T1.customer_details , T1.customer_id FROM Customers AS T1 JOIN Customer_Policies AS T2 ON T1.Customer_id = T2.@@ Customer_id GROUP BY T1.customer_id HAVING count(*) > 1
SELECT DISTINCT staff_first_name , staff_last_name FROM staff AS T1 JOIN problem_log AS T2 ON T1.staff_id = T2.assigned_to_staff_id WHERE T2.problem_id = 1
SELECT T2.country FROM Customers AS T1 JOIN Addresses AS T2 ON T1.customer_address_id = T2.address_id WHERE T1.first_name = "Carole" AND T1.last_name = "Bernhard"
SELECT count(*) FROM Lessons AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.first_name = "R@@ ay"
SELECT name , max(revenue) , Headquarter FROM manufacturers GROUP BY Headquarter
SELECT Team FROM Elimination WHERE Eliminated_By = "Orton" INTERSECT SELECT Team FROM Elimination WHERE Eliminated_By = "Benjam@@ in"
SELECT name FROM station WHERE city = "Palo Alto" EXCEPT SELECT end_station_name FROM trip GROUP BY end_station_name HAVING count(*) > 100
SELECT * FROM departments WHERE department_name = 'Marketing'
SELECT DISTINCT payment_method_code FROM INVOICES
SELECT T1.name , T1.team_id FROM team AS T1 JOIN salary AS T2 ON T1.team_id = T2.team_id GROUP BY T1.team_id ORDER BY avg(T2.@@ salary) ASC LIMIT 1;
SELECT count(*) , gender FROM Person WHERE age < 40 GROUP BY gender
SELECT Player FROM match_season WHERE College = "UCLA"
SELECT T1.first_name , T1.last_name FROM Customers AS T1 JOIN Addresses AS T2 ON T1.customer_address_id = T2.address_id WHERE T2.city = "L@@ ockmanfur@@ t";
SELECT Votes FROM election ORDER BY Votes DESC
SELECT avg(T1.@@ Tot@@ al@@ ) FROM body_builder AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 200
SELECT avg(@@ W@@ ork@@ ing_@@ Hor@@ s@@ es) FROM farm WHERE Total_Horses > 5000
SELECT T2.Store_Name FROM Addresses AS T1 JOIN Drama_Workshop_Groups AS T2 ON T1.Address_ID = T2.Address_ID WHERE T1.City_Town = "F@@ elici@@ ab@@ erg@@ "
SELECT name FROM artist ORDER BY year_join DESC LIMIT 1
SELECT name FROM people WHERE people_id NOT IN (SELECT people_id FROM candidat@@ e)
SELECT aid , name FROM Aircraft ORDER BY distance DESC LIMIT 1
SELECT Team FROM Elimination WHERE Eliminated_By = "Orton" INTERSECT SELECT Team FROM Elimination WHERE Eliminated_By = "Benjam@@ in"
SELECT T1.Title , T2.Type FROM film AS T1 JOIN film_market_estimation AS T2 ON T1.Film_ID = T2.Film_ID
SELECT country FROM customers WHERE first_name = "Ro@@ ber@@ to" AND last_name = "@@ Al@@ me@@ id@@ a";
SELECT T2.Weight FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Money_Requested DESC
SELECT sum(acc_bal) , state FROM customer WHERE credit_score > 100 GROUP BY state
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Has_allergy
SELECT LOCATION , COUNT(*) FROM performance GROUP BY LOCATION
SELECT catalog_entry_name FROM catalog_contents WHERE LENGTH < 3 OR width > 5
SELECT T1.title FROM albums AS T1 JOIN artists AS T2 ON T1.artist_id = T2.id WHERE T2.name = "A@@ er@@ o@@ s@@ mith@@ ";
SELECT T1.title , T1.film_id FROM film AS T1 JOIN inventory AS T2 ON T1.film_id = T2.film_id GROUP BY T1.film_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT location_code FROM Document_locations
SELECT count(DISTINCT Ho@@ metow@@ n@@ ) FROM people
SELECT DISTINCT T2.Hometown FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID = T2.People_ID WHERE T1.Total_Points > 57.@@ 5
SELECT count(*) FROM Invoices
SELECT name , distance FROM Aircraft WHERE aid = 12
SELECT Lieutenant@@ _@@ Governor , Comptroller FROM party WHERE Party = "Democratic"
SELECT T2.year FROM city AS T1 JOIN hosting_city AS T2 ON T1.city_id = T2.host_city WHERE T1.city = "Taizhou ( Zhejiang )"
SELECT T1.Name , max(T1.@@ Price) , T2.name FROM products AS T1 JOIN Manufacturers AS T2 ON T1.manufacturer = T2.code GROUP BY T2.name
SELECT organisation_details FROM Organisations AS T1 JOIN organisation_Types AS T2 ON T1.organisation_type = T2.organisation_type WHERE T2.@@ organisation_type_description = 'Sponsor@@ ' ORDER BY organisation_details
SELECT document_name , access_count FROM documents ORDER BY document_name
SELECT count(*) , city FROM airports WHERE country = 'United States' GROUP BY city ORDER BY count(*) DESC
SELECT T2.Name FROM Locations AS T1 JOIN Tourist_Attractions AS T2 ON T1.Location_ID = T2.Location_ID WHERE T1.Address = "6@@ 60 Shea Cresc@@ ent" OR T2.How_to_Get_There = "walk"
SELECT sum(@@ Points) FROM player
SELECT dorm_name , gender FROM dorm WHERE student_capacity > 300 OR student_capacity < 100
SELECT dorm_name FROM dorm WHERE student_capacity > 300
SELECT kids FROM Reservations WHERE FirstName = "ROY" AND LastName = "SWEAZY";
SELECT country FROM airlines WHERE active = 'Y' GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT other_hotel_details FROM HOTELS ORDER BY price_range DESC LIMIT 3
SELECT t1.name FROM ship AS t1 JOIN captain AS t2 ON t1.ship_id = t2.ship_id WHERE t2.rank = 'Midshipman' INTERSECT SELECT t1.name FROM ship AS t1 JOIN captain AS t2 ON t1.ship_id = t2.ship_id WHERE t2.rank = 'Lieutenant'
SELECT T1.name FROM camera_lens AS T1 JOIN photos AS T2 ON T2.camera_lens_id = T1.id WHERE T1.brand = 'Sigma' OR T1.brand = 'O@@ ly@@ mp@@ us@@ '
SELECT organization_id FROM organizations EXCEPT SELECT par@@ ent_@@ organization_id FROM organizations
SELECT T1.title , T1.i_id FROM item AS T1 JOIN review AS T2 ON T1.i_id = T2.i_id GROUP BY T2.i_id ORDER BY avg(T2.rating) DESC LIMIT 1
SELECT transaction_type , count(*) FROM Financial_transactions GROUP BY transaction_type
SELECT t1.customer_name FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id = t2.customer_id JOIN order_items AS t3 ON t2.order_id = t3.order_id JOIN products AS t4 ON t3.product_id = t4.product_id WHERE t4.product_details = 'Latte' INTERSECT SELECT t1.customer_name FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id = t2.customer_id JOIN order_items AS t3 ON t2.order_id = t3.order_id JOIN products AS t4 ON t3.product_id = t4.product_id WHERE t4.product_details = 'A@@ merican@@ o'
SELECT Grape , Winery , YEAR FROM WINE WHERE Price > 100 ORDER BY YEAR
SELECT city_code , count(*) FROM Student GROUP BY city_code
SELECT T3.product_name , count(*) FROM orders AS T1 JOIN order_items AS T2 JOIN products AS T3 ON T1.order_id = T2.order_id AND T2.product_id = T3.product_id GROUP BY T3.product_id
SELECT T2.customer_last_name , T1.customer_id , T2.@@ phone_number FROM Orders AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM patient AS T1 JOIN appointment AS T2 ON T1.ssn = T2.patient ORDER BY T2.@@ start DESC LIMIT 1
SELECT Attendance FROM performance WHERE LOCATION = "T@@ D G@@ ar@@ den" OR LOCATION = "B@@ ell C@@ ent@@ re@@ "
SELECT name , LOCATION FROM track
SELECT card_type_code FROM Customers_cards GROUP BY card_type_code HAVING count(*) >= 5
SELECT document_type_code , count(*) FROM Documents GROUP BY document_type_code
SELECT T1.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.name WHERE T2.friend IN (SELECT name FROM Person WHERE age > 40) EXCEPT SELECT T1.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.name WHERE T2.friend IN (SELECT name FROM Person WHERE age < 30)
SELECT t1.product_name , count(*) FROM products AS t1 JOIN complaints AS t2 ON t1.product_id = t2.product_id GROUP BY t1.product_name
SELECT count(*) FROM follows
SELECT subject_name FROM S@@ U@@ B@@ J@@ E@@ CTS
SELECT avg(access_count) FROM documents
SELECT Major FROM STUDENT WHERE Sex = "M"
SELECT count(*) FROM Statements
SELECT count(DISTINCT name) FROM products WHERE name NOT IN (SELECT T1.name FROM products AS T1 JOIN manufacturers AS T2 ON T1.Manufacturer = T2.code WHERE T2.name = 'Son@@ y')
SELECT Fname , Lname FROM Student WHERE Major = 6@@ 00@@ ;
SELECT count(*) FROM enzyme WHERE id NOT IN ( SELECT enzyme_id FROM medicine_enzyme_interaction );
SELECT TYPE , avg(@@ Ton@@ n@@ age) FROM ship GROUP BY TYPE
SELECT count(DISTINCT In@@ dustr@@ y) FROM Companies
SELECT Product_Name , avg(Product_Price) FROM PRODUCTS GROUP BY Product_Name
SELECT Product_Type_Code FROM Products GROUP BY Product_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM customers WHERE customer_id NOT IN ( SELECT customer_id FROM customer_@@ events )
SELECT T2.name , T3.name FROM train_station AS T1 JOIN station AS T2 ON T1.station_id = T2.station_id JOIN train AS T3 ON T3.train_id = T1.train_id
SELECT distinct(@@ Famous_Release_@@ date) FROM artist
SELECT fname FROM authors ORDER BY fname
SELECT id , country , city , name FROM airport ORDER BY name
SELECT min(age) , avg(age) , max(age) FROM Student
SELECT min(@@ market_value) , max(@@ market_value) , avg(@@ market_value) FROM company
SELECT DISTINCT Name FROM WINE ORDER BY Name
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM entrepreneur@@ )
SELECT Ref_Shipping_Agents.shipping_agent_name , count(@@ Documents.@@ document_@@ id) FROM Ref_Shipping_Agents JOIN Documents ON Documents.shipping_agent_code = Ref_Shipping_Agents.shipping_agent_code GROUP BY Ref_Shipping_Agents.shipping_agent_code ORDER BY count(@@ Documents.@@ document_@@ id) DESC LIMIT 1;
SELECT count(DISTINCT Compan@@ y) FROM entrepreneur
SELECT count(*) FROM participants WHERE participant_type_code = '@@ Organiz@@ er'
SELECT catalog_entry_name , capacity FROM Catalog_Contents WHERE price_in_dollars > 700
SELECT T2.Name , T3.Location FROM member_attendance AS T1 JOIN member AS T2 ON T1.Member_ID = T2.Member_ID JOIN performance AS T3 ON T1.Performance_ID = T3.Performance_ID ORDER BY T2.Name ASC
SELECT clubname FROM club WHERE clublocation = "AK@@ W"
SELECT T1.employee_name FROM Employees AS T1 JOIN ROLES AS T2 ON T1.role_code = T2.role_code WHERE T2.role_name = "E@@ dit@@ or"
SELECT publisher , count(*) FROM book_club GROUP BY publisher
SELECT course_id FROM SECTION WHERE semester = 'Fall' AND YEAR = 2009 UNION SELECT course_id FROM SECTION WHERE semester = 'Spring' AND YEAR = 2010
SELECT DISTINCT country FROM artist
SELECT StuID FROM Student WHERE age = (SELECT max(age) FROM Student)
SELECT count(*) FROM classroom WHERE building = 'Lamberton'
SELECT director FROM movie WHERE YEAR = 2000 INTERSECT SELECT director FROM movie WHERE YEAR = 1999
SELECT * FROM instructor ORDER BY salary
SELECT T2.date_of_@@ enrolment FROM Courses AS T1 JOIN Student_Course_Enrolment AS T2 ON T1.course_id = T2.course_id WHERE T1.course_name = "Spanish"
SELECT customer_details FROM customers UNION SELECT staff_details FROM staff
SELECT product FROM product WHERE product LIKE "%@@ S@@ cann@@ er@@ %"
SELECT T1.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.name WHERE T2.friend = 'Bob'
SELECT DISTINCT Range FROM mountain ORDER BY Pro@@ min@@ ence DESC LIMIT 3
SELECT DISTINCT title FROM vocals AS t1 JOIN songs AS t2 ON t1.songid = t2.songid EXCEPT SELECT t2.title FROM vocals AS t1 JOIN songs AS t2 ON t1.songid = t2.songid WHERE TYPE = "back"
SELECT start_station_name , end_station_name FROM trip ORDER BY id LIMIT 3
SELECT CName FROM COURSE WHERE D@@ ay@@ s = "M@@ T@@ W"
SELECT payment_method_code , count(*) FROM INVOICES GROUP BY payment_method_code
SELECT country FROM airlines WHERE active = 'Y' GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT name , operat@@ ing_system FROM web_client_accelerator WHERE CON@@ N@@ E@@ CTION != 'B@@ ro@@ ad@@ band@@ '
SELECT DISTINCT T2.Name FROM GRAPES AS T1 JOIN WINE AS T2 ON T1.Grape = T2.Grape WHERE T1.Color = "R@@ ed"
SELECT count(DISTINCT In@@ dustr@@ y) FROM Companies
SELECT T1.name FROM student AS T1 JOIN takes AS T2 ON T1.id = T2.id WHERE T2.course_id IN (SELECT T4.@@ prereq_id FROM course AS T3 JOIN prereq AS T4 ON T3.course_id = T4.@@ course_id WHERE T3.title = '@@ International Financ@@ e')
SELECT count(*) , city FROM employees WHERE title = 'I@@ T Staff@@ ' GROUP BY city
SELECT DISTINCT Fname FROM STUDENT WHERE Fname LIKE '%a%'
SELECT CName FROM COURSE WHERE D@@ ay@@ s = "M@@ T@@ W"
SELECT T2.name , T3.name FROM assignedto AS T1 JOIN projects AS T2 ON T1.project = T2.code JOIN scientists AS T3 ON T1.scientist = T3.SSN WHERE T2.hours = (SELECT min(@@ hours) FROM projects)
SELECT city , count(*) FROM branch WHERE open_year < 2010 GROUP BY city
SELECT order_id , customer_id FROM customer_orders WHERE order_status_code = "Cancelled" ORDER BY order_date
SELECT T1.Height FROM people AS T1 JOIN perpetrator AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.@@ Injured DESC
SELECT project_id FROM Documents GROUP BY project_id ORDER BY count(*) ASC LIMIT 1
SELECT avg(salary) , max(salary) FROM Employee
SELECT Nationality FROM pilot GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT Name FROM WINE ORDER BY price
SELECT date_@@ left_@@ staff FROM Staff WHERE first_name = "Janessa" AND last_name = "Sawayn";
SELECT label FROM albums GROUP BY label ORDER BY count(*) DESC LIMIT 1
SELECT County_name FROM county ORDER BY Population ASC LIMIT 3
SELECT last_name FROM Customers INTERSECT SELECT last_name FROM Staff
SELECT DISTINCT T3.name , T2.title , T1.stars FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID JOIN Reviewer AS T3 ON T1.rID = T3.rID WHERE T2.director = T3.name
SELECT count(*) , T1.claim_id FROM Claims AS T1 JOIN Settlements AS T2 ON T1.claim_id = T2.claim_id GROUP BY T1.claim_id ORDER BY T1.Date_Claim_Settled DESC LIMIT 1
SELECT count(*) FROM people WHERE is_male = 'F' AND age > 30
SELECT Area , County FROM APPELLATIONS
SELECT Team , COUNT(*) FROM technician GROUP BY Team
SELECT count(*) FROM Apartment_Bookings
SELECT Name FROM pilot WHERE Age >= 25
SELECT Customer_Phone , Customer_@@ Email_Address FROM CUSTOMERS WHERE Customer_Name = "Harol@@ d"
SELECT StuID FROM Participates_in INTERSECT SELECT StuID FROM Student WHERE age < 20
SELECT count(*) FROM postseason WHERE YEAR = 1885 AND ties = 1;
SELECT sum(t1.@@ gradu@@ ate) FROM discipline_enrollments AS t1 JOIN campuses AS t2 ON t1.campus = t2.id WHERE t1.year = 2004 AND t2.campus = "San Francisco State University"
SELECT customer_first_name , customer_last_name FROM Customers EXCEPT SELECT T1.customer_first_name , T1.customer_last_name FROM Customers AS T1 JOIN Accounts AS T2 ON T1.customer_id = T2.customer_id
SELECT t1.name , t1.sex , min(oppose_rate) FROM people AS t1 JOIN candidate AS t2 ON t1.people_id = t2.people_id GROUP BY t1.sex
SELECT name , age , country FROM artist ORDER BY Year_@@ Jo@@ in
SELECT count(DISTINCT S@@ O@@ UR@@ CE@@ ) FROM injury_accident
SELECT DISTINCT city_code FROM Student
SELECT StuID FROM Sportsinfo INTERSECT SELECT StuID FROM Plays_games
SELECT t3.name FROM furniture AS t1 JOIN furniture_manufacte AS t2 ON t1.Furniture_ID = t2.Furniture_ID JOIN manufacturer AS t3 ON t2.manufacturer_id = t3.@@ manufacturer_id WHERE t1.@@ num_of_@@ component < 6 INTERSECT SELECT t3.name FROM furniture AS t1 JOIN furniture_manufacte AS t2 ON t1.Furniture_ID = t2.Furniture_ID JOIN manufacturer AS t3 ON t2.manufacturer_id = t3.@@ manufacturer_id WHERE t1.@@ num_of_@@ component > 10
SELECT name FROM enzyme WHERE name LIKE "%A@@ LA@@ %"
SELECT payment_method_code FROM parties GROUP BY payment_method_code HAVING count(*) > 3
SELECT count(*) FROM professor WHERE prof_high_degree = 'Ph.D.'
SELECT T1.student_id , count(*) FROM students AS T1 JOIN student_course_registrations AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id
SELECT DISTINCT T1.forename FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid WHERE T2.position = 1 AND T2.wins = 1
SELECT country FROM competition WHERE competition_type = 'Friendly' INTERSECT SELECT country FROM competition WHERE competition_type = 'Tournament'
SELECT count(DISTINCT customer_id) FROM Accounts
SELECT school , LOCATION FROM university WHERE affiliation = 'Public'
SELECT name FROM people ORDER BY date_of_birth
SELECT name FROM Employee ORDER BY salary ASC LIMIT 3
SELECT T2.@@ company_name FROM movie AS T1 JOIN culture_company AS T2 ON T1.movie_id = T2.movie_id WHERE T1.year = 1999
SELECT rank , sex , count(*) FROM Faculty GROUP BY rank , sex
SELECT Num_of_@@ Com@@ pon@@ ent , name FROM furniture WHERE Num_of_@@ Com@@ pon@@ ent > 10
SELECT count(DISTINCT t1.title) FROM papers AS t1 JOIN authorship AS t2 ON t1.paperid = t2.paperid JOIN inst AS t3 ON t2.instid = t3.instid WHERE t3.name = "Tokohu University"
SELECT payment_method FROM customers GROUP BY payment_method ORDER BY count(*) DESC LIMIT 1
SELECT decor , count(*) FROM Rooms WHERE basePrice > 120 GROUP BY decor;
SELECT name FROM Employee ORDER BY salary ASC LIMIT 3
SELECT T1.id , T1.name FROM enzyme AS T1 JOIN medicine_enzyme_interaction AS T2 ON T1.id = T2.enzyme_id WHERE T2.interaction_type = 'activitor' GROUP BY T1.id ORDER BY count(*) DESC LIMIT 1
SELECT classroom , count(*) FROM list GROUP BY classroom
SELECT Name FROM People ORDER BY Weight ASC
SELECT count(*) FROM Documents WHERE document_id NOT IN ( SELECT document_id FROM Documents_with_expenses )
SELECT home_city FROM driver EXCEPT SELECT home_city FROM driver WHERE age > 40
SELECT Date_Claim_Made , Date_Claim_Settled FROM Settlements
SELECT T1.title FROM item AS T1 JOIN review AS T2 ON T1.i_id = T2.i_id WHERE T2.rating = 10
SELECT name FROM Person WHERE job = 'student' AND age = (SELECT max(age) FROM person WHERE job = 'student' )
SELECT T1.Name FROM member AS T1 JOIN round AS T2 ON T1.Member_ID = T2.Member_ID WHERE T2.@@ Ran@@ k@@ _@@ in_@@ R@@ oun@@ d > 3
SELECT T2.city , count(*) , T1.city_id FROM address AS T1 JOIN city AS T2 ON T1.city_id = T2.city_id GROUP BY T1.city_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT product_@@ color FROM Products
SELECT t1.country FROM inst AS t1 JOIN authorship AS t2 ON t1.instid = t2.instid JOIN papers AS t3 ON t2.paperid = t3.paperid GROUP BY t1.country ORDER BY count(*) DESC LIMIT 1
SELECT Date_Claim_Made , Date_Claim_Settled FROM Claims WHERE Amount_Claimed > ( SELECT avg(@@ Amount_Claimed) FROM Claims )
SELECT customer_id , customer_first_name , customer_last_name , customer_phone FROM Customers
SELECT sum(T1.@@ lesson_time) FROM Lessons AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.first_name = "Rylan" AND T2.last_name = "Goodwin@@ ";
SELECT T2.Location FROM player AS T1 JOIN school AS T2 ON T1.School_ID = T2.School_ID GROUP BY T1.School_ID HAVING COUNT(*) > 1
SELECT T2.lname , T2.fname FROM Sports@@ In@@ f@@ o AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID WHERE T1.SportName = "Football" OR T1.SportName = "Lacross@@ e"
SELECT StuID FROM Sportsinfo GROUP BY StuID HAVING sum(hoursperweek) > 10
SELECT Company , Investor FROM entrepreneur
SELECT stu_gpa , stu_@@ phone , stu_fname FROM student ORDER BY stu_gpa DESC LIMIT 5
SELECT Payment_Method_Code , Date_Payment_Made , Amount_Payment FROM Payments ORDER BY Date_Payment_Made ASC
SELECT t1.customer_name , t2.@@ order_date FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id = t2.customer_id WHERE order_status = "De@@ liver@@ ed"
SELECT avg(age) , city_code FROM student GROUP BY city_code
SELECT city , COUNT(*) FROM station GROUP BY city HAVING COUNT(*) >= 15
SELECT COUNT(DISTINCT transaction@@ _type_code) FROM TRANSACTIONS
SELECT DISTINCT T1.customer_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status = "Pack@@ ing"
SELECT count(*) , T1.director FROM Movie AS T1 JOIN Rating AS T2 ON T1.mID = T2.mID GROUP BY T1.director
SELECT date_@@ be@@ cam@@ e_@@ customer FROM Customers WHERE first_name = "Carole" AND last_name = "Bernh@@ ard@@ ";
SELECT project_id FROM Documents GROUP BY project_id HAVING count(*) >= 2
SELECT Total FROM body_builder ORDER BY Total ASC
SELECT order_id , sum(@@ product_quantity) FROM Order_items GROUP BY order_id
SELECT * FROM airport ORDER BY International_Passengers DESC LIMIT 1
SELECT depart@@ ure_date , arriv@@ al_@@ date FROM Flight WHERE origin = "Los Angeles" AND destination = "Honolulu"
SELECT count(*) FROM list AS T1 JOIN teachers AS T2 ON T1.classroom = T2.classroom WHERE T1.firstname = "C@@ HRISS@@ Y" AND T1.lastname = "N@@ ABOZ@@ N@@ Y"
SELECT Party , COUNT(*) FROM representative GROUP BY Party
SELECT Starting_Year FROM technician WHERE Team = "CLE" INTERSECT SELECT Starting_Year FROM technician WHERE Team = "CW@@ S"
SELECT date FROM weather WHERE max_temperature_f > 85
SELECT name FROM Person WHERE job = 'student' AND age = (SELECT max(age) FROM person WHERE job = 'student' )
SELECT * FROM employees WHERE salary BETWEEN (SELECT MIN(salary) FROM employees) AND 2@@ 500
SELECT count(*) FROM driver
SELECT T1.firstname , T1.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom = T2.classroom WHERE T2.firstname = "OTHA" AND T2.lastname = "MOYER"
SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id = T2.cust_id WHERE amount > 3000
SELECT count(*) FROM Flight
SELECT * FROM people
SELECT name , dat@@ es_@@ active , number_deaths FROM storm WHERE number_deaths >= 1
SELECT T2.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.friend WHERE T1.city = '@@ ne@@ w y@@ ork city@@ '
SELECT name FROM storm WHERE storm_id NOT IN (SELECT storm_id FROM affected_region)
SELECT DISTINCT T1.Address FROM CUSTOMER AS T1 JOIN INVOICE AS T2 ON T1.CustomerId = T2.CustomerId WHERE T1.country = "German@@ y"
SELECT t2.customer_details FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id = t2.customer_id WHERE t1.@@ start_date = (SELECT max(@@ start_@@ date) FROM polici@@ es)
SELECT count(DISTINCT dept_name) , school_code FROM department GROUP BY school_code
SELECT LOCATION FROM school ORDER BY Enrollment ASC
SELECT T1.country , T1.name , count(*) FROM airlines AS T1 JOIN routes AS T2 ON T1.alid = T2.alid GROUP BY T1.country , T1.name
SELECT count(*) FROM Has_allergy WHERE Allergy = "Cat"
SELECT t2.@@ firstname FROM Performance AS t1 JOIN Band AS t2 ON t1.@@ band@@ mate = t2.id JOIN Songs AS T3 ON T3.SongId = T1.SongId GROUP BY firstname ORDER BY count(*) DESC LIMIT 1
SELECT avg(age) , job FROM Person WHERE gender = 'male' GROUP BY job
SELECT T2.name FROM genres AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id WHERE T1.name = "Rock" OR T1.name = "Jazz"
SELECT T2.address , T1.@@ email FROM customer AS T1 JOIN address AS T2 ON T2.address_id = T1.address_id WHERE T1.first_name = 'L@@ IN@@ D@@ A'
SELECT T1.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.name WHERE T2.friend IN (SELECT name FROM Person WHERE age > 40) INTERSECT SELECT T1.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.name WHERE T2.friend IN (SELECT name FROM Person WHERE age < 30)
SELECT T2.Name , T3.Location FROM member_attendance AS T1 JOIN member AS T2 ON T1.Member_ID = T2.Member_ID JOIN performance AS T3 ON T1.Performance_ID = T3.Performance_ID
SELECT Election_Cycle , count(*) FROM VOTING_RECORD GROUP BY Election_Cycle
SELECT max(@@ settlement_amount) , min(@@ settlement_amount) FROM settlements
SELECT avg(room_count) FROM Apartments WHERE apt_type_code = "Studio"
SELECT T3.name , T2.title , T1.stars , T1.@@ ratingDate FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID JOIN Reviewer AS T3 ON T1.rID = T3.rID ORDER BY T3.name , T2.title , T1.stars
SELECT product_id FROM order_items GROUP BY product_id ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT gend@@ er) FROM dorm
SELECT cName FROM tryout WHERE decision = 'yes' AND pPos = 'goalie'
SELECT product_id FROM product_suppliers ORDER BY total_amount_purchased DESC LIMIT 3
SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id = T2.cust_id GROUP BY T1.cust_name ORDER BY sum(T2.amount) DESC LIMIT 1
SELECT avg(credit_score) FROM customer WHERE cust_id IN (SELECT cust_id FROM loan)
SELECT catalog_entry_name FROM catalog_contents WHERE product_@@ stock@@ _number LIKE "2@@ %"
SELECT rID FROM Reviewer WHERE name = "D@@ aniel Lew@@ is"
SELECT T1.Name , T3.@@ Visit_Date FROM Tourist_Attractions AS T1 JOIN VISITORS AS T2 JOIN VISITS AS T3 ON T1.Tourist_Attraction_ID = T3.Tourist_Attraction_ID AND T2.Tourist_ID = T3.Tourist_ID WHERE T2.Tourist_Details = "Vincent" OR T2.Tourist_Details = "@@ Vivi@@ an"
SELECT organization_name FROM organizations ORDER BY date_formed DESC LIMIT 1
SELECT DISTINCT publisher FROM book_club
SELECT T1.S@@ eason , T1.Player , T2.Name FROM match_season AS T1 JOIN team AS T2 ON T1.Team = T2.Team_id
SELECT name , Assets_billion FROM Companies ORDER BY name ASC
SELECT Advisor , count(*) FROM Student GROUP BY Advisor ORDER BY count(@@ Advis@@ or) DESC LIMIT 1;
SELECT t1.fname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid = t2.authid JOIN papers AS t3 ON t2.paperid = t3.paperid WHERE t3.title LIKE "%@@ F@@ unctional%"
SELECT t1.party_email FROM parties AS t1 JOIN party_forms AS t2 ON t1.party_id = t2.party_id WHERE t2.form_id = (SELECT form_id FROM party_forms GROUP BY form_id ORDER BY count(*) DESC LIMIT 1)
SELECT name FROM Person WHERE age < 30
SELECT count(*) , country FROM airports GROUP BY country ORDER BY count(*) DESC
SELECT DISTINCT stu_fname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num = T2.stu_num WHERE enroll_grade = 'C'
SELECT count(*) FROM Apartments WHERE apt_id NOT IN (SELECT apt_id FROM Apartment_Facil@@ iti@@ es)
SELECT product_id FROM products_booked GROUP BY product_id HAVING count(*) = 3
SELECT Character FROM actor ORDER BY age DESC
SELECT state_province_county FROM addresses WHERE line_@@ 1@@ _@@ number_@@ building LIKE "%@@ 6@@ 862 Kaitlyn Knolls@@ %"
SELECT name FROM Person WHERE age > (SELECT min(age) FROM person WHERE job = 'engineer') ORDER BY age
SELECT DISTINCT t2.customer_details FROM policies AS t1 JOIN customers AS t2 ON t1.customer_id = t2.customer_id WHERE t1.policy_type_code = "Deputy" OR t1.policy_type_code = "Uniform@@ "
SELECT max(Age) , min(@@ Age) FROM STUDENT WHERE Major = 600
SELECT avg(campusfee) FROM csu_fees WHERE YEAR = 1996
SELECT director FROM movie WHERE YEAR = 2000 INTERSECT SELECT director FROM movie WHERE YEAR = 1999
SELECT name FROM appointment AS T1 JOIN patient AS T2 ON T1.patient = T2.ssn
SELECT TIME , train_number FROM train WHERE destination = 'Ch@@ enn@@ ai@@ ' ORDER BY TIME
SELECT cust_name FROM customer ORDER BY acc_bal
SELECT gdp FROM city ORDER BY Regional_Population DESC LIMIT 1
SELECT count(*) , POSITION FROM player WHERE points < 30 GROUP BY POSITION
SELECT project_details FROM Projects WHERE project_id NOT IN ( SELECT project_id FROM Project_Staff WHERE role_code = 'researcher' )
SELECT Birth_Place , COUNT(*) FROM people GROUP BY Birth_Place
SELECT name , open_date FROM church ORDER BY open_date DESC LIMIT 3
SELECT name FROM student WHERE id NOT IN (SELECT T1.id FROM takes AS T1 JOIN course AS T2 ON T1.course_id = T2.course_id WHERE T2.dept_name = 'Biology')
SELECT date_@@ stored FROM All_documents WHERE Document@@ _name = "Marry CV"
SELECT T1.stu_fname , T1.stu_lname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num = T2.stu_num WHERE T2.enroll_grade = 'C' OR T2.enroll_grade = 'A'
SELECT Le@@ ad@@ er_@@ Name , Colleg@@ e_@@ Location FROM college
SELECT name FROM Employee EXCEPT SELECT T1.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid = T2.eid JOIN Aircraft AS T3 ON T3.aid = T2.aid WHERE T3.name = "Boeing 737-800"
SELECT T2.@@ Theme FROM city AS T1 JOIN farm_competition AS T2 ON T1.City_ID = T2.Host_city_ID WHERE T1.Population > 1000
SELECT title , director FROM movie WHERE YEAR <= 2000 ORDER BY g@@ ross_@@ worldwide DESC LIMIT 1
SELECT count(DISTINCT cli@@ ent) FROM web_client_accelerator
SELECT MIN(salary) , department_id FROM employees GROUP BY department_id
SELECT DISTINCT T2.emp_fname , T3.@@ prof_high_degree FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num = T2.emp_num JOIN professor AS T3 ON T2.emp_num = T3.emp_num JOIN department AS T4 ON T4.dept_code = T3.dept_code WHERE T4.dept_name = 'Computer Info. Systems'
SELECT date_of_latest_@@ log@@ on FROM Students WHERE family_name = "J@@ as@@ k@@ ol@@ sk@@ i" OR family_name = "L@@ an@@ go@@ sh"
SELECT name FROM program EXCEPT SELECT t1.name FROM program AS t1 JOIN broadcast AS t2 ON t1.program_id = t2.program_id WHERE t2.Time_of_day = "Morning"
SELECT DISTINCT POSITION FROM match_season WHERE College = "UCLA" OR College = "Duke"
SELECT sum(access_count) FROM documents GROUP BY document_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T2.bname FROM loan AS T1 JOIN bank AS T2 ON T1.branch_id = T2.branch_id JOIN customer AS T3 ON T1.cust_id = T3.cust_id WHERE T3.credit_score < 100 GROUP BY T2.bname ORDER BY sum(T1.amount) DESC LIMIT 1
SELECT card_type_code , count(*) FROM Customers_cards GROUP BY card_type_code
SELECT avg(t1.@@ age) , avg(@@ Years_@@ working) , t2.@@ work_type FROM journalist AS t1 JOIN news_report AS t2 ON t1.@@ journalist@@ _id = t2.@@ journalist@@ _id GROUP BY t2.@@ work_type
SELECT T2.name FROM wedding AS T1 JOIN people AS T2 ON T1.@@ femal@@ e_id = T2.people_id WHERE T1.year = 2016 AND T2.@@ is_male = 'F' AND T2.country = 'Canada'
SELECT sum(T2.@@ balance) FROM accounts AS T1 JOIN savings AS T2 ON T1.custid = T2.custid WHERE T1.name != 'Brown'
SELECT Name FROM ship WHERE Nationality = "United States" OR Nationality = "United Kingdom"
SELECT department_id FROM employees GROUP BY department_id HAVING COUNT(@@ commission_p@@ ct@@ ) > 10
SELECT count(*) FROM manufacturers WHERE founder = 'And@@ y'
SELECT name FROM procedures ORDER BY cost LIMIT 3
SELECT Join_@@ Year FROM pilot ORDER BY Rank ASC LIMIT 1
SELECT T1.skill_id , T1.@@ skill@@ _description FROM Skills AS T1 JOIN S@@ kill@@ s_@@ Requ@@ i@@ red@@ _T@@ o_@@ F@@ i@@ x AS T2 ON T1.skill_id = T2.@@ skill_id GROUP BY T1.skill_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT firstname FROM list WHERE classroom = 10@@ 7
SELECT Police_force FROM county_public_safety WHERE LOCATION = "E@@ ast" INTERSECT SELECT Police_force FROM county_public_safety WHERE LOCATION = "W@@ est"
SELECT Industry FROM Companies GROUP BY Industry ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.lot_details FROM LOTS AS T1 JOIN TRANSAC@@ TION@@ S_@@ LOTS AS T2 ON T1.lot_id = T2.transaction_id JOIN TRANSACTIONS AS T3 ON T2.transaction_id = T3.@@ transaction_id WHERE T3.@@ share_count > 100 AND T3.@@ transaction_type_code = "PUR"
SELECT * FROM employees WHERE department_id NOT IN (SELECT department_id FROM departments WHERE manager_id BETWEEN 100 AND 200@@ )
SELECT AVG(T2.@@ UnitPrice) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId = T2.GenreId WHERE T1.Name = "Rock"
SELECT DISTINCT classroom FROM list WHERE grade = 4
SELECT project_id , project_details FROM Projects
SELECT t1.lname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid = t2.authid JOIN papers AS t3 ON t2.paperid = t3.paperid WHERE t3.title LIKE "%M@@ onadic@@ %"
SELECT T1.first_name , T2.department_name FROM employees AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id
SELECT T2.title , avg(T1.stars) FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID GROUP BY T1.mID ORDER BY avg(T1.stars) LIMIT 1
SELECT T2.Fname , T2.Lname FROM Sportsinfo AS T1 JOIN Student AS T2 ON T1.StuID = T2.StuID GROUP BY T1.StuID ORDER BY count(*) DESC LIMIT 1
SELECT avg(Price) , avg(S@@ core) , Appelation FROM WINE GROUP BY Appelation
SELECT count(*) FROM scientists WHERE ssn NOT IN (SELECT scientist FROM AssignedTo)
SELECT fname , sex FROM Student WHERE StuID IN (SELECT StuID FROM Has_allergy WHERE Allergy = "Milk" EXCEPT SELECT StuID FROM Has_allergy WHERE Allergy = "Cat@@ ")
SELECT STATEMENT_ID , count(*) FROM Accounts GROUP BY STATEMENT_ID
SELECT count(*) FROM follows GROUP BY f@@ 1
SELECT T1.project_details FROM Projects AS T1 JOIN Documents AS T2 ON T1.project_id = T2.project_id WHERE T2.document_name = "King Book@@ "
SELECT name , LOCATION , year_opened FROM track WHERE seating > (SELECT avg(@@ seat@@ ing) FROM track@@ )
SELECT T1.Name , max(T1.@@ Price) , T2.name FROM products AS T1 JOIN Manufacturers AS T2 ON T1.manufacturer = T2.code GROUP BY T2.name
SELECT avg(total_amount_purchased) , avg(@@ total_@@ val@@ ue_@@ purcha@@ sed) FROM Product_Suppliers WHERE supplier_id = (SELECT supplier_id FROM Product_Suppliers GROUP BY supplier_id ORDER BY count(*) DESC LIMIT 1)
SELECT city , count(*) FROM branch WHERE open_year < 2010 GROUP BY city
SELECT Status FROM city GROUP BY Status ORDER BY COUNT(*) ASC
SELECT T3.Name , T2.District FROM phone_market AS T1 JOIN market AS T2 ON T1.Market_ID = T2.Market_ID JOIN phone AS T3 ON T1.Phone_ID = T3.@@ Phone_ID
SELECT Title FROM film WHERE Film_ID NOT IN (SELECT Film_ID FROM film_market_@@ estim@@ ation)
SELECT T1.city FROM city AS T1 JOIN temperature AS T2 ON T1.city_id = T2.city_id ORDER BY T2.F@@ e@@ b DESC LIMIT 1
SELECT t3.fname , t3.lname FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t1.clubname = "Bootup Baltimore" AND t3.major = "600"
SELECT count(*) FROM Vehicles;
SELECT C@@ en@@ sus@@ _@@ Ran@@ king FROM city WHERE Status != "Vil@@ la@@ g@@ e"
SELECT count(*) FROM ref_colors
SELECT t1.name FROM stadium AS t1 JOIN event AS t2 ON t1.id = t2.stadium_id GROUP BY t2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT headquarters FROM company EXCEPT SELECT headquarters FROM company WHERE main_industry = 'Banking'
SELECT account_id , count(*) FROM Financial_transactions GROUP BY account_id
SELECT Shop_Name , LOCATION FROM shop ORDER BY Shop_Name ASC
SELECT employee_id FROM job_history GROUP BY employee_id HAVING COUNT(*) >= 2
SELECT T2.f1 FROM user_profiles AS T1 JOIN follows AS T2 ON T1.uid = T2.f2 WHERE T1.name = "Mar@@ y" OR T1.name = "S@@ usan"
SELECT count(DISTINCT state) FROM college WHERE enr < (SELECT avg(enr) FROM college)
SELECT card_id , customer_id , card_type_code , card_number FROM Customers_cards
SELECT count(*) , T1.name FROM projects AS T1 JOIN assignedto AS T2 ON T1.code = T2.project WHERE T1.hours > 300 GROUP BY T1.name
SELECT Name FROM technician ORDER BY Age ASC
SELECT name FROM person EXCEPT SELECT name FROM PersonFriend
SELECT name , followers FROM user_profiles ORDER BY followers DESC
SELECT Denomination FROM school WHERE Founded < 1890 INTERSECT SELECT Denomination FROM school WHERE Founded > 1900
SELECT T1.customer_details , T1.customer_id FROM Customers AS T1 JOIN Customer_Policies AS T2 ON T1.Customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 2 EXCEPT SELECT T1.customer_details , T1.customer_id FROM Customers AS T1 JOIN Customer_Policies AS T2 ON T1.Customer_id = T2.customer_id JOIN Claims AS T3 ON T2.@@ policy_id = T3.@@ policy_id
SELECT title , director FROM film WHERE film_id NOT IN (SELECT film_id FROM film_market_estimation AS T1 JOIN market AS T2 ON T1.@@ market@@ _id = T2.Market_ID WHERE country = 'Chin@@ a')
SELECT city FROM city ORDER BY regional_population DESC LIMIT 3
SELECT DISTINCT Director FROM film
SELECT count(*) FROM architect WHERE id NOT IN ( SELECT architect_id FROM mill WHERE built_year < 1850 );
SELECT T2.J@@ an FROM city AS T1 JOIN temperature AS T2 ON T1.city_id = T2.city_id WHERE T1.city = "Shanghai"
SELECT T2.region_name FROM affected_region AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id JOIN storm AS T3 ON T1.storm_id = T3.storm_id ORDER BY T3.@@ Number_Deaths DESC LIMIT 1
SELECT DISTINCT YEAR FROM party WHERE Governor = "Eliot Spit@@ zer"
SELECT Issue_Date FROM volume ORDER BY Weeks_on_Top ASC LIMIT 1
SELECT T1.name FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.name WHERE T2.friend = 'Bob'
SELECT T1.campus FROM campuses AS T1 JOIN faculty AS T2 ON T1.id = T2.campus WHERE T2.year = 2002 AND faculty > (SELECT max(@@ faculty) FROM campuses AS T1 JOIN faculty AS T2 ON T1.id = T2.campus WHERE T2.year = 2002 AND T1.county = "Orang@@ e")
SELECT Major , count(*) FROM Student GROUP BY Major HAVING count(@@ Ma@@ j@@ or) BETWEEN 2 AND 30@@ ;
SELECT COUNT(*) FROM station WHERE city = "Mountain View"
SELECT avg(T1.@@ sal@@ es) FROM journal AS T1 JOIN journal_committee AS T2 ON T1.@@ journal_ID = T2.@@ journal_ID WHERE T2.@@ work_type = 'P@@ ho@@ to'
SELECT T2.date_order_placed FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T1.customer_name = "Jeramie"
SELECT T1.title FROM item AS T1 JOIN review AS T2 ON T1.i_id = T2.i_id WHERE T2.rating > 8 INTERSECT SELECT T1.title FROM item AS T1 JOIN review AS T2 ON T1.i_id = T2.i_id WHERE T2.rating < 5
SELECT T1.@@ donator_name FROM endowment AS T1 JOIN school AS T2 ON T1.school_id = T2.school_id WHERE T2.school_name = 'G@@ lenn@@ ' INTERSECT SELECT T1.@@ donator_name FROM endowment AS T1 JOIN school AS T2 ON T1.school_id = T2.school_id WHERE T2.school_name = 'T@@ rit@@ on@@ '
SELECT course_id FROM SECTION WHERE semester = 'Fall' AND YEAR = 2009 EXCEPT SELECT course_id FROM SECTION WHERE semester = 'Spring' AND YEAR = 2010
SELECT avg(T3.@@ Total_@@ Passeng@@ ers) FROM aircraft AS T1 JOIN airport_aircraft AS T2 ON T1.Aircraft_ID = T2.Aircraft_ID JOIN airport AS T3 ON T2.Airport_ID = T3.Airport_ID WHERE T1.Aircraft = "Rob@@ in@@ son R@@ -2@@ 2"
SELECT T1.Company FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.Height DESC LIMIT 1
SELECT DISTINCT T1.Fname FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID = T2.VICE_P@@ RESIDENT_Vote EXCEPT SELECT DISTINCT Fname FROM STUDENT WHERE city_code = "P@@ IT@@ "
SELECT count(*) FROM Student WHERE age > 18 AND StuID NOT IN ( SELECT StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy = T2.Allergy WHERE T2.allergytype = "food" OR T2.allergytype = "animal")
SELECT count(*) FROM professor WHERE prof_high_degree = 'Ph.D.' OR prof_high_degree = 'M@@ A'
SELECT LEVEL FROM member GROUP BY LEVEL ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM HOTELS
SELECT count(DISTINCT P@@ ROF@@ _N@@ UM@@ ) FROM CLASS WHERE CRS_CODE = "ACCT-211"
SELECT T2.Author , COUNT(DISTINCT T1.workshop_id) FROM acceptance AS T1 JOIN submission AS T2 ON T1.Submission_ID = T2.Submission_ID GROUP BY T2.Author
SELECT count(*) FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code = T2.class_code WHERE T1.crs_code = 'ACCT-211'
SELECT T1.bname , T1.city FROM bank AS T1 JOIN loan AS T2 ON T1.branch_id = T2.branch_id WHERE T2.loan_type = 'B@@ usiness'
SELECT T1.member_name FROM Member AS T1 JOIN party AS T2 ON T1.party_id = T2.party_id WHERE T2.@@ Part@@ y_name != "Pro@@ gress Party"
SELECT count(*) FROM climber
SELECT T1.Color FROM GRAPES AS T1 JOIN WINE AS T2 ON T1.Grape = T2.Grape GROUP BY T2.Grape ORDER BY AVG(Price) DESC LIMIT 1
SELECT Category FROM music_festival WHERE RESULT = "Awarde@@ d"
SELECT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName = T2.cName JOIN player AS T3 ON T2.pID = T3.@@ p@@ ID WHERE T3.@@ pName = 'Ch@@ ar@@ le@@ s'
SELECT address FROM member WHERE age < 30 INTERSECT SELECT address FROM member WHERE age > 40
SELECT Player_name FROM player WHERE Player_ID NOT IN (SELECT Player_ID FROM player_@@ coach@@ )
SELECT Accreditation_type , count(*) FROM phone GROUP BY Accreditation_type
SELECT DISTINCT order_id FROM orders ORDER BY date_order_placed
SELECT date , mean_@@ temperature_f , mean_humidity FROM weather ORDER BY max_@@ gust@@ _@@ speed_mp@@ h DESC LIMIT 3
SELECT unit_price FROM tracks WHERE name = "Fast As a Shark";
SELECT card_number FROM member WHERE Hometown LIKE "%@@ Kentuck@@ y%"
SELECT login_name , family_name FROM Course_Authors_and_Tutors
SELECT T1.bname , T1.city FROM bank AS T1 JOIN loan AS T2 ON T1.branch_id = T2.branch_id WHERE T2.loan_type = 'B@@ usiness'
SELECT category , count(*) FROM book_club GROUP BY category
SELECT Birth_Date FROM People ORDER BY Height ASC
SELECT title FROM course WHERE dept_name = 'Statistics' EXCEPT SELECT title FROM course WHERE dept_name = 'Psychology'
SELECT DISTINCT T2.name FROM affiliated_with AS T1 JOIN department AS T2 ON T1.@@ department = T2.@@ department@@ id WHERE PrimaryAffiliation = 1
SELECT customer_phone FROM customers UNION SELECT supplier_phone FROM suppliers
SELECT avg(t3.age) FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t1.clubname = "Bootup Baltimore"
SELECT card_type_code FROM Customers_cards GROUP BY card_type_code HAVING count(*) >= 5
SELECT T1.name , count(*) FROM building AS T1 JOIN institution AS T2 ON T1.building_id = T2.building_id GROUP BY T1.building_id
SELECT T2.Name FROM body_builder AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Total > 300
SELECT fname FROM student WHERE city_code = 'P@@ H@@ L' AND age BETWEEN 20 AND 25
SELECT Destroyed_by_Employee_ID FROM Documents_to_be_destroyed UNION SELECT Destruction_Authorised_by_Employee_ID FROM Documents_to_be_destroyed
SELECT T1.@@ sal@@ es@@ _details , T2.date_of_@@ transaction FROM S@@ A@@ LES AS T1 JOIN TRANSACTIONS AS T2 ON T1.@@ sal@@ es_@@ transaction_id = T2.transaction_id WHERE T2.@@ amount_of_transaction < 3000
SELECT salary , manager_id FROM employees WHERE manager_id != "null"
SELECT T1.rank , count(*) FROM Faculty AS T1 JOIN Student AS T2 ON T1.FacID = T2.advisor GROUP BY T1.rank
SELECT T2.Name FROM party_host AS T1 JOIN HOST AS T2 ON T1.Host_ID = T2.Host_ID JOIN party AS T3 ON T1.Party_ID = T3.Party_ID WHERE T3.@@ Number_of_hosts > 20
SELECT T1.@@ party_name , T2.region_name FROM party AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id
SELECT count(*) , nationality FROM constructors GROUP BY nationality
SELECT dorm_name FROM dorm ORDER BY student_capacity DESC LIMIT 1
SELECT T3.@@ venue FROM city AS T1 JOIN hosting_city AS T2 ON T1.city_id = T2.host_city JOIN MATCH AS T3 ON T2.@@ match_id = T3.@@ match_id WHERE T1.city = "Nanjing ( Jiangsu )" AND T3.@@ competition = "1994 FIFA World Cup qualification"
SELECT Date , Vote_Perc@@ ent FROM election
SELECT Nationality FROM ship GROUP BY Nationality HAVING COUNT(*) > 2
SELECT city_code , count(*) FROM Student GROUP BY city_code
SELECT clubdesc FROM club WHERE clubname = "Tennis Club"
SELECT LOCATION FROM wrestler GROUP BY LOCATION HAVING COUNT(*) > 2
SELECT policy_type_code FROM policies GROUP BY policy_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T3.Player_name FROM player_coach AS T1 JOIN coach AS T2 ON T1.Coach_ID = T2.Coach_ID JOIN player AS T3 ON T1.Player_ID = T3.Player_ID WHERE T2.@@ Rank = 1
SELECT DISTINCT song_name FROM song WHERE resolution > (SELECT min(@@ resolution) FROM song WHERE languages = "english@@ ")
SELECT DISTINCT LOCATION FROM track
SELECT T1.@@ Offici@@ al_@@ nat@@ iv@@ e_@@ language FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id = T2.Country WHERE T2.College = "Mar@@ yland" OR T2.College = "Duke"
SELECT clubname FROM club
SELECT name FROM procedures WHERE cost > 1000 EXCEPT SELECT T3.name FROM physician AS T1 JOIN trained_in AS T2 ON T1.employeeid = T2.physician JOIN procedures AS T3 ON T3.code = T2.treatment WHERE T1.name = "John Wen"
SELECT cust_name FROM customer WHERE acc_type = 'saving' INTERSECT SELECT cust_name FROM customer WHERE acc_type = '@@ check@@ ing'
SELECT count(DISTINCT dept_name) , school_code FROM department GROUP BY school_code
SELECT T2.customer_first_name , T2.customer_last_name FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id WHERE T1.account_name = "9@@ 00"
SELECT count(*) FROM exhibition WHERE YEAR >= 2005
SELECT avg(T1.@@ lat) , avg(T1.@@ long) FROM station AS T1 JOIN trip AS T2 ON T1.id = T2.start_station_id
SELECT T2.Name , T1.Name FROM country AS T1 JOIN roller_coaster AS T2 ON T1.Country_ID = T2.Country_ID
SELECT t3.headquartered_city FROM store AS t1 JOIN store_district AS t2 ON t1.store_id = t2.store_id JOIN district AS t3 ON t2.district_id = t3.district_id WHERE t1.store_name = "B@@ lack@@ ville"
SELECT T1.name_first , T1.name_last , T1.player_id FROM player AS T1 JOIN player_award AS T2 ON T1.player_id = T2.player_id GROUP BY T1.player_id ORDER BY count(*) DESC LIMIT 3;
SELECT T1.driverid , T1.forename , count(*) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid GROUP BY T1.driverid HAVING count(*) >= 2
SELECT T1.stu_lname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num = T2.stu_num WHERE T2.enroll_grade = 'A' AND T2.class_code = 100@@ 18
SELECT Studio FROM film GROUP BY Studio HAVING avg(Gross_in_dollar) >= 4500@@ 000
SELECT T3.Location , T2.Name FROM party_host AS T1 JOIN HOST AS T2 ON T1.Host_ID = T2.Host_ID JOIN party AS T3 ON T1.Party_ID = T3.Party_ID ORDER BY T2.Age
SELECT count(*) FROM products WHERE product_category_code = "Spices" AND typical_buying_price > 1000
SELECT T1.document_id FROM Documents AS T1 JOIN Documents_with_expenses AS T2 ON T1.document_id = T2.document_id WHERE T1.@@ document_name LIKE '%@@ s%'
SELECT T1.claim_id , T1.date_claim_made , count(*) FROM Claims AS T1 JOIN Settlements AS T2 ON T1.claim_id = T2.claim_id GROUP BY T1.claim_id ORDER BY count(*) DESC LIMIT 1
SELECT catalog_entry_name , capacity FROM Catalog_Contents WHERE price_in_dollars > 700
SELECT sum(enrollment) , affiliation FROM university GROUP BY affiliation
SELECT count(*) FROM Students WHERE student_id NOT IN (SELECT student_id FROM Student_Course_Enrol@@ ment)
SELECT course_id FROM SECTION WHERE semester = 'Fall' AND YEAR = 2009 UNION SELECT course_id FROM SECTION WHERE semester = 'Spring' AND YEAR = 2010
SELECT name FROM station WHERE lat < 37.@@ 5
SELECT T2.C@@ ity FROM CUSTOMER AS T1 JOIN EMPLOYEE AS T2 ON T1.SupportRepId = T2.EmployeeId WHERE T1.@@ Po@@ st@@ al@@ Code = "@@ 7017@@ 4"
SELECT sum(T2.@@ K@@ il@@ le@@ d) FROM people AS T1 JOIN perpetrator AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Height > 1.@@ 8@@ 4
SELECT sum(T2.@@ hours) FROM assignedto AS T1 JOIN projects AS T2 ON T1.project = T2.code JOIN scientists AS T3 ON T1.scientist = T3.SSN WHERE T3.name = 'M@@ ichael Rog@@ ers' OR T3.name = 'C@@ arol Smith@@ '
SELECT T2.roomName FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room = T2.RoomId GROUP BY T1.Room HAVING count(*) > 60
SELECT count(*) FROM products WHERE product_category_code = "Spices" AND typical_buying_price > 1000
SELECT T1.name , count(*) FROM user_profiles AS T1 JOIN tweets AS T2 ON T1.uid = T2.uid GROUP BY T2.uid HAVING count(*) > 1
SELECT name FROM Person WHERE age < 30
SELECT count(*) FROM Ref_colors WHERE color_code NOT IN ( SELECT color_code FROM products )
SELECT D@@ uration FROM actor ORDER BY Age DESC LIMIT 1
SELECT t1.attribu@@ te_name , t1.attribu@@ te_id FROM Attribute_Definitions AS t1 JOIN Catalog_Contents_Additional_Attributes AS t2 ON t1.attribu@@ te_id = t2.@@ attribu@@ te_id WHERE t2.attribute_value = 0
SELECT count(*) , address FROM member GROUP BY address
SELECT T1.@@ event_details FROM EVENTS AS T1 JOIN Services AS T2 ON T1.S@@ ervic@@ e_ID = T2.S@@ ervic@@ e_ID WHERE T2.Service_Type_Code = 'M@@ arri@@ ag@@ e'
SELECT attribute_data_type FROM Attribute_Definitions GROUP BY attribute_data_type HAVING count(*) > 3
SELECT T2.account_name , T1.account_id , count(*) FROM Financial_transactions AS T1 JOIN Accounts AS T2 ON T1.account_id = T2.account_id GROUP BY T1.account_id
SELECT Name FROM ship ORDER BY Tonnage ASC
SELECT T2.Location , T1.Aircraft FROM aircraft AS T1 JOIN MATCH AS T2 ON T1.Aircraft_ID = T2.Winning_Aircraft
SELECT problem_id FROM problems WHERE date_problem_reported > "1978-06-26"
SELECT T2.Name , T1.@@ Location FROM railway AS T1 JOIN train AS T2 ON T1.Railway_ID = T2.Railway_ID
SELECT sum(T1.crs_credit) , T1.dept_code FROM course AS T1 JOIN CLASS AS T2 ON T1.crs_code = T2.crs_code GROUP BY T1.dept_code
SELECT LOCATION , COUNT(*) FROM railway GROUP BY LOCATION
SELECT count(*) FROM Aircraft WHERE distance BETWEEN 1000 AND 5000
SELECT avg(age) FROM Student WHERE StuID IN ( SELECT T1.StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy = T2.Allergy WHERE T2.allergytype = "food" INTERSECT SELECT T1.StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy = T2.Allergy WHERE T2.allergytype = "animal")
SELECT T2.name FROM genres AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id JOIN media_types AS T3 ON T3.id = T2.media_type_id WHERE T1.name = "Rock" OR T3.name = "MPEG audio file";
SELECT min(@@ bath@@ room_count) , max(@@ bath@@ room_count) FROM Apartments
SELECT avg(@@ RAM_MiB) FROM chip_model WHERE mode@@ l_name NOT IN (SELECT chip_model FROM phon@@ e)
SELECT name FROM Person ORDER BY age DESC
SELECT T1.Area FROM APPELLATIONS AS T1 JOIN WINE AS T2 ON T1.Appelation = T2.Appelation GROUP BY T2.Appelation HAVING T2.year < 2010 ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID WHERE T2.Position = "R@@ i@@ ght W@@ ing"
SELECT DISTINCT lot_details FROM LOTS
SELECT sum(t2.order_quantity) FROM customer_orders AS t1 JOIN order_items AS t2 ON t1.order_id = t2.order_id WHERE t1.@@ order_date < "@@ 2018-03-17 07:13:5@@ 3"
SELECT aid FROM Aircraft WHERE distance > 1000
SELECT avg(age) , sex FROM Student GROUP BY sex
SELECT sum(enrollment) , min(enrollment) FROM university
SELECT sum(@@ budget) FROM department WHERE dept_name = 'Marketing' OR dept_name = 'Finance'
SELECT count(*) FROM Songs
SELECT member_name FROM member WHERE party_id = 3 INTERSECT SELECT member_name FROM member WHERE party_id = 1
SELECT DISTINCT T2.Name FROM APPELLA@@ TION@@ s AS T1 JOIN WINE AS T2 ON T1.Appelation = T2.Appelation WHERE T1.Area = "N@@ orth Coast"
SELECT T3.Name , T2.Date , T2.@@ Venue FROM debate_people AS T1 JOIN debate AS T2 ON T1.Debate_ID = T2.Debate_ID JOIN people AS T3 ON T1.Affirmative = T3.People_ID
SELECT T1.name , T2.name FROM Country AS T1 JOIN L@@ eag@@ ue AS T2 ON T1.id = T2.country_id
SELECT min(age) , job FROM Person GROUP BY job
SELECT T1.booking_start_date , T1.booking_start_date FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id = T2.apt_id WHERE T2.bedroom_count > 2
SELECT T1.name , T1.age FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.name WHERE T2.friend = 'Dan' INTERSECT SELECT T1.name , T1.age FROM Person AS T1 JOIN PersonFriend AS T2 ON T1.name = T2.name WHERE T2.friend = 'Alice'
SELECT count(*) , T3.dorm_name FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid = T2.stuid JOIN dorm AS T3 ON T3.dormid = T2.dormid WHERE T1.age > 20 GROUP BY T3.dorm_name
SELECT product FROM product WHERE max_page_size = "A4" AND pages_per_minute_color < 5
SELECT T2.D@@ en@@ omination FROM player AS T1 JOIN school AS T2 ON T1.School_ID = T2.School_ID GROUP BY T1.School_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT t1.@@ owner FROM program AS t1 JOIN broadcast AS t2 ON t1.program_id = t2.program_id WHERE t2.Time_of_day = "Morning" INTERSECT SELECT t1.@@ owner FROM program AS t1 JOIN broadcast AS t2 ON t1.program_id = t2.program_id WHERE t2.Time_of_day = "N@@ ight@@ "
SELECT T1.problem_id FROM problems AS T1 JOIN staff AS T2 ON T1.reported_by_staff_id = T2.staff_id WHERE date_problem_reported < ( SELECT min(@@ date_problem_reported) FROM problems AS T3 JOIN staff AS T4 ON T3.reported_by_staff_id = T4.staff_id WHERE T4.staff_first_name = "L@@ ysanne" AND T4.staff_last_name = "Turcotte" )
SELECT payment_method_code , count(*) FROM Customer_Payments GROUP BY payment_method_@@ code;
SELECT T1.project_details , T1.project_id FROM Projects AS T1 JOIN Project_outcomes AS T2 ON T1.project_id = T2.project_id GROUP BY T1.project_id ORDER BY count(*) DESC LIMIT 1
SELECT budget_type_code , budget_type_description FROM Ref_budget_codes
SELECT T1.@@ problem@@ _description FROM problems AS T1 JOIN staff AS T2 ON T1.reported_by_staff_id = T2.staff_id WHERE T2.staff_first_name = "Christop"
SELECT DISTINCT T1.cust_name , T1.@@ credit_score FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id = T2.cust_id
SELECT address_line_1 , address_@@ line_@@ 2 FROM customers WHERE email_address = "vbogisich@example.org@@ "
SELECT count(*) FROM railway
SELECT T1.@@ role_description , T2.staff_id FROM Staff_Roles AS T1 JOIN Project_Staff AS T2 ON T1.role_code = T2.role_code JOIN Project_outcomes AS T3 ON T2.project_id = T3.project_id GROUP BY T2.staff_id ORDER BY count(*) DESC LIMIT 1
SELECT first_name FROM people ORDER BY first_name
SELECT zip_code FROM weather GROUP BY zip_code HAVING avg(mean_@@ visibility_miles) < 10
SELECT name FROM Aircraft WHERE distance > (SELECT avg(distance) FROM Aircraft@@ )
SELECT count(DISTINCT customer_id) FROM Accounts
SELECT name FROM channel WHERE OWNER != 'CCTV'
SELECT LOCATION FROM party ORDER BY Number_of_hosts DESC LIMIT 1
SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id = T2.cust_id WHERE loan_type = 'M@@ ortg@@ ag@@ es' INTERSECT SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id = T2.cust_id WHERE loan_type = 'A@@ u@@ to'
SELECT * FROM employees WHERE salary BETWEEN 8000 AND 12000 AND commission_pct != "null" OR department_id != 40
SELECT T1.artist_name FROM artist AS T1 JOIN song AS T2 ON T1.artist_name = T2.artist_name WHERE T2.languages = "bangla" GROUP BY T2.artist_name ORDER BY count(*) DESC LIMIT 3
SELECT count(*) FROM EVENTS WHERE event_id NOT IN (SELECT event_id FROM Participant@@ s_in_@@ Event@@ s)
SELECT T2.school_name FROM endowment AS T1 JOIN school AS T2 ON T1.school_id = T2.school_id GROUP BY T1.school_id HAVING sum(T1.amount) <= 10
SELECT minister FROM party WHERE party_name != 'Pro@@ gress Party'
SELECT DISTINCT t1.@@ individual_last_name FROM individuals AS t1 JOIN organization_contact_individuals AS t2 ON t1.@@ individual_id = t2.individual_id
SELECT T1.personal_name , T1.f@@ amily_name , T2.author_id FROM Course_Authors_and_Tutors AS T1 JOIN Courses AS T2 ON T1.author_id = T2.author_id GROUP BY T2.author_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name , count(*) FROM exhibition AS T1 JOIN artist AS T2 ON T1.artist_id = T2.artist_id GROUP BY T1.artist_id
SELECT count(*) , cName FROM tryout GROUP BY cName ORDER BY count(*) DESC
SELECT T1.apt_number FROM Apartments AS T1 JOIN View_Unit_Status AS T2 ON T1.apt_id = T2.apt_id WHERE T2.available_yn = 0 INTERSECT SELECT T1.apt_number FROM Apartments AS T1 JOIN View_Unit_Status AS T2 ON T1.apt_id = T2.apt_id WHERE T2.available_yn = 1
SELECT T2.D@@ name , T2.@@ Room FROM COURSE AS T1 JOIN DEPARTMENT AS T2 ON T1.DNO = T2.DNO WHERE T1.CName = "@@ INTRODUCTION TO COMPUTER SCIENCE@@ "
SELECT dorm_name FROM dorm WHERE dormid NOT IN (SELECT dormid FROM has_@@ amen@@ ity)
SELECT count(*) FROM classroom WHERE building != 'Lamberton'
SELECT min(@@ market_value) , max(@@ market_value) , avg(@@ market_value) FROM company
SELECT Name FROM Art@@ work WHERE Artwork_ID NOT IN (SELECT Artwork_ID FROM nomin@@ ation)
SELECT t1.document_name FROM documents AS t1 JOIN document_sections AS t2 ON t1.document_code = t2.document_code GROUP BY t1.document_code ORDER BY count(*) DESC LIMIT 1
SELECT director FROM Movie WHERE director != "null" GROUP BY director HAVING count(*) = 1
SELECT host_city FROM hosting_city ORDER BY YEAR DESC LIMIT 1
SELECT T1.pName , T2.cName FROM player AS T1 JOIN tryout AS T2 ON T1.pID = T2.pID WHERE T2.decision = 'yes'
SELECT count(*) FROM products
SELECT T3.Name , T2.M@@ achin@@ e_@@ series FROM repair_assignment AS T1 JOIN machine AS T2 ON T1.machine_id = T2.machine_id JOIN technician AS T3 ON T1.technician_ID = T3.technician_ID
SELECT document_name , document_id FROM Documents WHERE document_type_code = "BK"
SELECT Range FROM mountain GROUP BY Range ORDER BY COUNT(*) DESC LIMIT 1
SELECT DISTINCT T1.customer_name FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status_code = "Pending" ORDER BY T2.customer_id
SELECT T1.CName FROM COURSE AS T1 JOIN ENROLLED_IN AS T2 ON T1.C@@ ID = T2.CID GROUP BY T2.CID HAVING COUNT(*) >= 5
SELECT T2.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid = T2.custid WHERE T1.name IN (SELECT T1.name FROM accounts AS T1 JOIN savings AS T2 ON T1.custid = T2.custid WHERE T2.balance > (SELECT avg(balance) FROM saving@@ s)@@ )
SELECT count(DISTINCT school_@@ code) FROM department
SELECT count(*) FROM editor
SELECT T1.theme , T2.name FROM exhibition AS T1 JOIN artist AS T2 ON T1.artist_id = T2.artist_id WHERE T1.@@ ticket_price > (SELECT avg(ticket_price) FROM exhibition)
SELECT T2.first_name , T2.last_name , T2.actor_id FROM film_actor AS T1 JOIN actor AS T2 ON T1.actor_id = T2.actor_id GROUP BY T2.actor_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Project_Staff WHERE role_code = '@@ lead@@ er' OR date_from < '1989-04-24 23:51:54@@ '
SELECT gameid , sum(hours_played) FROM Plays_games GROUP BY gameid
SELECT count(*) FROM film
SELECT country FROM airports ORDER BY elevation DESC LIMIT 1
SELECT sum(@@ T1.M@@ oney_Requested) FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 1.@@ 85
SELECT T1.@@ lesson@@ _id FROM Lessons AS T1 JOIN Staff AS T2 ON T1.staff_id = T2.staff_id WHERE T2.first_name = "Janessa" AND T2.last_name = "Sawayn@@ " AND nickname LIKE "%@@ s@@ %@@ ";
SELECT T2.name , T2.position FROM department AS T1 JOIN physician AS T2 ON T1.@@ head = T2.EmployeeID GROUP BY departmentID ORDER BY count(departmentID) LIMIT 1;
SELECT T1.engineer_id , T1.first_name , T1.last_name FROM Maintenance_Engineers AS T1 JOIN Engineer_Visits AS T2 GROUP BY T1.engineer_id ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT class_@@ section@@ ) FROM CLASS WHERE crs_code = 'ACCT-211'
SELECT avg(distance) , avg(price) FROM Flight WHERE origin = "Los Angeles"
SELECT T2.name , T2.@@ open_year FROM membership_register_branch AS T1 JOIN branch AS T2 ON T1.branch_id = T2.branch_id WHERE T1.register_year = 2016 GROUP BY T2.branch_id ORDER BY count(*) DESC LIMIT 1
SELECT address_line_1 FROM Course_Authors_and_Tutors WHERE person@@ al_@@ name@@ 	 = "Cathrine"
SELECT salary FROM salary WHERE YEAR = 2001 ORDER BY salary DESC LIMIT 3;
SELECT email FROM employees WHERE commission_pct = "null" AND salary BETWEEN 7000 AND 12000 AND department_id = 50
SELECT T1.name FROM constructors AS T1 JOIN constructor@@ standings AS T2 ON T1.@@ constructorid = T2.@@ constructorid WHERE T1.nationality = "Japan@@ es@@ e" AND T2.points > 5
SELECT T1.subject_id , T2.subject_name , COUNT(*) FROM Courses AS T1 JOIN Subjects AS T2 ON T1.subject_id = T2.subject_id GROUP BY T1.subject_id
SELECT name FROM channel ORDER BY rating_in_percent DESC
SELECT billing_country , COUNT(*) FROM invoices GROUP BY billing_country ORDER BY count(*) DESC LIMIT 5;
SELECT Software_Platform , COUNT(*) FROM device GROUP BY Software_Platform
SELECT sex , count(*) FROM Faculty WHERE rank = "A@@ s@@ st@@ Prof@@ " GROUP BY sex
SELECT T2.apt_number FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id = T2.apt_id WHERE T1.booking_status_code = "Confirmed" INTERSECT SELECT T2.apt_number FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id = T2.apt_id WHERE T1.booking_status_code = "Provisional"
SELECT origin FROM program ORDER BY origin
SELECT DISTINCT District_name FROM district ORDER BY city_area DESC
SELECT country FROM competition EXCEPT SELECT country FROM competition WHERE competition_type = 'Friendly'
SELECT T2.Name , T1.@@ Elimination_Move FROM elimination AS T1 JOIN wrestler AS T2 ON T1.Wrestler_ID = T2.Wrestler_ID
SELECT name , origin , OWNER FROM program
SELECT T2.customer_name , T2.@@ payment_method FROM mailshot_customers AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id WHERE T1.outcome_code = '@@ Ord@@ er' INTERSECT SELECT T2.customer_name , T2.@@ payment_method FROM mailshot_customers AS T1 JOIN customers AS T2 ON T1.customer_id = T2.customer_id WHERE T1.outcome_code = 'No Response'
SELECT sum(@@ balance) FROM checking
SELECT T2.emp_fname , T1.crs_code FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num = T2.emp_num
SELECT TYPE FROM school GROUP BY TYPE HAVING count(*) = 2
SELECT count(*) FROM enzyme
SELECT T1.problem_id FROM problems AS T1 JOIN staff AS T2 ON T1.reported_by_staff_id = T2.staff_id WHERE date_problem_reported < ( SELECT min(@@ date_problem_reported) FROM problems AS T3 JOIN staff AS T4 ON T3.reported_by_staff_id = T4.staff_id WHERE T4.staff_first_name = "L@@ ysanne" AND T4.staff_last_name = "Turcotte" )
SELECT Starting_Year FROM technician ORDER BY Age DESC LIMIT 1
SELECT TYPE FROM vocals AS T1 JOIN songs AS T2 ON T1.songid = T2.songid WHERE title = "Badlands"
SELECT avg(weight) , min(@@ weight) , sex FROM people GROUP BY sex
SELECT t1.@@ payment_method FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id = t2.customer_id JOIN order_items AS t3 ON t2.order_id = t3.order_id GROUP BY t1.customer_name ORDER BY sum(t3.order_quantity) LIMIT 1
SELECT count(*) FROM accounts
SELECT school_code FROM department WHERE dept_name = "Accounting"
SELECT avg(T1.@@ height) FROM player AS T1 JOIN player_college AS T2 ON T1.player_id = T2.player_id JOIN college AS T3 ON T3.@@ college_id = T2.college_id WHERE T3.@@ name_full = 'Yale University@@ ';
SELECT count(*) FROM Accounts
SELECT title FROM papers WHERE title LIKE "%D@@ atabase@@ %"
SELECT T1.supplier_name , T1.supplier_phone FROM Suppliers AS T1 JOIN supplier_@@ addresses AS T2 ON T1.supplier_id = T2.supplier_id JOIN addresses AS T3 ON T2.address_id = T3.@@ address_id ORDER BY T3.@@ address_details
SELECT name FROM airport WHERE name LIKE '%@@ int@@ ern@@ ational@@ %'
SELECT T2.customer_first_name , T2.customer_last_name , T2.customer_phone FROM Customers_cards AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id WHERE T1.@@ card_number = "4560596484842"
SELECT T1.product_name , T2.color_description , T1.@@ product_description FROM products AS T1 JOIN Ref_colors AS T2 ON T1.color_code = T2.color_code WHERE product_category_code = "Herbs"
SELECT avg(@@ budget_million) , max(@@ budget_million) , min(@@ budget_million) FROM movie WHERE YEAR < 2000
SELECT te@@ xt FROM tweets ORDER BY cre@@ at@@ e@@ date
SELECT count(DISTINCT instrument) FROM instruments AS T1 JOIN songs AS T2 ON T1.songid = T2.songid WHERE title = "Badlands"
SELECT min(@@ Order_Quantity) , avg(Order_Quantity) , max(@@ Order_Quantity) FROM INVOICES
SELECT Team FROM technician GROUP BY Team HAVING COUNT(*) >= 2
SELECT T1.emp_fname , T2.prof_office FROM employee AS T1 JOIN professor AS T2 ON T1.emp_num = T2.emp_num JOIN department AS T3 ON T3.dept_code = T2.dept_code WHERE T3.dept_name = 'History' AND T2.prof_@@ high_degree = 'Ph.D.'
SELECT T1.staff_name , T1.staff_gender FROM staff AS T1 JOIN staff_department_assignments AS T2 ON T1.staff_id = T2.staff_id WHERE T2.@@ date_assigned_from LIKE "@@ 2016@@ %"
SELECT avg(T2.rating) FROM artist AS T1 JOIN song AS T2 ON T1.artist_name = T2.artist_name WHERE T1.gender = "Female"
SELECT Winery FROM WINE GROUP BY Winery HAVING count(*) >= 4
SELECT order_id FROM shipments WHERE shipment_@@ date = (SELECT max(@@ shipment_@@ date) FROM ship@@ ment@@ s)
SELECT avg(@@ pages_per_minute_@@ color@@ ) FROM product
SELECT name FROM user_profiles ORDER BY followers DESC LIMIT 5
SELECT County_name , Population FROM county
SELECT T2.name , T2.salary FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id = T2.id JOIN student AS T3 ON T1.s_id = T3.id WHERE T3.dept_name = 'History'
SELECT T1.claim_id , T1.date_claim_made , count(*) FROM Claims AS T1 JOIN Settlements AS T2 ON T1.claim_id = T2.claim_id GROUP BY T1.claim_id ORDER BY count(*) DESC LIMIT 1
SELECT sum(gamesplayed) FROM Sportsinfo
SELECT Song FROM volume ORDER BY Song
SELECT * FROM people
SELECT T2.emp_fname , T4.prof_office , T3.crs_description FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num = T2.emp_num JOIN course AS T3 ON T1.crs_code = T3.crs_code JOIN professor AS T4 ON T2.emp_num = T4.emp_num
SELECT name FROM instructor WHERE dept_name = 'Comp. Sci.' AND salary > 80000
SELECT T2.building , T2.room_number , T2.@@ semester , T2.year FROM course AS T1 JOIN SECTION AS T2 ON T1.course_id = T2.course_id WHERE T1.dept_name = 'Psychology' ORDER BY T1.title
SELECT first_name , middle_name , last_name FROM Staff;
SELECT count(DISTINCT la@@ st_@@ name) FROM actor
SELECT T2.park_name FROM home_game AS T1 JOIN park AS T2 ON T1.park_id = T2.park_id WHERE T1.year = 2008 ORDER BY T1.attendance DESC LIMIT 1;
SELECT T2.@@ Visit_Date , T2.@@ Visit@@ _Details FROM VISITORS AS T1 JOIN VISITS AS T2 ON T1.@@ Tourist_ID = T2.Tourist_ID WHERE T1.@@ Tourist_Details = "Vincent"
SELECT T1.date_of_completion FROM Student_Course_Enrolment AS T1 JOIN Student_Tests_Taken AS T2 ON T1.registration_id = T2.registration_id WHERE T2.test_result = "Fail"
SELECT count(*) FROM tryout WHERE decision = 'yes'
SELECT avg(@@ T2.W@@ eeks_on_Top) FROM artist AS T1 JOIN volume AS T2 ON T1.Artist_ID = T2.Artist_ID WHERE T1.age <= 25
SELECT T2.party_name FROM Member AS T1 JOIN party AS T2 ON T1.party_id = T2.party_id GROUP BY T1.party_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM track
SELECT T2.Name FROM Locations AS T1 JOIN Tourist_Attractions AS T2 ON T1.Location_ID = T2.Location_ID WHERE T1.Address = "@@ 254 Ottilie Junction@@ " OR T2.How_to_Get_There = "bus"
SELECT T1.name , T1.@@ area , T1.@@ population FROM country AS T1 JOIN roller_coaster AS T2 ON T1.Country_ID = T2.Country_ID WHERE T2.@@ speed > 60 INTERSECT SELECT T1.name , T1.@@ area , T1.@@ population FROM country AS T1 JOIN roller_coaster AS T2 ON T1.Country_ID = T2.Country_ID WHERE T2.@@ speed < 5@@ 5
SELECT sum(T1.@@ Order_Quantity) FROM ORDER_ITEMS AS T1 JOIN Products AS T2 ON T1.Product_ID = T2.Product_ID WHERE T2.Product_Name = "photo@@ "
SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name FROM Customers_cards AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) ASC LIMIT 1
SELECT FacID FROM Faculty EXCEPT SELECT advisor FROM Student
SELECT T2.roomName FROM Reservations AS T1 JOIN Rooms AS T2 ON T1.Room = T2.RoomId GROUP BY T1.Room ORDER BY count(*) DESC LIMIT 1;
SELECT rank , company , market_value FROM company WHERE main_industry = 'Banking' ORDER BY sal@@ es_bill@@ ion , profit@@ s_billion
SELECT T1.customer_name , T1.customer_address FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status_code = "N@@ ew@@ " INTERSECT SELECT T1.customer_name , T1.customer_address FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status_code = "Pending"
SELECT mID FROM Rating EXCEPT SELECT T1.mID FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID = T2.rID WHERE T2.name = "Brittany Harri@@ s"
SELECT campusfee FROM campuses AS T1 JOIN csu_fees AS T2 ON T1.id = t2.campus WHERE t1.campus = "San Francisco State University" AND T2.year = 1996
SELECT max(Price) , max(Score) , YEAR FROM WINE GROUP BY YEAR
SELECT max(T1.stars) , T2.year FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID WHERE T2.year = (SELECT max(YEAR) FROM Movie)
SELECT T1.address_line_1 FROM Course_Authors_and_Tutors AS T1 JOIN Courses AS T2 ON T1.author_id = T2.author_id WHERE T2.course_name = "operating system" OR T2.course_name = "data structure"
SELECT payment_date FROM payments WHERE amount_p@@ aid > 300 OR payment@@ _type_code = 'C@@ heck@@ '
SELECT Enrollment FROM school WHERE Denomination != "Catholic"
SELECT T2.Name FROM mission AS T1 JOIN ship AS T2 ON T1.Ship_ID = T2.Ship_ID WHERE T1.Launch@@ ed_@@ Year > 192@@ 8
SELECT T2.Date FROM people AS T1 JOIN perpetrator AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT DISTINCT main_industry FROM company
SELECT title FROM Movie WHERE YEAR = (SELECT max(YEAR) FROM Movie)
SELECT T1.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid = T2.eid JOIN Aircraft AS T3 ON T3.aid = T2.aid WHERE T3.name = "Boeing 737-800" INTERSECT SELECT T1.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid = T2.eid JOIN Aircraft AS T3 ON T3.aid = T2.aid WHERE T3.name = "Airbus A340-300"
SELECT OWNER FROM channel ORDER BY rating_in_percent DESC LIMIT 1
SELECT t1.customer_name FROM customers AS t1 JOIN first_notification_of_loss AS t2 ON t1.customer_id = t2.customer_id JOIN services AS t3 ON t2.service_id = t3.service_id WHERE t3.service_name = "Close a policy" OR t3.service_name = "Upgrade a policy"
SELECT product_id FROM problems AS T1 JOIN staff AS T2 ON T1.reported_by_staff_id = T2.staff_id WHERE T2.staff_first_name = "Christop" AND T2.staff_last_name = "B@@ erg@@ e" INTERSECT SELECT product_id FROM problems AS T1 JOIN staff AS T2 ON T1.@@ clos@@ ure_authorised_by_staff_id = T2.staff_id WHERE T2.staff_first_name = "Ashley" AND T2.staff_last_name = "Medhurst"
SELECT customer_status_code , cell_mobile@@ _@@ phone_number , email_address FROM Customers WHERE first_name = "Mar@@ in@@ a" OR last_name = "K@@ ohl@@ er"
SELECT sum(acc_bal) , state FROM customer WHERE credit_score > 100 GROUP BY state
SELECT COUNT(*) FROM Students WHERE personal_name LIKE "%@@ son@@ %"
SELECT DISTINCT zip_code FROM weather EXCEPT SELECT DISTINCT zip_code FROM weather WHERE max_@@ dew_point_@@ f >= 70
SELECT t1.customer_name FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id = t2.customer_id ORDER BY t2.@@ order_date DESC LIMIT 1
SELECT count(*) FROM authors AS t1 JOIN authorship AS t2 ON t1.authid = t2.authid JOIN papers AS t3 ON t2.paperid = t3.paperid WHERE t1.fname = "@@ At@@ sus@@ hi@@ " AND t1.lname = "O@@ hori"
SELECT firstname FROM teachers WHERE classroom = 1@@ 10
SELECT Market_@@ Rate , name FROM furniture WHERE Furniture_ID NOT IN (SELECT Furniture_ID FROM furniture_manufact@@ e)
SELECT FacID FROM Faculty EXCEPT SELECT FacID FROM Faculty_participates_in
SELECT T3.amenity_name FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid = T2.dormid JOIN dorm_amenity AS T3 ON T2.amenid = T3.amenid JOIN lives_in AS T4 ON T4.dormid = T1.dormid JOIN student AS T5 ON T5.@@ stuid = T4.@@ stuid WHERE T5.@@ lname = 'Smith@@ '
SELECT candidate_id FROM candidate_assessments ORDER BY assess@@ ment_@@ date DESC LIMIT 1
SELECT sum(T2.@@ hours) FROM assignedto AS T1 JOIN projects AS T2 ON T1.project = T2.code JOIN scientists AS T3 ON T1.scientist = T3.SSN WHERE T3.name = 'M@@ ichael Rog@@ ers' OR T3.name = 'C@@ arol Smith@@ '
SELECT T1.Claim_id , count(*) FROM Claims AS T1 JOIN Settlements AS T2 ON T1.claim_id = T2.claim_id GROUP BY T1.claim_id
SELECT id , color , name FROM photos
SELECT T1.artist_name , count(*) FROM artist AS T1 JOIN song AS T2 ON T1.artist_name = T2.artist_name WHERE T2.languages = "english" GROUP BY T2.artist_name HAVING count(*) >= 1
SELECT count(*) , T3.product_id FROM orders AS T1 JOIN order_items AS T2 JOIN products AS T3 ON T1.order_id = T2.order_id AND T2.product_id = T3.product_id GROUP BY T3.product_id
SELECT count(*) FROM Project_Staff WHERE role_code = '@@ lead@@ er' OR date_from < '1989-04-24 23:51:54@@ '
SELECT company , main_industry FROM company WHERE headquarters != 'USA'
SELECT T1.zip_postcode FROM Addresses AS T1 JOIN Staff AS T2 ON T1.address_id = T2.staff_address_id WHERE T2.first_name = "Janessa" AND T2.last_name = "Sawayn";
SELECT DISTINCT name FROM races WHERE YEAR BETWEEN 2014 AND 2017
SELECT count(DISTINCT school@@ _id) FROM basketball_match
SELECT emp_fname FROM employee WHERE emp_jobcode = 'P@@ RO@@ F' EXCEPT SELECT T1.emp_fname FROM employee AS T1 JOIN CLASS AS T2 ON T1.emp_num = T2.prof_num
SELECT name FROM instructor WHERE dept_name = 'Comp. Sci.'
SELECT sum(@@ market_@@ rate) FROM furniture ORDER BY market_@@ rate DESC LIMIT 2
SELECT Name FROM representative WHERE Representative_ID NOT IN (SELECT Representative_ID FROM election)
SELECT Name FROM ship WHERE Ship_ID NOT IN (SELECT Ship_ID FROM mission@@ )
SELECT building , count(*) FROM Faculty GROUP BY building
SELECT count(DISTINCT complaint@@ _type_code) FROM complaints
SELECT avg(credit_score) FROM customer WHERE cust_id NOT IN (SELECT cust_id FROM loan)
SELECT last_name FROM Customers INTERSECT SELECT last_name FROM Staff
SELECT T2.lastname FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate = T2.id JOIN Songs AS T3 ON T3.SongId = T1.SongId GROUP BY lastname ORDER BY count(*) DESC LIMIT 1
SELECT product_id FROM product_suppliers ORDER BY total_amount_purchased DESC LIMIT 3
SELECT address_line_1 , address_@@ line_@@ 2 FROM customers WHERE email_address = "vbogisich@example.org@@ "
SELECT T1.first_name , T1.last_name , T1.staff_id FROM staff AS T1 JOIN payment AS T2 ON T1.staff_id = T2.staff_id GROUP BY T1.staff_id ORDER BY count(*) ASC LIMIT 1
SELECT T1.surname , T1.driverid FROM drivers AS T1 JOIN pitstops AS T2 ON T1.driverid = T2.driverid GROUP BY T1.driverid HAVING count(*) = 11 INTERSECT SELECT T1.surname , T1.driverid FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid GROUP BY T1.driverid HAVING count(*) > 5
SELECT count(*) FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code = T2.class_code JOIN course AS T3 ON T1.crs_code = T3.crs_code JOIN department AS T4 ON T3.dept_code = T4.dept_code WHERE T4.dept_name = 'Accounting'
SELECT max(T2.@@ gradepoint) , min(T2.@@ gradepoint) FROM ENROLLED_IN AS T1 JOIN GRADECONVERSION AS T2 JOIN STUDENT AS T3 ON T1.Grade = T2.lettergrade AND T1.StuID = T3.StuID WHERE T3.@@ city_code = "NYC"
SELECT name , CLASS FROM ship WHERE ship_id NOT IN (SELECT ship_id FROM captain@@ )
SELECT t1.product_name , count(*) FROM products AS t1 JOIN complaints AS t2 ON t1.product_id = t2.product_id GROUP BY t1.product_name
SELECT problem_id FROM problems WHERE date_problem_reported < "1978-06-26"
SELECT avg(Age) FROM manager
SELECT T1.name , T1.@@ max_speed FROM storm AS T1 JOIN affected_region AS T2 ON T1.storm_id = T2.storm_id GROUP BY T1.storm_id ORDER BY count(*) DESC LIMIT 1
SELECT city FROM city ORDER BY regional_population DESC LIMIT 3
SELECT T1.date_order_placed FROM orders AS T1 JOIN shipments AS T2 ON T1.order_id = T2.order_id WHERE T2.invoice_number = 10
SELECT major , count(*) FROM Student GROUP BY major
SELECT count(*) FROM program
SELECT T1.artist_name , T1.gender FROM artist AS T1 JOIN song AS T2 ON T1.artist_name = T2.artist_name WHERE T2.@@ releasedate LIKE "%@@ Mar@@ %"
SELECT Election_Cycle , count(*) FROM VOTING_RECORD GROUP BY Election_Cycle
SELECT count(*) FROM Ref_budget_codes
SELECT student_id FROM student_course_attendance
SELECT T2.title FROM Rating AS T1 JOIN Movie AS T2 ON T1.mID = T2.mID WHERE T1.stars BETWEEN 3 AND 5
SELECT T1.Service_Type_Description , T2.Service_Type_Code , COUNT(*) FROM Ref_Service_Types AS T1 JOIN Services AS T2 ON T1.Service_Type_Code = T2.Service_Type_Code GROUP BY T2.Service_Type_Code
SELECT phone_number , email_address FROM Customers WHERE amount_outstanding > 2000;
SELECT T1.Allergy , T1.@@ Allergy@@ Type FROM Allergy_type AS T1 JOIN Has_allergy AS T2 ON T1.Allergy = T2.Allergy JOIN Student AS T3 ON T3.StuID = T2.StuID WHERE T3.Fname = "L@@ is@@ a" ORDER BY T1.Allergy
SELECT count(DISTINCT incident@@ _type_code) FROM Behavior_Incident
SELECT school , nickname FROM university ORDER BY founded
SELECT T2.student_id FROM courses AS T1 JOIN student_course_attendance AS T2 ON T1.course_id = T2.course_id WHERE T1.course_name = "@@ statistic@@ s" ORDER BY T2.date_of_@@ attendance
SELECT fname FROM authors ORDER BY fname
SELECT t1.customer_name FROM customers AS t1 JOIN customer_addresses AS t2 ON t1.customer_id = t2.customer_id JOIN addresses AS t3 ON t2.address_id = t3.address_id WHERE t3.state_province_county = "Col@@ orad@@ o"
SELECT t3.name FROM record AS t1 JOIN event AS t2 ON t1.@@ event_id = t2.id JOIN stadium AS t3 ON t3.@@ id = t2.stadium_id GROUP BY t2.stadium_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.artist_name FROM artist AS T1 JOIN song AS T2 ON T1.artist_name = T2.artist_name WHERE T2.languages = "bangla" GROUP BY T2.artist_name ORDER BY count(*) DESC LIMIT 3
SELECT rank FROM Faculty GROUP BY rank ORDER BY count(*) ASC LIMIT 1
SELECT count(DISTINCT dept_name) FROM department
SELECT count(DISTINCT party_@@ name) FROM party
SELECT count(*) FROM school
SELECT count(*) FROM park WHERE state = 'NY@@ ';
SELECT sex , count(*) FROM Faculty WHERE rank = "A@@ s@@ st@@ Prof@@ " GROUP BY sex
SELECT zip_code FROM weather GROUP BY zip_code ORDER BY avg(mean_@@ sea_level_pressure_inch@@ es) LIMIT 1
SELECT sum(student_capacity) FROM dorm
SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT S@@ upport_rate , C@@ on@@ sider_@@ rate , O@@ p@@ pose_@@ rate FROM candidate ORDER BY unsure_rate
SELECT count(*) FROM premises
SELECT order_@@ shipping_@@ charg@@ es , customer_id FROM customer_orders WHERE order_status_code = 'C@@ ancel@@ le@@ d@@ ' OR order_status_code = 'Pa@@ id'
SELECT zip_code FROM weather GROUP BY zip_code ORDER BY avg(mean_@@ sea_level_pressure_inch@@ es) LIMIT 1
SELECT date_@@ stored FROM All_documents WHERE Document@@ _name = "Marry CV"
SELECT avg(age) , min(age) FROM artist WHERE country = 'United States'
SELECT T1.Name , T3.Name , T3.@@ Hours FROM Sc@@ ient@@ ists AS T1 JOIN Assigned@@ T@@ o AS T2 ON T1.SSN = T2.S@@ c@@ ient@@ ist JOIN Projects AS T3 ON T2.@@ Project = T3.Code ORDER BY T3.Name , T1.Name
SELECT T2.balance , T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid = T2.custid JOIN savings AS T3 ON T1.custid = T3.custid ORDER BY T3.balance LIMIT 1
SELECT transaction_type_description FROM Ref_Transaction_Types WHERE transaction@@ _type_@@ code@@ 	 = "PUR"
SELECT * FROM CUSTOMER WHERE State = "N@@ Y"
SELECT max(@@ Points) FROM climber WHERE Country = "United Kingdom"
SELECT Weight FROM people ORDER BY Height ASC LIMIT 1
SELECT T1.first_name , T1.last_name FROM customer AS T1 JOIN rental AS T2 ON T1.customer_id = T2.customer_id ORDER BY T2.@@ rental_date ASC LIMIT 1
SELECT name FROM races WHERE TIME > "12@@ :00:@@ 00" OR TIME < "@@ 09@@ :00:@@ 00"
SELECT Team FROM player ORDER BY Team ASC
SELECT dept_store_chain_id FROM department_stores GROUP BY dept_store_chain_id ORDER BY count(*) DESC LIMIT 2
SELECT T1.amenity_name FROM dorm_amenity AS T1 JOIN has_amenity AS T2 ON T1.amenid = T2.amenid GROUP BY T2.amenid ORDER BY count(*) DESC LIMIT 1
SELECT name FROM artist WHERE artist_id NOT IN (SELECT artist_id FROM exhibition)
SELECT T1.Claim_id , count(*) FROM Claims AS T1 JOIN Settlements AS T2 ON T1.claim_id = T2.claim_id GROUP BY T1.claim_id
SELECT T1.@@ Writer FROM book AS T1 JOIN publication AS T2 ON T1.Book_ID = T2.Book_ID WHERE T2.@@ Price > 4@@ 00@@ 0000
SELECT count(DISTINCT customer_id) FROM customer_orders WHERE order_status = "Cancelled"
SELECT StuID FROM Sportsinfo WHERE onscholarship = 'Y'
SELECT name , openning_year FROM cinema ORDER BY openning_year DESC
SELECT date_of_latest_@@ re@@ vision FROM Catalo@@ g@@ s GROUP BY date_of_latest_@@ re@@ vision HAVING count(*) > 1
SELECT sal@@ es@@ _details FROM sales UNION SELECT purcha@@ se_@@ details FROM purcha@@ ses
SELECT T1.pName , T2.cName FROM player AS T1 JOIN tryout AS T2 ON T1.pID = T2.pID WHERE T2.decision = 'yes'
SELECT Lname FROM FACULTY WHERE Building = "B@@ art@@ on" ORDER BY Lname
SELECT name FROM manufacturers WHERE revenue < (SELECT min(revenue) FROM manufacturers WHERE headquarter = 'Austin')
SELECT Reign , Days_held FROM wrestler
SELECT T2.Name , sum(T1.Num_of_stock) FROM phone_market AS T1 JOIN phone AS T2 ON T1.Phone_ID = T2.@@ Phone_ID GROUP BY T2.Name
SELECT Studio FROM film GROUP BY Studio HAVING COUNT(*) >= 2
SELECT document_id FROM Documents_with_expenses WHERE budget_type_code = 'SF'
SELECT name , headquarter , founder FROM manufacturers ORDER BY revenue DESC LIMIT 1
SELECT count(*) FROM manufacturers WHERE founder = 'And@@ y'
SELECT Pilot_name FROM pilot WHERE Team = "B@@ r@@ ad@@ ley" OR Team = "F@@ ord@@ ham@@ "
SELECT date_of_@@ enrolment , date_of_@@ completion FROM Student_Course_Enrolment
SELECT avg(T1.@@ lat) , avg(T1.@@ long) FROM station AS T1 JOIN trip AS T2 ON T1.id = T2.start_station_id
SELECT count(*) FROM Customers_cards
SELECT max(T1.@@ RAM_MiB) , min(T1.@@ RAM_MiB) FROM chip_model AS T1 JOIN phone AS T2 ON T1.Model_name = T2.chip_model WHERE T2.Company_name = "Nokia Corporation";
SELECT T2.@@ day_Number , T1.Date_@@ Stor@@ ed FROM All_documents AS T1 JOIN Ref_calendar AS T2 ON T1.date_@@ stored = T2.@@ calendar_date
SELECT employee_id FROM employees WHERE salary > (SELECT AVG(salary) FROM employees)
SELECT title FROM Movie WHERE mID NOT IN (SELECT mID FROM Rat@@ ing)
SELECT count(*) FROM Player WHERE HS > 1000
SELECT roomName FROM Rooms ORDER BY maxOccupancy DESC LIMIT 1;
SELECT id FROM trip ORDER BY duration LIMIT 1
SELECT title FROM papers WHERE title LIKE "%D@@ atabase@@ %"
SELECT name FROM city WHERE county_id IN (SELECT county_id FROM county_public_safety WHERE Crime_rate < 100@@ )
SELECT T2.name FROM assignedto AS T1 JOIN projects AS T2 ON T1.project = T2.code JOIN scientists AS T3 ON T1.scientist = T3.SSN WHERE T3.name LIKE '%@@ Smith@@ %'
SELECT DISTINCT title FROM vocals AS t1 JOIN songs AS t2 ON t1.songid = t2.songid EXCEPT SELECT t2.title FROM vocals AS t1 JOIN songs AS t2 ON t1.songid = t2.songid WHERE TYPE = "lead"
SELECT Name FROM ship ORDER BY Tonnage DESC LIMIT 1
SELECT International_Passengers , Domestic_Passeng@@ ers FROM airport WHERE Airport_Name = "London Heathrow"
SELECT count(*) FROM College WHERE enr > 15000
SELECT T2.Shop_Name FROM stock AS T1 JOIN shop AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T1.Shop_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT name , CLASS , date FROM race
SELECT pPos FROM tryout GROUP BY pPos ORDER BY count(*) DESC LIMIT 1
SELECT TYPE FROM vocals AS T1 JOIN songs AS T2 ON T1.songid = T2.songid WHERE title = "Le Pop"
SELECT T2.@@ location_name , T1.location_code FROM Document_locations AS T1 JOIN Ref_locations AS T2 ON T1.location_code = T2.@@ location_code GROUP BY T1.location_code ORDER BY count(*) ASC LIMIT 1
SELECT name FROM people WHERE people_id NOT IN (SELECT people_id FROM candidat@@ e)
SELECT apt_type_code FROM Apartments WHERE bathroom_count > 1 GROUP BY apt_type_code ORDER BY count(*) DESC LIMIT 1
SELECT t1.customer_name FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id = t2.customer_id JOIN order_items AS t3 ON t2.order_id = t3.order_id WHERE t3.@@ order_@@ quantity = ( SELECT max(@@ order_quantity) FROM order_item@@ s)
SELECT DISTINCT T2.department_name FROM employees AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id
SELECT Issue_Date FROM artist AS T1 JOIN volume AS T2 ON T1.Artist_ID = T2.Artist_ID WHERE T1.age <= 23
SELECT Name , Opening_Hours FROM TOURIST_ATTRACTIONS WHERE How_to_Get_There = "bus" OR How_to_Get_There = "walk"
SELECT sum(@@ bed@@ s) FROM Rooms WHERE bedtype = 'K@@ ing@@ ';
SELECT DISTINCT T1.name FROM nurse AS T1 JOIN on_call AS T2 ON T1.EmployeeID = T2.@@ nurse
SELECT Status FROM roller_coaster GROUP BY Status ORDER BY COUNT(*) DESC LIMIT 1
SELECT rank , count(*) FROM Faculty GROUP BY rank
SELECT Name FROM journalist WHERE journalist_ID NOT IN (SELECT journalist_ID FROM news_@@ report@@ )
SELECT name FROM channel WHERE OWNER = 'CCTV' OR OWNER = 'H@@ B@@ S'
SELECT lname FROM student WHERE sex = 'F' AND city_code = 'B@@ AL@@ ' UNION SELECT lname FROM student WHERE sex = 'M' AND age < 20
SELECT count(DISTINCT allergy@@ type) FROM Allergy_type
SELECT T1.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid = T2.eid JOIN Aircraft AS T3 ON T3.aid = T2.aid WHERE T3.name = "Boeing 737-800"
SELECT count(DISTINCT complaint@@ _type_code) FROM complaints
SELECT Address FROM Restaurant WHERE Res@@ Name = "Subway";
SELECT Nationality FROM journalist GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.driverid , T1.forename , count(*) FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid GROUP BY T1.driverid HAVING count(*) >= 2
SELECT DISTINCT T1.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom = T2.classroom WHERE T1.@@ grade = 3 AND T2.firstname != "@@ CO@@ V@@ IN@@ " AND T2.lastname != "J@@ E@@ RO@@ ME@@ "
SELECT T2.lot_id , avg(amount_of_transaction) FROM TRANSACTIONS AS T1 JOIN Transaction@@ s_@@ Lots AS T2 ON T1.@@ transaction_id = T2.transaction_id GROUP BY T2.lot_id
SELECT sum(enr) FROM College
SELECT cmi_cross_ref_id FROM cmi_cross_references EXCEPT SELECT cmi_cross_ref_id FROM park@@ ing_@@ fin@@ es
SELECT t1.name FROM inst AS t1 JOIN authorship AS t2 ON t1.instid = t2.instid JOIN papers AS t3 ON t2.paperid = t3.paperid GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1
SELECT name FROM swimmer ORDER BY met@@ er_@@ 100
SELECT T1.Participant_ID , T1.@@ Participant@@ _@@ Type_Code , count(*) FROM Participant@@ s AS T1 JOIN Participants_in_Events AS T2 ON T1.Participant_ID = T2.Participant_ID GROUP BY T1.Participant_ID
SELECT T1.first_name , T1.last_name , T3.city FROM employees AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id JOIN locations AS T3 ON T2.location_id = T3.location_id WHERE T1.first_name LIKE '%@@ z@@ %'
SELECT t3.title FROM authors AS t1 JOIN authorship AS t2 ON t1.authid = t2.authid JOIN papers AS t3 ON t2.paperid = t3.paperid WHERE t1.fname = "O@@ lin" AND t1.lname = "Shi@@ vers"
SELECT TYPE , COUNT(*) FROM ship GROUP BY TYPE
SELECT Nominee FROM musical WHERE Award = "Tony Award" INTERSECT SELECT Nominee FROM musical WHERE Award = "D@@ rama D@@ es@@ k Award"
SELECT sum(T1.@@ budget@@ ed) FROM budget AS T1 JOIN school AS T2 ON T1.school_id = T2.school_id WHERE T2.school_name = 'G@@ lenn@@ '
SELECT roomName , decor FROM Rooms WHERE bedtype = 'K@@ ing' ORDER BY basePrice;
SELECT DISTINCT T1.firstname , T1.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom = T2.classroom WHERE T1.@@ grade = 1 EXCEPT SELECT T1.firstname , T1.lastname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom = T2.classroom WHERE T2.firstname = "OTHA" AND T2.lastname = "MOYER"
SELECT Memory_in_G , Carrier FROM phone
SELECT County_name FROM county ORDER BY Population ASC LIMIT 3
SELECT count(*) FROM customers
SELECT T1.customer_name , T1.customer_address FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status_code = "N@@ ew@@ " INTERSECT SELECT T1.customer_name , T1.customer_address FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status_code = "Pending"
SELECT name , age , country FROM artist ORDER BY Year_@@ Jo@@ in
SELECT document_name , document_id FROM Documents WHERE document_type_code = "BK"
SELECT product_category_code FROM products WHERE product_name = "flax"
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM employ@@ ment)
SELECT count(*) FROM vocals AS T1 JOIN songs AS T2 ON T1.songid = T2.songid WHERE title = "Demon Kitty Rag@@ "
SELECT T2.year FROM city AS T1 JOIN hosting_city AS T2 ON T1.city_id = T2.host_city WHERE T1.city = "Taizhou ( Zhejiang )"
SELECT max(@@ O@@ MI@@ M) FROM enzyme
SELECT count(DISTINCT T2.@@ id) , count(DISTINCT T3.@@ id) , T3.dept_name FROM department AS T1 JOIN student AS T2 ON T1.dept_name = T2.dept_name JOIN instructor AS T3 ON T1.dept_name = T3.dept_name GROUP BY T3.dept_name
SELECT Date_Claim_Made FROM Claims ORDER BY Date_Claim_Made ASC LIMIT 1
SELECT TYPE FROM vocals GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT YEAR FROM competition WHERE Competition_type != "Tournam@@ ent"
SELECT COUNT (DISTINCT team) FROM elimination
SELECT count(*) FROM purchase AS T1 JOIN member AS T2 ON T1.member_id = T2.member_id WHERE T2.@@ level = 6
SELECT name FROM airports WHERE elevation BETWEEN -50 AND 50
SELECT T1.City_Town FROM Addresses AS T1 JOIN Customers AS T2 ON T1.Address_ID = T2.Address_ID EXCEPT SELECT T1.City_Town FROM Addresses AS T1 JOIN Per@@ form@@ ers AS T2 ON T1.Address_ID = T2.Address_ID
SELECT DISTINCT rank FROM Faculty
SELECT count(*) , avg(age) , city_code FROM student WHERE sex = 'M' GROUP BY city_code
SELECT Date FROM debate WHERE Num_of_Audience > 150
SELECT T1.@@ grant_amount FROM Grants AS T1 JOIN Documents AS T2 ON T1.grant_id = T2.grant_id WHERE T2.@@ sent_date < '@@ 1986@@ -08-2@@ 6 20@@ :@@ 4@@ 9:2@@ 7@@ ' INTERSECT SELECT grant_amount FROM grants WHERE grant_@@ end_date > '1989-0@@ 3-1@@ 6 18@@ :2@@ 7:@@ 16@@ '
SELECT Country FROM perpetrator WHERE Injured > 50 INTERSECT SELECT Country FROM perpetrator WHERE Injured < 20
SELECT birth_country FROM player GROUP BY birth_country ORDER BY count(*) ASC LIMIT 3;
SELECT T3.product_name , count(*) FROM orders AS T1 JOIN order_items AS T2 JOIN products AS T3 ON T1.order_id = T2.order_id AND T2.product_id = T3.product_id GROUP BY T3.product_id
SELECT customer_phone FROM available_policies WHERE policy_type_code = (SELECT policy_type_code FROM available_policies GROUP BY policy_type_code ORDER BY count(*) DESC LIMIT 1)
SELECT T2.Song FROM music_festival AS T1 JOIN volume AS T2 ON T1.Volume = T2.Volume_ID WHERE T1.Result = "N@@ omin@@ ated"
SELECT city , max(lat) FROM station GROUP BY city
SELECT T1.name , T3.balance + T2.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid = T2.custid JOIN savings AS T3 ON T1.custid = T3.custid WHERE T3.balance < T2.balance
SELECT T1.name_first , T1.name_last FROM player AS T1 JOIN player_award AS T2 WHERE T2.year = 1960 INTERSECT SELECT T1.name_first , T1.name_last FROM player AS T1 JOIN player_award AS T2 WHERE T2.year = 1961
SELECT DISTINCT artist_name FROM song WHERE languages = "english" EXCEPT SELECT DISTINCT artist_name FROM song WHERE rating > 8
SELECT LOCATION FROM track WHERE seating > 90000 INTERSECT SELECT LOCATION FROM track WHERE seating < 70000
SELECT first_name , last_name , hire_date , salary , department_id FROM employees WHERE first_name NOT LIKE '%M%'
SELECT max_page_size FROM product GROUP BY max_page_size ORDER BY count(*) DESC LIMIT 1
SELECT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName = T2.cName WHERE T2.pPos = 'goalie' INTERSECT SELECT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName = T2.cName WHERE T2.pPos = 'mid'
SELECT t1.country FROM inst AS t1 JOIN authorship AS t2 ON t1.instid = t2.instid JOIN papers AS t3 ON t2.paperid = t3.paperid GROUP BY t1.country ORDER BY count(*) DESC LIMIT 1
SELECT dorm_name FROM dorm EXCEPT SELECT T1.dorm_name FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid = T2.dormid JOIN dorm_amenity AS T3 ON T2.amenid = T3.amenid WHERE T3.amenity_name = 'TV Lounge'
SELECT count(*) , T2.product_id FROM problems AS T1 JOIN product AS T2 ON T1.product_id = T2.product_id GROUP BY T2.product_id
SELECT allergy , allergytype FROM Allergy_type
SELECT T2.balance , T3.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid = T2.custid JOIN savings AS T3 ON T1.custid = T3.custid WHERE T1.name = 'Brown'
SELECT DISTINCT T1.fname , T1.city_code FROM Student AS T1 JOIN Has_@@ Allergy AS T2 ON T1.stuid = T2.stuid WHERE T2.Allergy = "Milk" OR T2.Allergy = "Cat"
SELECT T2.dept_name , T2.dept_address , count(*) FROM student AS T1 JOIN department AS T2 ON T1.dept_code = T2.dept_code GROUP BY T1.dept_code ORDER BY count(*) DESC LIMIT 3
SELECT title FROM albums WHERE title LIKE 'A@@ %' ORDER BY title;
SELECT count(*) , sex FROM people WHERE weight > 85 GROUP BY sex
SELECT name , salary FROM Employee ORDER BY salary
SELECT lname FROM authors WHERE fname = "A@@ mal@@ "
SELECT count(*) FROM Person WHERE age > 30 AND job = 'engine@@ er'
SELECT product_name , typical_buying_price FROM products
SELECT Age , COUNT(*) FROM editor GROUP BY Age
SELECT t1.customer_name FROM customers AS t1 JOIN customer_addresses AS t2 ON t1.customer_id = t2.customer_id JOIN addresses AS t3 ON t2.address_id = t3.address_id WHERE t3.state_province_county = "Col@@ orad@@ o"
SELECT customer_name FROM customers WHERE payment_method = "Cash"
SELECT max(@@ Weeks_on_Top) , min(@@ Weeks_on_Top) FROM volume
SELECT count(*) FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id = t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id = t3.characteristic_id WHERE t3.characteristic_name = "hot"
SELECT T1.driverid , T1.surname FROM drivers AS T1 JOIN results AS T2 ON T1.driverid = T2.driverid JOIN races AS T3 ON T2.raceid = T3.raceid GROUP BY T1.driverid ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM Movie WHERE YEAR < 2000
SELECT Name , Age FROM editor
SELECT avg(@@ elevation) , country FROM airports GROUP BY country
SELECT Party FROM party GROUP BY Party HAVING COUNT(*) >= 2
SELECT FirstName , LastName FROM EMPLOYEE WHERE City = "C@@ algar@@ y"
SELECT Delegate FROM election WHERE District = 1
SELECT DName FROM DEPARTMENT WHERE Division = "AS" UNION SELECT DName FROM DEPARTMENT WHERE Division = "E@@ N@@ " AND Building = "NEB"
SELECT max(Milliseconds) , min(Milliseconds) FROM TRACK
SELECT T2.@@ Building FROM COURSE AS T1 JOIN FACULTY AS T2 ON T1.Instructor = T2.FacID GROUP BY T1.Instructor ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT driverid , STOP FROM pitstops WHERE duration < (SELECT max(duration) FROM pitstops WHERE raceid = 841)
SELECT Delegate , Committee FROM election
SELECT S@@ chool@@ _@@ Col@@ ors FROM school ORDER BY Enrollment DESC LIMIT 1
SELECT country FROM competition WHERE competition_type = 'Tournament' GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT name , city FROM branch WHERE branch_id NOT IN (SELECT branch_id FROM membership_register_branch)
SELECT role_code , count(*) FROM Employees GROUP BY role_code
SELECT team_name FROM basketball_match ORDER BY All_@@ H@@ ome DESC
SELECT count(*) FROM customers WHERE city = "P@@ ragu@@ e";
SELECT T2.Winery FROM GRAPES AS T1 JOIN WINE AS T2 ON T1.G@@ RAPE = T2.G@@ RAPE WHERE T1.Color = "White" GROUP BY T2.Winery ORDER BY count(*) DESC LIMIT 3
SELECT count(*) FROM department AS T1 JOIN course AS T2 ON T1.dept_code = T2.dept_code WHERE dept_name = "Computer Info. System@@ s"
SELECT date_from , date_to FROM Project_Staff WHERE role_code = 'researcher'
SELECT count(*) FROM game WHERE id NOT IN ( SELECT game_id FROM injury_accident )
SELECT count(DISTINCT state) FROM bank
SELECT headquarters FROM company EXCEPT SELECT headquarters FROM company WHERE main_industry = 'Banking'
SELECT T3.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid = T2.eid JOIN Aircraft AS T3 ON T3.aid = T2.aid WHERE T1.name = "John William@@ s"
SELECT T3.location , T3.@@ Representativ@@ e_@@ Name FROM station_company AS T1 JOIN company AS T2 ON T1.company_id = T2.company_id JOIN gas_station AS T3 ON T1.station_id = T3.station_id ORDER BY T2.@@ Assets_billion DESC LIMIT 3
SELECT origin FROM Flight GROUP BY origin ORDER BY count(*) DESC LIMIT 1
SELECT LOCATION FROM cinema WHERE openning_year >= 2010 GROUP BY LOCATION ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM team_franchise WHERE active = 'Y@@ ';
SELECT T2.department_name , COUNT(*) FROM employees AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id GROUP BY T2.department_name
SELECT T2.name FROM Office_locations AS T1 JOIN buildings AS T2 ON T1.building_id = T2.id JOIN Companies AS T3 ON T1.company_id = T3.id GROUP BY T1.building_id HAVING COUNT(*) > 1
SELECT Rank FROM FACULTY GROUP BY Rank ORDER BY count(*) ASC LIMIT 1
SELECT count(DISTINCT driver@@ I@@ d) FROM results WHERE raceId NOT IN( SELECT raceId FROM races WHERE YEAR != 2009 )
SELECT T2.party_name , count(*) FROM party_events AS T1 JOIN party AS T2 ON T1.party_id = T2.party_id GROUP BY T1.party_id
SELECT count(*) FROM budget WHERE budgeted > 3000 AND YEAR <= 2001
SELECT count(*) FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t1.clubname = "Tennis Club"
SELECT Publication_Date FROM publication GROUP BY Publication_Date ORDER BY COUNT(*) DESC LIMIT 1
SELECT StuID FROM Student EXCEPT SELECT StuID FROM Sportsinfo
SELECT T1.name FROM airports AS T1 JOIN routes AS T2 ON T1.apid = T2.src_apid WHERE T1.country = 'China' GROUP BY T1.name ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM customers AS T1 JOIN invoices AS T2 ON T1.id = T2.customer_id WHERE T1.first_name = "Lucas" AND T1.last_name = "Mancini";
SELECT avg(price_range) FROM HOTELS WHERE star_rating_code = "5" AND pets_allowed_yn = 1
SELECT Status FROM roller_coaster WHERE LENGTH > 3@@ 300 OR Height > 100
SELECT cust_name FROM customer ORDER BY acc_bal
SELECT name FROM enzyme WHERE product != 'Heme@@ '
SELECT max(@@ height) , avg(height) FROM mountain
SELECT name FROM instructor WHERE id NOT IN (SELECT id FROM teach@@ es)
SELECT title FROM Movie WHERE director = '@@ James Cameron@@ ' AND YEAR > 2000
SELECT MAX(@@ cost) , MIN@@ (@@ cost) , AVG(@@ cost) FROM procedures
SELECT customer_id , customer_name FROM customers ORDER BY customer_id ASC
SELECT sum(T1.@@ attendance) FROM home_game AS T1 JOIN team AS T2 ON T1.team_id = T2.team_id_br WHERE T2.name = 'Boston Red Stockings' AND T1.year BETWEEN 2000 AND 2010@@ ;
SELECT DISTINCT customer_id FROM Customer_Orders WHERE order_date > (SELECT min(@@ order_@@ date) FROM Customer_Orders WHERE order_status_code = "Cancelle@@ d@@ ")
SELECT document_id , count(@@ cop@@ y_number) FROM Draft@@ _C@@ op@@ ies GROUP BY document_id ORDER BY count(@@ cop@@ y_number) DESC LIMIT 1;
SELECT T3.@@ Pilot_name , T2.F@@ le@@ et_@@ S@@ er@@ ies FROM pilot_record AS T1 JOIN aircraft AS T2 ON T1.Aircraft_ID = T2.Aircraft_ID JOIN pilot AS T3 ON T1.Pilot_ID = T3.Pilot_ID ORDER BY T3.@@ Rank
SELECT Name , LOCATION FROM wrestler
SELECT card_id , customer_id , card_type_code , card_number FROM Customers_cards
SELECT t1.@@ catalog@@ _name , t1.@@ date_of_@@ publication FROM catalogs AS t1 JOIN catalog_structure AS t2 ON t1.@@ catalog@@ _id = t2.@@ catalog@@ _id WHERE catalog_level_number > 5
SELECT job_title FROM jobs WHERE min_salary > 9@@ 000
SELECT T2.employee_name , T3.@@ employee_name FROM Documents_to_be_destroyed AS T1 JOIN Employees AS T2 ON T1.@@ Destruction_Authorised_by_Employee_ID = T2.employee_id JOIN Employees AS T3 ON T1.D@@ est@@ royed_by_Employee_ID = T3.@@ employee_@@ id;
SELECT decor FROM Rooms WHERE roomName = "Recluse and defianc@@ e";
SELECT T2.name FROM playlist_tracks AS T1 JOIN playlists AS T2 ON T2.id = T1.@@ playlist_id GROUP BY T1.@@ playlist_id HAVING count(@@ T1.@@ track@@ _id) > 100@@ ;
SELECT avg(S@@ co@@ res@@ ) FROM submission
SELECT apt_type_code FROM Apartments GROUP BY apt_type_code ORDER BY avg(room_count) DESC LIMIT 3
SELECT DISTINCT T1.player_name FROM Player AS T1 JOIN Player_Attributes AS T2 ON T1.player_api_id = T2.player_api_id WHERE T2.@@ preferred_foot = "@@ lef@@ t" AND T2.@@ overall_rating >= 85 AND T2.@@ overall_rating <= 90
SELECT name , lat , city FROM station ORDER BY lat LIMIT 1
SELECT t1.@@ email_address FROM customers AS t1 JOIN complaints AS t2 ON t1.customer_id = t2.customer_id GROUP BY t1.customer_id ORDER BY count(*) LIMIT 1
SELECT project_id , count(*) FROM Documents GROUP BY project_id
SELECT decor , avg(basePrice) , min(@@ basePrice) FROM Rooms GROUP BY decor;
SELECT CLASS FROM race GROUP BY CLASS HAVING count(*) >= 2
SELECT t1.name FROM swimmer AS t1 JOIN record AS t2 ON t1.id = t2.swimmer_id GROUP BY t2.swimmer_id ORDER BY count(*) DESC LIMIT 1
SELECT cust_name FROM customer ORDER BY credit_score LIMIT 1
SELECT avg(@@ floors) , max(@@ floors) , min(@@ floors) FROM building
SELECT avg(price) FROM Lessons AS T1 JOIN Staff AS T2 ON T1.staff_id = T2.staff_id WHERE T2.first_name = "Janessa" AND T2.last_name = "Sawayn";
SELECT count(*) FROM Settlements
SELECT building FROM Faculty GROUP BY building ORDER BY count(*) DESC LIMIT 1
SELECT t3.title FROM authors AS t1 JOIN authorship AS t2 ON t1.authid = t2.authid JOIN papers AS t3 ON t2.paperid = t3.paperid WHERE t1.fname = "Jerem@@ y" AND t1.lname = "G@@ ibbons"
SELECT name FROM airports WHERE city = 'G@@ orok@@ a'
SELECT Appelation FROM WINE WHERE YEAR > 2008 EXCEPT SELECT Appelation FROM APPELLATIONS WHERE Area = "Central Coast"
SELECT name FROM storm WHERE storm_id NOT IN (SELECT storm_id FROM affected_region)
SELECT T3.Player_name , T2.@@ coach@@ _name FROM player_coach AS T1 JOIN coach AS T2 ON T1.Coach_ID = T2.Coach_ID JOIN player AS T3 ON T1.Player_ID = T3.Player_ID ORDER BY T3.@@ Votes DESC
SELECT Software_Platform FROM device GROUP BY Software_Platform ORDER BY COUNT(*) DESC
SELECT T1.custid , T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid = T2.custid WHERE T2.balance < (SELECT max(@@ balance) FROM checking)
SELECT RESULT FROM music_festival GROUP BY RESULT ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 JOIN order_items AS T3 JOIN products AS T4 ON T1.customer_id = T2.customer_id AND T2.order_id = T3.order_id AND T3.product_id = T4.product_id WHERE T3.@@ order_item@@ _@@ status = "Cancel@@ " AND T4.product_name = "food" GROUP BY T1.customer_id HAVING count(*) >= 1
SELECT T1.account_id , T2.account_name FROM Financial_transactions AS T1 JOIN Accounts AS T2 ON T1.account_id = T2.account_id GROUP BY T1.account_id HAVING count(*) >= 4
SELECT T1.Committee FROM election AS T1 JOIN party AS T2 ON T1.Party = T2.Party_ID WHERE T2.Party = "Democratic" INTERSECT SELECT T1.Committee FROM election AS T1 JOIN party AS T2 ON T1.Party = T2.Party_ID WHERE T2.Party = "L@@ i@@ ber@@ al"
SELECT gender , count(*) FROM Customers GROUP BY gender
SELECT distinct(@@ catalog_@@ publish@@ er) FROM catalogs WHERE catalog_publisher LIKE "%M@@ urr@@ ay@@ %"
SELECT name FROM manufacturers EXCEPT SELECT T2.name FROM products AS T1 JOIN manufacturers AS T2 ON T1.Manufacturer = T2.code WHERE T1.name = 'D@@ VD driv@@ e'
SELECT avg(@@ student_capacity) , sum(student_capacity) FROM dorm WHERE gender = '@@ X'
SELECT T3.name FROM web_client_accelerator AS T1 JOIN accelerator_compatible_browser AS T2 ON T2.@@ accelerator_id = T1.id JOIN browser AS T3 ON T2.browser_id = T3.id WHERE T1.name = 'CACHEbox' INTERSECT SELECT T3.name FROM web_client_accelerator AS T1 JOIN accelerator_compatible_browser AS T2 ON T2.@@ accelerator_id = T1.id JOIN browser AS T3 ON T2.browser_id = T3.id WHERE T1.name = 'F@@ aster@@ fo@@ x'
SELECT T2.Hometown FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID = T2.People_ID GROUP BY T2.Hometown HAVING COUNT(*) >= 2
SELECT name FROM physician EXCEPT SELECT T2.name FROM appointment AS T1 JOIN physician AS T2 ON T1.Physician = T2.EmployeeID
SELECT T1.DName FROM DEPARTMENT AS T1 JOIN MINOR_IN AS T2 ON T1.DNO = T2.DNO GROUP BY T2.DNO ORDER BY count(*) DESC LIMIT 1
SELECT T2.name , T3.name FROM wedding AS T1 JOIN people AS T2 ON T1.@@ mal@@ e_id = T2.people_id JOIN people AS T3 ON T1.@@ femal@@ e_id = T3.@@ people_id WHERE T1.year > 2014
SELECT count(DISTINCT label@@ ) FROM albums
SELECT t1.@@ form@@ _name FROM forms AS t1 JOIN party_forms AS t2 ON t1.@@ form_id = t2.form_id GROUP BY t2.form_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM station WHERE lat < 37.@@ 5
SELECT t3.@@ customer_details FROM claim_headers AS t1 JOIN policies AS t2 ON t1.@@ policy_id = t2.policy_id JOIN customers AS t3 ON t2.customer_id = t3.customer_id WHERE t1.@@ amount_@@ claimed = (SELECT max(@@ amount_@@ clai@@ med) FROM claim_head@@ ers)
SELECT count(*) FROM cinema
SELECT count(*) FROM employee
SELECT min(T1.@@ duration) , min(T2.@@ rating) , T2.genre_is FROM files AS T1 JOIN song AS T2 ON T1.f_id = T2.f_id GROUP BY T2.genre_is ORDER BY T2.genre_is
SELECT T1.course_name , COUNT(*) FROM Courses AS T1 JOIN Student_Course_Enrolment AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name
SELECT count(*) FROM Customers_cards AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.customer_first_name = "B@@ lanc@@ he@@ " AND T2.customer_last_name = "H@@ uels" AND T1.@@ card_type_code = "Credit"
SELECT T2.product_name , count(*) FROM Order_items AS T1 JOIN Products AS T2 ON T1.product_id = T2.product_id JOIN Orders AS T3 ON T3.order_id = T1.order_id GROUP BY T2.product_name
SELECT count(DISTINCT scientist@@ ) FROM assignedto
SELECT T1.name , T2.balance FROM accounts AS T1 JOIN savings AS T2 ON T1.custid = T2.custid ORDER BY T2.balance DESC LIMIT 3
SELECT min(@@ low@@ _@@ temperature) , max(@@ wind_@@ speed_mp@@ h@@ ) FROM weekly_weather
SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status = "On Road" INTERSECT SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status = "Shipped"
SELECT sum(@@ maxOccup@@ anc@@ y) FROM Rooms WHERE decor = 'modern';
SELECT DISTINCT T2.firstname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom = T2.classroom WHERE grade = 1
SELECT count(*) FROM employees WHERE country = "Canad@@ a";
SELECT organisation_details FROM Organisations AS T1 JOIN organisation_Types AS T2 ON T1.organisation_type = T2.organisation_type WHERE T2.@@ organisation_type_description = 'Sponsor@@ ' ORDER BY organisation_details
SELECT t1.store_name FROM store AS t1 JOIN store_district AS t2 ON t1.store_id = t2.store_id JOIN district AS t3 ON t2.district_id = t3.district_id WHERE t3.@@ district_name = "K@@ hanewal Distric@@ t"
SELECT FirstName , LastName FROM EMPLOYEE WHERE City = "C@@ algar@@ y"
SELECT gameid , sum(hours_played) FROM Plays_games GROUP BY gameid
SELECT count(*) , crs_code FROM CLASS GROUP BY crs_code
SELECT directed_by , count(*) FROM film GROUP BY directed_by
SELECT T1.course_name , COUNT(*) FROM Courses AS T1 JOIN Student_Course_Enrolment AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name
SELECT Title FROM ALBUM ORDER BY Title
SELECT employee_id , job_id FROM employees WHERE salary < ( SELECT min(salary) FROM employees WHERE job_id = 'M@@ K@@ _MAN' )
SELECT fname , lname FROM employee WHERE salary > 30000
SELECT count(DISTINCT customer_id) FROM Accounts
SELECT T1.customer_name , T1.customer_phone , T1.customer_@@ email FROM customers AS T1 JOIN customer_orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T2.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM item WHERE i_id NOT IN (SELECT i_id FROM review)
SELECT document_name FROM documents WHERE document_name LIKE "%@@ CV@@ %"
SELECT T2.Name , T3.@@ Date FROM member_attendance AS T1 JOIN member AS T2 ON T1.Member_ID = T2.Member_ID JOIN performance AS T3 ON T1.Performance_ID = T3.Performance_ID ORDER BY T3.@@ Attendance DESC
SELECT T1.teacher_id , T2.first_name FROM Assessment_Notes AS T1 JOIN Teachers AS T2 ON T1.teacher_id = T2.teacher_id GROUP BY T1.teacher_id ORDER BY count(*) DESC LIMIT 3
SELECT milliseconds FROM tracks WHERE name = "Fast As a Shark";
SELECT max(@@ Number_cities) , min(@@ Number_cities) FROM market
SELECT song_name FROM song WHERE rating < (SELECT min(@@ rating) FROM song WHERE languages = '@@ english@@ ')
SELECT COUNT(DISTINCT Country) FROM climber
SELECT count(DISTINCT customer_id) FROM Accounts
SELECT T1.country FROM artist AS T1 JOIN song AS T2 ON T1.artist_name = T2.artist_name GROUP BY T2.artist_name ORDER BY count(*) LIMIT 1
SELECT DISTINCT driverid , STOP FROM pitstops WHERE duration > (SELECT min(@@ duration) FROM pitstops WHERE raceid = 841)
SELECT T2.theme , T1.date , T1.attendance FROM exhibition_record AS T1 JOIN exhibition AS T2 ON T1.exhibition_id = T2.exhibition_id WHERE T2.year = 2004
SELECT role_code FROM Project_Staff WHERE date_from > '2003-04-19 15:06:20' AND date_to < '2016-03-15 00:33:18@@ '
SELECT count(DISTINCT C@@ ur@@ re@@ nc@@ y_@@ Co@@ de@@ ) FROM Drama_Workshop_Groups
SELECT email_address , phone_number FROM customers ORDER BY email_address , phone_number
SELECT T1.name FROM enzyme AS T1 JOIN medicine_enzyme_interaction AS T2 ON T1.id = T2.enzyme_id JOIN medicine AS T3 ON T2.medicine_id = T3.id WHERE T3.name = 'Amisulpride' AND T2.interaction_type = 'inhibitor'
SELECT T1.title FROM item AS T1 JOIN review AS T2 ON T1.i_id = T2.i_id WHERE T2.rating < 5
SELECT T1.stu_fname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num = T2.stu_num JOIN CLASS AS T3 ON T2.class_code = T3.class_code WHERE T3.crs_code = 'ACCT-211' AND T1.stu_lname LIKE 'S%'
SELECT classroom , count(*) FROM list WHERE grade = "@@ 4" GROUP BY classroom
SELECT T2.D@@ ate_@@ of_@@ Bir@@ th FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Investor = "Simon Woodroffe" OR T1.Investor = "Peter Jon@@ es"
SELECT T1.region_name , count(*) FROM region AS T1 JOIN affected_region AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id
SELECT count(DISTINCT t3.@@ product_id) FROM customers AS t1 JOIN customer_orders AS t2 ON t1.customer_id = t2.customer_id JOIN order_items AS t3 ON t2.order_id = t3.order_id WHERE t1.customer_name = "Rodrick Heaney"
SELECT T2.Shop_Name FROM stock AS T1 JOIN shop AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T1.Shop_ID HAVING COUNT(*) > 1
SELECT course_description FROM COURSES WHERE course_name = "@@ database"
SELECT cName FROM College WHERE enr < 13000 AND state = "A@@ Z@@ " UNION SELECT cName FROM College WHERE enr > 15000 AND state = "LA"
SELECT campus FROM degrees GROUP BY campus ORDER BY sum(@@ degrees) DESC LIMIT 1
SELECT t1.name FROM ship AS t1 JOIN captain AS t2 ON t1.ship_id = t2.ship_id ORDER BY t2.@@ age LIMIT 1
SELECT DISTINCT T1.customer_first_name , T1.customer_last_name , T1.@@ phone_number FROM Customers AS T1 JOIN Accounts AS T2 ON T1.customer_id = T2.customer_id
SELECT first_name FROM customer WHERE customer_id NOT IN( SELECT customer_id FROM rental WHERE rental_date > '2005-08-23 02:06:0@@ 1' )
SELECT dept_name , AVG (salary) FROM instructor GROUP BY dept_name HAVING AVG (salary) > 4@@ 2000
SELECT count(DISTINCT city) FROM bank
SELECT state FROM bank GROUP BY state ORDER BY sum(no_of_customers) DESC LIMIT 1
SELECT Country FROM mountain GROUP BY Country HAVING COUNT(*) > 1
SELECT avg(revenue) , max(revenue) , sum(revenue) FROM manufacturers
SELECT count(DISTINCT T2.@@ Location_@@ Co@@ de@@ ) FROM Things AS T1 JOIN T@@ i@@ med@@ _@@ Location@@ s_@@ of_@@ Things AS T2 ON T1.thing_id = T2.thing_id WHERE T1.@@ service_@@ details = '@@ Un@@ s@@ at@@ is@@ fi@@ ed'
SELECT T2.address_id , T1.city FROM Addresses AS T1 JOIN Student_Addresses AS T2 ON T1.address_id = T2.address_id GROUP BY T2.address_id ORDER BY AVG(@@ monthly_rental) DESC LIMIT 1
SELECT region_code , region_name FROM region ORDER BY region_code
SELECT avg(revenue) , max(revenue) , sum(revenue) FROM manufacturers
SELECT count(*) FROM Staff;
SELECT cust_name FROM customer WHERE credit_score < (SELECT avg(credit_score) FROM customer@@ )
SELECT song_name FROM song ORDER BY resolution
SELECT T1.City_Town , count(*) FROM Addresses AS T1 JOIN Drama_Workshop_Groups AS T2 ON T1.Address_ID = T2.Address_ID GROUP BY T1.City_Town
SELECT channel_code , contact@@ _number FROM customer_contact_channels WHERE active_to_date - active_from_date = (SELECT active_to_date - active_from_date FROM customer_contact_channels ORDER BY (@@ active_to_date - active_from_date) DESC LIMIT 1)
SELECT name_first , name_last FROM player WHERE weight > 220 OR height < 7@@ 5
SELECT T1.artist_name , T1.country FROM artist AS T1 JOIN song AS T2 ON T1.artist_name = T2.artist_name ORDER BY T2.rating DESC LIMIT 3
SELECT count(*) , semester , YEAR FROM SECTION GROUP BY semester , YEAR
SELECT T2.G@@ overnor FROM election AS T1 JOIN party AS T2 ON T1.Party = T2.Party_ID WHERE T1.District = 1
SELECT document_type_code FROM Ref_document_types WHERE document_type_name = "Paper"
SELECT cust_name FROM customer ORDER BY credit_score LIMIT 1
SELECT sum(@@ T1.M@@ oney_Requested) FROM entrepreneur AS T1 JOIN people AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Height > 1.@@ 85
SELECT FirstName , LastName FROM CUSTOMER WHERE Email = "luisg@embraer.com.br@@ "
SELECT count(*) , gender FROM artist GROUP BY gender
SELECT Low_Estimate , H@@ i@@ gh@@ _Estimate FROM film_market_estimation
SELECT t2.@@ document_structure@@ _description FROM documents AS t1 JOIN document_@@ struct@@ ures AS t2 ON t1.document_structure_code = t2.@@ document_structure_code GROUP BY t1.document_structure_code ORDER BY count(*) DESC LIMIT 1
SELECT amenity_name FROM dorm_amenity ORDER BY amenity_name
SELECT Country , COUNT(*) FROM perpetrator GROUP BY Country ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.emp_fname FROM employee AS T1 JOIN CLASS AS T2 ON T1.emp_num = T2.prof_num WHERE crs_code = 'CIS-220' INTERSECT SELECT T1.emp_fname FROM employee AS T1 JOIN CLASS AS T2 ON T1.emp_num = T2.prof_num WHERE crs_code = 'QM-261'
SELECT T2.title , max(T1.@@ price) FROM schedule AS T1 JOIN film AS T2 ON T1.film_id = T2.film_id GROUP BY T1.film_id
SELECT avg(height) , avg(weight) FROM people WHERE sex = 'M'
SELECT first_name , last_name FROM Customers WHERE amount_outstanding BETWEEN 1000 AND 300@@ 0;
SELECT other_hotel_details , star_rating_code FROM HOTELS ORDER BY price_range ASC LIMIT 3
SELECT avg(balance) FROM checking
SELECT name FROM playlist@@ s;
SELECT product_id , product_name FROM products WHERE product_price < 600 OR product_price > 9@@ 00
SELECT T2.Name FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID = T2.People_ID ORDER BY T2.Height ASC
SELECT personal_name FROM Students EXCEPT SELECT T1.personal_name FROM Students AS T1 JOIN Student_Course_Enrolment AS T2 ON T1.student_id = T2.student_id
SELECT avg(T1.HS) , max(T1.HS) FROM player AS T1 JOIN tryout AS T2 ON T1.pID = T2.pID WHERE T2.decision = 'yes'
SELECT title FROM albums ORDER BY title;
SELECT asset_model FROM Assets WHERE asset@@ _id NOT IN (SELECT asset@@ _id FROM Fault_Lo@@ g@@ )
SELECT TYPE FROM artwork GROUP BY TYPE ORDER BY COUNT(*) DESC LIMIT 1
SELECT role_code , role_name , role_description FROM ROLES
SELECT title FROM film WHERE LENGTH > 100 OR rating = 'P@@ G@@ ' EXCEPT SELECT title FROM film WHERE re@@ plac@@ e@@ ment_@@ cost > 200
SELECT student_id FROM students WHERE student_id NOT IN (SELECT student_id FROM student_course_attendance)
SELECT DISTINCT T2.problem_id , T2.@@ problem_log_id FROM staff AS T1 JOIN problem_log AS T2 ON T1.staff_id = T2.assigned_to_staff_id WHERE T1.@@ staff_first_name = "Rylan" AND T1.@@ staff_last_name = "Homenick"
SELECT avg(price) FROM products
SELECT TYPE FROM vocals AS T1 JOIN band AS T2 ON T1.bandmate = T2.id WHERE firstname = "Solveig" GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1
SELECT name FROM products WHERE price <= 200
SELECT allergytype FROM Allergy_type GROUP BY allergytype ORDER BY count(*) DESC LIMIT 1
SELECT customer_status_code , count(*) FROM Customers GROUP BY customer_@@ status@@ _@@ code;
SELECT T1.County FROM APPELLATIONS AS T1 JOIN WINE AS T2 ON T1.Appelation = T2.Appelation GROUP BY T2.Appelation HAVING count(*) <= 3
SELECT T3.location FROM station_company AS T1 JOIN company AS T2 ON T1.company_id = T2.company_id JOIN gas_station AS T3 ON T1.station_id = T3.station_id WHERE T2.@@ market_value > 100
SELECT avg(@@ Population) FROM county
SELECT DISTINCT T1.forename FROM drivers AS T1 JOIN driverstandings AS T2 ON T1.driverid = T2.driverid WHERE T2.position = 1 AND T2.wins = 1 AND T2.points > 20
SELECT DISTINCT T1.customer_details FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status = "On Road"
SELECT count(*) FROM Student WHERE Advisor = 112@@ 1;
SELECT first_name FROM actor GROUP BY first_name ORDER BY count(*) DESC LIMIT 1
SELECT avg(@@ Hor@@ izont@@ al_@@ B@@ ar_@@ Points) FROM gymnast
SELECT count(*) FROM Lessons AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.first_name = "Rylan" AND T2.last_name = "Goodwin@@ " AND T1.@@ lesson_status_code = "Com@@ p@@ lete@@ d";
SELECT YEAR , avg(@@ attendance) FROM home_game GROUP BY YEAR@@ ;
SELECT T1.emp_lname , T1.emp_@@ hire@@ date FROM employee AS T1 JOIN professor AS T2 ON T1.emp_num = T2.emp_num WHERE T2.prof_office = 'D@@ RE 102@@ '
SELECT emp_jobcode , count(*) FROM employee GROUP BY emp_jobcode ORDER BY count(*) DESC LIMIT 1
SELECT T2.Hometown FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID = T2.People_ID GROUP BY T2.Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(DISTINCT U@@ ID) FROM tweets
SELECT address FROM member EXCEPT SELECT address FROM member WHERE Mem@@ b@@ ers@@ hip_@@ card = 'B@@ lack@@ '
SELECT DISTINCT T1.D@@ i@@ rector FROM film AS T1 JOIN film_market_estimation AS T2 ON T1.Film_ID = T2.Film_ID WHERE T2.Year = 1995
SELECT T2.region_name FROM affected_region AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id JOIN storm AS T3 ON T1.storm_id = T3.storm_id ORDER BY T3.@@ Number_Deaths DESC LIMIT 1
SELECT T1.cust_name FROM customer AS T1 JOIN loan AS T2 ON T1.cust_id = T2.cust_id WHERE amount > 3000
SELECT max(@@ Points) FROM climber WHERE Country = "United Kingdom"
SELECT DName FROM DEPARTMENT EXCEPT SELECT T1.DName FROM DEPARTMENT AS T1 JOIN MINOR_IN AS T2 ON T1.DNO = T2.DNO
SELECT count(*) FROM artist
SELECT DISTINCT Registration_Date , Election_Cycle FROM VOTING_RECORD
SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.date_order_placed >= "@@ 2009-01@@ -01" AND T2.date_order_placed <= "2010@@ -01-01"
SELECT count(*) , t1.name FROM manufacturer AS t1 JOIN furniture_manufacte AS t2 ON t1.@@ manufacturer_id = t2.manufacturer_id GROUP BY t1.@@ manufacturer_id
SELECT DISTINCT name FROM gen@@ res@@ ;
SELECT product_name FROM Products EXCEPT SELECT T1.product_name FROM Products AS T1 JOIN Order_items AS T2 ON T1.product_id = T2.product_id
SELECT name FROM useracct WHERE u_id NOT IN (SELECT u_id FROM review)
SELECT hotel@@ _id , star_rating_code FROM HOTELS ORDER BY price_range ASC
SELECT Team FROM technician GROUP BY Team ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(DISTINCT payment_metho@@ d) FROM customers
SELECT title FROM papers WHERE title LIKE "%M@@ L@@ %"
SELECT avg(enr) FROM College
SELECT Name FROM Representat@@ ive WHERE Party != "Republic@@ an"
SELECT school FROM university WHERE founded > 1850 OR affiliation = 'Public'
SELECT DISTINCT T1.name FROM races AS T1 JOIN circuits AS T2 ON T1.circuitid = T2.circuitid WHERE T2.country = "Spain" AND T1.year > 2000
SELECT T1.Name FROM people AS T1 JOIN perpetrator AS T2 ON T1.People_ID = T2.People_ID WHERE T2.Country = "China" OR T2.Country = "Japan"
SELECT payment_method FROM customers GROUP BY payment_method ORDER BY count(*) DESC LIMIT 1
SELECT roomName , basePrice FROM Rooms ORDER BY basePrice ASC LIMIT 1;
SELECT DISTINCT Se@@ cretary_Vote FROM VOTING_RECORD WHERE E@@ LE@@ C@@ TION@@ _C@@ Y@@ C@@ L@@ E = "Fall"
SELECT cName FROM College WHERE enr > 18000 ORDER BY cName
SELECT zip_code , avg(mean_@@ temperature_f) FROM weather WHERE date LIKE "8/%" GROUP BY zip_code
SELECT StuID , count(*) , sum(gamesplayed) FROM Sportsinfo GROUP BY StuID
SELECT Name FROM climber WHERE Country != "S@@ witzerland"
SELECT name FROM program ORDER BY launch
SELECT product_id , product_name FROM products WHERE product_price < 600 OR product_price > 9@@ 00
SELECT T2.name FROM advisor AS T1 JOIN instructor AS T2 ON T1.i_id = T2.id JOIN student AS T3 ON T1.s_id = T3.id WHERE T3.dept_name = 'Math' ORDER BY T3.@@ tot_cred
SELECT avg(@@ Number_of_@@ host@@ s) FROM party
SELECT city_code FROM student GROUP BY city_code ORDER BY count(*) DESC LIMIT 1
SELECT major , count(*) FROM Student GROUP BY major
SELECT count(*) FROM instruments WHERE instrument = "drum@@ s"
SELECT count(*) , dept_name FROM student GROUP BY dept_name
SELECT count(DISTINCT t1.title) FROM papers AS t1 JOIN authorship AS t2 ON t1.paperid = t2.paperid JOIN inst AS t3 ON t2.instid = t3.instid WHERE t3.name = "Tokohu University"
SELECT T2.product_name , sum(T1.@@ product_quantity) FROM Order_items AS T1 JOIN Products AS T2 ON T1.product_id = T2.product_id GROUP BY T2.product_name
SELECT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName = T2.cName WHERE T2.pPos = 'mid' EXCEPT SELECT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName = T2.cName WHERE T2.pPos = 'goalie'
SELECT T1.course_name FROM courses AS T1 JOIN student_course_registrations AS T2 ON T1.course_id = T2.@@ course_@@ Id GROUP BY T1.course_id ORDER BY count(*) DESC LIMIT 1
SELECT Fir@@ st_year , La@@ st_year FROM party WHERE Party_Theme = "Spring" OR Party_Theme = "Teqnolog@@ y"
SELECT department_id FROM staff_department_assignments GROUP BY department_id ORDER BY count(*) LIMIT 1
SELECT count(*) FROM party_events
SELECT avg(T1.@@ Vot@@ es) FROM election AS T1 JOIN representative AS T2 ON T1.Representative_ID = T2.Representative_ID WHERE T2.Party = "Republic@@ an"
SELECT T1.County_name FROM county AS T1 JOIN election AS T2 ON T1.County_id = T2.District WHERE T2.@@ Committee = "Appropriations"
SELECT t3.name , t3.@@ time FROM station AS t1 JOIN route AS t2 ON t1.id = t2.station_id JOIN train AS t3 ON t2.train_id = t3.@@ id WHERE t1.@@ local_authority = "Ch@@ il@@ t@@ ern@@ "
SELECT T1.staff_name FROM staff AS T1 JOIN staff_department_assignments AS T2 ON T1.staff_id = T2.staff_id GROUP BY T2.staff_id HAVING COUNT (*) > 1
SELECT T2.@@ star_@@ rating_@@ description FROM HOTELS AS T1 JOIN Ref_@@ Ho@@ tel_Star_Ratings AS T2 ON T1.@@ star_rating_code = T2.@@ star_rating_code WHERE T1.@@ price_range > 10000
SELECT Country_name , COUNT(*) FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id = T2.Country GROUP BY T1.Country_name
SELECT Product_ID FROM INVOICES GROUP BY Product_ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Official_Name FROM city AS T1 JOIN farm_competition AS T2 ON T1.City_ID = T2.Host_city_ID GROUP BY T2.Host_city_ID HAVING COUNT(*) > 1
SELECT LOCATION FROM station GROUP BY LOCATION ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT T1.Colleg@@ e) FROM match_season AS T1 JOIN team AS T2 ON T1.Team = T2.Team_id WHERE T2.Name = "Columbus Crew"
SELECT count(*) FROM club WHERE clublocation = "HHH@@ "
SELECT DISTINCT T3.Fname FROM ENROLLED_IN AS T1 JOIN GRADECONVERSION AS T2 JOIN STUDENT AS T3 ON T1.Grade = T2.lettergrade AND T1.StuID = T3.StuID WHERE T2.gradepoint >= 3.8
SELECT avg(T1.salary) , count(*) FROM instructor AS T1 JOIN department AS T2 ON T1.dept_name = T2.dept_name ORDER BY T2.@@ budget DESC LIMIT 1
SELECT T1.@@ total FROM body_builder AS T1 JOIN people AS T2 ON T1.people_id = T2.people_id WHERE T2.@@ Birth_Date LIKE "%@@ Januar@@ y@@ %@@ ";
SELECT T1.fname , T1.lname FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid = T2.stuid WHERE T2.dormid IN (SELECT T3.dormid FROM has_amenity AS T3 JOIN dorm_amenity AS T4 ON T3.amenid = T4.amenid WHERE T4.amenity_name = 'TV Lounge')
SELECT max(@@ Trans@@ it@@ _Passeng@@ ers) , min(@@ Trans@@ it@@ _Passeng@@ ers) FROM airport
SELECT sum(@@ Rat@@ ing_@@ in_percent) , OWNER FROM channel GROUP BY OWNER
SELECT store_id FROM inventory GROUP BY store_id ORDER BY count(*) DESC LIMIT 1
SELECT max(@@ Account@@ _@@ detail@@ s) FROM Accounts UNION SELECT Account@@ _details FROM Accounts WHERE Account@@ _details LIKE "%@@ 5@@ %"
SELECT name FROM Aircraft ORDER BY distance LIMIT 3
SELECT apt_type_code , max(@@ room_count) , min(@@ room_count) FROM Apartments GROUP BY apt_type_code
SELECT T2.@@ Issue_Date FROM artist AS T1 JOIN volume AS T2 ON T1.Artist_ID = T2.Artist_ID WHERE T1.@@ Artist = "G@@ org@@ or@@ o@@ th"
SELECT classroom , count(DISTINCT grade@@ ) FROM list GROUP BY classroom
SELECT T1.@@ student_details FROM students AS T1 JOIN student_course_registrations AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT Occupation FROM player GROUP BY Occupation ORDER BY COUNT(*) DESC LIMIT 1
SELECT avg(@@ Prof@@ it@@ s_bill@@ ion) FROM Companies
SELECT nurse FROM on_call WHERE block@@ floor = 1 AND blockcode = 1
SELECT f_id FROM files WHERE formats = "mp@@ 4" UNION SELECT f_id FROM song WHERE resolution > 7@@ 20
SELECT order_id , count(DISTINCT product_id) FROM Order_items GROUP BY order_id
SELECT built_year FROM ship GROUP BY built_year ORDER BY count(*) DESC LIMIT 1
SELECT company , rank FROM company ORDER BY Sales_bill@@ ion DESC
SELECT t1.product_name , t1.@@ product_price FROM products AS t1 JOIN reg@@ ular@@ _@@ order_@@ products AS t2 ON t1.product_id = t2.product_id GROUP BY t2.product_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.forename , T1.surname FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.milliseconds < 93000
SELECT count(*) FROM customer_orders WHERE order_@@ details = "Second time"
SELECT avg(@@ Quantity) FROM stock
SELECT document_name FROM documents WHERE document_name LIKE "%@@ CV@@ %"
SELECT id , duration FROM trip ORDER BY duration DESC LIMIT 3
SELECT count(*) FROM club
SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status = "On Road" INTERSECT SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status = "Shipped"
SELECT T1.student_id , T2.@@ login_name FROM Student_Course_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.fault_log_entry_id , T1.f@@ ault@@ _description , T1.f@@ ault_log_entr@@ y_@@ datet@@ ime FROM Fault_Log AS T1 JOIN Fault_Log_Parts AS T2 ON T1.fault_log_entry_id = T2.f@@ ault_log_entry_id GROUP BY T1.fault_log_entry_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT T1.Fname FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID = T2.VICE_P@@ RESIDENT_Vote EXCEPT SELECT DISTINCT Fname FROM STUDENT WHERE city_code = "P@@ IT@@ "
SELECT sum(t2.order_quantity) FROM customer_orders AS t1 JOIN order_items AS t2 ON t1.order_id = t2.order_id WHERE t1.@@ order_date < "@@ 2018-03-17 07:13:5@@ 3"
SELECT head FROM department GROUP BY departmentID ORDER BY count(departmentID) LIMIT 1;
SELECT document_type_code , document_type_name , document_type_description FROM Ref_document_types
SELECT count(DISTINCT F@@ ac@@ ID) FROM Faculty_participates_in
SELECT date_of_birth FROM Guests WHERE gender_code = "Male"
SELECT t1.name , t1.sex , min(oppose_rate) FROM people AS t1 JOIN candidate AS t2 ON t1.people_id = t2.people_id GROUP BY t1.sex
SELECT T1.name , T1.@@ max_speed FROM storm AS T1 JOIN affected_region AS T2 ON T1.storm_id = T2.storm_id GROUP BY T1.storm_id ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT customer_details FROM Customers
SELECT date_from FROM Project_Staff ORDER BY date_from ASC LIMIT 1
SELECT DISTINCT t1.product_name FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id = t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id = t3.characteristic_id WHERE t3.characteristic_name = "@@ war@@ m"
SELECT D@@ Phone FROM DEPARTMENT WHERE Room = 26@@ 8
SELECT t1.lname FROM authors AS t1 JOIN authorship AS t2 ON t1.authid = t2.authid JOIN papers AS t3 ON t2.paperid = t3.paperid WHERE t3.title LIKE "%M@@ onadic@@ %"
SELECT max(T1.HS) , pPos FROM player AS T1 JOIN tryout AS T2 ON T1.pID = T2.pID WHERE T1.HS > 1000 GROUP BY T2.pPos
SELECT T1.Name FROM member AS T1 JOIN round AS T2 ON T1.Member_ID = T2.Member_ID ORDER BY Ran@@ k@@ _@@ in_@@ R@@ oun@@ d ASC
SELECT count(*) FROM wrestler
SELECT avg(@@ acc_bal) , acc_type FROM customer WHERE credit_score < 50 GROUP BY acc_type
SELECT count(*) FROM artist
SELECT T2.first_name , T2.last_name , T2.actor_id FROM film_actor AS T1 JOIN actor AS T2 ON T1.actor_id = T2.actor_id GROUP BY T2.actor_id ORDER BY count(*) DESC LIMIT 1
SELECT count(DISTINCT StuID) FROM Plays_games
SELECT Occupation , COUNT(*) FROM player GROUP BY Occupation
SELECT customer_name FROM customers WHERE customer_name LIKE "%A@@ lex@@ %"
SELECT document_type_code FROM Document_Types WHERE document_description LIKE 'Initial@@ %'
SELECT DISTINCT directed_by FROM film
SELECT T1.staff_name , T3.@@ first_name , T3.@@ last_name FROM Staff AS T1 JOIN Engineer_Visits AS T2 ON T1.staff_id = T2.@@ contact_staff_id JOIN Maintenance_Engineers AS T3 ON T2.engineer_id = T3.@@ engineer_id
SELECT customer_id , count(*) FROM Customers_cards GROUP BY customer_id
SELECT count(*) FROM race
SELECT name , TYPE , flag FROM ship ORDER BY built_year DESC LIMIT 1
SELECT T1.Name FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId = T2.GenreId GROUP BY T2.GenreId ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(@@ course_id) FROM Student_Course_Enrolment
SELECT name FROM instructor WHERE id NOT IN (SELECT id FROM teach@@ es)
SELECT email_address , date_of_birth FROM Customers WHERE first_name = "Carole"
SELECT gname FROM Video_games WHERE gtype = "Col@@ le@@ ctible card game"
SELECT booking_start_date , booking_end_date FROM Apartment_Bookings
SELECT T1.@@ Other_@@ Ite@@ m@@ _Details FROM ORDER_ITEMS AS T1 JOIN Products AS T2 ON T1.Product_ID = T2.Product_ID WHERE T2.@@ Product_price > 2000
SELECT T1.course_description , T1.course_name FROM Courses AS T1 JOIN Student_Course_Enrolment AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name HAVING COUNT(*) > 2
SELECT count(*) , T1.name FROM projects AS T1 JOIN assignedto AS T2 ON T1.code = T2.project WHERE T1.hours > 300 GROUP BY T1.name
SELECT DISTINCT T1.driverid , T1.nationality FROM drivers AS T1 JOIN laptimes AS T2 ON T1.driverid = T2.driverid WHERE T2.milliseconds > 100000
SELECT count(*) FROM classroom WHERE building = 'Lamberton' AND capacity < 50
SELECT count(*) FROM club
SELECT dept_name FROM instructor WHERE name LIKE '%S@@ oisalon@@ %'
SELECT T1.organisation_id , count(*) FROM Projects AS T1 JOIN Project_outcomes AS T2 ON T1.project_id = T2.project_id GROUP BY T1.organisation_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY count(*) DESC LIMIT 1
SELECT Advisor FROM Student WHERE StuID = 100@@ 4
SELECT name , prominence FROM mountain EXCEPT SELECT T1.name , T1.@@ prominence FROM mountain AS T1 JOIN photos AS T2 ON T1.id = T2.mountain_id JOIN camera_lens AS T3 ON T2.camera_lens_id = T3.id WHERE T3.brand = 'Sigma'
SELECT t1.store_name FROM store AS t1 JOIN store_district AS t2 ON t1.store_id = t2.store_id WHERE district_id = (SELECT district_id FROM district ORDER BY city_p@@ opulation DESC LIMIT 1)
SELECT minister FROM party WHERE party_name != 'Pro@@ gress Party'
SELECT employee_name FROM Employees WHERE role_code = "HR@@ "
SELECT Name FROM WINE WHERE YEAR < (SELECT min(YEAR) FROM WINE WHERE Winery = "Bran@@ d@@ er@@ ")
SELECT sum(@@ Amount_Pay@@ ment) FROM Payments
SELECT enrollment , primary_conference FROM university ORDER BY founded LIMIT 1
SELECT DISTINCT title FROM vocals AS t1 JOIN songs AS t2 ON t1.songid = t2.songid EXCEPT SELECT t2.title FROM vocals AS t1 JOIN songs AS t2 ON t1.songid = t2.songid WHERE TYPE = "lead"
SELECT t1.@@ phone_number FROM customers AS t1 JOIN complaints AS t2 ON t1.customer_id = t2.customer_id ORDER BY t2.date_complaint_raised DESC LIMIT 1
SELECT avg(distance) , avg(price) FROM Flight WHERE origin = "Los Angeles"
SELECT count(*) FROM customer WHERE active = '1'
SELECT avg(@@ active_to_date - active_from_date) FROM customer_contact_channels
SELECT T1.incident_type_code , T2.@@ incident@@ _type_description FROM Behavior_Incident AS T1 JOIN Ref_@@ Inc@@ ident@@ _Type AS T2 ON T1.incident_type_code = T2.@@ incident_type_code GROUP BY T1.incident_type_code ORDER BY count(*) DESC LIMIT 1
SELECT transaction_id FROM Financial_transactions WHERE transaction_amount > (SELECT avg(transaction_amount) FROM Financial_@@ transactions)
SELECT T1.Name , T1.Tourist_Attraction_ID FROM Tourist_Attractions AS T1 JOIN VISITS AS T2 ON T1.Tourist_Attraction_ID = T2.Tourist_Attraction_ID GROUP BY T2.Tourist_Attraction_ID HAVING count(*) <= 1
SELECT DISTINCT Publisher FROM publication WHERE Price > 5000000
SELECT title , film_id FROM film WHERE rental_rate = 0@@ .@@ 99 INTERSECT SELECT T1.title , T1.film_id FROM film AS T1 JOIN inventory AS T2 ON T1.film_id = T2.film_id GROUP BY T1.film_id HAVING count(*) < 3
SELECT catalog_level_name , catalog_level_number FROM Catalog_@@ S@@ tructure WHERE catalog_level_number BETWEEN 5 AND 10
SELECT StuID FROM Student WHERE major = 600 INTERSECT SELECT StuID FROM Sportsinfo WHERE onscholarship = 'Y'
SELECT T2.name FROM home_game AS T1 JOIN team AS T2 ON T1.team_id = T2.team_id_br WHERE T1.year = 1980 ORDER BY T1.attendance ASC LIMIT 1;
SELECT name , city , country , elevation FROM airports WHERE city = 'New York'
SELECT T4.@@ crs_description , T4.@@ crs_credit FROM CLASS AS T1 JOIN enroll AS T2 ON T1.class_code = T2.class_code JOIN student AS T3 ON T3.stu_num = T2.stu_num JOIN course AS T4 ON T4.crs_code = T1.crs_code WHERE T3.stu_lname = 'Smithson'
SELECT sum(@@ balance) FROM checking
SELECT project_details FROM Projects WHERE project_id NOT IN ( SELECT project_id FROM Project_outcomes )
SELECT name FROM airports WHERE city = 'G@@ orok@@ a'
SELECT Nationality FROM HOST WHERE Age > 4@@ 5 INTERSECT SELECT Nationality FROM HOST WHERE Age < 3@@ 5
SELECT Studio FROM film GROUP BY Studio ORDER BY COUNT(*) DESC LIMIT 1
SELECT T2.name , sum(T1.@@ sho@@ w_times_per_day) FROM schedule AS T1 JOIN cinema AS T2 ON T1.@@ cinema_id = T2.@@ cinema_id GROUP BY T1.@@ cinema_id
SELECT count(DISTINCT FDA_@@ approv@@ ed) FROM medicine
SELECT avg(enr) FROM College WHERE state = 'F@@ L'
SELECT first_name , last_name FROM employees ORDER BY hire_date ASC LIMIT 10;
SELECT T1.first_name , T1.last_name , T1.customer_id FROM customer AS T1 JOIN payment AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id ORDER BY sum(amount) ASC LIMIT 1
SELECT instrument FROM instruments AS T1 JOIN songs AS T2 ON T1.songid = T2.songid WHERE title = "Le Pop"
SELECT gname FROM Plays_games AS T1 JOIN Video_games AS T2 ON T1.gameid = T2.gameid GROUP BY T1.gameid ORDER BY sum(hours_played) DESC LIMIT 1
SELECT T1.name FROM tracks AS T1 JOIN invoice_@@ lines AS T2 ON T1.id = T2.track_id JOIN invoices AS T3 ON T3.id = T2.@@ invoic@@ e_id JOIN customers AS T4 ON T4.id = T3.@@ customer_id WHERE T4.@@ first_name = "D@@ a@@ an" AND T4.@@ last_name = "P@@ e@@ et@@ ers@@ ";
SELECT venue FROM MATCH ORDER BY date DESC
SELECT T2.name FROM Office_locations AS T1 JOIN buildings AS T2 ON T1.building_id = T2.id JOIN Companies AS T3 ON T1.company_id = T3.id GROUP BY T1.building_id ORDER BY COUNT(*) DESC LIMIT 1
SELECT billing_state , COUNT(*) , SUM(total) FROM invoices WHERE billing_state = "CA";
SELECT fname , sex FROM Student WHERE StuID IN (SELECT StuID FROM Has_allergy WHERE Allergy = "Milk" EXCEPT SELECT StuID FROM Has_allergy WHERE Allergy = "Cat@@ ")
SELECT name FROM Aircraft ORDER BY distance LIMIT 3
SELECT clublocation FROM club WHERE clubname = "Tennis Club"
SELECT T1.cmi_cross_ref_id , T1.@@ source_system_code FROM CMI_Cross_References AS T1 JOIN C@@ oun@@ c@@ il@@ _T@@ a@@ x AS T2 ON T1.cmi_cross_ref_id = T2.cmi_cross_ref_id GROUP BY T1.cmi_cross_ref_id HAVING count(*) >= 1
SELECT count(*) FROM submission
SELECT DISTINCT name FROM races WHERE YEAR BETWEEN 2014 AND 2017
SELECT count(DISTINCT city) FROM Person
SELECT Name FROM mountain WHERE Mountain_ID NOT IN (SELECT Mountain_ID FROM climber@@ )
SELECT count(*) FROM catalog_contents
SELECT YEAR FROM degrees GROUP BY YEAR ORDER BY sum(@@ degrees) DESC LIMIT 1
SELECT name , seating FROM track WHERE year_opened > 2000 ORDER BY seating
SELECT T1.County FROM APPELLATIONS AS T1 JOIN WINE AS T2 ON T1.Appelation = T2.Appelation GROUP BY T2.Appelation HAVING count(*) <= 3
SELECT T1.Title , T2.@@ Publication_Date FROM book AS T1 JOIN publication AS T2 ON T1.Book_ID = T2.Book_ID
SELECT T2.name_first , T2.name_last FROM salary AS T1 JOIN player AS T2 ON T1.player_id = T2.player_id JOIN team AS T3 ON T3.team_id_br = T1.team_id WHERE T1.year = 2005 AND T3.name = 'Washington Nationals' INTERSECT SELECT T2.name_first , T2.name_last FROM salary AS T1 JOIN player AS T2 ON T1.player_id = T2.player_id JOIN team AS T3 ON T3.team_id_br = T1.team_id WHERE T1.year = 2007 AND T3.name = 'Washington Nationals'
SELECT Age FROM editor GROUP BY Age ORDER BY COUNT(*) DESC LIMIT 1
SELECT Model_name FROM chip_model WHERE Launch@@ _year BETWEEN 2002 AND 2004@@ ;
SELECT count(DISTINCT label@@ ) FROM albums
SELECT title FROM Movie WHERE director = '@@ Steven Spielberg@@ '
SELECT T2.candidate_id FROM people AS T1 JOIN candidates AS T2 ON T1.@@ person_id = T2.candidate_id WHERE T1.@@ email_address = "@@ stanley.monahan@example.org@@ "
SELECT t3.title FROM authors AS t1 JOIN authorship AS t2 ON t1.authid = t2.authid JOIN papers AS t3 ON t2.paperid = t3.paperid WHERE t1.fname = "O@@ lin" AND t1.lname = "Shi@@ vers"
SELECT date_to FROM Project_Staff ORDER BY date_to DESC LIMIT 1
SELECT T1.Date_Claim@@ _Made , T1.Claim_id FROM Claims AS T1 JOIN Settlements AS T2 ON T1.Claim_id = T2.Claim_id GROUP BY T1.Claim_id HAVING count(*) > 2 UNION SELECT T1.Date_Claim@@ _Made , T1.Claim_id FROM Claims AS T1 JOIN Settlements AS T2 ON T1.Claim_id = T2.Claim_id WHERE T1.@@ Amount_Claimed = ( SELECT max(@@ Amount_Claimed) FROM Claims )
SELECT name FROM circuits WHERE country = "UK" OR country = "Mal@@ ay@@ si@@ a"
SELECT cName FROM tryout WHERE pPos = 'goalie' INTERSECT SELECT cName FROM tryout WHERE pPos = 'mid'
SELECT Nationality , COUNT(*) FROM HOST GROUP BY Nationality
SELECT T2.name FROM genres AS T1 JOIN tracks AS T2 ON T1.id = T2.genre_id WHERE T1.name = "Rock" OR T1.name = "Jazz"
SELECT T2.party_name FROM party_events AS T1 JOIN party AS T2 ON T1.party_id = T2.party_id GROUP BY T1.party_id HAVING count(*) >= 2
SELECT first_name , last_name FROM employees WHERE salary > (SELECT salary FROM employees WHERE employee_id = 16@@ 3 )
SELECT DISTINCT District FROM election
SELECT count(*) FROM appointment
SELECT DISTINCT payment@@ _type_code FROM payments
SELECT Marketing_Region_Code FROM Drama_Workshop_Groups GROUP BY Marketing_Region_Code ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM driver WHERE home_city = 'Hartford' OR age < 40
SELECT Venue FROM debate ORDER BY Num_of_Audience ASC
SELECT hotel@@ _id , star_rating_code FROM HOTELS ORDER BY price_range ASC
SELECT name FROM track EXCEPT SELECT T2.name FROM race AS T1 JOIN track AS T2 ON T1.track_id = T2.track_id WHERE T1.@@ class = 'GT@@ '
SELECT T2.customer_first_name , T2.customer_last_name FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id WHERE T1.account_name = "9@@ 00"
SELECT T2.name , count(*) FROM Flight AS T1 JOIN Aircraft AS T2 ON T1.aid = T2.aid GROUP BY T1.aid
SELECT LOCATION FROM gas_station ORDER BY open_year
SELECT DISTINCT T1.state FROM college AS T1 JOIN tryout AS T2 ON T1.cName = T2.cName WHERE T2.decision = 'yes'
SELECT Date_of_ceremony , RESULT FROM music_festival
SELECT T2.region_name FROM affected_region AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id JOIN storm AS T3 ON T1.storm_id = T3.storm_id WHERE T3.@@ number_deaths >= 10
SELECT T1.name FROM Employee AS T1 JOIN Certificate AS T2 ON T1.eid = T2.eid JOIN Aircraft AS T3 ON T3.aid = T2.aid WHERE T3.@@ distance > 5000 GROUP BY T1.eid ORDER BY count(*) DESC LIMIT 1
SELECT theme , YEAR FROM exhibition WHERE ticket_price < 15
SELECT count(DISTINCT allerg@@ y) FROM Allergy_type
SELECT T1.stu_fname FROM student AS T1 JOIN enroll AS T2 ON T1.stu_num = T2.stu_num GROUP BY T2.stu_num HAVING count(*) = 1
SELECT Name FROM Products
SELECT title FROM course WHERE dept_name = 'Statistics' EXCEPT SELECT title FROM course WHERE dept_name = 'Psychology'
SELECT max(Price) , max(Score) , YEAR FROM WINE GROUP BY YEAR
SELECT count(*) FROM Companies
SELECT first_name , last_name , salary FROM employees WHERE first_name LIKE '%@@ m@@ '
SELECT Customer_Phone , Customer_@@ Email_Address FROM CUSTOMERS WHERE Customer_Name = "Harol@@ d"
SELECT count(*) FROM park WHERE state = 'NY@@ ';
SELECT participant_type_code FROM participants GROUP BY participant_type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.name FROM physician AS T1 JOIN affiliated_with AS T2 ON T1.EmployeeID = T2.physician JOIN department AS T3 ON T2.department = T3.DepartmentID WHERE T3.name = 'Surgery' OR T3.name = 'Psychiatry'
SELECT document_id FROM Documents EXCEPT SELECT document_id FROM Documents_with_expenses
SELECT Name FROM company WHERE Industry = "Banking" OR Industry = "@@ Ret@@ ail@@ ing"
SELECT DISTINCT T2.firstname FROM list AS T1 JOIN teachers AS T2 ON T1.classroom = T2.classroom WHERE grade = 1
SELECT count(*) FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t1.clubname = "Bootup Baltimore" AND t3.age > 18
SELECT Name FROM musical WHERE M@@ usical_ID NOT IN (SELECT M@@ usical_ID FROM act@@ or)
SELECT State FROM representative GROUP BY State HAVING COUNT(*) >= 2
SELECT avg(@@ Num_of_Audi@@ ence) FROM festival_detail
SELECT t3.@@ address_content FROM customers AS t1 JOIN customer_addresses AS t2 ON t1.customer_id = t2.customer_id JOIN addresses AS t3 ON t2.address_id = t3.address_id WHERE t1.customer_name = "Maudie Kertzman@@ n"
SELECT count(*) FROM participants AS T1 JOIN Participants_in_Events AS T2 ON T1.Participant_ID = T2.Participant_ID WHERE T1.@@ participant@@ _details LIKE '%D@@ r@@ .@@ %'
SELECT DISTINCT blockcode FROM room WHERE un@@ available = 0
SELECT count(*) , T1.company_id FROM Third_Party_Companies AS T1 JOIN Assets AS T2 ON T1.company_id = T2.@@ supplier_@@ company_id GROUP BY T1.company_id
SELECT T1.fname , T1.lname , count(*) , T1.FacID FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID = T2.facID GROUP BY T1.FacID
SELECT T1.id , T1.Name , T1.F@@ D@@ A_@@ approved FROM medicine AS T1 JOIN medicine_enzyme_interaction AS T2 ON T2.medicine_id = T1.id GROUP BY T1.id ORDER BY count(*) DESC
SELECT T2.Hardware_Model_name FROM chip_model AS T1 JOIN phone AS T2 ON T1.Model_name = T2.chip_model WHERE T1.Launch@@ _year = 2002 ORDER BY T1.RAM_MiB DESC LIMIT 1;
SELECT city FROM airports WHERE country = 'United States' GROUP BY city HAVING count(*) > 3
SELECT T1.fname FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid = T2.stuid JOIN dorm AS T3 ON T3.dormid = T2.dormid WHERE T3.dorm_name = 'Smith Hall'
SELECT StuID FROM Student WHERE age > 20
SELECT t3.characteristic_name FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id = t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id = t3.characteristic_id GROUP BY t3.characteristic_name ORDER BY count(*) DESC LIMIT 1
SELECT T2.city , count(*) , T1.city_id FROM address AS T1 JOIN city AS T2 ON T1.city_id = T2.city_id GROUP BY T1.city_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.emp_fname , T3.crs_description FROM CLASS AS T1 JOIN employee AS T2 ON T1.prof_num = T2.emp_num JOIN course AS T3 ON T1.crs_code = T3.crs_code
SELECT DISTINCT t1.clubname FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t3.fname = "Dav@@ is" AND t3.lname = "Stev@@ en"
SELECT Name FROM WINE WHERE score > 90
SELECT T1.first_name , T1.last_name , T2.department_name , T3.city , T3.@@ state_province FROM employees AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id JOIN locations AS T3 ON T2.location_id = T3.location_id
SELECT T2.dept_name , T2.dept_address FROM student AS T1 JOIN department AS T2 ON T1.dept_code = T2.dept_code GROUP BY T1.dept_code ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT label FROM Albums
SELECT T2.Shop_Name FROM stock AS T1 JOIN shop AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T1.Shop_ID ORDER BY SUM(@@ T1.@@ quantity) DESC LIMIT 1
SELECT role_code FROM Project_Staff WHERE date_from > '2003-04-19 15:06:20' AND date_to < '2016-03-15 00:33:18@@ '
SELECT T1.address_line_1 , T2.author_id FROM Course_Authors_and_Tutors AS T1 JOIN Courses AS T2 ON T1.author_id = T2.author_id GROUP BY T2.author_id HAVING Count@@ (*) >= 2
SELECT * FROM customer_@@ master_@@ index ORDER BY cmi_details DESC
SELECT count(*) , T2.product_id FROM problems AS T1 JOIN product AS T2 ON T1.product_id = T2.product_id WHERE T1.date_problem_reported > "@@ 1986-11-1@@ 3" GROUP BY T2.product_id
SELECT policy_type_code FROM available_policies GROUP BY policy_type_code ORDER BY count(*) DESC LIMIT 1
SELECT Name , Party FROM representative
SELECT count(*) FROM users WHERE user_login = 1
SELECT T1.name , T2.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid = T2.custid JOIN savings AS T3 ON T1.custid = T3.custid ORDER BY T3.balance LIMIT 1
SELECT count(*) FROM classroom WHERE building = 'Lamberton'
SELECT t2.@@ catalog_level_name FROM catalog_contents AS t1 JOIN catalog_structure AS t2 ON t1.@@ catalog_level_number = t2.catalog_level_number ORDER BY t1.@@ price_in_dollars LIMIT 1
SELECT count(*) FROM appointment
SELECT avg(T1.@@ Age) FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID = SE@@ CR@@ ET@@ AR@@ Y@@ _Vote WHERE T1.city_code = "NYC" AND T2.Election_Cycle = "Spring"
SELECT first_name , last_name FROM Teachers ORDER BY last_name
SELECT crs_credit , crs_description FROM course WHERE crs_code = 'CIS-220'
SELECT name , LOCATION FROM enzyme
SELECT T2.firstname , T2.lastname FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate = T2.id JOIN Songs AS T3 ON T3.SongId = T1.SongId WHERE T3.Title = "Badlands"
SELECT sum(amount) , T1.bname FROM bank AS T1 JOIN loan AS T2 ON T1.branch_id = T2.branch_id GROUP BY T1.bname
SELECT T2.Author FROM acceptance AS T1 JOIN submission AS T2 ON T1.Submission_ID = T2.Submission_ID GROUP BY T2.Author HAVING COUNT(DISTINCT T1.workshop_id) > 1
SELECT avg(@@ elevation) , country FROM airports GROUP BY country
SELECT count(*) FROM services
SELECT location_name , location@@ _description FROM Ref_locations WHERE location_code = "@@ x"
SELECT T1.customer_name FROM customers AS T1 JOIN orders AS T2 JOIN order_items AS T3 JOIN products AS T4 ON T1.customer_id = T2.customer_id AND T2.order_id = T3.order_id AND T3.product_id = T4.product_id WHERE T4.product_name = "food" GROUP BY T1.customer_id HAVING count(*) >= 1
SELECT title FROM songs WHERE title LIKE '@@ % the %'
SELECT T1.name , T2.@@ Play@@ er_id FROM club AS T1 JOIN player AS T2 ON T1.Club_ID = T2.Club_ID
SELECT dorm_name FROM dorm WHERE student_capacity > 300
SELECT Writer FROM book ORDER BY Writer ASC
SELECT count(*) FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t1.clubname = "Tennis Club"
SELECT Elimination_Move FROM Elimination WHERE Team = "Team Orton"
SELECT DISTINCT product_name FROM products ORDER BY product_name
SELECT count(*) FROM branch WHERE membership_amount > (SELECT avg(@@ membership_amount) FROM branch)
SELECT T2.theme , T1.date , T1.attendance FROM exhibition_record AS T1 JOIN exhibition AS T2 ON T1.exhibition_id = T2.exhibition_id WHERE T2.year = 2004
SELECT count(*) FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid = T2.stuid JOIN dorm AS T3 ON T3.dormid = T2.dormid WHERE T3.gender = 'M'
SELECT DISTINCT t1.clubname FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t3.city_code = "HOU@@ "
SELECT complaint_status_code FROM complaints GROUP BY complaint_status_code HAVING count(*) > 3
SELECT avg(rating) , avg(resolution) FROM song WHERE languages = "bangla"
SELECT star_rating_code , avg(price_range) FROM HOTELS GROUP BY star_rating_code
SELECT town_city FROM addresses UNION SELECT state_province_county FROM addresses
SELECT County_name , Population FROM county
SELECT max(Milliseconds) , min(Milliseconds) FROM GENRE AS T1 JOIN TRACK AS T2 ON T1.GenreId = T2.GenreId WHERE T1.Name = "Pop"
SELECT Carrier FROM device ORDER BY Carrier ASC
SELECT name , seating FROM track WHERE year_opened > 2000 ORDER BY seating
SELECT town_city FROM addresses UNION SELECT state_province_county FROM addresses
SELECT t2.id , t2.@@ local_authority FROM weekly_weather AS t1 JOIN station AS t2 ON t1.station_id = t2.id GROUP BY t1.station_id HAVING max(@@ t1.@@ precipit@@ ation) > 50
SELECT count(DISTINCT source_system@@ _code) FROM CMI@@ _cross_re@@ ferences
SELECT max(@@ home_games) , min(@@ home_games) , avg(@@ home_games) FROM stadium
SELECT count(*) FROM user_profiles
SELECT DISTINCT T1.name FROM mill AS T1 JOIN architect AS t2 ON T1.architect_id = T2.id JOIN bridge AS T3 ON T3.@@ architect_id = T2.id WHERE T3.@@ length_@@ met@@ ers > 80
SELECT T2.balance , T3.balance FROM accounts AS T1 JOIN checking AS T2 ON T1.custid = T2.custid JOIN savings AS T3 ON T1.custid = T3.custid WHERE T1.name = 'Brown'
SELECT Status FROM city GROUP BY Status ORDER BY COUNT(*) DESC LIMIT 1
SELECT decor , count(*) FROM Rooms WHERE bedType = "K@@ ing" GROUP BY decor;
SELECT T3.location FROM station_company AS T1 JOIN company AS T2 ON T1.company_id = T2.company_id JOIN gas_station AS T3 ON T1.station_id = T3.station_id WHERE T2.@@ market_value > 100
SELECT count(*) FROM ( SELECT * FROM postseason AS T1 JOIN team AS T2 ON T1.team_id_winner = T2.team_id_br WHERE T2.name = 'Boston Red Stockings' UNION SELECT * FROM postseason AS T1 JOIN team AS T2 ON T1.team_id_loser = T2.team_id_br WHERE T2.name = 'Boston Red Stockings' );
SELECT born_state FROM head GROUP BY born_state HAVING count(*) >= 3
SELECT guest_first_name , guest_last_name FROM Guests
SELECT DISTINCT channel_code FROM customers AS t1 JOIN customer_contact_channels AS t2 ON t1.customer_id = t2.customer_id WHERE t1.customer_name = "Tillman Ernser@@ "
SELECT DISTINCT zip_code FROM weather EXCEPT SELECT DISTINCT zip_code FROM weather WHERE max_@@ dew_point_@@ f >= 70
SELECT apt_type_code , max(@@ room_count) , min(@@ room_count) FROM Apartments GROUP BY apt_type_code
SELECT decor , avg(basePrice) , min(@@ basePrice) FROM Rooms GROUP BY decor;
SELECT name FROM program ORDER BY launch
SELECT T1.city FROM city AS T1 JOIN hosting_city AS T2 ON T1.city_id = T2.host_city GROUP BY T2.host_city ORDER BY count(*) DESC LIMIT 1
SELECT count(*) FROM customers GROUP BY customer_type_code ORDER BY count(*) DESC LIMIT 1
SELECT avg(@@ length@@ _fe@@ et@@ ) FROM bridge
SELECT count(*) FROM tryout WHERE pPos = 'goalie'
SELECT T1.M@@ arket_@@ Details FROM St@@ re@@ et_@@ Market@@ s AS T1 JOIN TOURIST_ATTRACTIONS AS T2 ON T1.Market_ID = T2.Tourist_Attraction_ID WHERE T2.How_to_Get_There = "walk" OR T2.How_to_Get_There = "bus"
SELECT city FROM addresses WHERE city NOT IN ( SELECT DISTINCT t3.city FROM customers AS t1 JOIN customer_addresses AS t2 ON t1.customer_id = t2.customer_id JOIN addresses AS t3 ON t2.address_id = t3.@@ address_id)
SELECT customer_email , customer_name FROM customers WHERE payment_method = 'Visa'
SELECT Name FROM Projects WHERE Code NOT IN (SELECT Project FROM AssignedTo)
SELECT T1.customer_id FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status = "On Road" INTERSECT SELECT T1.customer_id FROM customers AS T1 JOIN orders AS T2 ON T1.customer_id = T2.customer_id WHERE T2.order_status = "Shipped"
SELECT T2.Song FROM music_festival AS T1 JOIN volume AS T2 ON T1.Volume = T2.Volume_ID WHERE T1.Result = "N@@ omin@@ ated"
SELECT stu_gpa , stu_@@ phone , stu_fname FROM student ORDER BY stu_gpa DESC LIMIT 5
SELECT name FROM company WHERE Sal@@ es_in_Billion > 200 ORDER BY Sal@@ es_in_Billion , Prof@@ it@@ s_in_@@ Bill@@ ion DESC
SELECT T1.problem_id FROM problems AS T1 JOIN product AS T2 ON T1.product_id = T2.product_id WHERE T2.product_name = "voluptatem" AND T1.date_problem_reported > "199@@ 5"
SELECT POSITION FROM match_season GROUP BY POSITION ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , project_id FROM Documents WHERE document_type_code = "BK" GROUP BY project_id
SELECT Author FROM submission WHERE S@@ ubmission_ID NOT IN (SELECT S@@ ubmission_ID FROM accept@@ ance)
SELECT DISTINCT T1.EMP@@ _FNAME , T1.EMP_@@ D@@ O@@ B FROM employee AS T1 JOIN CLASS AS T2 ON T1.EMP_NUM = T2.PROF_NUM WHERE CRS_CODE = "ACCT-211"
SELECT country_id , COUNT(*) FROM locations GROUP BY country_id
SELECT Amount_Settled , Amount_Claimed FROM Claims ORDER BY Amount_Claimed DESC LIMIT 1
SELECT login_name FROM Students WHERE family_name = "W@@ ard"
SELECT job_title , max_salary - min_salary FROM jobs WHERE max_salary BETWEEN 12000 AND 18000
SELECT T2.region_name FROM affected_region AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id JOIN storm AS T3 ON T1.storm_id = T3.storm_id WHERE T3.@@ number_deaths >= 10
SELECT name , manufacturer_id FROM manufacturer ORDER BY open_year
SELECT * FROM products AS T1 JOIN Manufacturers AS T2 ON T1.manufacturer = T2.code
SELECT min(@@ Vote_Perc@@ ent) , max(@@ Vote_Perc@@ ent) FROM election
SELECT T2.dept_name FROM professor AS T1 JOIN department AS T2 ON T1.dept_code = T2.dept_code GROUP BY T1.dept_code ORDER BY count(*) LIMIT 1
SELECT avg(@@ Hor@@ izont@@ al_@@ B@@ ar_@@ Points) FROM gymnast
SELECT count(*) FROM products WHERE product_category_code = "Seed@@ s"
SELECT count(*) FROM student WHERE sex = 'F' AND age < 25
SELECT Name FROM ship WHERE Nationality != "United States"
SELECT T1.Festival_ID , T3.Festival_Name , COUNT(*) FROM nomination AS T1 JOIN artwork AS T2 ON T1.Artwork_ID = T2.Artwork_ID JOIN festival_detail AS T3 ON T1.Festival_ID = T3.Festival_ID GROUP BY T1.Festival_ID
SELECT artist_name FROM song WHERE resolution > 500 GROUP BY languages ORDER BY count(*) DESC LIMIT 1
SELECT avg(Age) FROM artist
SELECT transaction_type , count(*) FROM Financial_transactions GROUP BY transaction_type
SELECT T1.customer_id , T1.customer_details FROM Customers AS T1 JOIN Customer_@@ Events AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id HAVING count(*) >= 3
SELECT count(DISTINCT scientist@@ ) FROM assignedto
SELECT T1.title , T1.@@ credits , T1.dept_name FROM course AS T1 JOIN prereq AS T2 ON T1.course_id = T2.course_id GROUP BY T2.course_id HAVING count(*) > 1
SELECT Date_of_ceremony FROM music_festival WHERE Category = "B@@ est Song@@ " AND RESULT = "Awarde@@ d"
SELECT * FROM departments WHERE department_name = 'Marketing'
SELECT count(*) FROM home_game AS T1 JOIN park AS T2 ON T1.park_id = T2.park_id WHERE T1.year = 190@@ 7 AND T2.park_name = '@@ Col@@ um@@ bi@@ a Park@@ ';
SELECT title FROM papers WHERE title LIKE "%M@@ L@@ %"
SELECT T2.park_name FROM home_game AS T1 JOIN park AS T2 ON T1.park_id = T2.park_id WHERE T1.year = 2008 ORDER BY T1.attendance DESC LIMIT 1;
SELECT T1.name FROM student AS T1 JOIN advisor AS T2 ON T1.id = T2.s_id GROUP BY T2.s_id HAVING count(*) > 1
SELECT DISTINCT Destroyed_by_Employee_ID FROM Documents_to_be_destroyed
SELECT open_year FROM branch GROUP BY open_year HAVING count(*) >= 2
SELECT DISTINCT T2.name FROM undergoes AS T1 JOIN nurse AS T2 ON T1.@@ Ass@@ ist@@ ing@@ N@@ urse = T2.EmployeeID
SELECT T1.date_@@ incident_@@ start , date_incident_@@ end FROM Behavior_Incident AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id WHERE T2.last_name = "F@@ a@@ he@@ y"
SELECT T3.forename , T3.surname FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T1.name = "Australian Grand Prix" EXCEPT SELECT T3.forename , T3.surname FROM races AS T1 JOIN results AS T2 ON T1.raceid = T2.raceid JOIN drivers AS T3 ON T2.driverid = T3.driverid WHERE T1.name = "Chinese Grand Prix"
SELECT Cle@@ an_@@ J@@ erk FROM body_builder ORDER BY Total DESC LIMIT 1
SELECT max(T2.@@ Price) FROM APPELLATIONS AS T1 JOIN WINE AS T2 ON T1.Appelation = T2.Appelation WHERE T1.Area = "Central Coast" AND T2.year < 2005
SELECT T3.amenity_name FROM dorm AS T1 JOIN has_amenity AS T2 ON T1.dormid = T2.dormid JOIN dorm_amenity AS T3 ON T2.amenid = T3.amenid WHERE T1.dorm_name = 'Smith Hall' ORDER BY T3.amenity_name
SELECT max(product_price) , min(product_price) , product_type_code FROM products GROUP BY product_type_code ORDER BY product_type_code
SELECT formats FROM files GROUP BY formats ORDER BY COUNT (*) DESC LIMIT 1
SELECT first_name FROM customer WHERE customer_id NOT IN( SELECT customer_id FROM rental WHERE rental_date > '2005-08-23 02:06:0@@ 1' )
SELECT cloud_cover FROM weather WHERE zip_code = 9410@@ 7 GROUP BY cloud_cover ORDER BY COUNT (*) DESC LIMIT 3
SELECT policy_type_code FROM available_policies GROUP BY policy_type_code HAVING count(*) > 4
SELECT Country FROM mountain WHERE Height > 5000
SELECT DISTINCT T2.Hometown FROM gymnast AS T1 JOIN people AS T2 ON T1.Gymnast_ID = T2.People_ID WHERE T1.Total_Points > 57.@@ 5
SELECT name FROM department GROUP BY departmentID ORDER BY count(departmentID) DESC LIMIT 1;
SELECT id FROM trip ORDER BY duration LIMIT 1
SELECT T2.Shop_Name FROM stock AS T1 JOIN shop AS T2 ON T1.Shop_ID = T2.Shop_ID GROUP BY T1.Shop_ID ORDER BY SUM(@@ T1.@@ quantity) DESC LIMIT 1
SELECT max(@@ share_@@ count) FROM TRANSACTIONS WHERE amount_of_transaction < 10000
SELECT region_name FROM region WHERE region_name != 'Denmark'
SELECT T1.student_id , T2.first_name FROM Assessment_Notes AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT activity_name FROM Activity
SELECT Name FROM country WHERE L@@ an@@ gu@@ ages != "German@@ "
SELECT DISTINCT T1.LName FROM STUDENT AS T1 JOIN VOTING_RECORD AS T2 ON T1.StuID = PRESIDENT_Vote EXCEPT SELECT DISTINCT LName FROM STUDENT WHERE Advisor = "2@@ 19@@ 2"
SELECT t1.name FROM inst AS t1 JOIN authorship AS t2 ON t1.instid = t2.instid JOIN papers AS t3 ON t2.paperid = t3.paperid GROUP BY t1.name ORDER BY count(*) DESC LIMIT 1
SELECT dept_name , building FROM department ORDER BY budget DESC LIMIT 1
SELECT T2.Crime_rate FROM city AS T1 JOIN county_public_safety AS T2 ON T1.County_ID = T2.County_ID WHERE T1.White > 90
SELECT T1.Service_Type_Description , T1.Service_Type_Code FROM Ref_Service_Types AS T1 JOIN Services AS T2 ON T1.Service_Type_Code = T2.Service_Type_Code GROUP BY T1.Service_Type_Code ORDER BY COUNT(*) DESC LIMIT 1
SELECT billing_country , COUNT(*) FROM invoices GROUP BY billing_country ORDER BY count(*) DESC LIMIT 5;
SELECT i_id FROM item WHERE title = "@@ or@@ an@@ g@@ e"
SELECT count(DISTINCT dept_address) FROM department WHERE school_code = 'B@@ US@@ '
SELECT transaction_type_code FROM TRANSACTIONS GROUP BY transaction_type_code ORDER BY COUNT(*) ASC LIMIT 1
SELECT count(*) FROM dependent WHERE sex = 'F'
SELECT name , city , country FROM airports ORDER BY elevation DESC LIMIT 1
SELECT campusfee FROM campuses AS T1 JOIN csu_fees AS T2 ON T1.id = t2.campus WHERE t1.campus = "San Francisco State University" AND T2.year = 1996
SELECT Competition_type FROM competition GROUP BY Competition_type ORDER BY COUNT(*) DESC LIMIT 1
SELECT count(*) FROM campuses WHERE county = "Los Angeles"
SELECT job_id FROM job_history WHERE end_date - start_date > 300 GROUP BY job_id HAVING COUNT(*) >= 2
SELECT product_name , product_id FROM products WHERE product_price BETWEEN 600 AND 700
SELECT count(*) FROM Lessons AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id WHERE T2.first_name = "Rylan" AND T2.last_name = "Goodwin@@ " AND T1.@@ lesson_status_code = "Com@@ p@@ lete@@ d";
SELECT DISTINCT date_@@ mov@@ ed_in FROM residents
SELECT T2.Name FROM mission AS T1 JOIN ship AS T2 ON T1.Ship_ID = T2.Ship_ID WHERE T1.Launch@@ ed_@@ Year > 192@@ 8
SELECT product , chromosome , porphyria FROM enzyme WHERE LOCATION = 'Cytosol@@ '
SELECT count(DISTINCT T1.@@ donat@@ or_@@ name) FROM endowment AS T1 JOIN school AS T2 ON T1.school_id = T2.school_id WHERE T2.school_name = "Glenn"
SELECT T2.name FROM train_station AS T1 JOIN station AS T2 ON T1.station_id = T2.station_id JOIN train AS T3 ON T3.train_id = T1.train_id WHERE T3.Name = "An@@ an@@ thapuri Express" INTERSECT SELECT T2.name FROM train_station AS T1 JOIN station AS T2 ON T1.station_id = T2.station_id JOIN train AS T3 ON T3.train_id = T1.train_id WHERE T3.Name = "G@@ uruvayur Express"
SELECT minister , took_office , left_office FROM party ORDER BY left_office
SELECT Name FROM ship WHERE Ship_ID NOT IN (SELECT Ship_ID FROM mission@@ )
SELECT T1.@@ transaction_type_description FROM Ref_Transaction_Types AS T1 JOIN TRANSACTIONS AS T2 ON T1.transaction_type_code = T2.@@ transaction_type_code GROUP BY T1.transaction_type_code ORDER BY COUNT(*) DESC LIMIT 1
SELECT Age FROM artist
SELECT Name FROM county_public_safety ORDER BY Population DESC LIMIT 1
SELECT t1.party_email FROM parties AS t1 JOIN party_services AS t2 ON t1.party_id = t2.customer_id GROUP BY t1.party_email ORDER BY count(*) DESC LIMIT 1
SELECT DISTINCT t3.name FROM authors AS t1 JOIN authorship AS t2 ON t1.authid = t2.authid JOIN inst AS t3 ON t2.instid = t3.instid WHERE t1.fname = "Matthi@@ as" AND t1.lname = "B@@ lume"
SELECT T1.city FROM city AS T1 JOIN temperature AS T2 ON T1.city_id = T2.city_id WHERE T2.Mar < T2.Jul INTERSECT SELECT T3.city FROM city AS T3 JOIN hosting_city AS T4 ON T3.city_id = T4.host_city
SELECT product_id , count(DISTINCT order_@@ id) FROM Order_items GROUP BY product_id
SELECT state FROM park GROUP BY state HAVING count(*) > 2;
SELECT TYPE FROM ship WHERE Tonnage > 6000 INTERSECT SELECT TYPE FROM ship WHERE Tonnage < 4000
SELECT T2.S@@ eason , T2.Player , T1.Country_name FROM country AS T1 JOIN match_season AS T2 ON T1.Country_id = T2.Country
SELECT Party FROM party GROUP BY Party HAVING COUNT(*) >= 2
SELECT T3.Name FROM news_report AS T1 JOIN event AS T2 ON T1.Event_ID = T2.Event_ID JOIN journalist AS T3 ON T1.journalist_ID = T3.journalist_ID GROUP BY T3.Name HAVING COUNT(*) > 1
SELECT T1.name FROM patient AS T1 JOIN appointment AS T2 ON T1.ssn = T2.patient ORDER BY T2.@@ start DESC LIMIT 1
SELECT minister , party_name FROM party ORDER BY took_office DESC
SELECT city FROM branch WHERE open_year = 2001 AND membership_amount > 100
SELECT count(*) FROM products WHERE price >= 180
SELECT advisor FROM Student GROUP BY advisor ORDER BY count(*) DESC LIMIT 1
SELECT account_id , date_@@ account_opened , account_name , other_account_details FROM Accounts
SELECT emp_jobcode , count(*) FROM employee GROUP BY emp_jobcode ORDER BY count(*) DESC LIMIT 1
SELECT open_year FROM branch GROUP BY open_year HAVING count(*) >= 2
SELECT T1.Name FROM Tourist_Attractions AS T1 JOIN VISITORS AS T2 JOIN VISITS AS T3 ON T1.Tourist_Attraction_ID = T3.Tourist_Attraction_ID AND T2.Tourist_ID = T3.Tourist_ID WHERE T2.Tourist_Details = "A@@ li@@ son" EXCEPT SELECT T1.Name FROM Tourist_Attractions AS T1 JOIN VISITORS AS T2 JOIN VISITS AS T3 ON T1.Tourist_Attraction_ID = T3.Tourist_Attraction_ID AND T2.Tourist_ID = T3.Tourist_ID WHERE T2.Tourist_Details = "Ro@@ sal@@ ind@@ "
SELECT email_address , phone_number FROM customers WHERE customer_id NOT IN (SELECT customer_id FROM complaint@@ s)
SELECT degrees FROM campuses AS T1 JOIN degrees AS T2 ON t1.id = t2.campus WHERE t1.campus = "San Francisco State University" AND t2.year = 2001
SELECT name FROM airports WHERE country = 'C@@ uba' OR country = 'Ar@@ gentin@@ a'
SELECT problem_id FROM problems WHERE date_problem_reported < "1978-06-26"
SELECT T2.Location , T1.Aircraft FROM aircraft AS T1 JOIN MATCH AS T2 ON T1.Aircraft_ID = T2.Winning_Aircraft
SELECT country FROM competition WHERE competition_type = 'Tournament' GROUP BY country ORDER BY count(*) DESC LIMIT 1
SELECT sum(revenue) FROM manufacturers WHERE Headquarter = 'Tokyo' OR Headquarter = 'T@@ ai@@ w@@ an'
SELECT T1.Name FROM Tourist_Attractions AS T1 JOIN VISITS AS T2 ON T1.Tourist_Attraction_ID = T2.Tourist_Attraction_ID JOIN VISITORS AS T3 ON T2.Tourist_ID = T3.Tourist_ID WHERE T3.@@ Tourist_Details = "Vincent"
SELECT t1.product_name , t1.@@ typical_buying_price , t1.@@ typical_selling_price FROM products AS t1 JOIN ref_colors AS t2 ON t1.color_code = t2.color_code WHERE t2.color_description = "yellow@@ "
SELECT premises_type , premis@@ e_@@ details FROM premises ORDER BY premises_type
SELECT city , GDP FROM city ORDER BY GDP LIMIT 1
SELECT apt_number , room_count FROM Apartments
SELECT DISTINCT product_name FROM product ORDER BY product_id
SELECT count(DISTINCT city) FROM station
SELECT Customer_Name FROM C@@ li@@ ents EXCEPT SELECT T2.@@ Customer_Name FROM Bookings AS T1 JOIN C@@ li@@ ents AS T2 ON T1.@@ Customer@@ _ID = T2.C@@ li@@ ent@@ _ID
SELECT home_city FROM driver WHERE age > 40 GROUP BY home_city HAVING count(*) >= 2
SELECT Product_Name FROM PRODUCTS GROUP BY Product_Name HAVING avg(Product_Price) < 100@@ 0000
SELECT Age FROM Student WHERE Fname = "Linda" AND Lname = "Smith@@ ";
SELECT bedType , count(*) FROM Rooms GROUP BY bedType;
SELECT L@@ if@@ esp@@ an FROM representative WHERE State = "New York@@ " OR State = "@@ Indi@@ an@@ a"
SELECT T1.@@ source_system_code , T1.master_customer_id , T2.@@ council_tax_id FROM CMI_Cross_References AS T1 JOIN Park@@ ing_@@ Fin@@ es AS T2 ON T1.cmi_cross_ref_id = T2.cmi_cross_ref_id
SELECT Country FROM market ORDER BY Number_cities DESC
SELECT sum(@@ duration) , max(duration) FROM trip WHERE bike_id = 6@@ 36
SELECT count(*) FROM Customers WHERE customer_id NOT IN ( SELECT customer_id FROM Customer_Payments );
SELECT first_name , last_name , hire_date FROM employees WHERE department_id = ( SELECT department_id FROM employees WHERE first_name = "Clara") AND first_name != "Clar@@ a"
SELECT Room FROM FACULTY WHERE Rank = "Professor" AND Building = "NEB"
SELECT document_type_description FROM Ref_@@ Document_Types WHERE document_type_code = "Pap@@ er";
SELECT T2.date_of_@@ enrolment FROM Courses AS T1 JOIN Student_Course_Enrolment AS T2 ON T1.course_id = T2.course_id WHERE T1.course_name = "Spanish"
SELECT document_type_code , document_type_name FROM Ref_document_types
SELECT count(*) FROM COURSE
SELECT T1.course_name FROM Courses AS T1 JOIN Student_Course_Enrolment AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.city FROM Addresses AS T1 JOIN Staff AS T2 ON T1.address_id = T2.staff_address_id WHERE T2.first_name = "Janessa" AND T2.last_name = "Sawayn";
SELECT date_of_@@ notes FROM Assessment_Notes
SELECT count(@@ T1.S@@ S@@ N@@ ) FROM patient AS T1 JOIN prescribes AS T2 ON T1.SSN = T2.patient JOIN physician AS T3 ON T2.physician = T3.@@ employe@@ eid WHERE T3.name = "John Dorian@@ "
SELECT avg(t3.age) FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t1.clubname = "Bootup Baltimore"
SELECT avg(Gross_in_dollar) FROM film
SELECT count(*) FROM Rating WHERE stars > 3
SELECT T2.team_id , T2.@@ rank FROM home_game AS T1 JOIN team AS T2 ON T1.team_id = T2.team_id WHERE T1.year = 2014 GROUP BY T1.team_id ORDER BY avg(T1.@@ attendance) DESC LIMIT 1;
SELECT Name FROM actor WHERE Age != 20
SELECT id FROM trip WHERE duration >= (SELECT avg(@@ duration) FROM trip WHERE zip_code = 9410@@ 3)
SELECT Team FROM player ORDER BY Age DESC LIMIT 5
SELECT city FROM branch EXCEPT SELECT city FROM branch WHERE membership_amount > 100
SELECT T2.name FROM Certificate AS T1 JOIN Aircraft AS T2 ON T2.aid = T1.aid WHERE T2.@@ distance > 5000 GROUP BY T1.aid ORDER BY count(*) >= 5
SELECT name FROM instructor WHERE dept_name = 'Statistics' ORDER BY salary LIMIT 1
SELECT T2.name FROM Rating AS T1 JOIN Reviewer AS T2 ON T1.rID = T2.rID WHERE T1.stars > 3
SELECT T1.date_of_completion FROM Student_Course_Enrolment AS T1 JOIN Student_Tests_Taken AS T2 ON T1.registration_id = T2.registration_id WHERE T2.test_result = "Fail"
SELECT T1.Service_Type_Description FROM Ref_Service_Types AS T1 JOIN Services AS T2 ON T1.Service_Type_Code = T2.Service_Type_Code WHERE T2.Product_Name = '@@ photo@@ ' INTERSECT SELECT T1.Service_Type_Description FROM Ref_Service_Types AS T1 JOIN Services AS T2 ON T1.Service_Type_Code = T2.Service_Type_Code WHERE T2.Product_Name = '@@ film@@ '
SELECT customer_id , count(*) FROM Accounts GROUP BY customer_id
SELECT count(*) , T1.name FROM accounts AS T1 JOIN checking AS T2 ON T1.custid = T2.custid GROUP BY T1.name
SELECT TYPE FROM vocals AS T1 JOIN band AS T2 ON T1.bandmate = T2.id WHERE lastname = "Heilo" GROUP BY TYPE ORDER BY count(*) DESC LIMIT 1
SELECT Nominee FROM musical WHERE Award = "Tony Award" OR Award = "Cleavant Derrick@@ s"
SELECT pName FROM Player WHERE HS BETWEEN 500 AND 1500
SELECT test_result , COUNT(*) FROM Student_Tests_Taken GROUP BY test_result ORDER BY COUNT(*) DESC
SELECT crs_credit , crs_description FROM course WHERE crs_code = 'CIS-220'
SELECT T1.product_id FROM product_suppliers AS T1 JOIN products AS T2 ON T1.product_id = T2.product_id WHERE T1.supplier_id = 2 AND T2.product_price > (SELECT avg(product_price) FROM products)
SELECT Draft@@ _P@@ ick@@ _Number , Draf@@ t_@@ Cla@@ ss FROM match_season WHERE POSITION = "Defender"
SELECT Nationality , COUNT(*) FROM journalist GROUP BY Nationality
SELECT count(*) FROM Band
SELECT country FROM airlines WHERE name LIKE 'Orbit@@ %'
SELECT AVG(UnitPrice) FROM TRACK
SELECT count(*) FROM list AS T1 JOIN teachers AS T2 ON T1.classroom = T2.classroom WHERE T2.firstname = "K@@ AW@@ A" AND T2.lastname = "G@@ ORDON@@ "
SELECT Rating FROM Restaurant WHERE Res@@ Name = "Subway";
SELECT instrument FROM instruments AS T1 JOIN songs AS T2 ON T1.songid = T2.songid WHERE title = "Le Pop"
SELECT DISTINCT Major FROM Student
SELECT name FROM channel WHERE OWNER = 'CCTV' OR OWNER = 'H@@ B@@ S'
SELECT count(*) , constructorid FROM constructor@@ St@@ andings GROUP BY constructorid
SELECT count(*) FROM architect WHERE gender = 'female'
SELECT Author FROM submission ORDER BY Scores ASC
SELECT Elimination_Move FROM Elimination WHERE Team = "Team Orton"
SELECT DISTINCT driverid , STOP FROM pitstops WHERE duration < (SELECT max(duration) FROM pitstops WHERE raceid = 841)
SELECT document_type_code , count(*) FROM Documents GROUP BY document_type_code
SELECT location_code , location_name FROM Ref_locations
SELECT T3.name FROM affected_region AS T1 JOIN region AS T2 ON T1.region_id = T2.region_id JOIN storm AS T3 ON T1.storm_id = T3.storm_id WHERE T2.region_name = 'Denmark'
SELECT DISTINCT country FROM artist
SELECT T1.student_id , T2.@@ middle_name FROM Student_Course_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING COUNT(*) <= 2
SELECT T2.@@ Visit_Date , T2.@@ Visit@@ _Details FROM VISITORS AS T1 JOIN VISITS AS T2 ON T1.@@ Tourist_ID = T2.Tourist_ID WHERE T1.@@ Tourist_Details = "Vincent"
SELECT T1.country , T1.name , count(*) FROM airlines AS T1 JOIN routes AS T2 ON T1.alid = T2.alid GROUP BY T1.country , T1.name
SELECT T1.part_name FROM Parts AS T1 JOIN Part@@ _F@@ ault@@ s AS T2 ON T1.part_id = T2.part_id GROUP BY T1.part_name ORDER BY count(*) ASC LIMIT 1
SELECT T1.County_name , COUNT(*) FROM county AS T1 JOIN election AS T2 ON T1.County_id = T2.District GROUP BY T1.County_id
SELECT sum(@@ Rat@@ ing_@@ in_percent) , OWNER FROM channel GROUP BY OWNER
SELECT sum(t1.@@ undergraduate) FROM discipline_enrollments AS t1 JOIN campuses AS t2 ON t1.campus = t2.id WHERE t1.year = 2004 AND t2.campus = "San Jose State University"
SELECT count(*) FROM customer_orders WHERE order_@@ details = "Second time"
SELECT T2.emp_fname , T1.prof_office FROM professor AS T1 JOIN employee AS T2 ON T1.emp_num = T2.emp_num ORDER BY T2.emp_fname
SELECT count(*) FROM COURSE WHERE Credits > 2
SELECT DISTINCT T1.@@ st@@ age@@ position FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate = T2.id WHERE Fir@@ stname = "Solveig"
SELECT bedType , count(*) FROM Rooms GROUP BY bedType;
SELECT employee_id FROM employees WHERE salary > (SELECT AVG(salary) FROM employees)
SELECT avg(rating) , languages FROM song GROUP BY languages
SELECT document_type_code , document_name , document_description FROM Documents WHERE document_name = 'Noel CV' OR document_name = 'King Book'
SELECT Name FROM technician ORDER BY Age ASC
SELECT unit_of_measure FROM ref_product_categories WHERE product_category_code = "Herbs"
SELECT Name FROM people WHERE People@@ _id NOT IN (SELECT A@@ ffirmative FROM debate_@@ people@@ )
SELECT location_code , date_@@ in_location_from , date_@@ in_locaton_to FROM Document_locations
SELECT T1.name FROM student AS T1 JOIN advisor AS T2 ON T1.id = T2.s_id GROUP BY T2.s_id HAVING count(*) > 1
SELECT * FROM employees WHERE first_name LIKE '%D@@ %' OR first_name LIKE '%S@@ %' ORDER BY salary DESC
SELECT main_industry , sum(market_value) FROM company GROUP BY main_industry
SELECT S@@ chool@@ _@@ Col@@ ors FROM school ORDER BY Enrollment DESC LIMIT 1
SELECT Residence FROM player GROUP BY Residence HAVING COUNT(*) >= 2
SELECT T1.first_name , T1.last_name , SUM(T2.total) FROM customers AS T1 JOIN invoices AS T2 ON T2.customer_id = T1.id GROUP BY T1.id ORDER BY SUM(T2.total) DESC LIMIT 10;
SELECT t1.campusfee FROM csu_fees AS t1 JOIN campuses AS t2 ON t1.campus = t2.id WHERE t2.campus = "San Francisco State University" AND t1.year = 2000
SELECT Issue_Date FROM volume ORDER BY Weeks_on_Top ASC LIMIT 1
SELECT count(*) FROM STUDENT
SELECT DName FROM DEPARTMENT WHERE Division = "AS" UNION SELECT DName FROM DEPARTMENT WHERE Division = "E@@ N@@ " AND Building = "NEB"
SELECT recei@@ pt@@ _date FROM Documents WHERE document_id = 3;
SELECT T1.Aircraft FROM aircraft AS T1 JOIN airport_aircraft AS T2 ON T1.Aircraft_ID = T2.Aircraft_ID JOIN airport AS T3 ON T2.Airport_ID = T3.Airport_ID WHERE T3.Airport_Name = "London Gatwick"
SELECT trade_name , count(*) FROM medicine GROUP BY trade_name
SELECT phone FROM employees WHERE first_name = "Nancy" AND last_name = "Edwards";
SELECT Name FROM wrestler WHERE Days_held < 100
SELECT T3.name , T2.name FROM membership_register_branch AS T1 JOIN branch AS T2 ON T1.branch_id = T2.branch_id JOIN member AS T3 ON T1.member_id = T3.member_id ORDER BY T1.register_year
SELECT count(*) FROM Person WHERE gender = 'female'
SELECT DISTINCT headquarter FROM manufacturers
SELECT customer_name FROM customers EXCEPT SELECT t1.customer_name FROM customers AS t1 JOIN first_notification_of_loss AS t2 ON t1.customer_id = t2.customer_id
SELECT T4.instrument FROM Performance AS T1 JOIN Band AS T2 ON T1.bandmate = T2.id JOIN Songs AS T3 ON T3.SongId = T1.SongId JOIN Instruments AS T4 ON T4.songid = T3.songid AND T4.bandmateid = T2.id WHERE T2.lastname = "Heilo" AND T3.title = "Badlands"
SELECT name FROM event ORDER BY YEAR DESC LIMIT 1
SELECT name FROM church ORDER BY open_date DESC
SELECT individual_@@ first_name , individual_@@ middle_name , individual_last_name FROM individuals ORDER BY individual_last_name
SELECT customer_phone FROM available_policies WHERE policy_type_code = "Life Insuranc@@ e"
SELECT sum(T2.room_count) FROM Apartment_Buildings AS T1 JOIN Apartments AS T2 ON T1.building_id = T2.building_id WHERE T1.building_@@ short_name = "Columbus Squ@@ ar@@ e"
SELECT Destroyed_by_Employee_ID FROM Documents_to_be_destroyed UNION SELECT Destruction_Authorised_by_Employee_ID FROM Documents_to_be_destroyed
SELECT count(*) FROM Faculty WHERE Sex = 'F' AND Rank = "Professor"
SELECT T1.C@@ h@@ ar@@ _c@@ el@@ l@@ s , T1.@@ Pi@@ xels , T1.@@ Hardware_@@ co@@ lo@@ urs FROM screen_mode AS T1 JOIN phone AS T2 ON T1.Graphics_mode = T2.screen_mode WHERE T2.Hardware_Model_name = "LG-P760@@ ";
SELECT DISTINCT name FROM medication ORDER BY name
SELECT T2.role_name , T2.@@ role_description FROM Employees AS T1 JOIN ROLES AS T2 ON T1.role_code = T2.role_code WHERE T1.employee_name = "Ebba"
SELECT roomName FROM Rooms WHERE basePrice > ( SELECT avg(basePrice) FROM Rooms );
SELECT cName , enr FROM College WHERE enr > 10000 AND state = "LA"
SELECT sum(T1.@@ games) FROM home_game AS T1 JOIN team AS T2 ON T1.team_id = T2.team_id_br WHERE T2.name = 'Boston Red Stockings' AND T1.year BETWEEN 1990 AND 2000;
SELECT Name FROM editor WHERE editor_id NOT IN (SELECT editor_id FROM journal_@@ committe@@ e)
SELECT T1.first_name , T1.last_name FROM customers AS T1 JOIN invoices AS T2 ON T2.customer_id = T1.id ORDER BY T2.invoice_date DESC LIMIT 5;
SELECT DISTINCT T1.lname FROM Faculty AS T1 JOIN Faculty_participates_in AS T2 ON T1.facID = T2.facID JOIN activity AS T3 ON T2.actid = T2.actid WHERE T3.activity_name = 'Canoeing' OR T3.activity_name = 'Kayaking'
SELECT count(*) , class_room FROM CLASS GROUP BY class_room HAVING count(*) >= 2
SELECT region_code , region_name FROM region ORDER BY region_code
SELECT count(*) FROM Student WHERE sex = "M" AND StuID IN (SELECT StuID FROM Has_allergy AS T1 JOIN Allergy_Type AS T2 ON T1.Allergy = T2.Allergy WHERE T2.allergytype = "food@@ ")
SELECT Official_Name FROM city ORDER BY Population DESC
SELECT count(*) FROM Accounts
SELECT count(DISTINCT bik@@ e_@@ id) FROM trip
SELECT T1.student_id , T2.personal_name FROM Student_Course_Enrolment AS T1 JOIN Students AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING COUNT(*) >= 2
SELECT institution , LOCATION FROM institution WHERE founded > 1990 AND TYPE = 'Priv@@ at@@ e'
SELECT count(DISTINCT Team@@ ) FROM match_season
SELECT DISTINCT T1.name FROM student AS T1 JOIN takes AS T2 ON T1.id = T2.id WHERE YEAR = 2009 OR YEAR = 2010
SELECT name , LOCATION , seating FROM track ORDER BY year_opened DESC LIMIT 1
SELECT pName FROM Player WHERE HS BETWEEN 500 AND 1500
SELECT name , city , country FROM airports ORDER BY elevation DESC LIMIT 1
SELECT T1.region_name , count(*) FROM region AS T1 JOIN affected_region AS T2 ON T1.region_id = T2.region_id GROUP BY T1.region_id
SELECT role_code FROM Employees GROUP BY role_code ORDER BY count(*) ASC LIMIT 1
SELECT count(DISTINCT bed@@ Typ@@ e) FROM Rooms;
SELECT avg(@@ damage_millions_USD) , max(@@ damage_millions_USD) FROM storm WHERE max_speed > 1000
SELECT Name FROM member WHERE Member_ID NOT IN (SELECT Member_ID FROM member_@@ attendance)
SELECT T1.id , T1.name FROM mountain AS T1 JOIN photos AS T2 ON T1.id = T2.mountain_id GROUP BY T1.id HAVING count(*) >= 2
SELECT T1.customer_details , T1.customer_id FROM Customers AS T1 JOIN Customer_Policies AS T2 ON T1.Customer_id = T2.@@ Customer_id GROUP BY T1.customer_id HAVING count(*) > 1
SELECT count(*) FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id = t2.product_id WHERE t1.product_name = "sesame"
SELECT state , acc_type , credit_score FROM customer WHERE no_of_@@ loans = 0
SELECT P@@ lan@@ n@@ ed_@@ Delivery_@@ Date , A@@ ct@@ ual_@@ Delivery_@@ Date FROM BOOKINGS
SELECT country FROM airport GROUP BY country HAVING count(*) > 2
SELECT T1.Service_Type_Description FROM Ref_Service_Types AS T1 JOIN Services AS T2 ON T1.Service_Type_Code = T2.Service_Type_Code WHERE T2.Product_Name = '@@ photo@@ ' INTERSECT SELECT T1.Service_Type_Description FROM Ref_Service_Types AS T1 JOIN Services AS T2 ON T1.Service_Type_Code = T2.Service_Type_Code WHERE T2.Product_Name = '@@ film@@ '
SELECT T1.Result FROM acceptance AS T1 JOIN submission AS T2 ON T1.Submission_ID = T2.Submission_ID ORDER BY T2.Scor@@ es DESC LIMIT 1
SELECT sum(hour@@ s) FROM projects
SELECT T1.flno FROM Flight AS T1 JOIN Aircraft AS T2 ON T1.aid = T2.aid WHERE T2.name = "Airbus A340-300"
SELECT count(DISTINCT card@@ _type_code) FROM Customers_@@ C@@ ard@@ s
SELECT T1.document_id FROM Documents_with_expenses AS T1 JOIN Ref_@@ Budget_@@ Co@@ des AS T2 ON T1.@@ Budget_Type_code = T2.@@ Budget_Type_code WHERE T2.@@ budget@@ _type_@@ Description = "G@@ overnment@@ "
SELECT Grape , Appelation , Name FROM WINE WHERE Score > 93 ORDER BY Name
SELECT name FROM manufacturers EXCEPT SELECT T2.name FROM products AS T1 JOIN manufacturers AS T2 ON T1.Manufacturer = T2.code WHERE T1.name = 'D@@ VD driv@@ e'
SELECT catalog_entry_name FROM catalog_contents WHERE product_@@ stock@@ _number LIKE "2@@ %"
SELECT classroom FROM list GROUP BY classroom ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , formats FROM files GROUP BY formats
SELECT sum(T2.room_count) FROM Apartment_Facilities AS T1 JOIN Apartments AS T2 ON T1.apt_id = T2.apt_id WHERE T1.facility_code = "G@@ ym@@ "
SELECT count(*) FROM Products
SELECT product_id FROM problems AS T1 JOIN staff AS T2 ON T1.reported_by_staff_id = T2.staff_id WHERE T2.staff_first_name = "D@@ ame@@ on" AND T2.staff_last_name = "F@@ ram@@ i" UNION SELECT product_id FROM problems AS T1 JOIN staff AS T2 ON T1.reported_by_staff_id = T2.staff_id WHERE T2.staff_first_name = "J@@ ol@@ ie" AND T2.staff_last_name = "W@@ eber"
SELECT DISTINCT T1.name FROM station AS T1 JOIN status AS T2 ON T1.id = T2.station_id WHERE T2.bikes_available = 7
SELECT pName , HS FROM Player WHERE HS < 1500
SELECT T2.name FROM appointment AS T1 JOIN physician AS T2 ON T1.Physician = T2.EmployeeID
SELECT T1.name , T1.date , T2.name FROM race AS T1 JOIN track AS T2 ON T1.track_id = T2.track_id
SELECT max(T1.@@ wins) FROM postseason AS T1 JOIN team AS T2 ON T1.team_id_winner = T2.team_id_br WHERE T2.name = 'Boston Red Stocking@@ s@@ ';
SELECT customer_name FROM customers EXCEPT SELECT t1.customer_name FROM customers AS t1 JOIN customer_addresses AS t2 ON t1.customer_id = t2.customer_id JOIN addresses AS t3 ON t2.address_id = t3.address_id WHERE t3.state_province_county = 'California'
SELECT t1.product_id , t2.color_description FROM products AS t1 JOIN ref_colors AS t2 ON t1.color_code = t2.color_code JOIN product_characteristics AS t3 ON t1.product_id = t3.product_id GROUP BY t1.product_id HAVING count(*) >= 2
SELECT count(DISTINCT Name) FROM PHOTOS
SELECT name FROM mill WHERE name LIKE '%M@@ ou@@ lin@@ %'
SELECT count(*) FROM catalog_contents
SELECT sum(acc_bal) FROM customer WHERE state = 'Utah' OR state = 'T@@ ex@@ as'
SELECT DISTINCT directed_by FROM film
SELECT count(DISTINCT t3.characteristic@@ _@@ name) FROM products AS t1 JOIN product_characteristics AS t2 ON t1.product_id = t2.product_id JOIN CHARACTERISTICS AS t3 ON t2.characteristic_id = t3.characteristic_id WHERE t1.product_name = "sesame"
SELECT founder FROM manufacturers WHERE name LIKE 'S%'
SELECT Denomination , COUNT(*) FROM school GROUP BY Denomination ORDER BY COUNT(*) DESC
SELECT zip_code FROM weather GROUP BY zip_code HAVING avg(mean_@@ humid@@ ity) < 70 INTERSECT SELECT zip_code FROM trip GROUP BY zip_code HAVING count(*) >= 100
SELECT max(@@ booked_count) , min(@@ booked_count) , avg(@@ booked_count) FROM products_booked
SELECT COUNT(DISTINCT Artist_ID) FROM volume
SELECT city FROM station GROUP BY city ORDER BY max(lat) DESC
SELECT T1.project_details FROM Projects AS T1 JOIN Project_outcomes AS T2 ON T1.project_id = T2.project_id WHERE T2.outcome_code = 'P@@ ap@@ er' INTERSECT SELECT T1.project_details FROM Projects AS T1 JOIN Project_outcomes AS T2 ON T1.project_id = T2.project_id WHERE T2.outcome_code = 'Patent'
SELECT count(*) FROM scientists
SELECT count(*) FROM Draft@@ _C@@ op@@ ies WHERE document_id = 2;
SELECT school FROM university WHERE founded > 1850 OR affiliation = 'Public'
SELECT DISTINCT grade FROM list WHERE classroom = 10@@ 5
SELECT country FROM stadium EXCEPT SELECT country FROM stadium WHERE open@@ ing_@@ year > 200@@ 6
SELECT avg(@@ bed@@ room_count) FROM Apartments
SELECT t1.campusfee FROM csu_fees AS t1 JOIN campuses AS t2 ON t1.campus = t2.id WHERE t2.campus = "San Francisco State University" AND t1.year = 2000
SELECT name , salary FROM Employee ORDER BY salary
SELECT location_code , date_@@ in_location_from , date_@@ in_locaton_to FROM Document_locations
SELECT count(*) FROM candidate
SELECT Country , COUNT(*) FROM perpetrator GROUP BY Country HAVING COUNT(*) >= 2
SELECT count(*) FROM airports AS T1 JOIN routes AS T2 ON T1.apid = T2.dst_apid WHERE country = 'Canada'
SELECT clublocation FROM club WHERE clubname = "Tennis Club"
SELECT T1.first_name , T1.last_name , T2.department_name , T3.city , T3.@@ state_province FROM employees AS T1 JOIN departments AS T2 ON T1.department_id = T2.department_id JOIN locations AS T3 ON T2.location_id = T3.location_id
SELECT * FROM Student_Addresses ORDER BY monthly_@@ rental DESC
SELECT T2.order_id , T2.order_@@ details FROM Invoices AS T1 JOIN Orders AS T2 ON T1.order_id = T2.order_id GROUP BY T2.order_id HAVING count(*) > 2
SELECT avg(T1.age) , T3.dorm_name FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid = T2.stuid JOIN dorm AS T3 ON T3.dormid = T2.dormid GROUP BY T3.dorm_name
SELECT school_name FROM school ORDER BY school_name
SELECT t3.fname , t3.lname FROM club AS t1 JOIN member_of_club AS t2 ON t1.clubid = t2.clubid JOIN student AS t3 ON t2.stuid = t3.stuid WHERE t1.clubname = "Bootup Baltimore" AND t3.major = "600"
SELECT Player_name , residence FROM player WHERE Occupation != "@@ Research@@ er"
SELECT Total_Points FROM gymnast ORDER BY Total_Points DESC
SELECT DISTINCT Country FROM manager
SELECT zip_code , avg(mean_@@ temperature_f) FROM weather WHERE date LIKE "8/%" GROUP BY zip_code
SELECT count(*) FROM student AS T1 JOIN lives_in AS T2 ON T1.stuid = T2.stuid JOIN dorm AS T3 ON T3.dormid = T2.dormid WHERE T3.dorm_name = 'Smith Hall' AND T1.sex = 'F'
SELECT t2.color_description FROM products AS t1 JOIN ref_colors AS t2 ON t1.color_code = t2.color_code WHERE t1.product_name = "@@ cat@@ ni@@ p@@ "
SELECT sum(enrollment) , min(enrollment) FROM university
SELECT Builder , COUNT(*) FROM railway GROUP BY Builder
SELECT T1.subject_id , T2.subject_name , COUNT(*) FROM Courses AS T1 JOIN Subjects AS T2 ON T1.subject_id = T2.subject_id GROUP BY T1.subject_id
SELECT avg(price) FROM products WHERE Manufacturer = 2
SELECT count(*) FROM gymnast
SELECT T1.booking_start_date , T1.booking_start_date FROM Apartment_Bookings AS T1 JOIN Apartments AS T2 ON T1.apt_id = T2.apt_id WHERE T2.apt_type_code = "Dup@@ le@@ x"
SELECT DISTINCT PRESIDENT_Vote FROM VOTING_RECORD WHERE Registration_Date = "@@ 08/30/201@@ 5"
SELECT count(DISTINCT gend@@ er) FROM dorm
SELECT Team FROM technician GROUP BY Team HAVING COUNT(*) >= 2
SELECT mID , avg(stars) FROM Rating GROUP BY mID HAVING count(*) >= 2
SELECT t3.District_name FROM store AS t1 JOIN store_district AS t2 ON t1.store_id = t2.store_id JOIN district AS t3 ON t2.district_id = t3.district_id WHERE t1.Type = "C@@ ity M@@ all" INTERSECT SELECT t3.District_name FROM store AS t1 JOIN store_district AS t2 ON t1.store_id = t2.store_id JOIN district AS t3 ON t2.district_id = t3.district_id WHERE t1.Type = "Vil@@ lage Stor@@ e"
SELECT avg(@@ Inj@@ ure@@ d) FROM perpetrator
SELECT count(*) FROM manufacturers WHERE headquarter = 'Tokyo' OR headquarter = 'Beijing'
SELECT Name FROM pilot ORDER BY Name ASC
SELECT Fname , Lname , Age FROM Student WHERE Sex = 'F'
SELECT T1.customer_id , T2.customer_first_name , T2.customer_last_name , count(*) FROM Accounts AS T1 JOIN Customers AS T2 ON T1.customer_id = T2.customer_id GROUP BY T1.customer_id
SELECT T2.bname FROM loan AS T1 JOIN bank AS T2 ON T1.branch_id = T2.branch_id JOIN customer AS T3 ON T1.cust_id = T3.cust_id WHERE T3.credit_score < 100
SELECT count(*) FROM ARTIST WHERE artist@@ id NOT IN@@ (SELECT artist@@ id FROM ALB@@ UM@@ )
SELECT T1.activity_name FROM Activity AS T1 JOIN Participates_in AS T2 ON T1.actID = T2.actID GROUP BY T1.actID ORDER BY count(*) DESC LIMIT 1
SELECT max(@@ Population) , min(@@ Population) FROM county
SELECT T2.dept_store_id , T2.store_name FROM departments AS T1 JOIN department_stores AS T2 ON T1.dept_store_id = T2.dept_store_id WHERE T1.department_name = "@@ market@@ ing" INTERSECT SELECT T2.dept_store_id , T2.store_name FROM departments AS T1 JOIN department_stores AS T2 ON T1.dept_store_id = T2.dept_store_id WHERE T1.department_name = "@@ manag@@ ing"
SELECT T2.address FROM staff AS T1 JOIN address AS T2 ON T1.address_id = T2.address_id WHERE T1.first_name = 'E@@ ls@@ a'
SELECT T2.Name FROM ALBUM AS T1 JOIN ARTIST AS T2 ON T1.ArtistId = T2.ArtistId WHERE T1.Title = "Balls to the W@@ all"
SELECT DISTINCT LOCATION FROM station
SELECT school , nickname FROM university ORDER BY founded
SELECT Studio FROM film WHERE Director = "N@@ ic@@ ho@@ la@@ s Me@@ y@@ er" INTERSECT SELECT Studio FROM film WHERE Director = "W@@ alter Hill@@ "
SELECT Model_name , RAM_MiB FROM chip_model ORDER BY RAM_MiB ASC LIMIT 1;
SELECT count(DISTINCT T2.camera_len@@ s_@@ id) FROM mountain AS T1 JOIN photos AS T2 ON T1.id = T2.mountain_id WHERE T1.country = 'E@@ thiop@@ ia'
SELECT T1.Name , T1.Tourist_Attraction_ID FROM Tourist_Attractions AS T1 JOIN VISITS AS T2 ON T1.Tourist_Attraction_ID = T2.Tourist_Attraction_ID GROUP BY T2.Tourist_Attraction_ID HAVING count(*) <= 1
