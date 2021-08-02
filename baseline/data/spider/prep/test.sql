SELECT count(*) FROM sing@@ er
SELECT count(*) FROM sing@@ er
SELECT name , country , age FROM sing@@ er ORDER BY age DESC
SELECT name , country , age FROM sing@@ er ORDER BY age DESC
SELECT avg(age) , min(age) , max(age) FROM sing@@ er WHERE country = 'F@@ ranc@@ e'
SELECT avg(age) , min(age) , max(age) FROM sing@@ er WHERE country = 'F@@ ranc@@ e'
SELECT song_name , song@@ _@@ relea@@ se_@@ year FROM sing@@ er ORDER BY age LIMIT 1
SELECT song_name , song@@ _@@ relea@@ se_@@ year FROM sing@@ er ORDER BY age LIMIT 1
SELECT DISTINCT country FROM sing@@ er WHERE age > 20
SELECT DISTINCT country FROM sing@@ er WHERE age > 20
SELECT country , count(*) FROM sing@@ er GROUP BY country
SELECT country , count(*) FROM sing@@ er GROUP BY country
SELECT song_name FROM sing@@ er WHERE age > (SELECT avg(age) FROM sing@@ er)
SELECT song_name FROM sing@@ er WHERE age > (SELECT avg(age) FROM sing@@ er)
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
SELECT LOCATION , name FROM stadium WHERE capacity BETWEEN 5000 AND 10000
se@@ le@@ ct max(@@ capac@@ ity@@ ), average from stadium
se@@ le@@ ct avg(capacity) , max(capacity) from stadium
SELECT name , capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT name , capacity FROM stadium ORDER BY average DESC LIMIT 1
SELECT count(*) FROM con@@ cer@@ t WHERE YEAR = 2014 OR YEAR = 201@@ 5
SELECT count(*) FROM con@@ cer@@ t WHERE YEAR = 2014 OR YEAR = 201@@ 5
SELECT T2.name , count(*) FROM con@@ cer@@ t AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T2.name , count(*) FROM con@@ cer@@ t AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id GROUP BY T1.stadium_id
SELECT T2.name , T2.@@ capacity FROM con@@ cer@@ t AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year >= 2014 GROUP BY T2.stadium_id ORDER BY count(*) DESC LIMIT 1
se@@ le@@ ct t2.@@ name , t2.@@ capacity from con@@ cer@@ t as t1 join stadium as t2 on t1.@@ stadium_id = t2.stadium_id where t1.year > 201@@ 3 g@@ ro@@ up by t2.stadium_id order by count(*) desc li@@ mi@@ t 1
SELECT YEAR FROM con@@ cer@@ t GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM con@@ cer@@ t GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM con@@ c@@ ert@@ )
SELECT name FROM stadium WHERE stadium_id NOT IN (SELECT stadium_id FROM con@@ c@@ ert@@ )
SELECT country FROM sing@@ er WHERE age > 40 INTERSECT SELECT country FROM sing@@ er WHERE age < 30
SELECT name FROM stadium EXCEPT SELECT T2.name FROM con@@ cer@@ t AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014
SELECT name FROM stadium EXCEPT SELECT T2.name FROM con@@ cer@@ t AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.year = 2014
SELECT T2.@@ con@@ cer@@ t_name , T2.theme , count(*) FROM sing@@ er_@@ in_@@ con@@ cer@@ t AS T1 JOIN con@@ cer@@ t AS T2 ON T1.@@ con@@ cer@@ t_id = T2.@@ con@@ cer@@ t_id GROUP BY T2.@@ con@@ cer@@ t_id
se@@ le@@ ct t2.@@ con@@ cer@@ t_name , t2.@@ theme , count(*) from sing@@ er_@@ in_@@ con@@ cer@@ t as t1 join con@@ cer@@ t as t2 on t1.@@ con@@ cer@@ t_id = t2.@@ con@@ cer@@ t_id g@@ ro@@ up by t2.@@ con@@ cer@@ t_id
SELECT T2.name , count(*) FROM sing@@ er_@@ in_@@ con@@ cer@@ t AS T1 JOIN sing@@ er AS T2 ON T1.@@ sing@@ er_id = T2.@@ sing@@ er_id GROUP BY T2.@@ sing@@ er_id
SELECT T2.name , count(*) FROM sing@@ er_@@ in_@@ con@@ cer@@ t AS T1 JOIN sing@@ er AS T2 ON T1.@@ sing@@ er_id = T2.@@ sing@@ er_id GROUP BY T2.@@ sing@@ er_id
SELECT T2.name FROM sing@@ er_@@ in_@@ con@@ cer@@ t AS T1 JOIN sing@@ er AS T2 ON T1.@@ sing@@ er_id = T2.@@ sing@@ er_id JOIN con@@ cer@@ t AS T3 ON T1.@@ con@@ cer@@ t_id = T3.@@ con@@ cer@@ t_id WHERE T3.@@ year = 2014
SELECT T2.name FROM sing@@ er_@@ in_@@ con@@ cer@@ t AS T1 JOIN sing@@ er AS T2 ON T1.@@ sing@@ er_id = T2.@@ sing@@ er_id JOIN con@@ cer@@ t AS T3 ON T1.@@ con@@ cer@@ t_id = T3.@@ con@@ cer@@ t_id WHERE T3.@@ year = 2014
SELECT name , country FROM sing@@ er WHERE song_name LIKE '%@@ He@@ y@@ %'
SELECT name , country FROM sing@@ er WHERE song_name LIKE '%@@ He@@ y@@ %'
SELECT T2.name , T2.@@ location FROM con@@ cer@@ t AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.Year = 2014 INTERSECT SELECT T2.name , T2.@@ location FROM con@@ cer@@ t AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.Year = 201@@ 5
SELECT T2.name , T2.@@ location FROM con@@ cer@@ t AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.Year = 2014 INTERSECT SELECT T2.name , T2.@@ location FROM con@@ cer@@ t AS T1 JOIN stadium AS T2 ON T1.stadium_id = T2.stadium_id WHERE T1.Year = 201@@ 5
se@@ le@@ ct count(*) from con@@ cer@@ t where stadium_id = (@@ se@@ le@@ ct stadium_id from stadium order by capacity desc li@@ mi@@ t 1)
se@@ le@@ ct count(*) from con@@ cer@@ t where stadium_id = (@@ se@@ le@@ ct stadium_id from stadium order by capacity desc li@@ mi@@ t 1)
SELECT count(*) FROM pet@@ s WHERE weight > 10
SELECT count(*) FROM pet@@ s WHERE weight > 10
SELECT weight FROM pet@@ s ORDER BY p@@ et_@@ age LIMIT 1
SELECT weight FROM pet@@ s ORDER BY p@@ et_@@ age LIMIT 1
SELECT max(@@ weight) , pet@@ Type FROM pet@@ s GROUP BY pet@@ Type
SELECT max(@@ weight) , pet@@ Type FROM pet@@ s GROUP BY pet@@ Type
SELECT count(*) FROM student AS T1 JOIN has_@@ p@@ et AS T2 ON T1.stuid = T2.stuid WHERE T1.age > 20
SELECT count(*) FROM student AS T1 JOIN has_@@ p@@ et AS T2 ON T1.stuid = T2.stuid WHERE T1.age > 20
SELECT count(*) FROM student AS T1 JOIN has_@@ p@@ et AS T2 ON T1.stuid = T2.stuid JOIN pet@@ s AS T3 ON T2.p@@ et@@ id = T3.@@ pet@@ id WHERE T1.sex = 'F' AND T3.@@ pet@@ type = '@@ do@@ g@@ '
SELECT count(*) FROM student AS T1 JOIN has_@@ p@@ et AS T2 ON T1.stuid = T2.stuid JOIN pet@@ s AS T3 ON T2.p@@ et@@ id = T3.@@ pet@@ id WHERE T1.sex = 'F' AND T3.@@ pet@@ type = '@@ do@@ g@@ '
SELECT count(DISTINCT pet@@ type) FROM pet@@ s
SELECT count(DISTINCT pet@@ type) FROM pet@@ s
SELECT DISTINCT T1.Fname FROM student AS T1 JOIN has_@@ p@@ et AS T2 ON T1.stuid = T2.stuid JOIN pet@@ s AS T3 ON T3.@@ pet@@ id = T2.p@@ et@@ id WHERE T3.@@ pet@@ type = '@@ cat@@ ' OR T3.@@ pet@@ type = '@@ do@@ g@@ '
SELECT DISTINCT T1.Fname FROM student AS T1 JOIN has_@@ p@@ et AS T2 ON T1.stuid = T2.stuid JOIN pet@@ s AS T3 ON T3.@@ pet@@ id = T2.p@@ et@@ id WHERE T3.@@ pet@@ type = '@@ cat@@ ' OR T3.@@ pet@@ type = '@@ do@@ g@@ '
se@@ le@@ ct t1.fname from student as t1 join has_@@ p@@ et as t2 on t1.@@ stuid = t2.stuid join pet@@ s as t3 on t3.@@ pet@@ id = t2.@@ pet@@ id where t3.@@ pet@@ type = '@@ cat@@ ' inter@@ se@@ ct se@@ le@@ ct t1.fname from student as t1 join has_@@ p@@ et as t2 on t1.@@ stuid = t2.stuid join pet@@ s as t3 on t3.@@ pet@@ id = t2.@@ pet@@ id where t3.@@ pet@@ type = '@@ do@@ g@@ '
SELECT T1.Fname FROM student AS T1 JOIN has_@@ p@@ et AS T2 ON T1.stuid = T2.stuid JOIN pet@@ s AS T3 ON T3.@@ pet@@ id = T2.p@@ et@@ id WHERE T3.@@ pet@@ type = '@@ cat@@ ' INTERSECT SELECT T1.Fname FROM student AS T1 JOIN has_@@ p@@ et AS T2 ON T1.stuid = T2.stuid JOIN pet@@ s AS T3 ON T3.@@ pet@@ id = T2.p@@ et@@ id WHERE T3.@@ pet@@ type = '@@ do@@ g@@ '
SELECT major , age FROM student WHERE stuid NOT IN (SELECT T1.stuid FROM student AS T1 JOIN has_@@ p@@ et AS T2 ON T1.stuid = T2.stuid JOIN pet@@ s AS T3 ON T3.@@ pet@@ id = T2.p@@ et@@ id WHERE T3.@@ pet@@ type = '@@ cat@@ ')
SELECT major , age FROM student WHERE stuid NOT IN (SELECT T1.stuid FROM student AS T1 JOIN has_@@ p@@ et AS T2 ON T1.stuid = T2.stuid JOIN pet@@ s AS T3 ON T3.@@ pet@@ id = T2.p@@ et@@ id WHERE T3.@@ pet@@ type = '@@ cat@@ ')
SELECT stuid FROM student EXCEPT SELECT T1.stuid FROM student AS T1 JOIN has_@@ p@@ et AS T2 ON T1.stuid = T2.stuid JOIN pet@@ s AS T3 ON T3.@@ pet@@ id = T2.p@@ et@@ id WHERE T3.@@ pet@@ type = '@@ cat@@ '
SELECT stuid FROM student EXCEPT SELECT T1.stuid FROM student AS T1 JOIN has_@@ p@@ et AS T2 ON T1.stuid = T2.stuid JOIN pet@@ s AS T3 ON T3.@@ pet@@ id = T2.p@@ et@@ id WHERE T3.@@ pet@@ type = '@@ cat@@ '
SELECT T1.fname , T1.age FROM student AS T1 JOIN has_@@ p@@ et AS T2 ON T1.stuid = T2.stuid JOIN pet@@ s AS T3 ON T3.@@ pet@@ id = T2.p@@ et@@ id WHERE T3.@@ pet@@ type = '@@ do@@ g@@ ' AND T1.stuid NOT IN (SELECT T1.stuid FROM student AS T1 JOIN has_@@ p@@ et AS T2 ON T1.stuid = T2.stuid JOIN pet@@ s AS T3 ON T3.@@ pet@@ id = T2.p@@ et@@ id WHERE T3.@@ pet@@ type = '@@ cat@@ ')
SELECT T1.fname , T1.age FROM student AS T1 JOIN has_@@ p@@ et AS T2 ON T1.stuid = T2.stuid JOIN pet@@ s AS T3 ON T3.@@ pet@@ id = T2.p@@ et@@ id WHERE T3.@@ pet@@ type = '@@ do@@ g@@ ' AND T1.stuid NOT IN (SELECT T1.stuid FROM student AS T1 JOIN has_@@ p@@ et AS T2 ON T1.stuid = T2.stuid JOIN pet@@ s AS T3 ON T3.@@ pet@@ id = T2.p@@ et@@ id WHERE T3.@@ pet@@ type = '@@ cat@@ ')
SELECT pet@@ type , weight FROM pet@@ s ORDER BY p@@ et_@@ age LIMIT 1
SELECT pet@@ type , weight FROM pet@@ s ORDER BY p@@ et_@@ age LIMIT 1
SELECT pet@@ id , weight FROM pet@@ s WHERE p@@ et_@@ age > 1
SELECT pet@@ id , weight FROM pet@@ s WHERE p@@ et_@@ age > 1
SELECT avg(@@ p@@ et_@@ age) , max(@@ p@@ et_@@ age) , pet@@ type FROM pet@@ s GROUP BY pet@@ type
SELECT avg(@@ p@@ et_@@ age) , max(@@ p@@ et_@@ age) , pet@@ type FROM pet@@ s GROUP BY pet@@ type
SELECT avg(weight) , pet@@ type FROM pet@@ s GROUP BY pet@@ type
SELECT avg(weight) , pet@@ type FROM pet@@ s GROUP BY pet@@ type
SELECT DISTINCT T1.fname , T1.age FROM student AS T1 JOIN has_@@ p@@ et AS T2 ON T1.stuid = T2.stuid
SELECT DISTINCT T1.fname , T1.age FROM student AS T1 JOIN has_@@ p@@ et AS T2 ON T1.stuid = T2.stuid
SELECT T2.p@@ et@@ id FROM student AS T1 JOIN has_@@ p@@ et AS T2 ON T1.stuid = T2.stuid WHERE T1.@@ Lname = 'Smith@@ '
SELECT T2.p@@ et@@ id FROM student AS T1 JOIN has_@@ p@@ et AS T2 ON T1.stuid = T2.stuid WHERE T1.@@ Lname = 'Smith@@ '
SELECT count(*) , T1.stuid FROM student AS T1 JOIN has_@@ p@@ et AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid
se@@ le@@ ct count(*) , t1.@@ stuid from student as t1 join has_@@ p@@ et as t2 on t1.@@ stuid = t2.stuid g@@ ro@@ up by t1.@@ stuid
SELECT T1.fname , T1.sex FROM student AS T1 JOIN has_@@ p@@ et AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 1
SELECT T1.fname , T1.sex FROM student AS T1 JOIN has_@@ p@@ et AS T2 ON T1.stuid = T2.stuid GROUP BY T1.stuid HAVING count(*) > 1
SELECT T1.lname FROM student AS T1 JOIN has_@@ p@@ et AS T2 ON T1.stuid = T2.stuid JOIN pet@@ s AS T3 ON T3.@@ pet@@ id = T2.p@@ et@@ id WHERE T3.@@ p@@ et_@@ age = 3 AND T3.@@ pet@@ type = '@@ cat@@ '
SELECT T1.lname FROM student AS T1 JOIN has_@@ p@@ et AS T2 ON T1.stuid = T2.stuid JOIN pet@@ s AS T3 ON T3.@@ pet@@ id = T2.p@@ et@@ id WHERE T3.@@ p@@ et_@@ age = 3 AND T3.@@ pet@@ type = '@@ cat@@ '
se@@ le@@ ct avg(age) from student where stuid not in (@@ se@@ le@@ ct stuid from has_@@ pet@@ )
se@@ le@@ ct avg(age) from student where stuid not in (@@ se@@ le@@ ct stuid from has_@@ pet@@ )
SELECT count(*) FROM CO@@ NT@@ IN@@ EN@@ T@@ S@@ ;
SELECT count(*) FROM CO@@ NT@@ IN@@ EN@@ T@@ S@@ ;
SELECT T1.@@ Cont@@ Id , T1.@@ Cont@@ in@@ ent , count(*) FROM CO@@ NT@@ IN@@ EN@@ TS AS T1 JOIN COUNT@@ R@@ I@@ E@@ S AS T2 ON T1.@@ Cont@@ Id = T2.@@ Cont@@ in@@ ent GROUP BY T1.@@ Cont@@ I@@ d@@ ;
SELECT T1.@@ Cont@@ Id , T1.@@ Cont@@ in@@ ent , count(*) FROM CO@@ NT@@ IN@@ EN@@ TS AS T1 JOIN COUNT@@ R@@ I@@ E@@ S AS T2 ON T1.@@ Cont@@ Id = T2.@@ Cont@@ in@@ ent GROUP BY T1.@@ Cont@@ I@@ d@@ ;
SELECT count(*) FROM COUNT@@ R@@ I@@ E@@ S@@ ;
SELECT count(*) FROM COUNT@@ R@@ I@@ E@@ S@@ ;
SELECT T1.F@@ ul@@ l@@ Name , T1.@@ Id , count(*) FROM C@@ AR@@ _M@@ A@@ K@@ ER@@ S AS T1 JOIN M@@ O@@ DE@@ L@@ _@@ LI@@ ST AS T2 ON T1.@@ Id = T2.M@@ ak@@ er GROUP BY T1.@@ I@@ d@@ ;
SELECT T1.F@@ ul@@ l@@ Name , T1.@@ Id , count(*) FROM C@@ AR@@ _M@@ A@@ K@@ ER@@ S AS T1 JOIN M@@ O@@ DE@@ L@@ _@@ LI@@ ST AS T2 ON T1.@@ Id = T2.M@@ ak@@ er GROUP BY T1.@@ I@@ d@@ ;
SELECT T1.@@ Mode@@ l FROM C@@ AR@@ _N@@ A@@ ME@@ S AS T1 JOIN C@@ AR@@ S_@@ D@@ AT@@ A AS T2 ON T1.M@@ ak@@ e@@ Id = T2.@@ Id ORDER BY T2.@@ hor@@ se@@ po@@ w@@ er ASC LIMIT 1;
SELECT T1.@@ Mode@@ l FROM C@@ AR@@ _N@@ A@@ ME@@ S AS T1 JOIN C@@ AR@@ S_@@ D@@ AT@@ A AS T2 ON T1.M@@ ak@@ e@@ Id = T2.@@ Id ORDER BY T2.@@ hor@@ se@@ po@@ w@@ er ASC LIMIT 1;
SELECT T1.@@ model FROM C@@ AR@@ _N@@ A@@ ME@@ S AS T1 JOIN C@@ AR@@ S_@@ D@@ AT@@ A AS T2 ON T1.M@@ ak@@ e@@ Id = T2.@@ Id WHERE T2.Weight < (SELECT avg(@@ W@@ eight@@ ) FROM C@@ AR@@ S_@@ D@@ AT@@ A@@ )
SELECT T1.@@ model FROM C@@ AR@@ _N@@ A@@ ME@@ S AS T1 JOIN C@@ AR@@ S_@@ D@@ AT@@ A AS T2 ON T1.M@@ ak@@ e@@ Id = T2.@@ Id WHERE T2.Weight < (SELECT avg(@@ W@@ eight@@ ) FROM C@@ AR@@ S_@@ D@@ AT@@ A@@ )
SELECT DISTINCT T1.M@@ ak@@ er FROM C@@ AR@@ _M@@ A@@ K@@ ER@@ S AS T1 JOIN M@@ O@@ DE@@ L@@ _@@ LI@@ ST AS T2 ON T1.@@ Id = T2.M@@ ak@@ er JOIN C@@ AR@@ _N@@ A@@ ME@@ S AS T3 ON T2.@@ model = T3.@@ model JOIN C@@ AR@@ S_@@ D@@ AT@@ A AS T4 ON T3.@@ Ma@@ ke@@ Id = T4.id WHERE T4.@@ year = '@@ 197@@ 0@@ ';
SELECT DISTINCT T1.M@@ ak@@ er FROM C@@ AR@@ _M@@ A@@ K@@ ER@@ S AS T1 JOIN M@@ O@@ DE@@ L@@ _@@ LI@@ ST AS T2 ON T1.@@ Id = T2.M@@ ak@@ er JOIN C@@ AR@@ _N@@ A@@ ME@@ S AS T3 ON T2.@@ model = T3.@@ model JOIN C@@ AR@@ S_@@ D@@ AT@@ A AS T4 ON T3.@@ Ma@@ ke@@ Id = T4.id WHERE T4.@@ year = '@@ 197@@ 0@@ ';
SELECT T2.M@@ ake , T1.Year FROM C@@ AR@@ S_@@ D@@ AT@@ A AS T1 JOIN C@@ AR@@ _N@@ A@@ ME@@ S AS T2 ON T1.@@ Id = T2.M@@ ak@@ e@@ Id WHERE T1.Year = (SELECT min(YEAR) FROM C@@ AR@@ S_@@ D@@ AT@@ A@@ );
SELECT T2.M@@ ake , T1.Year FROM C@@ AR@@ S_@@ D@@ AT@@ A AS T1 JOIN C@@ AR@@ _N@@ A@@ ME@@ S AS T2 ON T1.@@ Id = T2.M@@ ak@@ e@@ Id WHERE T1.Year = (SELECT min(YEAR) FROM C@@ AR@@ S_@@ D@@ AT@@ A@@ );
SELECT DISTINCT T1.@@ model FROM M@@ O@@ DE@@ L@@ _@@ LI@@ ST AS T1 JOIN C@@ AR@@ _N@@ A@@ ME@@ S AS T2 ON T1.@@ model = T2.@@ model JOIN C@@ AR@@ S_@@ D@@ AT@@ A AS T3 ON T2.M@@ ak@@ e@@ Id = T3.id WHERE T3.@@ year > 198@@ 0;
SELECT DISTINCT T1.@@ model FROM M@@ O@@ DE@@ L@@ _@@ LI@@ ST AS T1 JOIN C@@ AR@@ _N@@ A@@ ME@@ S AS T2 ON T1.@@ model = T2.@@ model JOIN C@@ AR@@ S_@@ D@@ AT@@ A AS T3 ON T2.M@@ ak@@ e@@ Id = T3.id WHERE T3.@@ year > 198@@ 0;
SELECT T1.@@ Cont@@ in@@ ent , count(*) FROM CO@@ NT@@ IN@@ EN@@ TS AS T1 JOIN COUNT@@ R@@ I@@ E@@ S AS T2 ON T1.@@ Cont@@ Id = T2.@@ cont@@ in@@ ent JOIN c@@ ar_@@ mak@@ ers AS T3 ON T2.Countr@@ y@@ Id = T3.@@ Country GROUP BY T1.@@ Cont@@ in@@ ent@@ ;
SELECT T1.@@ Cont@@ in@@ ent , count(*) FROM CO@@ NT@@ IN@@ EN@@ TS AS T1 JOIN COUNT@@ R@@ I@@ E@@ S AS T2 ON T1.@@ Cont@@ Id = T2.@@ cont@@ in@@ ent JOIN c@@ ar_@@ mak@@ ers AS T3 ON T2.Countr@@ y@@ Id = T3.@@ Country GROUP BY T1.@@ Cont@@ in@@ ent@@ ;
SELECT T2.Countr@@ y@@ Name FROM C@@ AR@@ _M@@ A@@ K@@ ER@@ S AS T1 JOIN COUNT@@ R@@ I@@ E@@ S AS T2 ON T1.@@ Country = T2.Countr@@ y@@ Id GROUP BY T1.@@ Country ORDER BY Count@@ (*) DESC LIMIT 1;
SELECT T2.Countr@@ y@@ Name FROM C@@ AR@@ _M@@ A@@ K@@ ER@@ S AS T1 JOIN COUNT@@ R@@ I@@ E@@ S AS T2 ON T1.@@ Country = T2.Countr@@ y@@ Id GROUP BY T1.@@ Country ORDER BY Count@@ (*) DESC LIMIT 1;
se@@ le@@ ct count(*) , t2.@@ ful@@ lname from model@@ _@@ list as t1 join c@@ ar_@@ mak@@ ers as t2 on t1.@@ mak@@ er = t2.id g@@ ro@@ up by t2.@@ id;
SELECT Count@@ (*) , T2.F@@ ul@@ l@@ Name , T2.id FROM M@@ O@@ DE@@ L@@ _@@ LI@@ ST AS T1 JOIN C@@ AR@@ _M@@ A@@ K@@ ER@@ S AS T2 ON T1.M@@ ak@@ er = T2.@@ Id GROUP BY T2.@@ id;
SELECT T1.@@ Ac@@ cel@@ er@@ ate FROM C@@ AR@@ S_@@ D@@ AT@@ A AS T1 JOIN C@@ AR@@ _N@@ A@@ ME@@ S AS T2 ON T1.@@ Id = T2.M@@ ak@@ e@@ Id WHERE T2.M@@ ake = '@@ am@@ c h@@ orn@@ et s@@ por@@ ta@@ b@@ out (@@ s@@ w@@ )@@ ';
SELECT T1.@@ Ac@@ cel@@ er@@ ate FROM C@@ AR@@ S_@@ D@@ AT@@ A AS T1 JOIN C@@ AR@@ _N@@ A@@ ME@@ S AS T2 ON T1.@@ Id = T2.M@@ ak@@ e@@ Id WHERE T2.M@@ ake = '@@ am@@ c h@@ orn@@ et s@@ por@@ ta@@ b@@ out (@@ s@@ w@@ )@@ ';
SELECT count(*) FROM C@@ AR@@ _M@@ A@@ K@@ ER@@ S AS T1 JOIN COUNT@@ R@@ I@@ E@@ S AS T2 ON T1.@@ Country = T2.Countr@@ y@@ Id WHERE T2.Countr@@ y@@ Name = '@@ f@@ ranc@@ e@@ ';
SELECT count(*) FROM C@@ AR@@ _M@@ A@@ K@@ ER@@ S AS T1 JOIN COUNT@@ R@@ I@@ E@@ S AS T2 ON T1.@@ Country = T2.Countr@@ y@@ Id WHERE T2.Countr@@ y@@ Name = '@@ f@@ ranc@@ e@@ ';
SELECT count(*) FROM M@@ O@@ DE@@ L@@ _@@ LI@@ ST AS T1 JOIN C@@ AR@@ _M@@ A@@ K@@ ER@@ S AS T2 ON T1.M@@ ak@@ er = T2.@@ Id JOIN COUNT@@ R@@ I@@ E@@ S AS T3 ON T2.Country = T3.@@ Countr@@ y@@ Id WHERE T3.@@ Countr@@ y@@ Name = '@@ us@@ a';
SELECT count(*) FROM M@@ O@@ DE@@ L@@ _@@ LI@@ ST AS T1 JOIN C@@ AR@@ _M@@ A@@ K@@ ER@@ S AS T2 ON T1.M@@ ak@@ er = T2.@@ Id JOIN COUNT@@ R@@ I@@ E@@ S AS T3 ON T2.Country = T3.@@ Countr@@ y@@ Id WHERE T3.@@ Countr@@ y@@ Name = '@@ us@@ a';
SELECT avg(@@ mp@@ g@@ ) FROM C@@ AR@@ S_@@ D@@ AT@@ A WHERE C@@ y@@ lin@@ d@@ ers = 4;
SELECT avg(@@ mp@@ g@@ ) FROM C@@ AR@@ S_@@ D@@ AT@@ A WHERE C@@ y@@ lin@@ d@@ ers = 4;
se@@ le@@ ct min(@@ weight) from c@@ ar@@ s_@@ data where c@@ y@@ lin@@ d@@ ers = 8 and year = 197@@ 4
se@@ le@@ ct min(@@ weight) from c@@ ar@@ s_@@ data where c@@ y@@ lin@@ d@@ ers = 8 and year = 197@@ 4
SELECT Ma@@ k@@ er , Mode@@ l FROM M@@ O@@ DE@@ L@@ _@@ LI@@ ST@@ ;
SELECT Ma@@ k@@ er , Mode@@ l FROM M@@ O@@ DE@@ L@@ _@@ LI@@ ST@@ ;
SELECT T1.Countr@@ y@@ Name , T1.Countr@@ y@@ Id FROM COUNT@@ R@@ I@@ E@@ S AS T1 JOIN C@@ AR@@ _M@@ A@@ K@@ ER@@ S AS T2 ON T1.Countr@@ y@@ Id = T2.Country GROUP BY T1.Countr@@ y@@ Id HAVING count(*) >= 1;
SELECT T1.Countr@@ y@@ Name , T1.Countr@@ y@@ Id FROM COUNT@@ R@@ I@@ E@@ S AS T1 JOIN C@@ AR@@ _M@@ A@@ K@@ ER@@ S AS T2 ON T1.Countr@@ y@@ Id = T2.Country GROUP BY T1.Countr@@ y@@ Id HAVING count(*) >= 1;
SELECT count(*) FROM C@@ AR@@ S_@@ D@@ AT@@ A WHERE hor@@ se@@ po@@ w@@ er > 15@@ 0;
SELECT count(*) FROM C@@ AR@@ S_@@ D@@ AT@@ A WHERE hor@@ se@@ po@@ w@@ er > 15@@ 0;
SELECT avg(@@ W@@ eight@@ ) , YEAR FROM C@@ AR@@ S_@@ D@@ AT@@ A GROUP BY YEAR@@ ;
SELECT avg(@@ W@@ eight@@ ) , YEAR FROM C@@ AR@@ S_@@ D@@ AT@@ A GROUP BY YEAR@@ ;
SELECT T1.Countr@@ y@@ Name FROM COUNT@@ R@@ I@@ E@@ S AS T1 JOIN CO@@ NT@@ IN@@ EN@@ TS AS T2 ON T1.@@ Cont@@ in@@ ent = T2.@@ Cont@@ Id JOIN C@@ AR@@ _M@@ A@@ K@@ ER@@ S AS T3 ON T1.Countr@@ y@@ Id = T3.@@ Country WHERE T2.@@ Cont@@ in@@ ent = '@@ e@@ uro@@ p@@ e' GROUP BY T1.Countr@@ y@@ Name HAVING count(*) >= 3;
SELECT T1.Countr@@ y@@ Name FROM COUNT@@ R@@ I@@ E@@ S AS T1 JOIN CO@@ NT@@ IN@@ EN@@ TS AS T2 ON T1.@@ Cont@@ in@@ ent = T2.@@ Cont@@ Id JOIN C@@ AR@@ _M@@ A@@ K@@ ER@@ S AS T3 ON T1.Countr@@ y@@ Id = T3.@@ Country WHERE T2.@@ Cont@@ in@@ ent = '@@ e@@ uro@@ p@@ e' GROUP BY T1.Countr@@ y@@ Name HAVING count(*) >= 3;
SELECT T2.@@ hor@@ se@@ po@@ w@@ er , T1.M@@ ake FROM C@@ AR@@ _N@@ A@@ ME@@ S AS T1 JOIN C@@ AR@@ S_@@ D@@ AT@@ A AS T2 ON T1.M@@ ak@@ e@@ Id = T2.@@ Id WHERE T2.@@ c@@ y@@ lin@@ d@@ ers = 3 ORDER BY T2.@@ hor@@ se@@ po@@ w@@ er DESC LIMIT 1;
SELECT T2.@@ hor@@ se@@ po@@ w@@ er , T1.M@@ ake FROM C@@ AR@@ _N@@ A@@ ME@@ S AS T1 JOIN C@@ AR@@ S_@@ D@@ AT@@ A AS T2 ON T1.M@@ ak@@ e@@ Id = T2.@@ Id WHERE T2.@@ c@@ y@@ lin@@ d@@ ers = 3 ORDER BY T2.@@ hor@@ se@@ po@@ w@@ er DESC LIMIT 1;
SELECT T1.@@ Mode@@ l FROM C@@ AR@@ _N@@ A@@ ME@@ S AS T1 JOIN C@@ AR@@ S_@@ D@@ AT@@ A AS T2 ON T1.M@@ ak@@ e@@ Id = T2.@@ Id ORDER BY T2.@@ mp@@ g DESC LIMIT 1;
se@@ le@@ ct t1.@@ model from c@@ ar_@@ names as t1 join c@@ ar@@ s_@@ data as t2 on t1.@@ mak@@ eid = t2.id order by t2.@@ mp@@ g desc li@@ mi@@ t 1;
SELECT avg(@@ hor@@ se@@ po@@ w@@ er) FROM C@@ AR@@ S_@@ D@@ AT@@ A WHERE YEAR < 198@@ 0;
se@@ le@@ ct avg(@@ hor@@ se@@ po@@ w@@ er) from c@@ ar@@ s_@@ data where year < 198@@ 0;
SELECT avg(T2.@@ e@@ di@@ sp@@ l@@ ) FROM C@@ AR@@ _N@@ A@@ ME@@ S AS T1 JOIN C@@ AR@@ S_@@ D@@ AT@@ A AS T2 ON T1.M@@ ak@@ e@@ Id = T2.@@ Id WHERE T1.@@ Mode@@ l = '@@ vol@@ v@@ o@@ ';
SELECT avg(T2.@@ e@@ di@@ sp@@ l@@ ) FROM C@@ AR@@ _N@@ A@@ ME@@ S AS T1 JOIN C@@ AR@@ S_@@ D@@ AT@@ A AS T2 ON T1.M@@ ak@@ e@@ Id = T2.@@ Id WHERE T1.@@ Mode@@ l = '@@ vol@@ v@@ o@@ ';
SELECT max(@@ Ac@@ c@@ elerat@@ e) , C@@ y@@ lin@@ d@@ ers FROM C@@ AR@@ S_@@ D@@ AT@@ A GROUP BY C@@ y@@ lin@@ d@@ ers@@ ;
SELECT max(@@ Ac@@ c@@ elerat@@ e) , C@@ y@@ lin@@ d@@ ers FROM C@@ AR@@ S_@@ D@@ AT@@ A GROUP BY C@@ y@@ lin@@ d@@ ers@@ ;
SELECT Mode@@ l FROM C@@ AR@@ _N@@ A@@ ME@@ S GROUP BY Mode@@ l ORDER BY count(*) DESC LIMIT 1;
SELECT Mode@@ l FROM C@@ AR@@ _N@@ A@@ ME@@ S GROUP BY Mode@@ l ORDER BY count(*) DESC LIMIT 1;
SELECT count(*) FROM C@@ AR@@ S_@@ D@@ AT@@ A WHERE C@@ y@@ lin@@ d@@ ers > 4;
SELECT count(*) FROM C@@ AR@@ S_@@ D@@ AT@@ A WHERE C@@ y@@ lin@@ d@@ ers > 4;
SELECT count(*) FROM C@@ AR@@ S_@@ D@@ AT@@ A WHERE YEAR = 198@@ 0;
SELECT count(*) FROM C@@ AR@@ S_@@ D@@ AT@@ A WHERE YEAR = 198@@ 0;
SELECT count(*) FROM C@@ AR@@ _M@@ A@@ K@@ ER@@ S AS T1 JOIN M@@ O@@ DE@@ L@@ _@@ LI@@ ST AS T2 ON T1.@@ Id = T2.M@@ ak@@ er WHERE T1.F@@ ul@@ l@@ Name = 'American M@@ ot@@ or Compan@@ y@@ ';
SELECT count(*) FROM C@@ AR@@ _M@@ A@@ K@@ ER@@ S AS T1 JOIN M@@ O@@ DE@@ L@@ _@@ LI@@ ST AS T2 ON T1.@@ Id = T2.M@@ ak@@ er WHERE T1.F@@ ul@@ l@@ Name = 'American M@@ ot@@ or Compan@@ y@@ ';
SELECT T1.F@@ ul@@ l@@ Name , T1.@@ Id FROM C@@ AR@@ _M@@ A@@ K@@ ER@@ S AS T1 JOIN M@@ O@@ DE@@ L@@ _@@ LI@@ ST AS T2 ON T1.@@ Id = T2.M@@ ak@@ er GROUP BY T1.@@ Id HAVING count(*) > 3;
SELECT T1.F@@ ul@@ l@@ Name , T1.@@ Id FROM C@@ AR@@ _M@@ A@@ K@@ ER@@ S AS T1 JOIN M@@ O@@ DE@@ L@@ _@@ LI@@ ST AS T2 ON T1.@@ Id = T2.M@@ ak@@ er GROUP BY T1.@@ Id HAVING count(*) > 3;
SELECT DISTINCT T2.@@ Mode@@ l FROM C@@ AR@@ _N@@ A@@ ME@@ S AS T1 JOIN M@@ O@@ DE@@ L@@ _@@ LI@@ ST AS T2 ON T1.@@ Mode@@ l = T2.@@ Mode@@ l JOIN C@@ AR@@ _M@@ A@@ K@@ ER@@ S AS T3 ON T2.M@@ ak@@ er = T3.@@ Id JOIN C@@ AR@@ S_@@ D@@ AT@@ A AS T4 ON T1.M@@ ak@@ e@@ Id = T4.@@ Id WHERE T3.F@@ ul@@ l@@ Name = 'G@@ en@@ er@@ al M@@ ot@@ or@@ s' OR T4.@@ weight > 3@@ 500@@ ;
SELECT DISTINCT T2.@@ Mode@@ l FROM C@@ AR@@ _N@@ A@@ ME@@ S AS T1 JOIN M@@ O@@ DE@@ L@@ _@@ LI@@ ST AS T2 ON T1.@@ Mode@@ l = T2.@@ Mode@@ l JOIN C@@ AR@@ _M@@ A@@ K@@ ER@@ S AS T3 ON T2.M@@ ak@@ er = T3.@@ Id JOIN C@@ AR@@ S_@@ D@@ AT@@ A AS T4 ON T1.M@@ ak@@ e@@ Id = T4.@@ Id WHERE T3.F@@ ul@@ l@@ Name = 'G@@ en@@ er@@ al M@@ ot@@ or@@ s' OR T4.@@ weight > 3@@ 500@@ ;
se@@ le@@ ct distinct year from c@@ ar@@ s_@@ data where weight between 3000 and 4@@ 00@@ 0;
se@@ le@@ ct distinct year from c@@ ar@@ s_@@ data where weight between 3000 and 4@@ 00@@ 0;
SELECT T1.@@ hor@@ se@@ po@@ w@@ er FROM C@@ AR@@ S_@@ D@@ AT@@ A AS T1 ORDER BY T1.@@ acc@@ el@@ er@@ ate DESC LIMIT 1;
SELECT T1.@@ hor@@ se@@ po@@ w@@ er FROM C@@ AR@@ S_@@ D@@ AT@@ A AS T1 ORDER BY T1.@@ acc@@ el@@ er@@ ate DESC LIMIT 1;
SELECT T1.@@ c@@ y@@ lin@@ d@@ ers FROM C@@ AR@@ S_@@ D@@ AT@@ A AS T1 JOIN C@@ AR@@ _N@@ A@@ ME@@ S AS T2 ON T1.@@ Id = T2.M@@ ak@@ e@@ Id WHERE T2.@@ Mode@@ l = '@@ vol@@ v@@ o' ORDER BY T1.@@ acc@@ el@@ er@@ ate ASC LIMIT 1;
SELECT T1.@@ c@@ y@@ lin@@ d@@ ers FROM C@@ AR@@ S_@@ D@@ AT@@ A AS T1 JOIN C@@ AR@@ _N@@ A@@ ME@@ S AS T2 ON T1.@@ Id = T2.M@@ ak@@ e@@ Id WHERE T2.@@ Mode@@ l = '@@ vol@@ v@@ o' ORDER BY T1.@@ acc@@ el@@ er@@ ate ASC LIMIT 1;
SELECT COUNT(*) FROM C@@ AR@@ S_@@ D@@ AT@@ A WHERE Ac@@ cel@@ er@@ ate > ( SELECT Ac@@ cel@@ er@@ ate FROM C@@ AR@@ S_@@ D@@ AT@@ A ORDER BY Hor@@ se@@ po@@ w@@ er DESC LIMIT 1 );
SELECT COUNT(*) FROM C@@ AR@@ S_@@ D@@ AT@@ A WHERE Ac@@ cel@@ er@@ ate > ( SELECT Ac@@ cel@@ er@@ ate FROM C@@ AR@@ S_@@ D@@ AT@@ A ORDER BY Hor@@ se@@ po@@ w@@ er DESC LIMIT 1 );
se@@ le@@ ct count(*) from countries as t1 join c@@ ar_@@ mak@@ ers as t2 on t1.@@ countr@@ y@@ id = t2.@@ country g@@ ro@@ up by t1.@@ countr@@ y@@ id having count(*) > 2
se@@ le@@ ct count(*) from countries as t1 join c@@ ar_@@ mak@@ ers as t2 on t1.@@ countr@@ y@@ id = t2.@@ country g@@ ro@@ up by t1.@@ countr@@ y@@ id having count(*) > 2
SELECT COUNT(*) FROM C@@ AR@@ S_@@ D@@ AT@@ A WHERE C@@ y@@ lin@@ d@@ ers > 6@@ ;
SELECT COUNT(*) FROM C@@ AR@@ S_@@ D@@ AT@@ A WHERE C@@ y@@ lin@@ d@@ ers > 6@@ ;
SELECT T1.@@ Mode@@ l FROM C@@ AR@@ _N@@ A@@ ME@@ S AS T1 JOIN C@@ AR@@ S_@@ D@@ AT@@ A AS T2 ON T1.M@@ ak@@ e@@ Id = T2.@@ Id WHERE T2.C@@ y@@ lin@@ d@@ ers = 4 ORDER BY T2.@@ hor@@ se@@ po@@ w@@ er DESC LIMIT 1;
SELECT T1.@@ Mode@@ l FROM C@@ AR@@ _N@@ A@@ ME@@ S AS T1 JOIN C@@ AR@@ S_@@ D@@ AT@@ A AS T2 ON T1.M@@ ak@@ e@@ Id = T2.@@ Id WHERE T2.C@@ y@@ lin@@ d@@ ers = 4 ORDER BY T2.@@ hor@@ se@@ po@@ w@@ er DESC LIMIT 1;
SELECT T2.M@@ ak@@ e@@ Id , T2.M@@ ake FROM C@@ AR@@ S_@@ D@@ AT@@ A AS T1 JOIN C@@ AR@@ _N@@ A@@ ME@@ S AS T2 ON T1.@@ Id = T2.M@@ ak@@ e@@ Id WHERE T1.@@ Hor@@ se@@ po@@ w@@ er > (SELECT min(@@ Hor@@ se@@ po@@ w@@ er) FROM C@@ AR@@ S_@@ D@@ AT@@ A@@ ) AND T1.C@@ y@@ lin@@ d@@ ers <= 3;
se@@ le@@ ct t2.@@ mak@@ eid , t2.@@ make from c@@ ar@@ s_@@ data as t1 join c@@ ar_@@ names as t2 on t1.id = t2.@@ mak@@ eid where t1.@@ hor@@ se@@ po@@ w@@ er > (@@ se@@ le@@ ct min(@@ hor@@ se@@ po@@ w@@ er) from c@@ ar@@ s_@@ data@@ ) and t1.@@ c@@ y@@ lin@@ d@@ ers < 4;
se@@ le@@ ct max(@@ mp@@ g@@ ) from c@@ ar@@ s_@@ data where c@@ y@@ lin@@ d@@ ers = 8 or year < 1980
se@@ le@@ ct max(@@ mp@@ g@@ ) from c@@ ar@@ s_@@ data where c@@ y@@ lin@@ d@@ ers = 8 or year < 1980
SELECT DISTINCT T1.@@ model FROM M@@ O@@ DE@@ L@@ _@@ LI@@ ST AS T1 JOIN C@@ AR@@ _N@@ A@@ ME@@ S AS T2 ON T1.@@ Mode@@ l = T2.@@ Mode@@ l JOIN C@@ AR@@ S_@@ D@@ AT@@ A AS T3 ON T2.M@@ ak@@ e@@ Id = T3.@@ Id JOIN C@@ AR@@ _M@@ A@@ K@@ ER@@ S AS T4 ON T1.M@@ ak@@ er = T4.@@ Id WHERE T3.@@ weight < 3@@ 500 AND T4.@@ F@@ ul@@ l@@ Name != 'F@@ or@@ d M@@ ot@@ or Compan@@ y@@ ';
SELECT DISTINCT T1.@@ model FROM M@@ O@@ DE@@ L@@ _@@ LI@@ ST AS T1 JOIN C@@ AR@@ _N@@ A@@ ME@@ S AS T2 ON T1.@@ Mode@@ l = T2.@@ Mode@@ l JOIN C@@ AR@@ S_@@ D@@ AT@@ A AS T3 ON T2.M@@ ak@@ e@@ Id = T3.@@ Id JOIN C@@ AR@@ _M@@ A@@ K@@ ER@@ S AS T4 ON T1.M@@ ak@@ er = T4.@@ Id WHERE T3.@@ weight < 3@@ 500 AND T4.@@ F@@ ul@@ l@@ Name != 'F@@ or@@ d M@@ ot@@ or Compan@@ y@@ ';
SELECT Countr@@ y@@ Name FROM countries EXCEPT SELECT T1.Countr@@ y@@ Name FROM countries AS T1 JOIN C@@ AR@@ _M@@ A@@ K@@ ER@@ S AS T2 ON T1.@@ countr@@ y@@ Id = T2.Countr@@ y@@ ;
SELECT Countr@@ y@@ Name FROM countries EXCEPT SELECT T1.Countr@@ y@@ Name FROM countries AS T1 JOIN C@@ AR@@ _M@@ A@@ K@@ ER@@ S AS T2 ON T1.@@ countr@@ y@@ Id = T2.Countr@@ y@@ ;
se@@ le@@ ct t1.id , t1.@@ mak@@ er from c@@ ar_@@ mak@@ ers as t1 join model@@ _@@ list as t2 on t1.id = t2.@@ mak@@ er g@@ ro@@ up by t1.id having count(*) >= 2 inter@@ se@@ ct se@@ le@@ ct t1.id , t1.@@ mak@@ er from c@@ ar_@@ mak@@ ers as t1 join model@@ _@@ list as t2 on t1.id = t2.@@ mak@@ er join c@@ ar_@@ names as t3 on t2.@@ model = t3.@@ model g@@ ro@@ up by t1.id having count(*) > 3;
SELECT T1.@@ Id , T1.M@@ ak@@ er FROM C@@ AR@@ _M@@ A@@ K@@ ER@@ S AS T1 JOIN M@@ O@@ DE@@ L@@ _@@ LI@@ ST AS T2 ON T1.@@ Id = T2.M@@ ak@@ er GROUP BY T1.@@ Id HAVING count(*) >= 2 INTERSECT SELECT T1.@@ Id , T1.M@@ ak@@ er FROM C@@ AR@@ _M@@ A@@ K@@ ER@@ S AS T1 JOIN M@@ O@@ DE@@ L@@ _@@ LI@@ ST AS T2 ON T1.@@ Id = T2.M@@ ak@@ er JOIN C@@ AR@@ _N@@ A@@ ME@@ S AS T3 ON T2.@@ model = T3.@@ model GROUP BY T1.@@ Id HAVING count(*) > 3;
SELECT T1.@@ countr@@ y@@ Id , T1.Countr@@ y@@ Name FROM Count@@ ries AS T1 JOIN C@@ AR@@ _M@@ A@@ K@@ ER@@ S AS T2 ON T1.Countr@@ y@@ Id = T2.Country GROUP BY T1.@@ countr@@ y@@ Id HAVING count(*) > 3 UNION SELECT T1.@@ countr@@ y@@ Id , T1.Countr@@ y@@ Name FROM Count@@ ries AS T1 JOIN C@@ AR@@ _M@@ A@@ K@@ ER@@ S AS T2 ON T1.Countr@@ y@@ Id = T2.Country JOIN M@@ O@@ DE@@ L@@ _@@ LI@@ ST AS T3 ON T2.@@ Id = T3.@@ Ma@@ k@@ er WHERE T3.@@ Mode@@ l = '@@ fi@@ at@@ ';
se@@ le@@ ct t1.@@ countr@@ y@@ id , t1.@@ countr@@ y@@ name from countries as t1 join c@@ ar_@@ mak@@ ers as t2 on t1.@@ countr@@ y@@ id = t2.@@ country g@@ ro@@ up by t1.@@ countr@@ y@@ id having count(*) > 3 un@@ ion se@@ le@@ ct t1.@@ countr@@ y@@ id , t1.@@ countr@@ y@@ name from countries as t1 join c@@ ar_@@ mak@@ ers as t2 on t1.@@ countr@@ y@@ id = t2.@@ country join model@@ _@@ list as t3 on t2.id = t3.@@ mak@@ er where t3.@@ model = '@@ fi@@ at@@ ';
SELECT Country FROM A@@ I@@ R@@ L@@ IN@@ E@@ S WHERE Air@@ line = "J@@ et@@ B@@ l@@ ue Air@@ way@@ s"
SELECT Country FROM A@@ I@@ R@@ L@@ IN@@ E@@ S WHERE Air@@ line = "J@@ et@@ B@@ l@@ ue Air@@ way@@ s"
SELECT A@@ b@@ b@@ re@@ vi@@ ation FROM A@@ I@@ R@@ L@@ IN@@ E@@ S WHERE Air@@ line = "J@@ et@@ B@@ l@@ ue Air@@ way@@ s"
SELECT A@@ b@@ b@@ re@@ vi@@ ation FROM A@@ I@@ R@@ L@@ IN@@ E@@ S WHERE Air@@ line = "J@@ et@@ B@@ l@@ ue Air@@ way@@ s"
SELECT Air@@ line , A@@ b@@ b@@ re@@ vi@@ ation FROM A@@ I@@ R@@ L@@ IN@@ E@@ S WHERE Country = "USA"
SELECT Air@@ line , A@@ b@@ b@@ re@@ vi@@ ation FROM A@@ I@@ R@@ L@@ IN@@ E@@ S WHERE Country = "USA"
SELECT Airport@@ Code , Airport@@ Name FROM A@@ I@@ RPOR@@ TS WHERE city = "An@@ th@@ on@@ y"
SELECT Airport@@ Code , Airport@@ Name FROM A@@ I@@ RPOR@@ TS WHERE city = "An@@ th@@ on@@ y"
SELECT count(*) FROM A@@ I@@ R@@ L@@ IN@@ E@@ S
SELECT count(*) FROM A@@ I@@ R@@ L@@ IN@@ E@@ S
SELECT count(*) FROM A@@ I@@ RPOR@@ TS
SELECT count(*) FROM A@@ I@@ RPOR@@ TS
SELECT count(*) FROM F@@ LI@@ G@@ H@@ TS
SELECT count(*) FROM F@@ LI@@ G@@ H@@ TS
SELECT Air@@ line FROM A@@ I@@ R@@ L@@ IN@@ E@@ S WHERE A@@ b@@ b@@ re@@ vi@@ ation = "U@@ AL@@ "
SELECT Air@@ line FROM A@@ I@@ R@@ L@@ IN@@ E@@ S WHERE A@@ b@@ b@@ re@@ vi@@ ation = "U@@ AL@@ "
SELECT count(*) FROM A@@ I@@ R@@ L@@ IN@@ E@@ S WHERE Country = "USA"
SELECT count(*) FROM A@@ I@@ R@@ L@@ IN@@ E@@ S WHERE Country = "USA"
SELECT City , Country FROM A@@ I@@ RPOR@@ TS WHERE Airport@@ Name = "@@ Al@@ ton@@ "
SELECT City , Country FROM A@@ I@@ RPOR@@ TS WHERE Airport@@ Name = "@@ Al@@ ton@@ "
SELECT Airport@@ Name FROM A@@ I@@ RPOR@@ TS WHERE Airport@@ Code = "AK@@ O@@ "
SELECT Airport@@ Name FROM A@@ I@@ RPOR@@ TS WHERE Airport@@ Code = "AK@@ O@@ "
SELECT Airport@@ Name FROM A@@ I@@ RPOR@@ TS WHERE City = "A@@ ber@@ de@@ en"
SELECT Airport@@ Name FROM A@@ I@@ RPOR@@ TS WHERE City = "A@@ ber@@ de@@ en"
SELECT count(*) FROM F@@ LI@@ G@@ H@@ TS WHERE S@@ our@@ c@@ e@@ Air@@ port = "A@@ P@@ G@@ "
SELECT count(*) FROM F@@ LI@@ G@@ H@@ TS WHERE S@@ our@@ c@@ e@@ Air@@ port = "A@@ P@@ G@@ "
SELECT count(*) FROM F@@ LI@@ G@@ H@@ TS WHERE Dest@@ Air@@ port = "A@@ TO"
SELECT count(*) FROM F@@ LI@@ G@@ H@@ TS WHERE Dest@@ Air@@ port = "A@@ TO"
SELECT count(*) FROM F@@ LI@@ G@@ H@@ TS AS T1 JOIN A@@ I@@ RPOR@@ TS AS T2 ON T1.S@@ our@@ c@@ e@@ Air@@ port = T2.@@ Airport@@ Code WHERE T2.C@@ ity = "A@@ ber@@ de@@ en"
SELECT count(*) FROM F@@ LI@@ G@@ H@@ TS AS T1 JOIN A@@ I@@ RPOR@@ TS AS T2 ON T1.S@@ our@@ c@@ e@@ Air@@ port = T2.@@ Airport@@ Code WHERE T2.C@@ ity = "A@@ ber@@ de@@ en"
SELECT count(*) FROM F@@ LI@@ G@@ H@@ TS AS T1 JOIN A@@ I@@ RPOR@@ TS AS T2 ON T1.D@@ est@@ Air@@ port = T2.@@ Airport@@ Code WHERE T2.C@@ ity = "A@@ ber@@ de@@ en"
SELECT count(*) FROM F@@ LI@@ G@@ H@@ TS AS T1 JOIN A@@ I@@ RPOR@@ TS AS T2 ON T1.D@@ est@@ Air@@ port = T2.@@ Airport@@ Code WHERE T2.C@@ ity = "A@@ ber@@ de@@ en"
SELECT count(*) FROM F@@ LI@@ G@@ H@@ TS AS T1 JOIN A@@ I@@ RPOR@@ TS AS T2 ON T1.D@@ est@@ Air@@ port = T2.@@ Airport@@ Code JOIN A@@ I@@ RPOR@@ TS AS T3 ON T1.S@@ our@@ c@@ e@@ Air@@ port = T3.@@ Airport@@ Code WHERE T2.C@@ ity = "Ashley" AND T3.@@ City = "A@@ ber@@ de@@ en"
SELECT count(*) FROM F@@ LI@@ G@@ H@@ TS AS T1 JOIN A@@ I@@ RPOR@@ TS AS T2 ON T1.D@@ est@@ Air@@ port = T2.@@ Airport@@ Code JOIN A@@ I@@ RPOR@@ TS AS T3 ON T1.S@@ our@@ c@@ e@@ Air@@ port = T3.@@ Airport@@ Code WHERE T2.C@@ ity = "Ashley" AND T3.@@ City = "A@@ ber@@ de@@ en"
SELECT count(*) FROM F@@ LI@@ G@@ H@@ TS AS T1 JOIN A@@ I@@ R@@ L@@ IN@@ E@@ S AS T2 ON T1.@@ Air@@ line = T2.uid WHERE T2.@@ Air@@ line = "J@@ et@@ B@@ l@@ ue Air@@ way@@ s"
SELECT count(*) FROM F@@ LI@@ G@@ H@@ TS AS T1 JOIN A@@ I@@ R@@ L@@ IN@@ E@@ S AS T2 ON T1.@@ Air@@ line = T2.uid WHERE T2.@@ Air@@ line = "J@@ et@@ B@@ l@@ ue Air@@ way@@ s"
SELECT count(*) FROM A@@ I@@ R@@ L@@ IN@@ E@@ S AS T1 JOIN F@@ LI@@ G@@ H@@ TS AS T2 ON T2.@@ Air@@ line = T1.uid WHERE T1.@@ Air@@ line = "United Airlin@@ es" AND T2.D@@ est@@ Air@@ port = "A@@ S@@ Y"
SELECT count(*) FROM A@@ I@@ R@@ L@@ IN@@ E@@ S AS T1 JOIN F@@ LI@@ G@@ H@@ TS AS T2 ON T2.@@ Air@@ line = T1.uid WHERE T1.@@ Air@@ line = "United Airlin@@ es" AND T2.D@@ est@@ Air@@ port = "A@@ S@@ Y"
SELECT count(*) FROM A@@ I@@ R@@ L@@ IN@@ E@@ S AS T1 JOIN F@@ LI@@ G@@ H@@ TS AS T2 ON T2.@@ Air@@ line = T1.uid WHERE T1.@@ Air@@ line = "United Airlin@@ es" AND T2.S@@ our@@ c@@ e@@ Air@@ port = "A@@ H@@ D@@ "
SELECT count(*) FROM A@@ I@@ R@@ L@@ IN@@ E@@ S AS T1 JOIN F@@ LI@@ G@@ H@@ TS AS T2 ON T2.@@ Air@@ line = T1.uid WHERE T1.@@ Air@@ line = "United Airlin@@ es" AND T2.S@@ our@@ c@@ e@@ Air@@ port = "A@@ H@@ D@@ "
SELECT count(*) FROM F@@ LI@@ G@@ H@@ TS AS T1 JOIN A@@ I@@ RPOR@@ TS AS T2 ON T1.D@@ est@@ Air@@ port = T2.@@ Airport@@ Code JOIN A@@ I@@ R@@ L@@ IN@@ E@@ S AS T3 ON T3.@@ uid = T1.@@ Air@@ line WHERE T2.C@@ ity = "A@@ ber@@ de@@ en" AND T3.@@ Air@@ line = "United Airlin@@ es"
SELECT count(*) FROM F@@ LI@@ G@@ H@@ TS AS T1 JOIN A@@ I@@ RPOR@@ TS AS T2 ON T1.D@@ est@@ Air@@ port = T2.@@ Airport@@ Code JOIN A@@ I@@ R@@ L@@ IN@@ E@@ S AS T3 ON T3.@@ uid = T1.@@ Air@@ line WHERE T2.C@@ ity = "A@@ ber@@ de@@ en" AND T3.@@ Air@@ line = "United Airlin@@ es"
SELECT T1.C@@ ity FROM A@@ I@@ RPOR@@ TS AS T1 JOIN F@@ LI@@ G@@ H@@ TS AS T2 ON T1.@@ Airport@@ Code = T2.D@@ est@@ Air@@ port GROUP BY T1.C@@ ity ORDER BY count(*) DESC LIMIT 1
SELECT T1.C@@ ity FROM A@@ I@@ RPOR@@ TS AS T1 JOIN F@@ LI@@ G@@ H@@ TS AS T2 ON T1.@@ Airport@@ Code = T2.D@@ est@@ Air@@ port GROUP BY T1.C@@ ity ORDER BY count(*) DESC LIMIT 1
SELECT T1.C@@ ity FROM A@@ I@@ RPOR@@ TS AS T1 JOIN F@@ LI@@ G@@ H@@ TS AS T2 ON T1.@@ Airport@@ Code = T2.S@@ our@@ c@@ e@@ Air@@ port GROUP BY T1.C@@ ity ORDER BY count(*) DESC LIMIT 1
SELECT T1.C@@ ity FROM A@@ I@@ RPOR@@ TS AS T1 JOIN F@@ LI@@ G@@ H@@ TS AS T2 ON T1.@@ Airport@@ Code = T2.S@@ our@@ c@@ e@@ Air@@ port GROUP BY T1.C@@ ity ORDER BY count(*) DESC LIMIT 1
SELECT T1.@@ Airport@@ Code FROM A@@ I@@ RPOR@@ TS AS T1 JOIN F@@ LI@@ G@@ H@@ TS AS T2 ON T1.@@ Airport@@ Code = T2.D@@ est@@ Air@@ port OR T1.@@ Airport@@ Code = T2.S@@ our@@ c@@ e@@ Air@@ port GROUP BY T1.@@ Airport@@ Code ORDER BY count(*) DESC LIMIT 1
SELECT T1.@@ Airport@@ Code FROM A@@ I@@ RPOR@@ TS AS T1 JOIN F@@ LI@@ G@@ H@@ TS AS T2 ON T1.@@ Airport@@ Code = T2.D@@ est@@ Air@@ port OR T1.@@ Airport@@ Code = T2.S@@ our@@ c@@ e@@ Air@@ port GROUP BY T1.@@ Airport@@ Code ORDER BY count(*) DESC LIMIT 1
SELECT T1.@@ Airport@@ Code FROM A@@ I@@ RPOR@@ TS AS T1 JOIN F@@ LI@@ G@@ H@@ TS AS T2 ON T1.@@ Airport@@ Code = T2.D@@ est@@ Air@@ port OR T1.@@ Airport@@ Code = T2.S@@ our@@ c@@ e@@ Air@@ port GROUP BY T1.@@ Airport@@ Code ORDER BY count(*) LIMIT 1
SELECT T1.@@ Airport@@ Code FROM A@@ I@@ RPOR@@ TS AS T1 JOIN F@@ LI@@ G@@ H@@ TS AS T2 ON T1.@@ Airport@@ Code = T2.D@@ est@@ Air@@ port OR T1.@@ Airport@@ Code = T2.S@@ our@@ c@@ e@@ Air@@ port GROUP BY T1.@@ Airport@@ Code ORDER BY count(*) LIMIT 1
SELECT T1.@@ Air@@ line FROM A@@ I@@ R@@ L@@ IN@@ E@@ S AS T1 JOIN F@@ LI@@ G@@ H@@ TS AS T2 ON T1.uid = T2.@@ Air@@ line GROUP BY T1.@@ Air@@ line ORDER BY count(*) DESC LIMIT 1
SELECT T1.@@ Air@@ line FROM A@@ I@@ R@@ L@@ IN@@ E@@ S AS T1 JOIN F@@ LI@@ G@@ H@@ TS AS T2 ON T1.uid = T2.@@ Air@@ line GROUP BY T1.@@ Air@@ line ORDER BY count(*) DESC LIMIT 1
SELECT T1.A@@ b@@ b@@ re@@ vi@@ ation , T1.@@ Country FROM A@@ I@@ R@@ L@@ IN@@ E@@ S AS T1 JOIN F@@ LI@@ G@@ H@@ TS AS T2 ON T1.uid = T2.@@ Air@@ line GROUP BY T1.@@ Air@@ line ORDER BY count(*) LIMIT 1
SELECT T1.A@@ b@@ b@@ re@@ vi@@ ation , T1.@@ Country FROM A@@ I@@ R@@ L@@ IN@@ E@@ S AS T1 JOIN F@@ LI@@ G@@ H@@ TS AS T2 ON T1.uid = T2.@@ Air@@ line GROUP BY T1.@@ Air@@ line ORDER BY count(*) LIMIT 1
SELECT T1.@@ Air@@ line FROM A@@ I@@ R@@ L@@ IN@@ E@@ S AS T1 JOIN F@@ LI@@ G@@ H@@ TS AS T2 ON T1.uid = T2.@@ Air@@ line WHERE T2.S@@ our@@ c@@ e@@ Air@@ port = "A@@ H@@ D@@ "
SELECT T1.@@ Air@@ line FROM A@@ I@@ R@@ L@@ IN@@ E@@ S AS T1 JOIN F@@ LI@@ G@@ H@@ TS AS T2 ON T1.uid = T2.@@ Air@@ line WHERE T2.S@@ our@@ c@@ e@@ Air@@ port = "A@@ H@@ D@@ "
SELECT T1.@@ Air@@ line FROM A@@ I@@ R@@ L@@ IN@@ E@@ S AS T1 JOIN F@@ LI@@ G@@ H@@ TS AS T2 ON T1.uid = T2.@@ Air@@ line WHERE T2.D@@ est@@ Air@@ port = "A@@ H@@ D@@ "
SELECT T1.@@ Air@@ line FROM A@@ I@@ R@@ L@@ IN@@ E@@ S AS T1 JOIN F@@ LI@@ G@@ H@@ TS AS T2 ON T1.uid = T2.@@ Air@@ line WHERE T2.D@@ est@@ Air@@ port = "A@@ H@@ D@@ "
SELECT T1.@@ Air@@ line FROM A@@ I@@ R@@ L@@ IN@@ E@@ S AS T1 JOIN F@@ LI@@ G@@ H@@ TS AS T2 ON T1.uid = T2.@@ Air@@ line WHERE T2.S@@ our@@ c@@ e@@ Air@@ port = "A@@ P@@ G@@ " INTERSECT SELECT T1.@@ Air@@ line FROM A@@ I@@ R@@ L@@ IN@@ E@@ S AS T1 JOIN F@@ LI@@ G@@ H@@ TS AS T2 ON T1.uid = T2.@@ Air@@ line WHERE T2.S@@ our@@ c@@ e@@ Air@@ port = "C@@ V@@ O@@ "
SELECT T1.@@ Air@@ line FROM A@@ I@@ R@@ L@@ IN@@ E@@ S AS T1 JOIN F@@ LI@@ G@@ H@@ TS AS T2 ON T1.uid = T2.@@ Air@@ line WHERE T2.S@@ our@@ c@@ e@@ Air@@ port = "A@@ P@@ G@@ " INTERSECT SELECT T1.@@ Air@@ line FROM A@@ I@@ R@@ L@@ IN@@ E@@ S AS T1 JOIN F@@ LI@@ G@@ H@@ TS AS T2 ON T1.uid = T2.@@ Air@@ line WHERE T2.S@@ our@@ c@@ e@@ Air@@ port = "C@@ V@@ O@@ "
SELECT T1.@@ Air@@ line FROM A@@ I@@ R@@ L@@ IN@@ E@@ S AS T1 JOIN F@@ LI@@ G@@ H@@ TS AS T2 ON T1.uid = T2.@@ Air@@ line WHERE T2.S@@ our@@ c@@ e@@ Air@@ port = "C@@ V@@ O@@ " EXCEPT SELECT T1.@@ Air@@ line FROM A@@ I@@ R@@ L@@ IN@@ E@@ S AS T1 JOIN F@@ LI@@ G@@ H@@ TS AS T2 ON T1.uid = T2.@@ Air@@ line WHERE T2.S@@ our@@ c@@ e@@ Air@@ port = "A@@ P@@ G@@ "
SELECT T1.@@ Air@@ line FROM A@@ I@@ R@@ L@@ IN@@ E@@ S AS T1 JOIN F@@ LI@@ G@@ H@@ TS AS T2 ON T1.uid = T2.@@ Air@@ line WHERE T2.S@@ our@@ c@@ e@@ Air@@ port = "C@@ V@@ O@@ " EXCEPT SELECT T1.@@ Air@@ line FROM A@@ I@@ R@@ L@@ IN@@ E@@ S AS T1 JOIN F@@ LI@@ G@@ H@@ TS AS T2 ON T1.uid = T2.@@ Air@@ line WHERE T2.S@@ our@@ c@@ e@@ Air@@ port = "A@@ P@@ G@@ "
SELECT T1.@@ Air@@ line FROM A@@ I@@ R@@ L@@ IN@@ E@@ S AS T1 JOIN F@@ LI@@ G@@ H@@ TS AS T2 ON T1.uid = T2.@@ Air@@ line GROUP BY T1.@@ Air@@ line HAVING count(*) > 10
SELECT T1.@@ Air@@ line FROM A@@ I@@ R@@ L@@ IN@@ E@@ S AS T1 JOIN F@@ LI@@ G@@ H@@ TS AS T2 ON T1.uid = T2.@@ Air@@ line GROUP BY T1.@@ Air@@ line HAVING count(*) > 10
SELECT T1.@@ Air@@ line FROM A@@ I@@ R@@ L@@ IN@@ E@@ S AS T1 JOIN F@@ LI@@ G@@ H@@ TS AS T2 ON T1.uid = T2.@@ Air@@ line GROUP BY T1.@@ Air@@ line HAVING count(*) < 200
SELECT T1.@@ Air@@ line FROM A@@ I@@ R@@ L@@ IN@@ E@@ S AS T1 JOIN F@@ LI@@ G@@ H@@ TS AS T2 ON T1.uid = T2.@@ Air@@ line GROUP BY T1.@@ Air@@ line HAVING count(*) < 200
SELECT T1.F@@ li@@ ght@@ N@@ o FROM F@@ LI@@ G@@ H@@ TS AS T1 JOIN A@@ I@@ R@@ L@@ IN@@ E@@ S AS T2 ON T2.uid = T1.@@ Air@@ line WHERE T2.@@ Air@@ line = "United Airlin@@ es"
SELECT T1.F@@ li@@ ght@@ N@@ o FROM F@@ LI@@ G@@ H@@ TS AS T1 JOIN A@@ I@@ R@@ L@@ IN@@ E@@ S AS T2 ON T2.uid = T1.@@ Air@@ line WHERE T2.@@ Air@@ line = "United Airlin@@ es"
SELECT F@@ li@@ ght@@ N@@ o FROM F@@ LI@@ G@@ H@@ TS WHERE S@@ our@@ c@@ e@@ Air@@ port = "A@@ P@@ G@@ "
SELECT F@@ li@@ ght@@ N@@ o FROM F@@ LI@@ G@@ H@@ TS WHERE S@@ our@@ c@@ e@@ Air@@ port = "A@@ P@@ G@@ "
SELECT F@@ li@@ ght@@ N@@ o FROM F@@ LI@@ G@@ H@@ TS WHERE Dest@@ Air@@ port = "A@@ P@@ G@@ "
SELECT F@@ li@@ ght@@ N@@ o FROM F@@ LI@@ G@@ H@@ TS WHERE Dest@@ Air@@ port = "A@@ P@@ G@@ "
SELECT T1.F@@ li@@ ght@@ N@@ o FROM F@@ LI@@ G@@ H@@ TS AS T1 JOIN A@@ I@@ RPOR@@ TS AS T2 ON T1.S@@ our@@ c@@ e@@ Air@@ port = T2.@@ Airport@@ Code WHERE T2.C@@ ity = "A@@ ber@@ de@@ en"
SELECT T1.F@@ li@@ ght@@ N@@ o FROM F@@ LI@@ G@@ H@@ TS AS T1 JOIN A@@ I@@ RPOR@@ TS AS T2 ON T1.S@@ our@@ c@@ e@@ Air@@ port = T2.@@ Airport@@ Code WHERE T2.C@@ ity = "A@@ ber@@ de@@ en"
SELECT T1.F@@ li@@ ght@@ N@@ o FROM F@@ LI@@ G@@ H@@ TS AS T1 JOIN A@@ I@@ RPOR@@ TS AS T2 ON T1.D@@ est@@ Air@@ port = T2.@@ Airport@@ Code WHERE T2.C@@ ity = "A@@ ber@@ de@@ en"
SELECT T1.F@@ li@@ ght@@ N@@ o FROM F@@ LI@@ G@@ H@@ TS AS T1 JOIN A@@ I@@ RPOR@@ TS AS T2 ON T1.D@@ est@@ Air@@ port = T2.@@ Airport@@ Code WHERE T2.C@@ ity = "A@@ ber@@ de@@ en"
SELECT count(*) FROM F@@ li@@ ghts AS T1 JOIN Airport@@ s AS T2 ON T1.D@@ est@@ Air@@ port = T2.@@ Airport@@ Code WHERE T2.city = "A@@ ber@@ de@@ en" OR T2.city = "A@@ bil@@ en@@ e"
SELECT count(*) FROM F@@ li@@ ghts AS T1 JOIN Airport@@ s AS T2 ON T1.D@@ est@@ Air@@ port = T2.@@ Airport@@ Code WHERE T2.city = "A@@ ber@@ de@@ en" OR T2.city = "A@@ bil@@ en@@ e"
SELECT Airport@@ Name FROM Airport@@ s WHERE Airport@@ Code NOT IN (SELECT S@@ our@@ c@@ e@@ Air@@ port FROM F@@ li@@ ghts UNION SELECT Dest@@ Air@@ port FROM F@@ li@@ ght@@ s)
SELECT Airport@@ Name FROM Airport@@ s WHERE Airport@@ Code NOT IN (SELECT S@@ our@@ c@@ e@@ Air@@ port FROM F@@ li@@ ghts UNION SELECT Dest@@ Air@@ port FROM F@@ li@@ ght@@ s)
SELECT count(*) FROM employee
SELECT count(*) FROM employee
SELECT name FROM employee ORDER BY age
SELECT name FROM employee ORDER BY age
SELECT count(*) , city FROM employee GROUP BY city
SELECT count(*) , city FROM employee GROUP BY city
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT city FROM employee WHERE age < 30 GROUP BY city HAVING count(*) > 1
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION
SELECT count(*) , LOCATION FROM shop GROUP BY LOCATION
SELECT manager_name , district FROM shop ORDER BY number_@@ products DESC LIMIT 1
SELECT manager_name , district FROM shop ORDER BY number_@@ products DESC LIMIT 1
SELECT min(@@ Number_@@ products) , max(@@ Number_@@ products) FROM shop
SELECT min(@@ Number_@@ products) , max(@@ Number_@@ products) FROM shop
SELECT name , LOCATION , district FROM shop ORDER BY number_@@ products DESC
SELECT name , LOCATION , district FROM shop ORDER BY number_@@ products DESC
SELECT name FROM shop WHERE number_@@ products > (SELECT avg(@@ number_@@ products) FROM shop@@ )
SELECT name FROM shop WHERE number_@@ products > (SELECT avg(@@ number_@@ products) FROM shop@@ )
SELECT t1.name FROM employee AS t1 JOIN ev@@ al@@ u@@ ation AS t2 ON t1.@@ Employe@@ e_ID = t2.@@ Employe@@ e_ID GROUP BY t2.@@ Employe@@ e_ID ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM employee AS t1 JOIN ev@@ al@@ u@@ ation AS t2 ON t1.@@ Employe@@ e_ID = t2.@@ Employe@@ e_ID GROUP BY t2.@@ Employe@@ e_ID ORDER BY count(*) DESC LIMIT 1
SELECT t1.name FROM employee AS t1 JOIN ev@@ al@@ u@@ ation AS t2 ON t1.@@ Employe@@ e_ID = t2.@@ Employe@@ e_ID ORDER BY t2.@@ b@@ on@@ us DESC LIMIT 1
SELECT t1.name FROM employee AS t1 JOIN ev@@ al@@ u@@ ation AS t2 ON t1.@@ Employe@@ e_ID = t2.@@ Employe@@ e_ID ORDER BY t2.@@ b@@ on@@ us DESC LIMIT 1
SELECT name FROM employee WHERE Employe@@ e_ID NOT IN (SELECT Employe@@ e_ID FROM ev@@ al@@ u@@ ation)
SELECT name FROM employee WHERE Employe@@ e_ID NOT IN (SELECT Employe@@ e_ID FROM ev@@ al@@ u@@ ation)
SELECT t2.@@ name FROM h@@ ir@@ ing AS t1 JOIN shop AS t2 ON t1.@@ shop_id = t2.@@ shop_id GROUP BY t1.@@ shop_id ORDER BY count(*) DESC LIMIT 1
SELECT t2.@@ name FROM h@@ ir@@ ing AS t1 JOIN shop AS t2 ON t1.@@ shop_id = t2.@@ shop_id GROUP BY t1.@@ shop_id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM h@@ ir@@ ing)
SELECT name FROM shop WHERE shop_id NOT IN (SELECT shop_id FROM h@@ ir@@ ing)
SELECT count(*) , t2.@@ name FROM h@@ ir@@ ing AS t1 JOIN shop AS t2 ON t1.@@ shop_id = t2.@@ shop_id GROUP BY t2.@@ name
SELECT count(*) , t2.@@ name FROM h@@ ir@@ ing AS t1 JOIN shop AS t2 ON t1.@@ shop_id = t2.@@ shop_id GROUP BY t2.@@ name
SELECT sum(@@ b@@ on@@ us@@ ) FROM ev@@ al@@ u@@ ation
SELECT sum(@@ b@@ on@@ us@@ ) FROM ev@@ al@@ u@@ ation
SELECT * FROM h@@ ir@@ ing
SELECT * FROM h@@ ir@@ ing
SELECT district FROM shop WHERE Number_@@ products < 3000 INTERSECT SELECT district FROM shop WHERE Number_@@ products > 10000
SELECT district FROM shop WHERE Number_@@ products < 3000 INTERSECT SELECT district FROM shop WHERE Number_@@ products > 10000
SELECT count(DISTINCT LOCA@@ TION) FROM shop
SELECT count(DISTINCT LOCA@@ TION) FROM shop
SELECT count(*) FROM Documents
SELECT count(*) FROM Documents
SELECT document_id , document_name , document_description FROM Documents
SELECT document_id , document_name , document_description FROM Documents
SELECT document_name , temp@@ lat@@ e_id FROM Documents WHERE Document_@@ Description LIKE "%@@ w@@ %"
SELECT document_name , temp@@ lat@@ e_id FROM Documents WHERE Document_@@ Description LIKE "%@@ w@@ %"
SELECT document_id , temp@@ lat@@ e_id , Document_@@ Description FROM Documents WHERE document_name = "Rob@@ b@@ in CV"
SELECT document_id , temp@@ lat@@ e_id , Document_@@ Description FROM Documents WHERE document_name = "Rob@@ b@@ in CV"
SELECT count(DISTINCT temp@@ lat@@ e_@@ id) FROM Documents
SELECT count(DISTINCT temp@@ lat@@ e_@@ id) FROM Documents
SELECT count(*) FROM Documents AS T1 JOIN T@@ emp@@ lat@@ es AS T2 ON T1.T@@ emp@@ lat@@ e_ID = T2.T@@ emp@@ lat@@ e_ID WHERE T2.T@@ emp@@ lat@@ e_@@ Type_Code = 'P@@ P@@ T@@ '
SELECT count(*) FROM Documents AS T1 JOIN T@@ emp@@ lat@@ es AS T2 ON T1.T@@ emp@@ lat@@ e_ID = T2.T@@ emp@@ lat@@ e_ID WHERE T2.T@@ emp@@ lat@@ e_@@ Type_Code = 'P@@ P@@ T@@ '
SELECT temp@@ lat@@ e_id , count(*) FROM Documents GROUP BY temp@@ lat@@ e_id
SELECT temp@@ lat@@ e_id , count(*) FROM Documents GROUP BY temp@@ lat@@ e_id
SELECT T1.@@ temp@@ lat@@ e_id , T2.T@@ emp@@ lat@@ e_@@ Type_Code FROM Documents AS T1 JOIN T@@ emp@@ lat@@ es AS T2 ON T1.@@ temp@@ lat@@ e_id = T2.@@ temp@@ lat@@ e_id GROUP BY T1.@@ temp@@ lat@@ e_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.@@ temp@@ lat@@ e_id , T2.T@@ emp@@ lat@@ e_@@ Type_Code FROM Documents AS T1 JOIN T@@ emp@@ lat@@ es AS T2 ON T1.@@ temp@@ lat@@ e_id = T2.@@ temp@@ lat@@ e_id GROUP BY T1.@@ temp@@ lat@@ e_id ORDER BY count(*) DESC LIMIT 1
SELECT temp@@ lat@@ e_id FROM Documents GROUP BY temp@@ lat@@ e_id HAVING count(*) > 1
SELECT temp@@ lat@@ e_id FROM Documents GROUP BY temp@@ lat@@ e_id HAVING count(*) > 1
SELECT temp@@ lat@@ e_id FROM T@@ emp@@ lat@@ es EXCEPT SELECT temp@@ lat@@ e_id FROM Documents
SELECT temp@@ lat@@ e_id FROM T@@ emp@@ lat@@ es EXCEPT SELECT temp@@ lat@@ e_id FROM Documents
SELECT count(*) FROM T@@ emp@@ lat@@ es
SELECT count(*) FROM T@@ emp@@ lat@@ es
SELECT temp@@ lat@@ e_id , v@@ ers@@ ion@@ _number , temp@@ lat@@ e_@@ type_code FROM T@@ emp@@ lat@@ es
SELECT temp@@ lat@@ e_id , v@@ ers@@ ion@@ _number , temp@@ lat@@ e_@@ type_code FROM T@@ emp@@ lat@@ es
SELECT DISTINCT temp@@ lat@@ e_@@ type_code FROM T@@ emp@@ lat@@ es
SELECT DISTINCT temp@@ lat@@ e_@@ type_code FROM T@@ emp@@ lat@@ es
SELECT temp@@ lat@@ e_id FROM T@@ emp@@ lat@@ es WHERE temp@@ lat@@ e_@@ type_code = "P@@ P@@ " OR temp@@ lat@@ e_@@ type_code = "P@@ P@@ T@@ "
SELECT temp@@ lat@@ e_id FROM T@@ emp@@ lat@@ es WHERE temp@@ lat@@ e_@@ type_code = "P@@ P@@ " OR temp@@ lat@@ e_@@ type_code = "P@@ P@@ T@@ "
SELECT count(*) FROM T@@ emp@@ lat@@ es WHERE temp@@ lat@@ e_@@ type_code = "CV"
SELECT count(*) FROM T@@ emp@@ lat@@ es WHERE temp@@ lat@@ e_@@ type_code = "CV"
SELECT v@@ ers@@ ion@@ _number , temp@@ lat@@ e_@@ type_code FROM T@@ emp@@ lat@@ es WHERE v@@ ers@@ ion@@ _number > 5
SELECT v@@ ers@@ ion@@ _number , temp@@ lat@@ e_@@ type_code FROM T@@ emp@@ lat@@ es WHERE v@@ ers@@ ion@@ _number > 5
SELECT temp@@ lat@@ e_@@ type_code , count(*) FROM T@@ emp@@ lat@@ es GROUP BY temp@@ lat@@ e_@@ type_code
SELECT temp@@ lat@@ e_@@ type_code , count(*) FROM T@@ emp@@ lat@@ es GROUP BY temp@@ lat@@ e_@@ type_code
SELECT temp@@ lat@@ e_@@ type_code FROM T@@ emp@@ lat@@ es GROUP BY temp@@ lat@@ e_@@ type_code ORDER BY count(*) DESC LIMIT 1
SELECT temp@@ lat@@ e_@@ type_code FROM T@@ emp@@ lat@@ es GROUP BY temp@@ lat@@ e_@@ type_code ORDER BY count(*) DESC LIMIT 1
SELECT temp@@ lat@@ e_@@ type_code FROM T@@ emp@@ lat@@ es GROUP BY temp@@ lat@@ e_@@ type_code HAVING count(*) < 3
SELECT temp@@ lat@@ e_@@ type_code FROM T@@ emp@@ lat@@ es GROUP BY temp@@ lat@@ e_@@ type_code HAVING count(*) < 3
SELECT min(@@ V@@ ers@@ ion_@@ Num@@ ber@@ ) , temp@@ lat@@ e_@@ type_code FROM T@@ emp@@ lat@@ es
SELECT min(@@ V@@ ers@@ ion_@@ Num@@ ber@@ ) , temp@@ lat@@ e_@@ type_code FROM T@@ emp@@ lat@@ es
SELECT T1.@@ temp@@ lat@@ e_@@ type_code FROM T@@ emp@@ lat@@ es AS T1 JOIN Documents AS T2 ON T1.@@ temp@@ lat@@ e_id = T2.@@ temp@@ lat@@ e_id WHERE T2.document_name = "D@@ at@@ a base@@ "
SELECT T1.@@ temp@@ lat@@ e_@@ type_code FROM T@@ emp@@ lat@@ es AS T1 JOIN Documents AS T2 ON T1.@@ temp@@ lat@@ e_id = T2.@@ temp@@ lat@@ e_id WHERE T2.document_name = "D@@ at@@ a base@@ "
SELECT T2.document_name FROM T@@ emp@@ lat@@ es AS T1 JOIN Documents AS T2 ON T1.@@ temp@@ lat@@ e_id = T2.@@ temp@@ lat@@ e_id WHERE T1.@@ temp@@ lat@@ e_@@ type_code = "BK"
SELECT T2.document_name FROM T@@ emp@@ lat@@ es AS T1 JOIN Documents AS T2 ON T1.@@ temp@@ lat@@ e_id = T2.@@ temp@@ lat@@ e_id WHERE T1.@@ temp@@ lat@@ e_@@ type_code = "BK"
SELECT T1.@@ temp@@ lat@@ e_@@ type_code , count(*) FROM T@@ emp@@ lat@@ es AS T1 JOIN Documents AS T2 ON T1.@@ temp@@ lat@@ e_id = T2.@@ temp@@ lat@@ e_id GROUP BY T1.@@ temp@@ lat@@ e_@@ type_code
SELECT T1.@@ temp@@ lat@@ e_@@ type_code , count(*) FROM T@@ emp@@ lat@@ es AS T1 JOIN Documents AS T2 ON T1.@@ temp@@ lat@@ e_id = T2.@@ temp@@ lat@@ e_id GROUP BY T1.@@ temp@@ lat@@ e_@@ type_code
SELECT T1.@@ temp@@ lat@@ e_@@ type_code FROM T@@ emp@@ lat@@ es AS T1 JOIN Documents AS T2 ON T1.@@ temp@@ lat@@ e_id = T2.@@ temp@@ lat@@ e_id GROUP BY T1.@@ temp@@ lat@@ e_@@ type_code ORDER BY count(*) DESC LIMIT 1
SELECT T1.@@ temp@@ lat@@ e_@@ type_code FROM T@@ emp@@ lat@@ es AS T1 JOIN Documents AS T2 ON T1.@@ temp@@ lat@@ e_id = T2.@@ temp@@ lat@@ e_id GROUP BY T1.@@ temp@@ lat@@ e_@@ type_code ORDER BY count(*) DESC LIMIT 1
SELECT temp@@ lat@@ e_@@ type_code FROM T@@ emp@@ lat@@ es EXCEPT SELECT temp@@ lat@@ e_@@ type_code FROM T@@ emp@@ lat@@ es AS T1 JOIN Documents AS T2 ON T1.@@ temp@@ lat@@ e_id = T2.@@ temp@@ lat@@ e_id
SELECT temp@@ lat@@ e_@@ type_code FROM T@@ emp@@ lat@@ es EXCEPT SELECT temp@@ lat@@ e_@@ type_code FROM T@@ emp@@ lat@@ es AS T1 JOIN Documents AS T2 ON T1.@@ temp@@ lat@@ e_id = T2.@@ temp@@ lat@@ e_id
SELECT temp@@ lat@@ e_@@ type_code , temp@@ lat@@ e_@@ type_@@ description FROM Ref_@@ temp@@ lat@@ e_@@ types
SELECT temp@@ lat@@ e_@@ type_code , temp@@ lat@@ e_@@ type_@@ description FROM Ref_@@ temp@@ lat@@ e_@@ types
SELECT temp@@ lat@@ e_@@ type_@@ description FROM Ref_@@ temp@@ lat@@ e_@@ types WHERE temp@@ lat@@ e_@@ type_code = "A@@ D@@ "
SELECT temp@@ lat@@ e_@@ type_@@ description FROM Ref_@@ temp@@ lat@@ e_@@ types WHERE temp@@ lat@@ e_@@ type_code = "A@@ D@@ "
SELECT temp@@ lat@@ e_@@ type_code FROM Ref_@@ temp@@ lat@@ e_@@ types WHERE temp@@ lat@@ e_@@ type_@@ description = "Bo@@ ok@@ "
SELECT temp@@ lat@@ e_@@ type_code FROM Ref_@@ temp@@ lat@@ e_@@ types WHERE temp@@ lat@@ e_@@ type_@@ description = "Bo@@ ok@@ "
SELECT DISTINCT T1.@@ temp@@ lat@@ e_@@ type_@@ description FROM Ref_@@ temp@@ lat@@ e_@@ types AS T1 JOIN T@@ emp@@ lat@@ es AS T2 ON T1.@@ temp@@ lat@@ e_@@ type_code = T2.@@ temp@@ lat@@ e_@@ type_code JOIN Documents AS T3 ON T2.T@@ emp@@ lat@@ e_ID = T3.@@ temp@@ lat@@ e_ID
SELECT DISTINCT T1.@@ temp@@ lat@@ e_@@ type_@@ description FROM Ref_@@ temp@@ lat@@ e_@@ types AS T1 JOIN T@@ emp@@ lat@@ es AS T2 ON T1.@@ temp@@ lat@@ e_@@ type_code = T2.@@ temp@@ lat@@ e_@@ type_code JOIN Documents AS T3 ON T2.T@@ emp@@ lat@@ e_ID = T3.@@ temp@@ lat@@ e_ID
SELECT T2.@@ temp@@ lat@@ e_id FROM Ref_@@ temp@@ lat@@ e_@@ types AS T1 JOIN T@@ emp@@ lat@@ es AS T2 ON T1.@@ temp@@ lat@@ e_@@ type_code = T2.@@ temp@@ lat@@ e_@@ type_code WHERE T1.@@ temp@@ lat@@ e_@@ type_@@ description = "P@@ re@@ sent@@ ation"
SELECT T2.@@ temp@@ lat@@ e_id FROM Ref_@@ temp@@ lat@@ e_@@ types AS T1 JOIN T@@ emp@@ lat@@ es AS T2 ON T1.@@ temp@@ lat@@ e_@@ type_code = T2.@@ temp@@ lat@@ e_@@ type_code WHERE T1.@@ temp@@ lat@@ e_@@ type_@@ description = "P@@ re@@ sent@@ ation"
SELECT count(*) FROM P@@ ar@@ ag@@ r@@ ap@@ h@@ s
SELECT count(*) FROM P@@ ar@@ ag@@ r@@ ap@@ h@@ s
SELECT count(*) FROM P@@ ar@@ ag@@ r@@ ap@@ h@@ s AS T1 JOIN Documents AS T2 ON T1.@@ document@@ _ID = T2.@@ document@@ _ID WHERE T2.document_name = 'S@@ um@@ mer Sho@@ w@@ '
SELECT count(*) FROM P@@ ar@@ ag@@ r@@ ap@@ h@@ s AS T1 JOIN Documents AS T2 ON T1.@@ document@@ _ID = T2.@@ document@@ _ID WHERE T2.document_name = 'S@@ um@@ mer Sho@@ w@@ '
se@@ le@@ ct other_details from par@@ ag@@ r@@ ap@@ h@@ s where par@@ ag@@ r@@ ap@@ h@@ _@@ te@@ xt li@@ k@@ e '@@ k@@ or@@ e@@ a'
se@@ le@@ ct other_details from par@@ ag@@ r@@ ap@@ h@@ s where par@@ ag@@ r@@ ap@@ h@@ _@@ te@@ xt li@@ k@@ e '@@ k@@ or@@ e@@ a'
SELECT T1.p@@ ar@@ ag@@ r@@ ap@@ h@@ _id , T1.p@@ ar@@ ag@@ r@@ ap@@ h@@ _@@ te@@ xt FROM P@@ ar@@ ag@@ r@@ ap@@ h@@ s AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.@@ Document_@@ Name = 'W@@ el@@ come to NY@@ '
SELECT T1.p@@ ar@@ ag@@ r@@ ap@@ h@@ _id , T1.p@@ ar@@ ag@@ r@@ ap@@ h@@ _@@ te@@ xt FROM P@@ ar@@ ag@@ r@@ ap@@ h@@ s AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.@@ Document_@@ Name = 'W@@ el@@ come to NY@@ '
SELECT T1.p@@ ar@@ ag@@ r@@ ap@@ h@@ _@@ te@@ xt FROM P@@ ar@@ ag@@ r@@ ap@@ h@@ s AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "C@@ ust@@ o@@ mer review@@ s"
SELECT T1.p@@ ar@@ ag@@ r@@ ap@@ h@@ _@@ te@@ xt FROM P@@ ar@@ ag@@ r@@ ap@@ h@@ s AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id WHERE T2.document_name = "C@@ ust@@ o@@ mer review@@ s"
SELECT document_id , count(*) FROM P@@ ar@@ ag@@ r@@ ap@@ h@@ s GROUP BY document_id ORDER BY document_id
SELECT document_id , count(*) FROM P@@ ar@@ ag@@ r@@ ap@@ h@@ s GROUP BY document_id ORDER BY document_id
SELECT T1.document_id , T2.document_name , count(*) FROM P@@ ar@@ ag@@ r@@ ap@@ h@@ s AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT T1.document_id , T2.document_name , count(*) FROM P@@ ar@@ ag@@ r@@ ap@@ h@@ s AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id
SELECT document_id FROM P@@ ar@@ ag@@ r@@ ap@@ h@@ s GROUP BY document_id HAVING count(*) >= 2
SELECT document_id FROM P@@ ar@@ ag@@ r@@ ap@@ h@@ s GROUP BY document_id HAVING count(*) >= 2
SELECT T1.document_id , T2.document_name FROM P@@ ar@@ ag@@ r@@ ap@@ h@@ s AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.document_id , T2.document_name FROM P@@ ar@@ ag@@ r@@ ap@@ h@@ s AS T1 JOIN Documents AS T2 ON T1.document_id = T2.document_id GROUP BY T1.document_id ORDER BY count(*) DESC LIMIT 1
SELECT document_id FROM P@@ ar@@ ag@@ r@@ ap@@ h@@ s GROUP BY document_id ORDER BY count(*) ASC LIMIT 1
SELECT document_id FROM P@@ ar@@ ag@@ r@@ ap@@ h@@ s GROUP BY document_id ORDER BY count(*) ASC LIMIT 1
SELECT document_id FROM P@@ ar@@ ag@@ r@@ ap@@ h@@ s GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2
SELECT document_id FROM P@@ ar@@ ag@@ r@@ ap@@ h@@ s GROUP BY document_id HAVING count(*) BETWEEN 1 AND 2
SELECT document_id FROM P@@ ar@@ ag@@ r@@ ap@@ h@@ s WHERE par@@ ag@@ r@@ ap@@ h@@ _@@ te@@ xt = 'B@@ raz@@ il@@ ' INTERSECT SELECT document_id FROM P@@ ar@@ ag@@ r@@ ap@@ h@@ s WHERE par@@ ag@@ r@@ ap@@ h@@ _@@ te@@ xt = 'I@@ re@@ land@@ '
SELECT document_id FROM P@@ ar@@ ag@@ r@@ ap@@ h@@ s WHERE par@@ ag@@ r@@ ap@@ h@@ _@@ te@@ xt = 'B@@ raz@@ il@@ ' INTERSECT SELECT document_id FROM P@@ ar@@ ag@@ r@@ ap@@ h@@ s WHERE par@@ ag@@ r@@ ap@@ h@@ _@@ te@@ xt = 'I@@ re@@ land@@ '
SELECT count(*) FROM teacher
SELECT count(*) FROM teacher
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Name FROM teacher ORDER BY Age ASC
SELECT Age , Hometown FROM teacher
SELECT Age , Hometown FROM teacher
se@@ le@@ ct name from teacher where hometown != "l@@ it@@ t@@ le le@@ ver ur@@ b@@ an distric@@ t"
se@@ le@@ ct name from teacher where hometown != "l@@ it@@ t@@ le le@@ ver ur@@ b@@ an distric@@ t"
SELECT Name FROM teacher WHERE Age = 32 OR Age = 3@@ 3
SELECT Name FROM teacher WHERE Age = 32 OR Age = 3@@ 3
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown FROM teacher ORDER BY Age ASC LIMIT 1
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown , COUNT(*) FROM teacher GROUP BY Hometown
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown ORDER BY COUNT(*) DESC LIMIT 1
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT Hometown FROM teacher GROUP BY Hometown HAVING COUNT(*) >= 2
SELECT T3.Name , T2.C@@ our@@ se FROM course_@@ ar@@ range AS T1 JOIN course AS T2 ON T1.@@ Cours@@ e_ID = T2.@@ Cours@@ e_ID JOIN teacher AS T3 ON T1.T@@ each@@ er_ID = T3.@@ T@@ each@@ er_ID
SELECT T3.Name , T2.C@@ our@@ se FROM course_@@ ar@@ range AS T1 JOIN course AS T2 ON T1.@@ Cours@@ e_ID = T2.@@ Cours@@ e_ID JOIN teacher AS T3 ON T1.T@@ each@@ er_ID = T3.@@ T@@ each@@ er_ID
SELECT T3.Name , T2.C@@ our@@ se FROM course_@@ ar@@ range AS T1 JOIN course AS T2 ON T1.@@ Cours@@ e_ID = T2.@@ Cours@@ e_ID JOIN teacher AS T3 ON T1.T@@ each@@ er_ID = T3.@@ T@@ each@@ er_ID ORDER BY T3.Name
SELECT T3.Name , T2.C@@ our@@ se FROM course_@@ ar@@ range AS T1 JOIN course AS T2 ON T1.@@ Cours@@ e_ID = T2.@@ Cours@@ e_ID JOIN teacher AS T3 ON T1.T@@ each@@ er_ID = T3.@@ T@@ each@@ er_ID ORDER BY T3.Name
SELECT T3.Name FROM course_@@ ar@@ range AS T1 JOIN course AS T2 ON T1.@@ Cours@@ e_ID = T2.@@ Cours@@ e_ID JOIN teacher AS T3 ON T1.T@@ each@@ er_ID = T3.@@ T@@ each@@ er_ID WHERE T2.C@@ our@@ se = "M@@ ath@@ "
SELECT T3.Name FROM course_@@ ar@@ range AS T1 JOIN course AS T2 ON T1.@@ Cours@@ e_ID = T2.@@ Cours@@ e_ID JOIN teacher AS T3 ON T1.T@@ each@@ er_ID = T3.@@ T@@ each@@ er_ID WHERE T2.C@@ our@@ se = "M@@ ath@@ "
SELECT T2.Name , COUNT(*) FROM course_@@ ar@@ range AS T1 JOIN teacher AS T2 ON T1.T@@ each@@ er_ID = T2.T@@ each@@ er_ID GROUP BY T2.Name
SELECT T2.Name , COUNT(*) FROM course_@@ ar@@ range AS T1 JOIN teacher AS T2 ON T1.T@@ each@@ er_ID = T2.T@@ each@@ er_ID GROUP BY T2.Name
SELECT T2.Name FROM course_@@ ar@@ range AS T1 JOIN teacher AS T2 ON T1.T@@ each@@ er_ID = T2.T@@ each@@ er_ID GROUP BY T2.Name HAVING COUNT(*) >= 2
SELECT T2.Name FROM course_@@ ar@@ range AS T1 JOIN teacher AS T2 ON T1.T@@ each@@ er_ID = T2.T@@ each@@ er_ID GROUP BY T2.Name HAVING COUNT(*) >= 2
SELECT Name FROM teacher WHERE T@@ each@@ er_id NOT IN (SELECT T@@ each@@ er_id FROM course_@@ ar@@ range)
SELECT Name FROM teacher WHERE T@@ each@@ er_id NOT IN (SELECT T@@ each@@ er_id FROM course_@@ ar@@ range)
SELECT count(*) FROM visitor WHERE age < 30
SELECT name FROM visitor WHERE L@@ ev@@ el@@ _of_@@ membership > 4 ORDER BY L@@ ev@@ el@@ _of_@@ membership DESC
SELECT avg(age) FROM visitor WHERE L@@ ev@@ el@@ _of_@@ membership <= 4
SELECT name , L@@ ev@@ el@@ _of_@@ membership FROM visitor WHERE L@@ ev@@ el@@ _of_@@ membership > 4 ORDER BY age DESC
SELECT museum@@ _id , name FROM m@@ use@@ um ORDER BY num_of_@@ staff DESC LIMIT 1
SELECT avg(@@ num_of_@@ staff@@ ) FROM m@@ use@@ um WHERE open_year < 2009
SELECT Num_of_@@ Staff , Open_Year FROM m@@ use@@ um WHERE name = 'P@@ la@@ z@@ a M@@ useum@@ '
SELECT name FROM m@@ use@@ um WHERE num_of_@@ staff > (SELECT min(@@ num_of_@@ staff@@ ) FROM m@@ use@@ um WHERE open_year > 2010@@ )
SELECT t1.id , t1.name , t1.age FROM visitor AS t1 JOIN visit AS t2 ON t1.id = t2.@@ visit@@ or_id GROUP BY t1.id HAVING count(*) > 1
SELECT t2.@@ visit@@ or_id , t1.name , t1.@@ L@@ ev@@ el@@ _of_@@ membership FROM visitor AS t1 JOIN visit AS t2 ON t1.id = t2.@@ visit@@ or_id GROUP BY t2.@@ visit@@ or_id ORDER BY sum(t2.@@ Total_@@ sp@@ ent) DESC LIMIT 1
SELECT t2.@@ M@@ useum@@ _ID , t1.name FROM m@@ use@@ um AS t1 JOIN visit AS t2 ON t1.@@ M@@ useum@@ _ID = t2.@@ M@@ useum@@ _ID GROUP BY t2.@@ M@@ useum@@ _ID ORDER BY count(*) DESC LIMIT 1
SELECT name FROM m@@ use@@ um WHERE M@@ useum@@ _ID NOT IN (SELECT museum@@ _id FROM visit@@ )
SELECT t1.name , t1.age FROM visitor AS t1 JOIN visit AS t2 ON t1.id = t2.@@ visit@@ or_id ORDER BY t2.@@ num_of_@@ ticket DESC LIMIT 1
SELECT avg(@@ num_of_@@ tick@@ et@@ ) , max(@@ num_of_@@ tick@@ et@@ ) FROM visit
SELECT sum(t2.@@ Total_@@ sp@@ ent) FROM visitor AS t1 JOIN visit AS t2 ON t1.id = t2.@@ visit@@ or_id WHERE t1.@@ L@@ ev@@ el@@ _of_@@ membership = 1
SELECT t1.name FROM visitor AS t1 JOIN visit AS t2 ON t1.id = t2.@@ visit@@ or_id JOIN m@@ use@@ um AS t3 ON t3.@@ M@@ useum@@ _ID = t2.@@ M@@ useum@@ _ID WHERE t3.@@ open_year < 2009 INTERSECT SELECT t1.name FROM visitor AS t1 JOIN visit AS t2 ON t1.id = t2.@@ visit@@ or_id JOIN m@@ use@@ um AS t3 ON t3.@@ M@@ useum@@ _ID = t2.@@ M@@ useum@@ _ID WHERE t3.@@ open_year > 2011
SELECT count(*) FROM visitor WHERE id NOT IN (SELECT t2.@@ visit@@ or_id FROM m@@ use@@ um AS t1 JOIN visit AS t2 ON t1.@@ M@@ useum@@ _ID = t2.@@ M@@ useum@@ _ID WHERE t1.@@ open_year > 2010@@ )
SELECT count(*) FROM m@@ use@@ um WHERE open_year > 201@@ 3 OR open_year < 2008
SELECT count(*) FROM players
SELECT count(*) FROM players
SELECT count(*) FROM matches
SELECT count(*) FROM matches
SELECT first_name , birth@@ _date FROM players WHERE countr@@ y_code = 'USA'
SELECT first_name , birth@@ _date FROM players WHERE countr@@ y_code = 'USA'
SELECT avg(@@ lo@@ s@@ er_@@ age) , avg(@@ winn@@ er_@@ age) FROM matches
SELECT avg(@@ lo@@ s@@ er_@@ age) , avg(@@ winn@@ er_@@ age) FROM matches
SELECT avg(@@ winn@@ er_@@ rank@@ ) FROM matches
SELECT avg(@@ winn@@ er_@@ rank@@ ) FROM matches
SELECT min(@@ lo@@ s@@ er_@@ rank@@ ) FROM matches
SELECT min(@@ lo@@ s@@ er_@@ rank@@ ) FROM matches
SELECT count(DISTINCT countr@@ y_@@ code) FROM players
SELECT count(DISTINCT countr@@ y_@@ code) FROM players
SELECT count(DISTINCT lo@@ s@@ er_@@ name) FROM matches
SELECT count(DISTINCT lo@@ s@@ er_@@ name) FROM matches
SELECT t@@ our@@ ne@@ y_name FROM matches GROUP BY t@@ our@@ ne@@ y_name HAVING count(*) > 10
SELECT t@@ our@@ ne@@ y_name FROM matches GROUP BY t@@ our@@ ne@@ y_name HAVING count(*) > 10
SELECT winn@@ er_name FROM matches WHERE YEAR = 201@@ 3 INTERSECT SELECT winn@@ er_name FROM matches WHERE YEAR = 2016
SELECT winn@@ er_name FROM matches WHERE YEAR = 201@@ 3 INTERSECT SELECT winn@@ er_name FROM matches WHERE YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 201@@ 3 OR YEAR = 2016
SELECT count(*) FROM matches WHERE YEAR = 201@@ 3 OR YEAR = 2016
SELECT T1.@@ countr@@ y_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.@@ winn@@ er_id WHERE T2.@@ t@@ our@@ ne@@ y_name = 'W@@ T@@ A Ch@@ amp@@ ion@@ ship@@ s' INTERSECT SELECT T1.@@ countr@@ y_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.@@ winn@@ er_id WHERE T2.@@ t@@ our@@ ne@@ y_name = 'A@@ ustralian Open@@ '
SELECT T1.@@ countr@@ y_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.@@ winn@@ er_id WHERE T2.@@ t@@ our@@ ne@@ y_name = 'W@@ T@@ A Ch@@ amp@@ ion@@ ship@@ s' INTERSECT SELECT T1.@@ countr@@ y_code , T1.first_name FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.@@ winn@@ er_id WHERE T2.@@ t@@ our@@ ne@@ y_name = 'A@@ ustralian Open@@ '
SELECT first_name , countr@@ y_code FROM players ORDER BY birth@@ _date LIMIT 1
SELECT first_name , countr@@ y_code FROM players ORDER BY birth@@ _date LIMIT 1
SELECT first_name , last_name FROM players ORDER BY birth@@ _date
SELECT first_name , last_name FROM players ORDER BY birth@@ _date
SELECT first_name , last_name FROM players WHERE h@@ and = 'L@@ ' ORDER BY birth@@ _date
SELECT first_name , last_name FROM players WHERE h@@ and = 'L@@ ' ORDER BY birth@@ _date
SELECT T1.@@ countr@@ y_code , T1.first_name FROM players AS T1 JOIN rank@@ ings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.@@ t@@ ours DESC LIMIT 1
SELECT T1.@@ countr@@ y_code , T1.first_name FROM players AS T1 JOIN rank@@ ings AS T2 ON T1.player_id = T2.player_id ORDER BY T2.@@ t@@ ours DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT YEAR FROM matches GROUP BY YEAR ORDER BY count(*) DESC LIMIT 1
SELECT winn@@ er_name , winn@@ er_@@ rank@@ _@@ points FROM matches GROUP BY winn@@ er_name ORDER BY count(*) DESC LIMIT 1
SELECT winn@@ er_name , winn@@ er_@@ rank@@ _@@ points FROM matches GROUP BY winn@@ er_name ORDER BY count(*) DESC LIMIT 1
SELECT winn@@ er_name FROM matches WHERE t@@ our@@ ne@@ y_name = 'A@@ ustralian Open@@ ' ORDER BY winn@@ er_@@ rank@@ _@@ points DESC LIMIT 1
SELECT winn@@ er_name FROM matches WHERE t@@ our@@ ne@@ y_name = 'A@@ ustralian Open@@ ' ORDER BY winn@@ er_@@ rank@@ _@@ points DESC LIMIT 1
SELECT winn@@ er_name , lo@@ s@@ er_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT winn@@ er_name , lo@@ s@@ er_name FROM matches ORDER BY minutes DESC LIMIT 1
SELECT avg(@@ rank@@ ing) , T1.first_name FROM players AS T1 JOIN rank@@ ings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.first_name
SELECT avg(@@ rank@@ ing) , T1.first_name FROM players AS T1 JOIN rank@@ ings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.first_name
SELECT sum(@@ rank@@ ing_@@ point@@ s) , T1.first_name FROM players AS T1 JOIN rank@@ ings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.first_name
SELECT sum(@@ rank@@ ing_@@ point@@ s) , T1.first_name FROM players AS T1 JOIN rank@@ ings AS T2 ON T1.player_id = T2.player_id GROUP BY T1.first_name
SELECT count(*) , countr@@ y_code FROM players GROUP BY countr@@ y_code
SELECT count(*) , countr@@ y_code FROM players GROUP BY countr@@ y_code
SELECT countr@@ y_code FROM players GROUP BY countr@@ y_code ORDER BY count(*) DESC LIMIT 1
SELECT countr@@ y_code FROM players GROUP BY countr@@ y_code ORDER BY count(*) DESC LIMIT 1
SELECT countr@@ y_code FROM players GROUP BY countr@@ y_code HAVING count(*) > 50
SELECT countr@@ y_code FROM players GROUP BY countr@@ y_code HAVING count(*) > 50
SELECT sum(@@ t@@ our@@ s) , rank@@ ing_@@ date FROM rank@@ ings GROUP BY rank@@ ing_@@ date
SELECT sum(@@ t@@ our@@ s) , rank@@ ing_@@ date FROM rank@@ ings GROUP BY rank@@ ing_@@ date
SELECT count(*) , YEAR FROM matches GROUP BY YEAR
SELECT count(*) , YEAR FROM matches GROUP BY YEAR
SELECT DISTINCT winn@@ er_name , winn@@ er_@@ rank FROM matches ORDER BY winn@@ er_@@ age LIMIT 3
SELECT DISTINCT winn@@ er_name , winn@@ er_@@ rank FROM matches ORDER BY winn@@ er_@@ age LIMIT 3
SELECT count(DISTINCT winn@@ er_@@ name) FROM matches WHERE t@@ our@@ ne@@ y_name = 'W@@ T@@ A Ch@@ amp@@ ion@@ ship@@ s' AND winn@@ er_@@ h@@ and = 'L@@ '
SELECT count(DISTINCT winn@@ er_@@ name) FROM matches WHERE t@@ our@@ ne@@ y_name = 'W@@ T@@ A Ch@@ amp@@ ion@@ ship@@ s' AND winn@@ er_@@ h@@ and = 'L@@ '
SELECT T1.first_name , T1.@@ countr@@ y_code , T1.b@@ ir@@ th@@ _date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.@@ winn@@ er_id ORDER BY T2.@@ winn@@ er_@@ rank@@ _@@ points DESC LIMIT 1
SELECT T1.first_name , T1.@@ countr@@ y_code , T1.b@@ ir@@ th@@ _date FROM players AS T1 JOIN matches AS T2 ON T1.player_id = T2.@@ winn@@ er_id ORDER BY T2.@@ winn@@ er_@@ rank@@ _@@ points DESC LIMIT 1
SELECT count(*) , h@@ and FROM players GROUP BY h@@ and
SELECT count(*) , h@@ and FROM players GROUP BY h@@ and
SELECT count(*) FROM ship WHERE dis@@ position@@ _of_@@ ship = 'C@@ apt@@ ure@@ d@@ '
SELECT name , tonnage FROM ship ORDER BY name DESC
SELECT name , date FROM b@@ att@@ le
SELECT max(@@ k@@ il@@ le@@ d) , min(@@ k@@ il@@ le@@ d) FROM death
SELECT avg(@@ injure@@ d) FROM death
SELECT T1.@@ k@@ il@@ led , T1.@@ injured FROM death AS T1 JOIN ship AS t2 ON T1.@@ c@@ au@@ se@@ d_by_@@ ship_id = T2.id WHERE T2.@@ tonnage = '@@ t@@ '
SELECT name , RESULT FROM b@@ att@@ le WHERE b@@ ul@@ gar@@ ian@@ _@@ com@@ man@@ der != 'B@@ or@@ il@@ '
SELECT DISTINCT T1.id , T1.name FROM b@@ att@@ le AS T1 JOIN ship AS T2 ON T1.id = T2.@@ lo@@ st_@@ in@@ _b@@ att@@ le WHERE T2.@@ ship@@ _type = 'B@@ ri@@ g@@ '
SELECT T1.id , T1.name FROM b@@ att@@ le AS T1 JOIN ship AS T2 ON T1.id = T2.@@ lo@@ st_@@ in@@ _b@@ att@@ le JOIN death AS T3 ON T2.id = T3.@@ c@@ au@@ se@@ d_by_@@ ship_id GROUP BY T1.id HAVING sum(@@ T3.@@ k@@ il@@ le@@ d) > 10
SELECT T2.id , T2.name FROM death AS T1 JOIN ship AS t2 ON T1.@@ c@@ au@@ se@@ d_by_@@ ship_id = T2.id GROUP BY T2.id ORDER BY count(*) DESC LIMIT 1
SELECT name FROM b@@ att@@ le WHERE b@@ ul@@ gar@@ ian@@ _@@ com@@ man@@ der = 'K@@ alo@@ y@@ an' AND lat@@ in_@@ com@@ man@@ der = 'B@@ al@@ d@@ win I@@ '
SELECT count(DISTINCT RES@@ ULT@@ ) FROM b@@ att@@ le
SELECT count(*) FROM b@@ att@@ le WHERE id NOT IN ( SELECT lo@@ st_@@ in@@ _b@@ att@@ le FROM ship WHERE tonnage = '@@ 2@@ 25@@ ' );
SELECT T1.name , T1.date FROM b@@ att@@ le AS T1 JOIN ship AS T2 ON T1.id = T2.@@ lo@@ st_@@ in@@ _b@@ att@@ le WHERE T2.name = 'L@@ ett@@ ic@@ e' INTERSECT SELECT T1.name , T1.date FROM b@@ att@@ le AS T1 JOIN ship AS T2 ON T1.id = T2.@@ lo@@ st_@@ in@@ _b@@ att@@ le WHERE T2.name = 'H@@ M@@ S At@@ al@@ ant@@ a'
SELECT name , RESULT , b@@ ul@@ gar@@ ian@@ _@@ com@@ man@@ der FROM b@@ att@@ le EXCEPT SELECT T1.name , T1.@@ result , T1.b@@ ul@@ gar@@ ian@@ _@@ com@@ man@@ der FROM b@@ att@@ le AS T1 JOIN ship AS T2 ON T1.id = T2.@@ lo@@ st_@@ in@@ _b@@ att@@ le WHERE T2.@@ location = '@@ English C@@ han@@ nel@@ '
SELECT not@@ e FROM death WHERE not@@ e LIKE '%@@ E@@ ast@@ %'
SELECT line_1 , line_@@ 2 FROM addresses
SELECT line_1 , line_@@ 2 FROM addresses
SELECT count(*) FROM Courses
SELECT count(*) FROM Courses
SELECT course_description FROM Courses WHERE course_name = '@@ ma@@ th@@ '
SELECT course_description FROM Courses WHERE course_name = '@@ ma@@ th@@ '
SELECT zip_postcode FROM Addresses WHERE city = 'P@@ ort C@@ hel@@ se@@ a'
SELECT zip_postcode FROM Addresses WHERE city = 'P@@ ort C@@ hel@@ se@@ a'
SELECT T2.department_name , T1.department_id FROM De@@ gre@@ e_@@ Pro@@ gram@@ s AS T1 JOIN Depart@@ ments AS T2 ON T1.department_id = T2.department_id GROUP BY T1.department_id ORDER BY count(*) DESC LIMIT 1
se@@ le@@ ct t2.@@ department_name , t1.@@ department_id from degre@@ e_@@ programs as t1 join departments as t2 on t1.@@ department_id = t2.@@ department_id g@@ ro@@ up by t1.@@ department_id order by count(*) desc li@@ mi@@ t 1
SELECT count(DISTINCT department_@@ id) FROM De@@ gre@@ e_@@ Pro@@ gram@@ s
SELECT count(DISTINCT department_@@ id) FROM De@@ gre@@ e_@@ Pro@@ gram@@ s
SELECT count(DISTINCT degre@@ e_@@ sum@@ mar@@ y_name) FROM De@@ gre@@ e_@@ Pro@@ gram@@ s
SELECT count(DISTINCT degre@@ e_@@ sum@@ mar@@ y_name) FROM De@@ gre@@ e_@@ Pro@@ gram@@ s
SELECT count(*) FROM Depart@@ ments AS T1 JOIN De@@ gre@@ e_@@ Pro@@ gram@@ s AS T2 ON T1.department_id = T2.department_id WHERE T1.department_name = 'engine@@ er'
SELECT count(*) FROM Depart@@ ments AS T1 JOIN De@@ gre@@ e_@@ Pro@@ gram@@ s AS T2 ON T1.department_id = T2.department_id WHERE T1.department_name = 'engine@@ er'
SELECT section@@ _name , section@@ _description FROM Se@@ ction@@ s
SELECT section@@ _name , section@@ _description FROM Se@@ ction@@ s
SELECT T1.course_name , T1.course_id FROM Courses AS T1 JOIN Se@@ ction@@ s AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) <= 2
SELECT T1.course_name , T1.course_id FROM Courses AS T1 JOIN Se@@ ction@@ s AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_id HAVING count(*) <= 2
SELECT section@@ _name FROM Se@@ ction@@ s ORDER BY section@@ _name DESC
SELECT section@@ _name FROM Se@@ ction@@ s ORDER BY section@@ _name DESC
SELECT T1.@@ semest@@ er_name , T1.@@ semest@@ er_id FROM Se@@ mest@@ ers AS T1 JOIN Student_@@ Enrol@@ ment AS T2 ON T1.@@ semest@@ er_id = T2.@@ semest@@ er_id GROUP BY T1.@@ semest@@ er_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.@@ semest@@ er_name , T1.@@ semest@@ er_id FROM Se@@ mest@@ ers AS T1 JOIN Student_@@ Enrol@@ ment AS T2 ON T1.@@ semest@@ er_id = T2.@@ semest@@ er_id GROUP BY T1.@@ semest@@ er_id ORDER BY count(*) DESC LIMIT 1
SELECT department@@ _description FROM Depart@@ ments WHERE department_name LIKE '%@@ comput@@ er@@ %'
SELECT department@@ _description FROM Depart@@ ments WHERE department_name LIKE '%@@ comput@@ er@@ %'
SELECT T1.first_name , T1.@@ middle_name , T1.last_name , T1.student_id FROM Students AS T1 JOIN Student_@@ Enrol@@ ment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT T1.first_name , T1.@@ middle_name , T1.last_name , T1.student_id FROM Students AS T1 JOIN Student_@@ Enrol@@ ment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id HAVING count(*) = 2
SELECT DISTINCT T1.first_name , T1.@@ middle_name , T1.last_name FROM Students AS T1 JOIN Student_@@ Enrol@@ ment AS T2 ON T1.student_id = T2.student_id JOIN De@@ gre@@ e_@@ Pro@@ gram@@ s AS T3 ON T2.@@ degre@@ e_@@ program_id = T3.@@ degre@@ e_@@ program_id WHERE T3.@@ degre@@ e_@@ sum@@ mar@@ y_name = 'B@@ ac@@ hel@@ or'
SELECT DISTINCT T1.first_name , T1.@@ middle_name , T1.last_name FROM Students AS T1 JOIN Student_@@ Enrol@@ ment AS T2 ON T1.student_id = T2.student_id JOIN De@@ gre@@ e_@@ Pro@@ gram@@ s AS T3 ON T2.@@ degre@@ e_@@ program_id = T3.@@ degre@@ e_@@ program_id WHERE T3.@@ degre@@ e_@@ sum@@ mar@@ y_name = 'B@@ ac@@ hel@@ or'
SELECT T1.@@ degre@@ e_@@ sum@@ mar@@ y_name FROM De@@ gre@@ e_@@ Pro@@ gram@@ s AS T1 JOIN Student_@@ Enrol@@ ment AS T2 ON T1.@@ degre@@ e_@@ program_id = T2.@@ degre@@ e_@@ program_id GROUP BY T1.@@ degre@@ e_@@ sum@@ mar@@ y_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.@@ degre@@ e_@@ sum@@ mar@@ y_name FROM De@@ gre@@ e_@@ Pro@@ gram@@ s AS T1 JOIN Student_@@ Enrol@@ ment AS T2 ON T1.@@ degre@@ e_@@ program_id = T2.@@ degre@@ e_@@ program_id GROUP BY T1.@@ degre@@ e_@@ sum@@ mar@@ y_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.@@ degre@@ e_@@ program_id , T1.@@ degre@@ e_@@ sum@@ mar@@ y_name FROM De@@ gre@@ e_@@ Pro@@ gram@@ s AS T1 JOIN Student_@@ Enrol@@ ment AS T2 ON T1.@@ degre@@ e_@@ program_id = T2.@@ degre@@ e_@@ program_id GROUP BY T1.@@ degre@@ e_@@ program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.@@ degre@@ e_@@ program_id , T1.@@ degre@@ e_@@ sum@@ mar@@ y_name FROM De@@ gre@@ e_@@ Pro@@ gram@@ s AS T1 JOIN Student_@@ Enrol@@ ment AS T2 ON T1.@@ degre@@ e_@@ program_id = T2.@@ degre@@ e_@@ program_id GROUP BY T1.@@ degre@@ e_@@ program_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id , T1.first_name , T1.@@ middle_name , T1.last_name , count(*) , T1.student_id FROM Students AS T1 JOIN Student_@@ Enrol@@ ment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.student_id , T1.first_name , T1.@@ middle_name , T1.last_name , count(*) , T1.student_id FROM Students AS T1 JOIN Student_@@ Enrol@@ ment AS T2 ON T1.student_id = T2.student_id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT semest@@ er_name FROM Se@@ mest@@ ers WHERE semest@@ er_id NOT IN( SELECT semest@@ er_id FROM Student_@@ Enrol@@ ment )
SELECT semest@@ er_name FROM Se@@ mest@@ ers WHERE semest@@ er_id NOT IN( SELECT semest@@ er_id FROM Student_@@ Enrol@@ ment )
SELECT DISTINCT T1.course_name FROM Courses AS T1 JOIN Student_@@ Enrol@@ ment_@@ Courses AS T2 ON T1.course_id = T2.course_id
SELECT DISTINCT T1.course_name FROM Courses AS T1 JOIN Student_@@ Enrol@@ ment_@@ Courses AS T2 ON T1.course_id = T2.course_id
SELECT T1.course_name FROM Courses AS T1 JOIN Student_@@ Enrol@@ ment_@@ Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.course_name FROM Courses AS T1 JOIN Student_@@ Enrol@@ ment_@@ Courses AS T2 ON T1.course_id = T2.course_id GROUP BY T1.course_name ORDER BY count(*) DESC LIMIT 1
SELECT T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.@@ cur@@ rent@@ _@@ address_id = T2.address_id WHERE T2.@@ state_province_county = 'N@@ or@@ th@@ C@@ arol@@ in@@ a' EXCEPT SELECT DISTINCT T3.@@ last_name FROM Students AS T3 JOIN Student_@@ Enrol@@ ment AS T4 ON T3.@@ student_id = T4.@@ student_id
SELECT T1.last_name FROM Students AS T1 JOIN Addresses AS T2 ON T1.@@ cur@@ rent@@ _@@ address_id = T2.address_id WHERE T2.@@ state_province_county = 'N@@ or@@ th@@ C@@ arol@@ in@@ a' EXCEPT SELECT DISTINCT T3.@@ last_name FROM Students AS T3 JOIN Student_@@ Enrol@@ ment AS T4 ON T3.@@ student_id = T4.@@ student_id
SELECT T2.@@ tr@@ an@@ sc@@ ript@@ _date , T1.@@ tr@@ an@@ sc@@ ript@@ _id FROM T@@ ran@@ sc@@ ript@@ _@@ Cont@@ ents AS T1 JOIN T@@ ran@@ sc@@ ript@@ s AS T2 ON T1.@@ tr@@ an@@ sc@@ ript@@ _id = T2.@@ tr@@ an@@ sc@@ ript@@ _id GROUP BY T1.@@ tr@@ an@@ sc@@ ript@@ _id HAVING count(*) >= 2
SELECT T2.@@ tr@@ an@@ sc@@ ript@@ _date , T1.@@ tr@@ an@@ sc@@ ript@@ _id FROM T@@ ran@@ sc@@ ript@@ _@@ Cont@@ ents AS T1 JOIN T@@ ran@@ sc@@ ript@@ s AS T2 ON T1.@@ tr@@ an@@ sc@@ ript@@ _id = T2.@@ tr@@ an@@ sc@@ ript@@ _id GROUP BY T1.@@ tr@@ an@@ sc@@ ript@@ _id HAVING count(*) >= 2
SELECT cell_mobile_number FROM Students WHERE first_name = 'T@@ im@@ mo@@ th@@ y' AND last_name = 'W@@ ard@@ '
se@@ le@@ ct cell_mobile_number from students where first_name = '@@ tim@@ mo@@ th@@ y' and last_name = '@@ ward@@ '
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_@@ fir@@ st_@@ registered ASC LIMIT 1
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_@@ fir@@ st_@@ registered ASC LIMIT 1
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_@@ left ASC LIMIT 1
SELECT first_name , middle_name , last_name FROM Students ORDER BY date_@@ left ASC LIMIT 1
SELECT first_name FROM Students WHERE cur@@ rent@@ _@@ address_id != per@@ man@@ ent_@@ address_id
SELECT first_name FROM Students WHERE cur@@ rent@@ _@@ address_id != per@@ man@@ ent_@@ address_id
SELECT T1.address_id , T1.line_1 , T1.@@ line_@@ 2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.@@ cur@@ rent@@ _@@ address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.address_id , T1.line_1 , T1.@@ line_@@ 2 FROM Addresses AS T1 JOIN Students AS T2 ON T1.address_id = T2.@@ cur@@ rent@@ _@@ address_id GROUP BY T1.address_id ORDER BY count(*) DESC LIMIT 1
SELECT avg(@@ tr@@ an@@ sc@@ ript@@ _@@ date) FROM T@@ ran@@ sc@@ ript@@ s
SELECT avg(@@ tr@@ an@@ sc@@ ript@@ _@@ date) FROM T@@ ran@@ sc@@ ript@@ s
SELECT tr@@ an@@ sc@@ ript@@ _date , other_details FROM T@@ ran@@ sc@@ ript@@ s ORDER BY tr@@ an@@ sc@@ ript@@ _date ASC LIMIT 1
SELECT tr@@ an@@ sc@@ ript@@ _date , other_details FROM T@@ ran@@ sc@@ ript@@ s ORDER BY tr@@ an@@ sc@@ ript@@ _date ASC LIMIT 1
SELECT count(*) FROM T@@ ran@@ sc@@ ript@@ s
SELECT count(*) FROM T@@ ran@@ sc@@ ript@@ s
SELECT tr@@ an@@ sc@@ ript@@ _date FROM T@@ ran@@ sc@@ ript@@ s ORDER BY tr@@ an@@ sc@@ ript@@ _date DESC LIMIT 1
SELECT tr@@ an@@ sc@@ ript@@ _date FROM T@@ ran@@ sc@@ ript@@ s ORDER BY tr@@ an@@ sc@@ ript@@ _date DESC LIMIT 1
SELECT count(*) , student_@@ course_id FROM T@@ ran@@ sc@@ ript@@ _@@ Cont@@ ents GROUP BY student_@@ course_id ORDER BY count(*) DESC LIMIT 1
SELECT count(*) , student_@@ course_id FROM T@@ ran@@ sc@@ ript@@ _@@ Cont@@ ents GROUP BY student_@@ course_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.@@ tr@@ an@@ sc@@ ript@@ _date , T1.@@ tr@@ an@@ sc@@ ript@@ _id FROM T@@ ran@@ sc@@ ript@@ _@@ Cont@@ ents AS T1 JOIN T@@ ran@@ sc@@ ript@@ s AS T2 ON T1.@@ tr@@ an@@ sc@@ ript@@ _id = T2.@@ tr@@ an@@ sc@@ ript@@ _id GROUP BY T1.@@ tr@@ an@@ sc@@ ript@@ _id ORDER BY count(*) ASC LIMIT 1
SELECT T2.@@ tr@@ an@@ sc@@ ript@@ _date , T1.@@ tr@@ an@@ sc@@ ript@@ _id FROM T@@ ran@@ sc@@ ript@@ _@@ Cont@@ ents AS T1 JOIN T@@ ran@@ sc@@ ript@@ s AS T2 ON T1.@@ tr@@ an@@ sc@@ ript@@ _id = T2.@@ tr@@ an@@ sc@@ ript@@ _id GROUP BY T1.@@ tr@@ an@@ sc@@ ript@@ _id ORDER BY count(*) ASC LIMIT 1
SELECT DISTINCT T2.@@ semest@@ er_id FROM De@@ gre@@ e_@@ Pro@@ gram@@ s AS T1 JOIN Student_@@ Enrol@@ ment AS T2 ON T1.@@ degre@@ e_@@ program_id = T2.@@ degre@@ e_@@ program_id WHERE degre@@ e_@@ sum@@ mar@@ y_name = 'M@@ ast@@ er' INTERSECT SELECT DISTINCT T2.@@ semest@@ er_id FROM De@@ gre@@ e_@@ Pro@@ gram@@ s AS T1 JOIN Student_@@ Enrol@@ ment AS T2 ON T1.@@ degre@@ e_@@ program_id = T2.@@ degre@@ e_@@ program_id WHERE degre@@ e_@@ sum@@ mar@@ y_name = 'B@@ ac@@ hel@@ or'
SELECT DISTINCT T2.@@ semest@@ er_id FROM De@@ gre@@ e_@@ Pro@@ gram@@ s AS T1 JOIN Student_@@ Enrol@@ ment AS T2 ON T1.@@ degre@@ e_@@ program_id = T2.@@ degre@@ e_@@ program_id WHERE degre@@ e_@@ sum@@ mar@@ y_name = 'M@@ ast@@ er' INTERSECT SELECT DISTINCT T2.@@ semest@@ er_id FROM De@@ gre@@ e_@@ Pro@@ gram@@ s AS T1 JOIN Student_@@ Enrol@@ ment AS T2 ON T1.@@ degre@@ e_@@ program_id = T2.@@ degre@@ e_@@ program_id WHERE degre@@ e_@@ sum@@ mar@@ y_name = 'B@@ ac@@ hel@@ or'
SELECT count(DISTINCT cur@@ rent@@ _@@ address_id) FROM Students
SELECT count(DISTINCT cur@@ rent@@ _@@ address_id) FROM Students
SELECT other_@@ student_details FROM Students ORDER BY other_@@ student_details DESC
SELECT other_@@ student_details FROM Students ORDER BY other_@@ student_details DESC
SELECT section@@ _description FROM Se@@ ction@@ s WHERE section@@ _name = '@@ h@@ '
SELECT section@@ _description FROM Se@@ ction@@ s WHERE section@@ _name = '@@ h@@ '
se@@ le@@ ct t1.@@ first_name from students as t1 join addresses as t2 on t1.@@ per@@ man@@ ent_@@ address_id = t2.address_id where t2.@@ country = '@@ ha@@ iti@@ ' or t1.@@ cell_mobile_number = '@@ 09@@ 7@@ 00@@ 16@@ 6@@ 5@@ 8@@ 2@@ '
se@@ le@@ ct t1.@@ first_name from students as t1 join addresses as t2 on t1.@@ per@@ man@@ ent_@@ address_id = t2.address_id where t2.@@ country = '@@ ha@@ iti@@ ' or t1.@@ cell_mobile_number = '@@ 09@@ 7@@ 00@@ 16@@ 6@@ 5@@ 8@@ 2@@ '
SELECT Title FROM C@@ art@@ o@@ on ORDER BY title
SELECT Title FROM C@@ art@@ o@@ on ORDER BY title
SELECT Title FROM C@@ art@@ o@@ on WHERE Di@@ rect@@ ed_by = "B@@ en Jon@@ es@@ ";
SELECT Title FROM C@@ art@@ o@@ on WHERE Di@@ rect@@ ed_by = "B@@ en Jon@@ es@@ ";
SELECT count(*) FROM C@@ art@@ o@@ on WHERE W@@ rit@@ t@@ en@@ _@@ by = "Jo@@ se@@ p@@ h K@@ u@@ h@@ r@@ ";
SELECT count(*) FROM C@@ art@@ o@@ on WHERE W@@ rit@@ t@@ en@@ _@@ by = "Jo@@ se@@ p@@ h K@@ u@@ h@@ r@@ ";
SELECT title , Di@@ rect@@ ed_by FROM C@@ art@@ o@@ on ORDER BY O@@ ri@@ g@@ in@@ al_@@ air@@ _date
SELECT title , Di@@ rect@@ ed_by FROM C@@ art@@ o@@ on ORDER BY O@@ ri@@ g@@ in@@ al_@@ air@@ _date
SELECT Title FROM C@@ art@@ o@@ on WHERE Di@@ rect@@ ed_by = "B@@ en Jon@@ es" OR Di@@ rect@@ ed_by = "Bran@@ d@@ on Vi@@ et@@ ti@@ ";
SELECT Title FROM C@@ art@@ o@@ on WHERE Di@@ rect@@ ed_by = "B@@ en Jon@@ es" OR Di@@ rect@@ ed_by = "Bran@@ d@@ on Vi@@ et@@ ti@@ ";
SELECT Country , count(*) FROM T@@ V@@ _C@@ han@@ nel GROUP BY Country ORDER BY count(*) DESC LIMIT 1;
SELECT Country , count(*) FROM T@@ V@@ _C@@ han@@ nel GROUP BY Country ORDER BY count(*) DESC LIMIT 1;
SELECT count(DISTINCT ser@@ i@@ es_@@ name) , count(DISTINCT cont@@ ent) FROM T@@ V@@ _C@@ han@@ nel@@ ;
SELECT count(DISTINCT ser@@ i@@ es_@@ name) , count(DISTINCT cont@@ ent) FROM T@@ V@@ _C@@ han@@ nel@@ ;
SELECT Cont@@ ent FROM T@@ V@@ _C@@ han@@ nel WHERE ser@@ i@@ es@@ _name = "S@@ k@@ y R@@ adi@@ o@@ ";
SELECT Cont@@ ent FROM T@@ V@@ _C@@ han@@ nel WHERE ser@@ i@@ es@@ _name = "S@@ k@@ y R@@ adi@@ o@@ ";
SELECT P@@ ack@@ age_@@ O@@ pt@@ ion FROM T@@ V@@ _C@@ han@@ nel WHERE ser@@ i@@ es@@ _name = "S@@ k@@ y R@@ adi@@ o@@ ";
SELECT P@@ ack@@ age_@@ O@@ pt@@ ion FROM T@@ V@@ _C@@ han@@ nel WHERE ser@@ i@@ es@@ _name = "S@@ k@@ y R@@ adi@@ o@@ ";
SELECT count(*) FROM T@@ V@@ _C@@ han@@ nel WHERE L@@ AN@@ G@@ U@@ A@@ G@@ E = "@@ English@@ ";
SELECT count(*) FROM T@@ V@@ _C@@ han@@ nel WHERE L@@ AN@@ G@@ U@@ A@@ G@@ E = "@@ English@@ ";
SELECT L@@ AN@@ G@@ U@@ A@@ G@@ E , count(*) FROM T@@ V@@ _C@@ han@@ nel GROUP BY L@@ AN@@ G@@ U@@ A@@ G@@ E ORDER BY count(*) ASC LIMIT 1;
SELECT L@@ AN@@ G@@ U@@ A@@ G@@ E , count(*) FROM T@@ V@@ _C@@ han@@ nel GROUP BY L@@ AN@@ G@@ U@@ A@@ G@@ E ORDER BY count(*) ASC LIMIT 1;
SELECT L@@ AN@@ G@@ U@@ A@@ G@@ E , count(*) FROM T@@ V@@ _C@@ han@@ nel GROUP BY L@@ AN@@ G@@ U@@ A@@ G@@ E
SELECT L@@ AN@@ G@@ U@@ A@@ G@@ E , count(*) FROM T@@ V@@ _C@@ han@@ nel GROUP BY L@@ AN@@ G@@ U@@ A@@ G@@ E
SELECT T1.@@ ser@@ i@@ es@@ _name FROM T@@ V@@ _C@@ han@@ nel AS T1 JOIN C@@ art@@ o@@ on AS T2 ON T1.id = T2.C@@ han@@ nel WHERE T2.@@ Title = "T@@ he R@@ i@@ se of the B@@ l@@ ue Be@@ et@@ le@@ !@@ ";
SELECT T1.@@ ser@@ i@@ es@@ _name FROM T@@ V@@ _C@@ han@@ nel AS T1 JOIN C@@ art@@ o@@ on AS T2 ON T1.id = T2.C@@ han@@ nel WHERE T2.@@ Title = "T@@ he R@@ i@@ se of the B@@ l@@ ue Be@@ et@@ le@@ !@@ ";
SELECT T2.@@ Title FROM T@@ V@@ _C@@ han@@ nel AS T1 JOIN C@@ art@@ o@@ on AS T2 ON T1.id = T2.C@@ han@@ nel WHERE T1.@@ ser@@ i@@ es@@ _name = "S@@ k@@ y R@@ adi@@ o@@ ";
SELECT T2.@@ Title FROM T@@ V@@ _C@@ han@@ nel AS T1 JOIN C@@ art@@ o@@ on AS T2 ON T1.id = T2.C@@ han@@ nel WHERE T1.@@ ser@@ i@@ es@@ _name = "S@@ k@@ y R@@ adi@@ o@@ ";
SELECT E@@ p@@ is@@ o@@ de FROM T@@ V@@ _s@@ er@@ ies ORDER BY rating
SELECT E@@ p@@ is@@ o@@ de FROM T@@ V@@ _s@@ er@@ ies ORDER BY rating
SELECT E@@ p@@ is@@ o@@ de , Rating FROM T@@ V@@ _s@@ er@@ ies ORDER BY Rating DESC LIMIT 3;
SELECT E@@ p@@ is@@ o@@ de , Rating FROM T@@ V@@ _s@@ er@@ ies ORDER BY Rating DESC LIMIT 3;
SELECT max(S@@ HA@@ RE@@ ) , min(@@ S@@ HA@@ RE@@ ) FROM T@@ V@@ _s@@ er@@ i@@ es@@ ;
SELECT max(S@@ HA@@ RE@@ ) , min(@@ S@@ HA@@ RE@@ ) FROM T@@ V@@ _s@@ er@@ i@@ es@@ ;
SELECT Air@@ _Date FROM T@@ V@@ _s@@ er@@ ies WHERE E@@ p@@ is@@ o@@ de = "A L@@ o@@ ve of a L@@ if@@ et@@ ime@@ ";
SELECT Air@@ _Date FROM T@@ V@@ _s@@ er@@ ies WHERE E@@ p@@ is@@ o@@ de = "A L@@ o@@ ve of a L@@ if@@ et@@ ime@@ ";
SELECT W@@ ee@@ k@@ ly_@@ Rank FROM T@@ V@@ _s@@ er@@ ies WHERE E@@ p@@ is@@ o@@ de = "A L@@ o@@ ve of a L@@ if@@ et@@ ime@@ ";
SELECT W@@ ee@@ k@@ ly_@@ Rank FROM T@@ V@@ _s@@ er@@ ies WHERE E@@ p@@ is@@ o@@ de = "A L@@ o@@ ve of a L@@ if@@ et@@ ime@@ ";
SELECT T1.@@ ser@@ i@@ es@@ _name FROM T@@ V@@ _C@@ han@@ nel AS T1 JOIN T@@ V@@ _s@@ er@@ ies AS T2 ON T1.id = T2.C@@ han@@ nel WHERE T2.E@@ p@@ is@@ o@@ de = "A L@@ o@@ ve of a L@@ if@@ et@@ ime@@ ";
SELECT T1.@@ ser@@ i@@ es@@ _name FROM T@@ V@@ _C@@ han@@ nel AS T1 JOIN T@@ V@@ _s@@ er@@ ies AS T2 ON T1.id = T2.C@@ han@@ nel WHERE T2.E@@ p@@ is@@ o@@ de = "A L@@ o@@ ve of a L@@ if@@ et@@ ime@@ ";
SELECT T2.E@@ p@@ is@@ o@@ de FROM T@@ V@@ _C@@ han@@ nel AS T1 JOIN T@@ V@@ _s@@ er@@ ies AS T2 ON T1.id = T2.C@@ han@@ nel WHERE T1.@@ ser@@ i@@ es@@ _name = "S@@ k@@ y R@@ adi@@ o@@ ";
SELECT T2.E@@ p@@ is@@ o@@ de FROM T@@ V@@ _C@@ han@@ nel AS T1 JOIN T@@ V@@ _s@@ er@@ ies AS T2 ON T1.id = T2.C@@ han@@ nel WHERE T1.@@ ser@@ i@@ es@@ _name = "S@@ k@@ y R@@ adi@@ o@@ ";
SELECT count(*) , Di@@ rect@@ ed_by FROM c@@ art@@ o@@ on GROUP BY Di@@ rect@@ ed_by
SELECT count(*) , Di@@ rect@@ ed_by FROM c@@ art@@ o@@ on GROUP BY Di@@ rect@@ ed_by
se@@ le@@ ct product@@ ion@@ _code , channel from c@@ art@@ o@@ on order by orig@@ in@@ al_@@ air@@ _date desc li@@ mi@@ t 1
se@@ le@@ ct product@@ ion@@ _code , channel from c@@ art@@ o@@ on order by orig@@ in@@ al_@@ air@@ _date desc li@@ mi@@ t 1
SELECT p@@ ack@@ age_@@ op@@ t@@ ion , ser@@ i@@ es@@ _name FROM T@@ V@@ _C@@ han@@ nel WHERE high@@ t_@@ de@@ fin@@ ition@@ _T@@ V = "@@ ye@@ s"
SELECT p@@ ack@@ age_@@ op@@ t@@ ion , ser@@ i@@ es@@ _name FROM T@@ V@@ _C@@ han@@ nel WHERE high@@ t_@@ de@@ fin@@ ition@@ _T@@ V = "@@ ye@@ s"
SELECT T1.country FROM T@@ V@@ _C@@ han@@ nel AS T1 JOIN c@@ art@@ o@@ on AS T2 ON T1.id = T2.C@@ han@@ nel WHERE T2.@@ writ@@ t@@ en@@ _@@ by = 'T@@ o@@ d@@ d C@@ a@@ se@@ y'
SELECT T1.country FROM T@@ V@@ _C@@ han@@ nel AS T1 JOIN c@@ art@@ o@@ on AS T2 ON T1.id = T2.C@@ han@@ nel WHERE T2.@@ writ@@ t@@ en@@ _@@ by = 'T@@ o@@ d@@ d C@@ a@@ se@@ y'
SELECT country FROM T@@ V@@ _C@@ han@@ nel EXCEPT SELECT T1.country FROM T@@ V@@ _C@@ han@@ nel AS T1 JOIN c@@ art@@ o@@ on AS T2 ON T1.id = T2.C@@ han@@ nel WHERE T2.@@ writ@@ t@@ en@@ _@@ by = 'T@@ o@@ d@@ d C@@ a@@ se@@ y'
SELECT country FROM T@@ V@@ _C@@ han@@ nel EXCEPT SELECT T1.country FROM T@@ V@@ _C@@ han@@ nel AS T1 JOIN c@@ art@@ o@@ on AS T2 ON T1.id = T2.C@@ han@@ nel WHERE T2.@@ writ@@ t@@ en@@ _@@ by = 'T@@ o@@ d@@ d C@@ a@@ se@@ y'
SELECT T1.@@ ser@@ i@@ es@@ _name , T1.country FROM T@@ V@@ _C@@ han@@ nel AS T1 JOIN c@@ art@@ o@@ on AS T2 ON T1.id = T2.C@@ han@@ nel WHERE T2.@@ directed_by = 'M@@ ichael C@@ hang@@ ' INTERSECT SELECT T1.@@ ser@@ i@@ es@@ _name , T1.country FROM T@@ V@@ _C@@ han@@ nel AS T1 JOIN c@@ art@@ o@@ on AS T2 ON T1.id = T2.C@@ han@@ nel WHERE T2.@@ directed_by = 'B@@ en Jon@@ es'
SELECT T1.@@ ser@@ i@@ es@@ _name , T1.country FROM T@@ V@@ _C@@ han@@ nel AS T1 JOIN c@@ art@@ o@@ on AS T2 ON T1.id = T2.C@@ han@@ nel WHERE T2.@@ directed_by = 'M@@ ichael C@@ hang@@ ' INTERSECT SELECT T1.@@ ser@@ i@@ es@@ _name , T1.country FROM T@@ V@@ _C@@ han@@ nel AS T1 JOIN c@@ art@@ o@@ on AS T2 ON T1.id = T2.C@@ han@@ nel WHERE T2.@@ directed_by = 'B@@ en Jon@@ es'
SELECT Pi@@ x@@ el@@ _@@ as@@ p@@ e@@ ct@@ _@@ rat@@ io@@ _P@@ A@@ R , country FROM t@@ v@@ _@@ channel WHERE L@@ AN@@ G@@ U@@ A@@ G@@ E != '@@ English@@ '
SELECT Pi@@ x@@ el@@ _@@ as@@ p@@ e@@ ct@@ _@@ rat@@ io@@ _P@@ A@@ R , country FROM t@@ v@@ _@@ channel WHERE L@@ AN@@ G@@ U@@ A@@ G@@ E != '@@ English@@ '
SELECT id FROM t@@ v@@ _@@ channel GROUP BY country HAVING count(*) > 2
SELECT id FROM t@@ v@@ _@@ channel GROUP BY country HAVING count(*) > 2
SELECT id FROM T@@ V@@ _C@@ han@@ nel EXCEPT SELECT channel FROM c@@ art@@ o@@ on WHERE directed_by = 'B@@ en Jon@@ es'
SELECT id FROM T@@ V@@ _C@@ han@@ nel EXCEPT SELECT channel FROM c@@ art@@ o@@ on WHERE directed_by = 'B@@ en Jon@@ es'
SELECT p@@ ack@@ age_@@ op@@ t@@ ion FROM T@@ V@@ _C@@ han@@ nel WHERE id NOT IN (SELECT channel FROM c@@ art@@ o@@ on WHERE directed_by = 'B@@ en Jon@@ es')
SELECT p@@ ack@@ age_@@ op@@ t@@ ion FROM T@@ V@@ _C@@ han@@ nel WHERE id NOT IN (SELECT channel FROM c@@ art@@ o@@ on WHERE directed_by = 'B@@ en Jon@@ es')
SELECT count(*) FROM po@@ k@@ er_@@ player
SELECT count(*) FROM po@@ k@@ er_@@ player
SELECT E@@ ar@@ n@@ ings FROM po@@ k@@ er_@@ player ORDER BY E@@ ar@@ n@@ ings DESC
SELECT E@@ ar@@ n@@ ings FROM po@@ k@@ er_@@ player ORDER BY E@@ ar@@ n@@ ings DESC
SELECT Fin@@ al_@@ T@@ a@@ ble@@ _Made , B@@ est@@ _F@@ in@@ is@@ h FROM po@@ k@@ er_@@ player
SELECT Fin@@ al_@@ T@@ a@@ ble@@ _Made , B@@ est@@ _F@@ in@@ is@@ h FROM po@@ k@@ er_@@ player
SELECT avg(@@ E@@ ar@@ n@@ ing@@ s) FROM po@@ k@@ er_@@ player
SELECT avg(@@ E@@ ar@@ n@@ ing@@ s) FROM po@@ k@@ er_@@ player
SELECT M@@ one@@ y_@@ Rank FROM po@@ k@@ er_@@ player ORDER BY E@@ ar@@ n@@ ings DESC LIMIT 1
SELECT M@@ one@@ y_@@ Rank FROM po@@ k@@ er_@@ player ORDER BY E@@ ar@@ n@@ ings DESC LIMIT 1
SELECT max(@@ Fin@@ al_@@ T@@ a@@ ble@@ _@@ Ma@@ de@@ ) FROM po@@ k@@ er_@@ player WHERE E@@ ar@@ n@@ ings < 200000
SELECT max(@@ Fin@@ al_@@ T@@ a@@ ble@@ _@@ Ma@@ de@@ ) FROM po@@ k@@ er_@@ player WHERE E@@ ar@@ n@@ ings < 200000
SELECT T1.Name FROM people AS T1 JOIN po@@ k@@ er_@@ player AS T2 ON T1.People_ID = T2.People_ID
SELECT T1.Name FROM people AS T1 JOIN po@@ k@@ er_@@ player AS T2 ON T1.People_ID = T2.People_ID
SELECT T1.Name FROM people AS T1 JOIN po@@ k@@ er_@@ player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.E@@ ar@@ n@@ ings > 300@@ 000
SELECT T1.Name FROM people AS T1 JOIN po@@ k@@ er_@@ player AS T2 ON T1.People_ID = T2.People_ID WHERE T2.E@@ ar@@ n@@ ings > 300@@ 000
SELECT T1.Name FROM people AS T1 JOIN po@@ k@@ er_@@ player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.F@@ in@@ al_@@ T@@ a@@ ble@@ _Made
SELECT T1.Name FROM people AS T1 JOIN po@@ k@@ er_@@ player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.F@@ in@@ al_@@ T@@ a@@ ble@@ _Made
SELECT T1.@@ Birth_Date FROM people AS T1 JOIN po@@ k@@ er_@@ player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.E@@ ar@@ n@@ ings ASC LIMIT 1
SELECT T1.@@ Birth_Date FROM people AS T1 JOIN po@@ k@@ er_@@ player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.E@@ ar@@ n@@ ings ASC LIMIT 1
SELECT T2.M@@ one@@ y_@@ Rank FROM people AS T1 JOIN po@@ k@@ er_@@ player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT T2.M@@ one@@ y_@@ Rank FROM people AS T1 JOIN po@@ k@@ er_@@ player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T1.Height DESC LIMIT 1
SELECT avg(T2.@@ E@@ ar@@ n@@ ing@@ s) FROM people AS T1 JOIN po@@ k@@ er_@@ player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Height > 200
SELECT avg(T2.@@ E@@ ar@@ n@@ ing@@ s) FROM people AS T1 JOIN po@@ k@@ er_@@ player AS T2 ON T1.People_ID = T2.People_ID WHERE T1.Height > 200
SELECT T1.Name FROM people AS T1 JOIN po@@ k@@ er_@@ player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.E@@ ar@@ n@@ ings DESC
SELECT T1.Name FROM people AS T1 JOIN po@@ k@@ er_@@ player AS T2 ON T1.People_ID = T2.People_ID ORDER BY T2.E@@ ar@@ n@@ ings DESC
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality , COUNT(*) FROM people GROUP BY Nationality
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality ORDER BY COUNT(*) DESC LIMIT 1
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Nationality FROM people GROUP BY Nationality HAVING COUNT(*) >= 2
SELECT Name , Birth_Date FROM people ORDER BY Name ASC
SELECT Name , Birth_Date FROM people ORDER BY Name ASC
SELECT Name FROM people WHERE Nationality != "R@@ uss@@ i@@ a"
SELECT Name FROM people WHERE Nationality != "R@@ uss@@ i@@ a"
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM po@@ k@@ er_@@ play@@ er)
SELECT Name FROM people WHERE People_ID NOT IN (SELECT People_ID FROM po@@ k@@ er_@@ play@@ er)
SELECT count(DISTINCT N@@ ational@@ ity) FROM people
SELECT count(DISTINCT N@@ ational@@ ity) FROM people
SELECT count(*) FROM are@@ a_@@ code@@ _@@ state
SELECT cont@@ est@@ ant@@ _number , cont@@ est@@ ant@@ _name FROM cont@@ est@@ ant@@ s ORDER BY cont@@ est@@ ant@@ _name DESC
SELECT v@@ o@@ te_id , phone_number , state FROM votes
SELECT max(@@ are@@ a_@@ code) , min(@@ are@@ a_@@ code) FROM are@@ a_@@ code@@ _@@ state
SELECT max(@@ cre@@ at@@ ed) FROM votes WHERE state = 'C@@ A'
SELECT cont@@ est@@ ant@@ _name FROM cont@@ est@@ ant@@ s WHERE cont@@ est@@ ant@@ _name != '@@ J@@ ess@@ i@@ e Al@@ low@@ ay@@ '
SELECT DISTINCT state , created FROM votes
SELECT T1.@@ cont@@ est@@ ant@@ _number , T1.@@ cont@@ est@@ ant@@ _name FROM cont@@ est@@ ant@@ s AS T1 JOIN votes AS T2 ON T1.@@ cont@@ est@@ ant@@ _number = T2.@@ cont@@ est@@ ant@@ _number GROUP BY T1.@@ cont@@ est@@ ant@@ _number HAVING count(*) >= 2
SELECT T1.@@ cont@@ est@@ ant@@ _number , T1.@@ cont@@ est@@ ant@@ _name FROM cont@@ est@@ ant@@ s AS T1 JOIN votes AS T2 ON T1.@@ cont@@ est@@ ant@@ _number = T2.@@ cont@@ est@@ ant@@ _number GROUP BY T1.@@ cont@@ est@@ ant@@ _number ORDER BY count(*) ASC LIMIT 1
SELECT count(*) FROM votes WHERE state = 'NY@@ ' OR state = 'C@@ A'
SELECT count(*) FROM cont@@ est@@ ant@@ s WHERE cont@@ est@@ ant@@ _number NOT IN ( SELECT cont@@ est@@ ant@@ _number FROM votes )
SELECT T1.@@ are@@ a@@ _code FROM are@@ a_@@ code@@ _@@ state AS T1 JOIN votes AS T2 ON T1.state = T2.@@ state GROUP BY T1.@@ are@@ a@@ _code ORDER BY count(*) DESC LIMIT 1
SELECT T2.@@ created , T2.@@ state , T2.@@ phone_number FROM cont@@ est@@ ant@@ s AS T1 JOIN votes AS T2 ON T1.@@ cont@@ est@@ ant@@ _number = T2.@@ cont@@ est@@ ant@@ _number WHERE T1.@@ cont@@ est@@ ant@@ _name = 'T@@ a@@ bath@@ a Ge@@ h@@ l@@ ing'
SELECT T3.@@ are@@ a@@ _code FROM cont@@ est@@ ant@@ s AS T1 JOIN votes AS T2 ON T1.@@ cont@@ est@@ ant@@ _number = T2.@@ cont@@ est@@ ant@@ _number JOIN are@@ a_@@ code@@ _@@ state AS T3 ON T2.@@ state = T3.@@ state WHERE T1.@@ cont@@ est@@ ant@@ _name = 'T@@ a@@ bath@@ a Ge@@ h@@ l@@ ing' INTERSECT SELECT T3.@@ are@@ a@@ _code FROM cont@@ est@@ ant@@ s AS T1 JOIN votes AS T2 ON T1.@@ cont@@ est@@ ant@@ _number = T2.@@ cont@@ est@@ ant@@ _number JOIN are@@ a_@@ code@@ _@@ state AS T3 ON T2.@@ state = T3.@@ state WHERE T1.@@ cont@@ est@@ ant@@ _name = 'K@@ el@@ ly Cla@@ uss@@ '
se@@ le@@ ct cont@@ est@@ ant@@ _name from cont@@ est@@ ant@@ s where cont@@ est@@ ant@@ _name li@@ k@@ e "%@@ al%"
SELECT Name FROM country WHERE In@@ de@@ p@@ Year > 19@@ 50
SELECT Name FROM country WHERE In@@ de@@ p@@ Year > 19@@ 50
SELECT count(*) FROM country WHERE G@@ overnment@@ F@@ orm = "Republic@@ "
SELECT count(*) FROM country WHERE G@@ overnment@@ F@@ orm = "Republic@@ "
SELECT sum(@@ S@@ ur@@ f@@ ac@@ e@@ A@@ re@@ a) FROM country WHERE Region = "C@@ ar@@ ib@@ be@@ an"
SELECT sum(@@ S@@ ur@@ f@@ ac@@ e@@ A@@ re@@ a) FROM country WHERE Region = "C@@ ar@@ ib@@ be@@ an"
SELECT Cont@@ in@@ ent FROM country WHERE Name = "An@@ gu@@ il@@ la@@ "
SELECT Cont@@ in@@ ent FROM country WHERE Name = "An@@ gu@@ il@@ la@@ "
SELECT Region FROM country AS T1 JOIN city AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code WHERE T2.Name = "K@@ ab@@ ul@@ "
SELECT Region FROM country AS T1 JOIN city AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code WHERE T2.Name = "K@@ ab@@ ul@@ "
SELECT T2.@@ L@@ an@@ gu@@ age FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code WHERE T1.Name = "A@@ r@@ ub@@ a" ORDER BY Per@@ c@@ ent@@ age DESC LIMIT 1
SELECT T2.@@ L@@ an@@ gu@@ age FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code WHERE T1.Name = "A@@ r@@ ub@@ a" ORDER BY Per@@ c@@ ent@@ age DESC LIMIT 1
SELECT Population , L@@ i@@ fe@@ Exp@@ e@@ ct@@ ancy FROM country WHERE Name = "B@@ raz@@ il"
SELECT Population , L@@ i@@ fe@@ Exp@@ e@@ ct@@ ancy FROM country WHERE Name = "B@@ raz@@ il"
SELECT Population , Region FROM country WHERE Name = "An@@ go@@ la@@ "
SELECT Population , Region FROM country WHERE Name = "An@@ go@@ la@@ "
SELECT avg(@@ L@@ i@@ fe@@ Exp@@ e@@ ct@@ anc@@ y) FROM country WHERE Region = "Central A@@ f@@ ric@@ a"
SELECT avg(@@ L@@ i@@ fe@@ Exp@@ e@@ ct@@ anc@@ y) FROM country WHERE Region = "Central A@@ f@@ ric@@ a"
SELECT Name FROM country WHERE Cont@@ in@@ ent = "A@@ si@@ a" ORDER BY L@@ i@@ fe@@ Exp@@ e@@ ct@@ ancy LIMIT 1
SELECT Name FROM country WHERE Cont@@ in@@ ent = "A@@ si@@ a" ORDER BY L@@ i@@ fe@@ Exp@@ e@@ ct@@ ancy LIMIT 1
SELECT sum(@@ Population) , max(@@ G@@ N@@ P@@ ) FROM country WHERE Cont@@ in@@ ent = "A@@ si@@ a"
SELECT sum(@@ Population) , max(@@ G@@ N@@ P@@ ) FROM country WHERE Cont@@ in@@ ent = "A@@ si@@ a"
SELECT avg(@@ L@@ i@@ fe@@ Exp@@ e@@ ct@@ anc@@ y) FROM country WHERE Cont@@ in@@ ent = "A@@ f@@ ric@@ a" AND G@@ overnment@@ F@@ orm = "Republic@@ "
SELECT avg(@@ L@@ i@@ fe@@ Exp@@ e@@ ct@@ anc@@ y) FROM country WHERE Cont@@ in@@ ent = "A@@ f@@ ric@@ a" AND G@@ overnment@@ F@@ orm = "Republic@@ "
SELECT sum(@@ S@@ ur@@ f@@ ac@@ e@@ A@@ re@@ a) FROM country WHERE Cont@@ in@@ ent = "A@@ si@@ a" OR Cont@@ in@@ ent = "E@@ uro@@ p@@ e"
SELECT sum(@@ S@@ ur@@ f@@ ac@@ e@@ A@@ re@@ a) FROM country WHERE Cont@@ in@@ ent = "A@@ si@@ a" OR Cont@@ in@@ ent = "E@@ uro@@ p@@ e"
SELECT sum(@@ Population) FROM city WHERE District = "G@@ el@@ d@@ er@@ land"
SELECT sum(@@ Population) FROM city WHERE District = "G@@ el@@ d@@ er@@ land"
SELECT avg(G@@ N@@ P@@ ) , sum(@@ popul@@ ation) FROM country WHERE G@@ overnment@@ F@@ orm = "US T@@ er@@ rit@@ or@@ y"
SELECT avg(G@@ N@@ P@@ ) , sum(@@ popul@@ ation) FROM country WHERE G@@ overnment@@ F@@ orm = "US T@@ er@@ rit@@ or@@ y"
SELECT count(DISTINCT L@@ AN@@ G@@ U@@ A@@ G@@ E@@ ) FROM countr@@ y@@ language
SELECT count(DISTINCT L@@ AN@@ G@@ U@@ A@@ G@@ E@@ ) FROM countr@@ y@@ language
SELECT count(DISTINCT G@@ overnment@@ F@@ orm@@ ) FROM country WHERE Cont@@ in@@ ent = "A@@ f@@ ric@@ a"
SELECT count(DISTINCT G@@ overnment@@ F@@ orm@@ ) FROM country WHERE Cont@@ in@@ ent = "A@@ f@@ ric@@ a"
SELECT COUNT(@@ T2.@@ L@@ an@@ gu@@ age) FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code WHERE T1.Name = "A@@ r@@ ub@@ a"
SELECT COUNT(@@ T2.@@ L@@ an@@ gu@@ age) FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code WHERE T1.Name = "A@@ r@@ ub@@ a"
SELECT COUNT(*) FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code WHERE T1.Name = "A@@ f@@ gh@@ an@@ ist@@ an" AND I@@ s@@ Offici@@ al = "T@@ "
SELECT COUNT(*) FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code WHERE T1.Name = "A@@ f@@ gh@@ an@@ ist@@ an" AND I@@ s@@ Offici@@ al = "T@@ "
SELECT T1.Name FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code GROUP BY T1.Name ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.@@ Cont@@ in@@ ent FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code GROUP BY T1.@@ Cont@@ in@@ ent ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.@@ Cont@@ in@@ ent FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code GROUP BY T1.@@ Cont@@ in@@ ent ORDER BY COUNT(*) DESC LIMIT 1
SELECT COUNT(*) FROM (SELECT T1.Name FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code WHERE T2.@@ L@@ an@@ gu@@ age = "@@ English@@ " INTERSECT SELECT T1.Name FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code WHERE T2.@@ L@@ an@@ gu@@ age = "D@@ ut@@ ch@@ ")
SELECT COUNT(*) FROM (SELECT T1.Name FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code WHERE T2.@@ L@@ an@@ gu@@ age = "@@ English@@ " INTERSECT SELECT T1.Name FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code WHERE T2.@@ L@@ an@@ gu@@ age = "D@@ ut@@ ch@@ ")
SELECT T1.Name FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code WHERE T2.@@ L@@ an@@ gu@@ age = "@@ English@@ " INTERSECT SELECT T1.Name FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code WHERE T2.@@ L@@ an@@ gu@@ age = "F@@ ren@@ ch@@ "
SELECT T1.Name FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code WHERE T2.@@ L@@ an@@ gu@@ age = "@@ English@@ " INTERSECT SELECT T1.Name FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code WHERE T2.@@ L@@ an@@ gu@@ age = "F@@ ren@@ ch@@ "
SELECT T1.Name FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code WHERE T2.@@ L@@ an@@ gu@@ age = "@@ English@@ " AND T2.@@ I@@ s@@ Offici@@ al = "T@@ " INTERSECT SELECT T1.Name FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code WHERE T2.@@ L@@ an@@ gu@@ age = "F@@ ren@@ ch@@ " AND T2.@@ I@@ s@@ Offici@@ al = "T@@ "
SELECT T1.Name FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code WHERE T2.@@ L@@ an@@ gu@@ age = "@@ English@@ " AND T2.@@ I@@ s@@ Offici@@ al = "T@@ " INTERSECT SELECT T1.Name FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code WHERE T2.@@ L@@ an@@ gu@@ age = "F@@ ren@@ ch@@ " AND T2.@@ I@@ s@@ Offici@@ al = "T@@ "
SELECT COUNT@@ ( DISTINCT Cont@@ in@@ ent) FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code WHERE T2.@@ L@@ an@@ gu@@ age = "Chin@@ es@@ e"
SELECT COUNT@@ ( DISTINCT Cont@@ in@@ ent) FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code WHERE T2.@@ L@@ an@@ gu@@ age = "Chin@@ es@@ e"
SELECT DISTINCT T1.@@ Region FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code WHERE T2.@@ L@@ an@@ gu@@ age = "@@ English@@ " OR T2.@@ L@@ an@@ gu@@ age = "D@@ ut@@ ch@@ "
SELECT DISTINCT T1.@@ Region FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code WHERE T2.@@ L@@ an@@ gu@@ age = "@@ English@@ " OR T2.@@ L@@ an@@ gu@@ age = "D@@ ut@@ ch@@ "
se@@ le@@ ct t1.name from country as t1 join countr@@ y@@ language as t2 on t1.@@ code = t2.@@ countr@@ y@@ code where t2.@@ language = "english" and is@@ official = "@@ t" un@@ ion se@@ le@@ ct t1.name from country as t1 join countr@@ y@@ language as t2 on t1.@@ code = t2.@@ countr@@ y@@ code where t2.@@ language = "@@ du@@ t@@ ch@@ " and is@@ official = "@@ t"
SELECT * FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code WHERE T2.@@ L@@ an@@ gu@@ age = "@@ English@@ " AND I@@ s@@ Offici@@ al = "T@@ " UNION SELECT * FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code WHERE T2.@@ L@@ an@@ gu@@ age = "D@@ ut@@ ch@@ " AND I@@ s@@ Offici@@ al = "T@@ "
SELECT T2.@@ L@@ an@@ gu@@ age FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code WHERE T1.@@ Cont@@ in@@ ent = "A@@ si@@ a" GROUP BY T2.@@ L@@ an@@ gu@@ age ORDER BY COUNT (*) DESC LIMIT 1
SELECT T2.@@ L@@ an@@ gu@@ age FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code WHERE T1.@@ Cont@@ in@@ ent = "A@@ si@@ a" GROUP BY T2.@@ L@@ an@@ gu@@ age ORDER BY COUNT (*) DESC LIMIT 1
SELECT T2.@@ L@@ an@@ gu@@ age FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code WHERE T1.G@@ overnment@@ F@@ orm = "Republic@@ " GROUP BY T2.@@ L@@ an@@ gu@@ age HAVING COUNT(*) = 1
SELECT T2.@@ L@@ an@@ gu@@ age FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code WHERE T1.G@@ overnment@@ F@@ orm = "Republic@@ " GROUP BY T2.@@ L@@ an@@ gu@@ age HAVING COUNT(*) = 1
SELECT T1.Name , T1.Population FROM city AS T1 JOIN countr@@ y@@ language AS T2 ON T1.Countr@@ y@@ Code = T2.Countr@@ y@@ Code WHERE T2.@@ L@@ an@@ gu@@ age = "@@ English@@ " ORDER BY T1.Population DESC LIMIT 1
SELECT T1.Name , T1.Population FROM city AS T1 JOIN countr@@ y@@ language AS T2 ON T1.Countr@@ y@@ Code = T2.Countr@@ y@@ Code WHERE T2.@@ L@@ an@@ gu@@ age = "@@ English@@ " ORDER BY T1.Population DESC LIMIT 1
SELECT Name , Population , L@@ i@@ fe@@ Exp@@ e@@ ct@@ ancy FROM country WHERE Cont@@ in@@ ent = "A@@ si@@ a" ORDER BY S@@ ur@@ f@@ ac@@ e@@ Area DESC LIMIT 1
SELECT Name , Population , L@@ i@@ fe@@ Exp@@ e@@ ct@@ ancy FROM country WHERE Cont@@ in@@ ent = "A@@ si@@ a" ORDER BY S@@ ur@@ f@@ ac@@ e@@ Area DESC LIMIT 1
SELECT avg(@@ L@@ i@@ fe@@ Exp@@ e@@ ct@@ anc@@ y) FROM country WHERE Name NOT IN (SELECT T1.Name FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code WHERE T2.@@ L@@ an@@ gu@@ age = "@@ English@@ " AND T2.@@ I@@ s@@ Offici@@ al = "T@@ ")
SELECT avg(@@ L@@ i@@ fe@@ Exp@@ e@@ ct@@ anc@@ y) FROM country WHERE Name NOT IN (SELECT T1.Name FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code WHERE T2.@@ L@@ an@@ gu@@ age = "@@ English@@ " AND T2.@@ I@@ s@@ Offici@@ al = "T@@ ")
SELECT sum(@@ Population) FROM country WHERE Name NOT IN (SELECT T1.Name FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code WHERE T2.@@ L@@ an@@ gu@@ age = "@@ English@@ ")
SELECT sum(@@ Population) FROM country WHERE Name NOT IN (SELECT T1.Name FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code WHERE T2.@@ L@@ an@@ gu@@ age = "@@ English@@ ")
SELECT T2.@@ L@@ an@@ gu@@ age FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code WHERE T1.@@ He@@ ad@@ O@@ f@@ State = "B@@ eat@@ ri@@ x" AND T2.@@ I@@ s@@ Offici@@ al = "T@@ "
SELECT T2.@@ L@@ an@@ gu@@ age FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code WHERE T1.@@ He@@ ad@@ O@@ f@@ State = "B@@ eat@@ ri@@ x" AND T2.@@ I@@ s@@ Offici@@ al = "T@@ "
SELECT count(DISTINCT T2.@@ L@@ an@@ gu@@ age) FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code WHERE In@@ de@@ p@@ Year < 19@@ 30 AND T2.@@ I@@ s@@ Offici@@ al = "T@@ "
SELECT count(DISTINCT T2.@@ L@@ an@@ gu@@ age) FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code WHERE In@@ de@@ p@@ Year < 19@@ 30 AND T2.@@ I@@ s@@ Offici@@ al = "T@@ "
SELECT Name FROM country WHERE S@@ ur@@ f@@ ac@@ e@@ Area > (SELECT min(@@ S@@ ur@@ f@@ ac@@ e@@ A@@ re@@ a) FROM country WHERE Cont@@ in@@ ent = "E@@ uro@@ p@@ e")
SELECT Name FROM country WHERE S@@ ur@@ f@@ ac@@ e@@ Area > (SELECT min(@@ S@@ ur@@ f@@ ac@@ e@@ A@@ re@@ a) FROM country WHERE Cont@@ in@@ ent = "E@@ uro@@ p@@ e")
SELECT Name FROM country WHERE Cont@@ in@@ ent = "A@@ f@@ ric@@ a" AND population < (SELECT max(@@ popul@@ ation) FROM country WHERE Cont@@ in@@ ent = "A@@ si@@ a")
SELECT Name FROM country WHERE Cont@@ in@@ ent = "A@@ f@@ ric@@ a" AND population < (SELECT min(@@ popul@@ ation) FROM country WHERE Cont@@ in@@ ent = "A@@ si@@ a")
SELECT Name FROM country WHERE Cont@@ in@@ ent = "A@@ si@@ a" AND population > (SELECT max(@@ popul@@ ation) FROM country WHERE Cont@@ in@@ ent = "A@@ f@@ ric@@ a")
SELECT Name FROM country WHERE Cont@@ in@@ ent = "A@@ si@@ a" AND population > (SELECT min(@@ popul@@ ation) FROM country WHERE Cont@@ in@@ ent = "A@@ f@@ ric@@ a")
SELECT Countr@@ y@@ Code FROM countr@@ y@@ language EXCEPT SELECT Countr@@ y@@ Code FROM countr@@ y@@ language WHERE L@@ AN@@ G@@ U@@ A@@ G@@ E = "@@ English@@ "
SELECT Countr@@ y@@ Code FROM countr@@ y@@ language EXCEPT SELECT Countr@@ y@@ Code FROM countr@@ y@@ language WHERE L@@ AN@@ G@@ U@@ A@@ G@@ E = "@@ English@@ "
SELECT DISTINCT Countr@@ y@@ Code FROM countr@@ y@@ language WHERE L@@ AN@@ G@@ U@@ A@@ G@@ E != "@@ English@@ "
SELECT DISTINCT Countr@@ y@@ Code FROM countr@@ y@@ language WHERE L@@ AN@@ G@@ U@@ A@@ G@@ E != "@@ English@@ "
SELECT Code FROM country WHERE G@@ overnment@@ F@@ orm != "Republic@@ " EXCEPT SELECT Countr@@ y@@ Code FROM countr@@ y@@ language WHERE L@@ AN@@ G@@ U@@ A@@ G@@ E = "@@ English@@ "
SELECT Code FROM country WHERE G@@ overnment@@ F@@ orm != "Republic@@ " EXCEPT SELECT Countr@@ y@@ Code FROM countr@@ y@@ language WHERE L@@ AN@@ G@@ U@@ A@@ G@@ E = "@@ English@@ "
SELECT DISTINCT T2.Name FROM country AS T1 JOIN city AS T2 ON T2.Countr@@ y@@ Code = T1.@@ Code WHERE T1.@@ Cont@@ in@@ ent = 'E@@ uro@@ p@@ e' AND T1.Name NOT IN (SELECT T3.Name FROM country AS T3 JOIN countr@@ y@@ language AS T4 ON T3.Code = T4.@@ Countr@@ y@@ Code WHERE T4.@@ I@@ s@@ Offici@@ al = 'T@@ ' AND T4.@@ L@@ an@@ gu@@ age = '@@ English@@ ')
SELECT DISTINCT T2.Name FROM country AS T1 JOIN city AS T2 ON T2.Countr@@ y@@ Code = T1.@@ Code WHERE T1.@@ Cont@@ in@@ ent = 'E@@ uro@@ p@@ e' AND T1.Name NOT IN (SELECT T3.Name FROM country AS T3 JOIN countr@@ y@@ language AS T4 ON T3.Code = T4.@@ Countr@@ y@@ Code WHERE T4.@@ I@@ s@@ Offici@@ al = 'T@@ ' AND T4.@@ L@@ an@@ gu@@ age = '@@ English@@ ')
se@@ le@@ ct distinct t3.name from country as t1 join countr@@ y@@ language as t2 on t1.@@ code = t2.@@ countr@@ y@@ code join city as t3 on t1.@@ code = t3.@@ countr@@ y@@ code where t2.@@ is@@ official = '@@ t@@ ' and t2.@@ language = '@@ ch@@ in@@ es@@ e' and t1.@@ cont@@ in@@ ent = "@@ as@@ i@@ a"
SELECT DISTINCT T3.Name FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code JOIN city AS T3 ON T1.@@ Code = T3.@@ Countr@@ y@@ Code WHERE T2.@@ I@@ s@@ Offici@@ al = 'T@@ ' AND T2.@@ L@@ an@@ gu@@ age = 'Chin@@ es@@ e' AND T1.@@ Cont@@ in@@ ent = "A@@ si@@ a"
SELECT Name , S@@ ur@@ f@@ ac@@ e@@ Area , In@@ de@@ p@@ Year FROM country ORDER BY Population LIMIT 1
SELECT Name , S@@ ur@@ f@@ ac@@ e@@ Area , In@@ de@@ p@@ Year FROM country ORDER BY Population LIMIT 1
SELECT Name , population , He@@ ad@@ O@@ f@@ State FROM country ORDER BY S@@ ur@@ f@@ ac@@ e@@ Area DESC LIMIT 1
SELECT Name , population , He@@ ad@@ O@@ f@@ State FROM country ORDER BY S@@ ur@@ f@@ ac@@ e@@ Area DESC LIMIT 1
SELECT COUNT(@@ T2.@@ L@@ an@@ gu@@ age) , T1.Name FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code GROUP BY T1.Name HAVING COUNT(*) > 2
SELECT COUNT(@@ T2.@@ L@@ an@@ gu@@ age) , T1.Name FROM country AS T1 JOIN countr@@ y@@ language AS T2 ON T1.@@ Code = T2.Countr@@ y@@ Code GROUP BY T1.Name HAVING COUNT(*) > 2
SELECT count(*) , District FROM city WHERE Population > (SELECT avg(@@ Population) FROM city) GROUP BY District
SELECT count(*) , District FROM city WHERE Population > (SELECT avg(@@ Population) FROM city) GROUP BY District
SELECT sum(@@ Population) , G@@ overnment@@ F@@ orm FROM country GROUP BY G@@ overnment@@ F@@ orm HAVING avg(@@ L@@ i@@ fe@@ Exp@@ e@@ ct@@ anc@@ y) > 7@@ 2
SELECT sum(@@ Population) , G@@ overnment@@ F@@ orm FROM country GROUP BY G@@ overnment@@ F@@ orm HAVING avg(@@ L@@ i@@ fe@@ Exp@@ e@@ ct@@ anc@@ y) > 7@@ 2
SELECT sum(@@ Population) , avg(@@ L@@ i@@ fe@@ Exp@@ e@@ ct@@ anc@@ y) , Cont@@ in@@ ent FROM country GROUP BY Cont@@ in@@ ent HAVING avg(@@ L@@ i@@ fe@@ Exp@@ e@@ ct@@ anc@@ y) < 7@@ 2
SELECT sum(@@ Population) , avg(@@ L@@ i@@ fe@@ Exp@@ e@@ ct@@ anc@@ y) , Cont@@ in@@ ent FROM country GROUP BY Cont@@ in@@ ent HAVING avg(@@ L@@ i@@ fe@@ Exp@@ e@@ ct@@ anc@@ y) < 7@@ 2
SELECT Name , S@@ ur@@ f@@ ac@@ e@@ Area FROM country ORDER BY S@@ ur@@ f@@ ac@@ e@@ Area DESC LIMIT 5
SELECT Name , S@@ ur@@ f@@ ac@@ e@@ Area FROM country ORDER BY S@@ ur@@ f@@ ac@@ e@@ Area DESC LIMIT 5
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population DESC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT Name FROM country ORDER BY Population ASC LIMIT 3
SELECT count(*) FROM country WHERE cont@@ in@@ ent = "A@@ si@@ a"
SELECT count(*) FROM country WHERE cont@@ in@@ ent = "A@@ si@@ a"
SELECT Name FROM country WHERE cont@@ in@@ ent = "E@@ uro@@ p@@ e" AND Population = "@@ 800@@ 00"
SELECT Name FROM country WHERE cont@@ in@@ ent = "E@@ uro@@ p@@ e" AND Population = "@@ 800@@ 00"
se@@ le@@ ct sum(@@ popul@@ ation) , avg(@@ sur@@ f@@ ac@@ ear@@ e@@ a) from country where cont@@ in@@ ent = "@@ n@@ orth am@@ eric@@ a" and sur@@ f@@ ac@@ ear@@ e@@ a > 3000
se@@ le@@ ct sum(@@ popul@@ ation) , avg(@@ sur@@ f@@ ac@@ ear@@ e@@ a) from country where cont@@ in@@ ent = "@@ n@@ orth am@@ eric@@ a" and sur@@ f@@ ac@@ ear@@ e@@ a > 3000
SELECT name FROM city WHERE Population BETWEEN 16@@ 0000 AND 9@@ 00@@ 000
se@@ le@@ ct name from city where population between 16@@ 0000 and 9@@ 00@@ 000
SELECT L@@ AN@@ G@@ U@@ A@@ G@@ E FROM countr@@ y@@ language GROUP BY L@@ AN@@ G@@ U@@ A@@ G@@ E ORDER BY count(*) DESC LIMIT 1
SELECT L@@ AN@@ G@@ U@@ A@@ G@@ E FROM countr@@ y@@ language GROUP BY L@@ AN@@ G@@ U@@ A@@ G@@ E ORDER BY count(*) DESC LIMIT 1
SELECT L@@ AN@@ G@@ U@@ A@@ G@@ E , Countr@@ y@@ Code , max(@@ Per@@ c@@ ent@@ age) FROM countr@@ y@@ language GROUP BY Countr@@ y@@ Code
SELECT L@@ AN@@ G@@ U@@ A@@ G@@ E , Countr@@ y@@ Code , max(@@ Per@@ c@@ ent@@ age) FROM countr@@ y@@ language GROUP BY Countr@@ y@@ Code
SELECT count(*) , max(@@ Per@@ c@@ ent@@ age) FROM countr@@ y@@ language WHERE L@@ AN@@ G@@ U@@ A@@ G@@ E = "Spanish" GROUP BY Countr@@ y@@ Code
SELECT count(*) , max(@@ Per@@ c@@ ent@@ age) FROM countr@@ y@@ language WHERE L@@ AN@@ G@@ U@@ A@@ G@@ E = "Spanish" GROUP BY Countr@@ y@@ Code
SELECT Countr@@ y@@ Code , max(@@ Per@@ c@@ ent@@ age) FROM countr@@ y@@ language WHERE L@@ AN@@ G@@ U@@ A@@ G@@ E = "Spanish" GROUP BY Countr@@ y@@ Code
SELECT Countr@@ y@@ Code , max(@@ Per@@ c@@ ent@@ age) FROM countr@@ y@@ language WHERE L@@ AN@@ G@@ U@@ A@@ G@@ E = "Spanish" GROUP BY Countr@@ y@@ Code
SELECT count(*) FROM con@@ du@@ ct@@ or
SELECT count(*) FROM con@@ du@@ ct@@ or
SELECT Name FROM con@@ du@@ ct@@ or ORDER BY Age ASC
SELECT Name FROM con@@ du@@ ct@@ or ORDER BY Age ASC
SELECT Name FROM con@@ du@@ ct@@ or WHERE Nationality != 'USA'
SELECT Name FROM con@@ du@@ ct@@ or WHERE Nationality != 'USA'
SELECT Re@@ cor@@ d_@@ Company FROM or@@ ch@@ e@@ str@@ a ORDER BY Year@@ _of_@@ Founded DESC
SELECT Re@@ cor@@ d_@@ Company FROM or@@ ch@@ e@@ str@@ a ORDER BY Year@@ _of_@@ Founded DESC
SELECT avg(@@ At@@ tend@@ ance) FROM S@@ HO@@ W
SELECT avg(@@ At@@ tend@@ ance) FROM S@@ HO@@ W
SELECT max(S@@ HA@@ RE@@ ) , min(@@ S@@ HA@@ RE@@ ) FROM performance WHERE TYPE != "L@@ ive fin@@ al"
SELECT max(S@@ HA@@ RE@@ ) , min(@@ S@@ HA@@ RE@@ ) FROM performance WHERE TYPE != "L@@ ive fin@@ al"
SELECT count(DISTINCT N@@ ational@@ ity) FROM con@@ du@@ ct@@ or
SELECT count(DISTINCT N@@ ational@@ ity) FROM con@@ du@@ ct@@ or
SELECT Name FROM con@@ du@@ ct@@ or ORDER BY Year@@ _of_@@ W@@ ork DESC
SELECT Name FROM con@@ du@@ ct@@ or ORDER BY Year@@ _of_@@ W@@ ork DESC
SELECT Name FROM con@@ du@@ ct@@ or ORDER BY Year@@ _of_@@ W@@ ork DESC LIMIT 1
SELECT Name FROM con@@ du@@ ct@@ or ORDER BY Year@@ _of_@@ W@@ ork DESC LIMIT 1
SELECT T1.Name , T2.@@ Or@@ ch@@ e@@ str@@ a FROM con@@ du@@ ct@@ or AS T1 JOIN or@@ ch@@ e@@ str@@ a AS T2 ON T1.C@@ on@@ du@@ ct@@ or@@ _ID = T2.C@@ on@@ du@@ ct@@ or@@ _ID
SELECT T1.Name , T2.@@ Or@@ ch@@ e@@ str@@ a FROM con@@ du@@ ct@@ or AS T1 JOIN or@@ ch@@ e@@ str@@ a AS T2 ON T1.C@@ on@@ du@@ ct@@ or@@ _ID = T2.C@@ on@@ du@@ ct@@ or@@ _ID
SELECT T1.Name FROM con@@ du@@ ct@@ or AS T1 JOIN or@@ ch@@ e@@ str@@ a AS T2 ON T1.C@@ on@@ du@@ ct@@ or@@ _ID = T2.C@@ on@@ du@@ ct@@ or@@ _ID GROUP BY T2.C@@ on@@ du@@ ct@@ or@@ _ID HAVING COUNT(*) > 1
SELECT T1.Name FROM con@@ du@@ ct@@ or AS T1 JOIN or@@ ch@@ e@@ str@@ a AS T2 ON T1.C@@ on@@ du@@ ct@@ or@@ _ID = T2.C@@ on@@ du@@ ct@@ or@@ _ID GROUP BY T2.C@@ on@@ du@@ ct@@ or@@ _ID HAVING COUNT(*) > 1
SELECT T1.Name FROM con@@ du@@ ct@@ or AS T1 JOIN or@@ ch@@ e@@ str@@ a AS T2 ON T1.C@@ on@@ du@@ ct@@ or@@ _ID = T2.C@@ on@@ du@@ ct@@ or@@ _ID GROUP BY T2.C@@ on@@ du@@ ct@@ or@@ _ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM con@@ du@@ ct@@ or AS T1 JOIN or@@ ch@@ e@@ str@@ a AS T2 ON T1.C@@ on@@ du@@ ct@@ or@@ _ID = T2.C@@ on@@ du@@ ct@@ or@@ _ID GROUP BY T2.C@@ on@@ du@@ ct@@ or@@ _ID ORDER BY COUNT(*) DESC LIMIT 1
SELECT T1.Name FROM con@@ du@@ ct@@ or AS T1 JOIN or@@ ch@@ e@@ str@@ a AS T2 ON T1.C@@ on@@ du@@ ct@@ or@@ _ID = T2.C@@ on@@ du@@ ct@@ or@@ _ID WHERE Year@@ _of_@@ Founded > 2008
SELECT T1.Name FROM con@@ du@@ ct@@ or AS T1 JOIN or@@ ch@@ e@@ str@@ a AS T2 ON T1.C@@ on@@ du@@ ct@@ or@@ _ID = T2.C@@ on@@ du@@ ct@@ or@@ _ID WHERE Year@@ _of_@@ Founded > 2008
SELECT Re@@ cor@@ d_@@ Company , COUNT(*) FROM or@@ ch@@ e@@ str@@ a GROUP BY Re@@ cor@@ d_@@ Company
SELECT Re@@ cor@@ d_@@ Company , COUNT(*) FROM or@@ ch@@ e@@ str@@ a GROUP BY Re@@ cor@@ d_@@ Company
SELECT Ma@@ j@@ or_@@ Re@@ cor@@ d_@@ F@@ or@@ mat FROM or@@ ch@@ e@@ str@@ a GROUP BY Ma@@ j@@ or_@@ Re@@ cor@@ d_@@ F@@ or@@ mat ORDER BY COUNT(*) ASC
SELECT Ma@@ j@@ or_@@ Re@@ cor@@ d_@@ F@@ or@@ mat FROM or@@ ch@@ e@@ str@@ a GROUP BY Ma@@ j@@ or_@@ Re@@ cor@@ d_@@ F@@ or@@ mat ORDER BY COUNT(*) ASC
SELECT Re@@ cor@@ d_@@ Company FROM or@@ ch@@ e@@ str@@ a GROUP BY Re@@ cor@@ d_@@ Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Re@@ cor@@ d_@@ Company FROM or@@ ch@@ e@@ str@@ a GROUP BY Re@@ cor@@ d_@@ Company ORDER BY COUNT(*) DESC LIMIT 1
SELECT Or@@ ch@@ e@@ str@@ a FROM or@@ ch@@ e@@ str@@ a WHERE Or@@ ch@@ e@@ str@@ a@@ _ID NOT IN (SELECT Or@@ ch@@ e@@ str@@ a@@ _ID FROM perform@@ ance)
SELECT Or@@ ch@@ e@@ str@@ a FROM or@@ ch@@ e@@ str@@ a WHERE Or@@ ch@@ e@@ str@@ a@@ _ID NOT IN (SELECT Or@@ ch@@ e@@ str@@ a@@ _ID FROM perform@@ ance)
SELECT Re@@ cor@@ d_@@ Company FROM or@@ ch@@ e@@ str@@ a WHERE Year@@ _of_@@ Founded < 200@@ 3 INTERSECT SELECT Re@@ cor@@ d_@@ Company FROM or@@ ch@@ e@@ str@@ a WHERE Year@@ _of_@@ Founded > 200@@ 3
SELECT Re@@ cor@@ d_@@ Company FROM or@@ ch@@ e@@ str@@ a WHERE Year@@ _of_@@ Founded < 200@@ 3 INTERSECT SELECT Re@@ cor@@ d_@@ Company FROM or@@ ch@@ e@@ str@@ a WHERE Year@@ _of_@@ Founded > 200@@ 3
SELECT COUNT(*) FROM or@@ ch@@ e@@ str@@ a WHERE Ma@@ j@@ or_@@ Re@@ cor@@ d_@@ F@@ or@@ mat = "C@@ D@@ " OR Ma@@ j@@ or_@@ Re@@ cor@@ d_@@ F@@ or@@ mat = "D@@ V@@ D@@ "
SELECT COUNT(*) FROM or@@ ch@@ e@@ str@@ a WHERE Ma@@ j@@ or_@@ Re@@ cor@@ d_@@ F@@ or@@ mat = "C@@ D@@ " OR Ma@@ j@@ or_@@ Re@@ cor@@ d_@@ F@@ or@@ mat = "D@@ V@@ D@@ "
SELECT Year@@ _of_@@ Founded FROM or@@ ch@@ e@@ str@@ a AS T1 JOIN performance AS T2 ON T1.@@ Or@@ ch@@ e@@ str@@ a@@ _ID = T2.@@ Or@@ ch@@ e@@ str@@ a@@ _ID GROUP BY T2.@@ Or@@ ch@@ e@@ str@@ a@@ _ID HAVING COUNT(*) > 1
SELECT Year@@ _of_@@ Founded FROM or@@ ch@@ e@@ str@@ a AS T1 JOIN performance AS T2 ON T1.@@ Or@@ ch@@ e@@ str@@ a@@ _ID = T2.@@ Or@@ ch@@ e@@ str@@ a@@ _ID GROUP BY T2.@@ Or@@ ch@@ e@@ str@@ a@@ _ID HAVING COUNT(*) > 1
SELECT count(*) FROM H@@ i@@ gh@@ school@@ er
SELECT count(*) FROM H@@ i@@ gh@@ school@@ er
SELECT name , grade FROM H@@ i@@ gh@@ school@@ er
SELECT name , grade FROM H@@ i@@ gh@@ school@@ er
SELECT grade FROM H@@ i@@ gh@@ school@@ er
SELECT grade FROM H@@ i@@ gh@@ school@@ er
SELECT grade FROM H@@ i@@ gh@@ school@@ er WHERE name = "K@@ yle"
SELECT grade FROM H@@ i@@ gh@@ school@@ er WHERE name = "K@@ yle"
SELECT name FROM H@@ i@@ gh@@ school@@ er WHERE grade = 10
SELECT name FROM H@@ i@@ gh@@ school@@ er WHERE grade = 10
SELECT ID FROM H@@ i@@ gh@@ school@@ er WHERE name = "K@@ yle"
SELECT ID FROM H@@ i@@ gh@@ school@@ er WHERE name = "K@@ yle"
SELECT count(*) FROM H@@ i@@ gh@@ school@@ er WHERE grade = 9 OR grade = 10
SELECT count(*) FROM H@@ i@@ gh@@ school@@ er WHERE grade = 9 OR grade = 10
SELECT grade , count(*) FROM H@@ i@@ gh@@ school@@ er GROUP BY grade
SELECT grade , count(*) FROM H@@ i@@ gh@@ school@@ er GROUP BY grade
SELECT grade FROM H@@ i@@ gh@@ school@@ er GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM H@@ i@@ gh@@ school@@ er GROUP BY grade ORDER BY count(*) DESC LIMIT 1
SELECT grade FROM H@@ i@@ gh@@ school@@ er GROUP BY grade HAVING count(*) >= 4
SELECT grade FROM H@@ i@@ gh@@ school@@ er GROUP BY grade HAVING count(*) >= 4
SELECT student_id , count(*) FROM F@@ riend GROUP BY student_id
SELECT student_id , count(*) FROM F@@ riend GROUP BY student_id
SELECT T2.name , count(*) FROM F@@ riend AS T1 JOIN H@@ i@@ gh@@ school@@ er AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id
SELECT T2.name , count(*) FROM F@@ riend AS T1 JOIN H@@ i@@ gh@@ school@@ er AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id
SELECT T2.name FROM F@@ riend AS T1 JOIN H@@ i@@ gh@@ school@@ er AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM F@@ riend AS T1 JOIN H@@ i@@ gh@@ school@@ er AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM F@@ riend AS T1 JOIN H@@ i@@ gh@@ school@@ er AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id HAVING count(*) >= 3
SELECT T2.name FROM F@@ riend AS T1 JOIN H@@ i@@ gh@@ school@@ er AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id HAVING count(*) >= 3
SELECT T3.name FROM F@@ riend AS T1 JOIN H@@ i@@ gh@@ school@@ er AS T2 ON T1.student_id = T2.id JOIN H@@ i@@ gh@@ school@@ er AS T3 ON T1.@@ friend@@ _id = T3.id WHERE T2.name = "K@@ yle"
SELECT T3.name FROM F@@ riend AS T1 JOIN H@@ i@@ gh@@ school@@ er AS T2 ON T1.student_id = T2.id JOIN H@@ i@@ gh@@ school@@ er AS T3 ON T1.@@ friend@@ _id = T3.id WHERE T2.name = "K@@ yle"
SELECT count(*) FROM F@@ riend AS T1 JOIN H@@ i@@ gh@@ school@@ er AS T2 ON T1.student_id = T2.id WHERE T2.name = "K@@ yle"
SELECT count(*) FROM F@@ riend AS T1 JOIN H@@ i@@ gh@@ school@@ er AS T2 ON T1.student_id = T2.id WHERE T2.name = "K@@ yle"
SELECT id FROM H@@ i@@ gh@@ school@@ er EXCEPT SELECT student_id FROM F@@ riend
SELECT id FROM H@@ i@@ gh@@ school@@ er EXCEPT SELECT student_id FROM F@@ riend
SELECT name FROM H@@ i@@ gh@@ school@@ er EXCEPT SELECT T2.name FROM F@@ riend AS T1 JOIN H@@ i@@ gh@@ school@@ er AS T2 ON T1.student_id = T2.id
SELECT name FROM H@@ i@@ gh@@ school@@ er EXCEPT SELECT T2.name FROM F@@ riend AS T1 JOIN H@@ i@@ gh@@ school@@ er AS T2 ON T1.student_id = T2.id
SELECT student_id FROM F@@ riend INTERSECT SELECT li@@ k@@ ed@@ _id FROM L@@ i@@ k@@ es
SELECT student_id FROM F@@ riend INTERSECT SELECT li@@ k@@ ed@@ _id FROM L@@ i@@ k@@ es
SELECT T2.name FROM F@@ riend AS T1 JOIN H@@ i@@ gh@@ school@@ er AS T2 ON T1.student_id = T2.id INTERSECT SELECT T2.name FROM L@@ i@@ k@@ es AS T1 JOIN H@@ i@@ gh@@ school@@ er AS T2 ON T1.@@ li@@ k@@ ed@@ _id = T2.id
SELECT T2.name FROM F@@ riend AS T1 JOIN H@@ i@@ gh@@ school@@ er AS T2 ON T1.student_id = T2.id INTERSECT SELECT T2.name FROM L@@ i@@ k@@ es AS T1 JOIN H@@ i@@ gh@@ school@@ er AS T2 ON T1.@@ li@@ k@@ ed@@ _id = T2.id
SELECT student_id , count(*) FROM L@@ i@@ k@@ es GROUP BY student_id
SELECT student_id , count(*) FROM L@@ i@@ k@@ es GROUP BY student_id
SELECT T2.name , count(*) FROM L@@ i@@ k@@ es AS T1 JOIN H@@ i@@ gh@@ school@@ er AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id
SELECT T2.name , count(*) FROM L@@ i@@ k@@ es AS T1 JOIN H@@ i@@ gh@@ school@@ er AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id
SELECT T2.name FROM L@@ i@@ k@@ es AS T1 JOIN H@@ i@@ gh@@ school@@ er AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM L@@ i@@ k@@ es AS T1 JOIN H@@ i@@ gh@@ school@@ er AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id ORDER BY count(*) DESC LIMIT 1
SELECT T2.name FROM L@@ i@@ k@@ es AS T1 JOIN H@@ i@@ gh@@ school@@ er AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T2.name FROM L@@ i@@ k@@ es AS T1 JOIN H@@ i@@ gh@@ school@@ er AS T2 ON T1.student_id = T2.id GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T2.name FROM F@@ riend AS T1 JOIN H@@ i@@ gh@@ school@@ er AS T2 ON T1.student_id = T2.id WHERE T2.@@ grade > 5 GROUP BY T1.student_id HAVING count(*) >= 2
SELECT T2.name FROM F@@ riend AS T1 JOIN H@@ i@@ gh@@ school@@ er AS T2 ON T1.student_id = T2.id WHERE T2.@@ grade > 5 GROUP BY T1.student_id HAVING count(*) >= 2
SELECT count(*) FROM L@@ i@@ k@@ es AS T1 JOIN H@@ i@@ gh@@ school@@ er AS T2 ON T1.student_id = T2.id WHERE T2.name = "K@@ yle"
SELECT count(*) FROM L@@ i@@ k@@ es AS T1 JOIN H@@ i@@ gh@@ school@@ er AS T2 ON T1.student_id = T2.id WHERE T2.name = "K@@ yle"
SELECT avg(@@ grade@@ ) FROM H@@ i@@ gh@@ school@@ er WHERE id IN (SELECT T1.student_id FROM F@@ riend AS T1 JOIN H@@ i@@ gh@@ school@@ er AS T2 ON T1.student_id = T2.@@ id)
SELECT avg(@@ grade@@ ) FROM H@@ i@@ gh@@ school@@ er WHERE id IN (SELECT T1.student_id FROM F@@ riend AS T1 JOIN H@@ i@@ gh@@ school@@ er AS T2 ON T1.student_id = T2.@@ id)
SELECT min(@@ grade@@ ) FROM H@@ i@@ gh@@ school@@ er WHERE id NOT IN (SELECT T1.student_id FROM F@@ riend AS T1 JOIN H@@ i@@ gh@@ school@@ er AS T2 ON T1.student_id = T2.@@ id)
SELECT min(@@ grade@@ ) FROM H@@ i@@ gh@@ school@@ er WHERE id NOT IN (SELECT T1.student_id FROM F@@ riend AS T1 JOIN H@@ i@@ gh@@ school@@ er AS T2 ON T1.student_id = T2.@@ id)
SELECT state FROM O@@ w@@ n@@ ers INTERSECT SELECT state FROM Profess@@ ion@@ als
SELECT state FROM O@@ w@@ n@@ ers INTERSECT SELECT state FROM Profess@@ ion@@ als
SELECT avg(age) FROM Do@@ g@@ s WHERE do@@ g@@ _id IN ( SELECT do@@ g@@ _id FROM T@@ re@@ at@@ ments )
SELECT avg(age) FROM Do@@ g@@ s WHERE do@@ g@@ _id IN ( SELECT do@@ g@@ _id FROM T@@ re@@ at@@ ments )
SELECT profess@@ ion@@ al@@ _id , last_name , cell@@ _number FROM Profess@@ ion@@ als WHERE state = '@@ Indi@@ an@@ a' UNION SELECT T1.@@ profess@@ ion@@ al@@ _id , T1.last_name , T1.@@ cell@@ _number FROM Profess@@ ion@@ als AS T1 JOIN T@@ re@@ at@@ ments AS T2 ON T1.@@ profess@@ ion@@ al@@ _id = T2.@@ profess@@ ion@@ al@@ _id GROUP BY T1.@@ profess@@ ion@@ al@@ _id HAVING count(*) > 2
SELECT profess@@ ion@@ al@@ _id , last_name , cell@@ _number FROM Profess@@ ion@@ als WHERE state = '@@ Indi@@ an@@ a' UNION SELECT T1.@@ profess@@ ion@@ al@@ _id , T1.last_name , T1.@@ cell@@ _number FROM Profess@@ ion@@ als AS T1 JOIN T@@ re@@ at@@ ments AS T2 ON T1.@@ profess@@ ion@@ al@@ _id = T2.@@ profess@@ ion@@ al@@ _id GROUP BY T1.@@ profess@@ ion@@ al@@ _id HAVING count(*) > 2
se@@ le@@ ct name from do@@ g@@ s where do@@ g@@ _id not in ( se@@ le@@ ct do@@ g@@ _id from treat@@ ments g@@ ro@@ up by do@@ g@@ _id having sum(@@ co@@ st_@@ of_@@ treat@@ ment) > 1000 )
se@@ le@@ ct name from do@@ g@@ s where do@@ g@@ _id not in ( se@@ le@@ ct do@@ g@@ _id from treat@@ ments g@@ ro@@ up by do@@ g@@ _id having sum(@@ co@@ st_@@ of_@@ treat@@ ment) > 1000 )
SELECT first_name FROM Profess@@ ion@@ als UNION SELECT first_name FROM O@@ w@@ n@@ ers EXCEPT SELECT name FROM Do@@ g@@ s
SELECT first_name FROM Profess@@ ion@@ als UNION SELECT first_name FROM O@@ w@@ n@@ ers EXCEPT SELECT name FROM Do@@ g@@ s
SELECT profess@@ ion@@ al@@ _id , role_code , email_address FROM Profess@@ ion@@ als EXCEPT SELECT T1.@@ profess@@ ion@@ al@@ _id , T1.role_code , T1.@@ email_address FROM Profess@@ ion@@ als AS T1 JOIN T@@ re@@ at@@ ments AS T2 ON T1.@@ profess@@ ion@@ al@@ _id = T2.@@ profess@@ ion@@ al@@ _id
SELECT profess@@ ion@@ al@@ _id , role_code , email_address FROM Profess@@ ion@@ als EXCEPT SELECT T1.@@ profess@@ ion@@ al@@ _id , T1.role_code , T1.@@ email_address FROM Profess@@ ion@@ als AS T1 JOIN T@@ re@@ at@@ ments AS T2 ON T1.@@ profess@@ ion@@ al@@ _id = T2.@@ profess@@ ion@@ al@@ _id
SELECT T1.@@ own@@ er_id , T2.first_name , T2.last_name FROM Do@@ g@@ s AS T1 JOIN O@@ w@@ n@@ ers AS T2 ON T1.@@ own@@ er_id = T2.@@ own@@ er_id GROUP BY T1.@@ own@@ er_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.@@ own@@ er_id , T2.first_name , T2.last_name FROM Do@@ g@@ s AS T1 JOIN O@@ w@@ n@@ ers AS T2 ON T1.@@ own@@ er_id = T2.@@ own@@ er_id GROUP BY T1.@@ own@@ er_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.@@ profess@@ ion@@ al@@ _id , T1.role_code , T1.first_name FROM Profess@@ ion@@ als AS T1 JOIN T@@ re@@ at@@ ments AS T2 ON T1.@@ profess@@ ion@@ al@@ _id = T2.@@ profess@@ ion@@ al@@ _id GROUP BY T1.@@ profess@@ ion@@ al@@ _id HAVING count(*) >= 2
SELECT T1.@@ profess@@ ion@@ al@@ _id , T1.role_code , T1.first_name FROM Profess@@ ion@@ als AS T1 JOIN T@@ re@@ at@@ ments AS T2 ON T1.@@ profess@@ ion@@ al@@ _id = T2.@@ profess@@ ion@@ al@@ _id GROUP BY T1.@@ profess@@ ion@@ al@@ _id HAVING count(*) >= 2
SELECT T1.b@@ re@@ ed@@ _name FROM B@@ re@@ ed@@ s AS T1 JOIN Do@@ g@@ s AS T2 ON T1.b@@ re@@ ed@@ _code = T2.b@@ re@@ ed@@ _code GROUP BY T1.b@@ re@@ ed@@ _name ORDER BY count(*) DESC LIMIT 1
SELECT T1.b@@ re@@ ed@@ _name FROM B@@ re@@ ed@@ s AS T1 JOIN Do@@ g@@ s AS T2 ON T1.b@@ re@@ ed@@ _code = T2.b@@ re@@ ed@@ _code GROUP BY T1.b@@ re@@ ed@@ _name ORDER BY count(*) DESC LIMIT 1
SELECT T1.@@ own@@ er_id , T1.last_name FROM O@@ w@@ n@@ ers AS T1 JOIN Do@@ g@@ s AS T2 ON T1.@@ own@@ er_id = T2.@@ own@@ er_id JOIN T@@ re@@ at@@ ments AS T3 ON T2.do@@ g@@ _id = T3.@@ do@@ g@@ _id GROUP BY T1.@@ own@@ er_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.@@ own@@ er_id , T1.last_name FROM O@@ w@@ n@@ ers AS T1 JOIN Do@@ g@@ s AS T2 ON T1.@@ own@@ er_id = T2.@@ own@@ er_id JOIN T@@ re@@ at@@ ments AS T3 ON T2.do@@ g@@ _id = T3.@@ do@@ g@@ _id GROUP BY T1.@@ own@@ er_id ORDER BY count(*) DESC LIMIT 1
SELECT T1.@@ treat@@ ment@@ _type_description FROM T@@ re@@ at@@ ment@@ _typ@@ es AS T1 JOIN T@@ re@@ at@@ ments AS T2 ON T1.@@ treat@@ ment@@ _type_code = T2.@@ treat@@ ment@@ _type_code GROUP BY T1.@@ treat@@ ment@@ _type_code ORDER BY sum(@@ co@@ st_@@ of_@@ treat@@ ment) ASC LIMIT 1
SELECT T1.@@ treat@@ ment@@ _type_description FROM T@@ re@@ at@@ ment@@ _typ@@ es AS T1 JOIN T@@ re@@ at@@ ments AS T2 ON T1.@@ treat@@ ment@@ _type_code = T2.@@ treat@@ ment@@ _type_code GROUP BY T1.@@ treat@@ ment@@ _type_code ORDER BY sum(@@ co@@ st_@@ of_@@ treat@@ ment) ASC LIMIT 1
SELECT T1.@@ own@@ er_id , T1.@@ zip_code FROM O@@ w@@ n@@ ers AS T1 JOIN Do@@ g@@ s AS T2 ON T1.@@ own@@ er_id = T2.@@ own@@ er_id JOIN T@@ re@@ at@@ ments AS T3 ON T2.do@@ g@@ _id = T3.@@ do@@ g@@ _id GROUP BY T1.@@ own@@ er_id ORDER BY sum(@@ T3.@@ co@@ st_@@ of_@@ treat@@ ment) DESC LIMIT 1
SELECT T1.@@ own@@ er_id , T1.@@ zip_code FROM O@@ w@@ n@@ ers AS T1 JOIN Do@@ g@@ s AS T2 ON T1.@@ own@@ er_id = T2.@@ own@@ er_id JOIN T@@ re@@ at@@ ments AS T3 ON T2.do@@ g@@ _id = T3.@@ do@@ g@@ _id GROUP BY T1.@@ own@@ er_id ORDER BY sum(@@ T3.@@ co@@ st_@@ of_@@ treat@@ ment) DESC LIMIT 1
SELECT T1.@@ profess@@ ion@@ al@@ _id , T1.@@ cell@@ _number FROM Profess@@ ion@@ als AS T1 JOIN T@@ re@@ at@@ ments AS T2 ON T1.@@ profess@@ ion@@ al@@ _id = T2.@@ profess@@ ion@@ al@@ _id GROUP BY T1.@@ profess@@ ion@@ al@@ _id HAVING count(*) >= 2
SELECT T1.@@ profess@@ ion@@ al@@ _id , T1.@@ cell@@ _number FROM Profess@@ ion@@ als AS T1 JOIN T@@ re@@ at@@ ments AS T2 ON T1.@@ profess@@ ion@@ al@@ _id = T2.@@ profess@@ ion@@ al@@ _id GROUP BY T1.@@ profess@@ ion@@ al@@ _id HAVING count(*) >= 2
SELECT DISTINCT T1.first_name , T1.last_name FROM Profess@@ ion@@ als AS T1 JOIN T@@ re@@ at@@ ments AS T2 WHERE co@@ st_@@ of_@@ treatment < ( SELECT avg(@@ co@@ st_@@ of_@@ treat@@ ment) FROM T@@ re@@ at@@ ments )
SELECT DISTINCT T1.first_name , T1.last_name FROM Profess@@ ion@@ als AS T1 JOIN T@@ re@@ at@@ ments AS T2 WHERE co@@ st_@@ of_@@ treatment < ( SELECT avg(@@ co@@ st_@@ of_@@ treat@@ ment) FROM T@@ re@@ at@@ ments )
SELECT T1.date_of_@@ treatment , T2.first_name FROM T@@ re@@ at@@ ments AS T1 JOIN Profess@@ ion@@ als AS T2 ON T1.@@ profess@@ ion@@ al@@ _id = T2.@@ profess@@ ion@@ al@@ _id
SELECT T1.date_of_@@ treatment , T2.first_name FROM T@@ re@@ at@@ ments AS T1 JOIN Profess@@ ion@@ als AS T2 ON T1.@@ profess@@ ion@@ al@@ _id = T2.@@ profess@@ ion@@ al@@ _id
SELECT T1.@@ co@@ st_@@ of_@@ treatment , T2.@@ treat@@ ment@@ _type_description FROM T@@ re@@ at@@ ments AS T1 JOIN treat@@ ment@@ _typ@@ es AS T2 ON T1.@@ treat@@ ment@@ _type_code = T2.@@ treat@@ ment@@ _type_code
SELECT T1.@@ co@@ st_@@ of_@@ treatment , T2.@@ treat@@ ment@@ _type_description FROM T@@ re@@ at@@ ments AS T1 JOIN treat@@ ment@@ _typ@@ es AS T2 ON T1.@@ treat@@ ment@@ _type_code = T2.@@ treat@@ ment@@ _type_code
SELECT T1.first_name , T1.last_name , T2.@@ siz@@ e_@@ code FROM O@@ w@@ n@@ ers AS T1 JOIN Do@@ g@@ s AS T2 ON T1.@@ own@@ er_id = T2.@@ own@@ er_id
SELECT T1.first_name , T1.last_name , T2.@@ siz@@ e_@@ code FROM O@@ w@@ n@@ ers AS T1 JOIN Do@@ g@@ s AS T2 ON T1.@@ own@@ er_id = T2.@@ own@@ er_id
SELECT T1.first_name , T2.name FROM O@@ w@@ n@@ ers AS T1 JOIN Do@@ g@@ s AS T2 ON T1.@@ own@@ er_id = T2.@@ own@@ er_id
SELECT T1.first_name , T2.name FROM O@@ w@@ n@@ ers AS T1 JOIN Do@@ g@@ s AS T2 ON T1.@@ own@@ er_id = T2.@@ own@@ er_id
SELECT T1.name , T2.date_of_@@ treatment FROM Do@@ g@@ s AS T1 JOIN T@@ re@@ at@@ ments AS T2 ON T1.@@ do@@ g@@ _id = T2.do@@ g@@ _id WHERE T1.b@@ re@@ ed@@ _code = ( SELECT b@@ re@@ ed@@ _code FROM Do@@ g@@ s GROUP BY b@@ re@@ ed@@ _code ORDER BY count(*) ASC LIMIT 1 )
SELECT T1.name , T2.date_of_@@ treatment FROM Do@@ g@@ s AS T1 JOIN T@@ re@@ at@@ ments AS T2 ON T1.@@ do@@ g@@ _id = T2.do@@ g@@ _id WHERE T1.b@@ re@@ ed@@ _code = ( SELECT b@@ re@@ ed@@ _code FROM Do@@ g@@ s GROUP BY b@@ re@@ ed@@ _code ORDER BY count(*) ASC LIMIT 1 )
SELECT T1.first_name , T2.name FROM O@@ w@@ n@@ ers AS T1 JOIN Do@@ g@@ s AS T2 ON T1.@@ own@@ er_id = T2.@@ own@@ er_id WHERE T1.state = '@@ V@@ ir@@ g@@ in@@ ia'
SELECT T1.first_name , T2.name FROM O@@ w@@ n@@ ers AS T1 JOIN Do@@ g@@ s AS T2 ON T1.@@ own@@ er_id = T2.@@ own@@ er_id WHERE T1.state = '@@ V@@ ir@@ g@@ in@@ ia'
SELECT DISTINCT T1.date_@@ arriv@@ ed , T1.date_@@ depart@@ ed FROM Do@@ g@@ s AS T1 JOIN T@@ re@@ at@@ ments AS T2 ON T1.@@ do@@ g@@ _id = T2.do@@ g@@ _id
SELECT DISTINCT T1.date_@@ arriv@@ ed , T1.date_@@ depart@@ ed FROM Do@@ g@@ s AS T1 JOIN T@@ re@@ at@@ ments AS T2 ON T1.@@ do@@ g@@ _id = T2.do@@ g@@ _id
SELECT T1.last_name FROM O@@ w@@ n@@ ers AS T1 JOIN Do@@ g@@ s AS T2 ON T1.@@ own@@ er_id = T2.@@ own@@ er_id WHERE T2.age = ( SELECT max(age) FROM Do@@ g@@ s )
SELECT T1.last_name FROM O@@ w@@ n@@ ers AS T1 JOIN Do@@ g@@ s AS T2 ON T1.@@ own@@ er_id = T2.@@ own@@ er_id WHERE T2.age = ( SELECT max(age) FROM Do@@ g@@ s )
SELECT email_address FROM Profess@@ ion@@ als WHERE state = 'H@@ a@@ w@@ ai@@ i@@ ' OR state = 'W@@ is@@ con@@ s@@ in@@ '
SELECT email_address FROM Profess@@ ion@@ als WHERE state = 'H@@ a@@ w@@ ai@@ i@@ ' OR state = 'W@@ is@@ con@@ s@@ in@@ '
SELECT date_@@ arriv@@ ed , date_@@ depart@@ ed FROM Do@@ g@@ s
SELECT date_@@ arriv@@ ed , date_@@ depart@@ ed FROM Do@@ g@@ s
SELECT count(DISTINCT do@@ g_@@ id) FROM T@@ re@@ at@@ ments
SELECT count(DISTINCT do@@ g_@@ id) FROM T@@ re@@ at@@ ments
SELECT count(DISTINCT profess@@ ion@@ al_@@ id) FROM T@@ re@@ at@@ ments
SELECT count(DISTINCT profess@@ ion@@ al_@@ id) FROM T@@ re@@ at@@ ments
SELECT role_code , stre@@ et , city , state FROM profess@@ ion@@ als WHERE city LIKE '%@@ W@@ est@@ %'
SELECT role_code , stre@@ et , city , state FROM profess@@ ion@@ als WHERE city LIKE '%@@ W@@ est@@ %'
SELECT first_name , last_name , email_address FROM O@@ w@@ n@@ ers WHERE state LIKE '%@@ N@@ or@@ th@@ %'
SELECT first_name , last_name , email_address FROM O@@ w@@ n@@ ers WHERE state LIKE '%@@ N@@ or@@ th@@ %'
SELECT count(*) FROM Do@@ g@@ s WHERE age < ( SELECT avg(age) FROM Do@@ g@@ s )
SELECT count(*) FROM Do@@ g@@ s WHERE age < ( SELECT avg(age) FROM Do@@ g@@ s )
SELECT co@@ st_@@ of_@@ treatment FROM T@@ re@@ at@@ ments ORDER BY date_of_@@ treatment DESC LIMIT 1
SELECT co@@ st_@@ of_@@ treatment FROM T@@ re@@ at@@ ments ORDER BY date_of_@@ treatment DESC LIMIT 1
SELECT count(*) FROM Do@@ g@@ s WHERE do@@ g@@ _id NOT IN ( SELECT do@@ g@@ _id FROM T@@ re@@ at@@ ments )
se@@ le@@ ct count(*) from do@@ g@@ s where do@@ g@@ _id not in ( se@@ le@@ ct do@@ g@@ _id from treat@@ ments )
SELECT count(*) FROM O@@ w@@ n@@ ers WHERE own@@ er_id NOT IN ( SELECT own@@ er_id FROM Do@@ g@@ s )
SELECT count(*) FROM O@@ w@@ n@@ ers WHERE own@@ er_id NOT IN ( SELECT own@@ er_id FROM Do@@ g@@ s )
SELECT count(*) FROM Profess@@ ion@@ als WHERE profess@@ ion@@ al@@ _id NOT IN ( SELECT profess@@ ion@@ al@@ _id FROM T@@ re@@ at@@ ments )
SELECT count(*) FROM Profess@@ ion@@ als WHERE profess@@ ion@@ al@@ _id NOT IN ( SELECT profess@@ ion@@ al@@ _id FROM T@@ re@@ at@@ ments )
SELECT name , age , weight FROM Do@@ g@@ s WHERE ab@@ and@@ on@@ ed_@@ yn = 1
SELECT name , age , weight FROM Do@@ g@@ s WHERE ab@@ and@@ on@@ ed_@@ yn = 1
SELECT avg(age) FROM Do@@ g@@ s
SELECT avg(age) FROM Do@@ g@@ s
SELECT max(age) FROM Do@@ g@@ s
SELECT max(age) FROM Do@@ g@@ s
SELECT charg@@ e_@@ type , charg@@ e_@@ amount FROM Char@@ g@@ es
SELECT charg@@ e_@@ type , charg@@ e_@@ amount FROM Char@@ g@@ es
SELECT max(@@ charg@@ e_@@ amount) FROM Char@@ g@@ es
SELECT max(@@ charg@@ e_@@ amount) FROM Char@@ g@@ es
SELECT email_address , cell@@ _number , home_@@ phone FROM profess@@ ion@@ als
SELECT email_address , cell@@ _number , home_@@ phone FROM profess@@ ion@@ als
SELECT DISTINCT b@@ re@@ ed@@ _code , siz@@ e_@@ code FROM do@@ g@@ s
SELECT DISTINCT b@@ re@@ ed@@ _code , siz@@ e_@@ code FROM do@@ g@@ s
SELECT DISTINCT T1.first_name , T3.@@ treat@@ ment@@ _type_description FROM profess@@ ion@@ als AS T1 JOIN T@@ re@@ at@@ ments AS T2 ON T1.@@ profess@@ ion@@ al@@ _id = T2.@@ profess@@ ion@@ al@@ _id JOIN T@@ re@@ at@@ ment@@ _typ@@ es AS T3 ON T2.@@ treat@@ ment@@ _type_code = T3.@@ treat@@ ment@@ _type_code
SELECT DISTINCT T1.first_name , T3.@@ treat@@ ment@@ _type_description FROM profess@@ ion@@ als AS T1 JOIN T@@ re@@ at@@ ments AS T2 ON T1.@@ profess@@ ion@@ al@@ _id = T2.@@ profess@@ ion@@ al@@ _id JOIN T@@ re@@ at@@ ment@@ _typ@@ es AS T3 ON T2.@@ treat@@ ment@@ _type_code = T3.@@ treat@@ ment@@ _type_code
SELECT count(*) FROM sing@@ er
SELECT count(*) FROM sing@@ er
SELECT Name FROM sing@@ er ORDER BY N@@ et_@@ W@@ or@@ th@@ _M@@ ill@@ ions ASC
SELECT Name FROM sing@@ er ORDER BY N@@ et_@@ W@@ or@@ th@@ _M@@ ill@@ ions ASC
SELECT Birth@@ _Year , C@@ it@@ iz@@ en@@ ship FROM sing@@ er
SELECT Birth@@ _Year , C@@ it@@ iz@@ en@@ ship FROM sing@@ er
SELECT Name FROM sing@@ er WHERE C@@ it@@ iz@@ en@@ ship != "F@@ ranc@@ e"
SELECT Name FROM sing@@ er WHERE C@@ it@@ iz@@ en@@ ship != "F@@ ranc@@ e"
SELECT Name FROM sing@@ er WHERE Birth@@ _Year = 19@@ 4@@ 8 OR Birth@@ _Year = 19@@ 4@@ 9
SELECT Name FROM sing@@ er WHERE Birth@@ _Year = 19@@ 4@@ 8 OR Birth@@ _Year = 19@@ 4@@ 9
SELECT Name FROM sing@@ er ORDER BY N@@ et_@@ W@@ or@@ th@@ _M@@ ill@@ ions DESC LIMIT 1
SELECT Name FROM sing@@ er ORDER BY N@@ et_@@ W@@ or@@ th@@ _M@@ ill@@ ions DESC LIMIT 1
SELECT C@@ it@@ iz@@ en@@ ship , COUNT(*) FROM sing@@ er GROUP BY C@@ it@@ iz@@ en@@ ship
SELECT C@@ it@@ iz@@ en@@ ship , COUNT(*) FROM sing@@ er GROUP BY C@@ it@@ iz@@ en@@ ship
SELECT C@@ it@@ iz@@ en@@ ship FROM sing@@ er GROUP BY C@@ it@@ iz@@ en@@ ship ORDER BY COUNT(*) DESC LIMIT 1
se@@ le@@ ct c@@ it@@ iz@@ en@@ ship from sing@@ er g@@ ro@@ up by c@@ it@@ iz@@ en@@ ship order by count(*) desc li@@ mi@@ t 1
SELECT C@@ it@@ iz@@ en@@ ship , max(@@ N@@ et_@@ W@@ or@@ th@@ _M@@ ill@@ ion@@ s) FROM sing@@ er GROUP BY C@@ it@@ iz@@ en@@ ship
SELECT C@@ it@@ iz@@ en@@ ship , max(@@ N@@ et_@@ W@@ or@@ th@@ _M@@ ill@@ ion@@ s) FROM sing@@ er GROUP BY C@@ it@@ iz@@ en@@ ship
SELECT T2.@@ Title , T1.Name FROM sing@@ er AS T1 JOIN song AS T2 ON T1.S@@ ing@@ er_ID = T2.S@@ ing@@ er_ID
SELECT T2.@@ Title , T1.Name FROM sing@@ er AS T1 JOIN song AS T2 ON T1.S@@ ing@@ er_ID = T2.S@@ ing@@ er_ID
SELECT DISTINCT T1.Name FROM sing@@ er AS T1 JOIN song AS T2 ON T1.S@@ ing@@ er_ID = T2.S@@ ing@@ er_ID WHERE T2.S@@ ales > 300@@ 000
SELECT DISTINCT T1.Name FROM sing@@ er AS T1 JOIN song AS T2 ON T1.S@@ ing@@ er_ID = T2.S@@ ing@@ er_ID WHERE T2.S@@ ales > 300@@ 000
SELECT T1.Name FROM sing@@ er AS T1 JOIN song AS T2 ON T1.S@@ ing@@ er_ID = T2.S@@ ing@@ er_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name FROM sing@@ er AS T1 JOIN song AS T2 ON T1.S@@ ing@@ er_ID = T2.S@@ ing@@ er_ID GROUP BY T1.Name HAVING COUNT(*) > 1
SELECT T1.Name , sum(@@ T2.S@@ al@@ es) FROM sing@@ er AS T1 JOIN song AS T2 ON T1.S@@ ing@@ er_ID = T2.S@@ ing@@ er_ID GROUP BY T1.Name
SELECT T1.Name , sum(@@ T2.S@@ al@@ es) FROM sing@@ er AS T1 JOIN song AS T2 ON T1.S@@ ing@@ er_ID = T2.S@@ ing@@ er_ID GROUP BY T1.Name
SELECT Name FROM sing@@ er WHERE S@@ ing@@ er_ID NOT IN (SELECT S@@ ing@@ er_ID FROM song@@ )
SELECT Name FROM sing@@ er WHERE S@@ ing@@ er_ID NOT IN (SELECT S@@ ing@@ er_ID FROM song@@ )
SELECT C@@ it@@ iz@@ en@@ ship FROM sing@@ er WHERE Birth@@ _Year < 19@@ 4@@ 5 INTERSECT SELECT C@@ it@@ iz@@ en@@ ship FROM sing@@ er WHERE Birth@@ _Year > 195@@ 5
SELECT C@@ it@@ iz@@ en@@ ship FROM sing@@ er WHERE Birth@@ _Year < 19@@ 4@@ 5 INTERSECT SELECT C@@ it@@ iz@@ en@@ ship FROM sing@@ er WHERE Birth@@ _Year > 195@@ 5
SELECT count(*) FROM Other_@@ A@@ v@@ ai@@ la@@ ble@@ _F@@ eatures
SELECT T2.@@ feat@@ ure@@ _typ@@ e_name FROM Other_@@ A@@ v@@ ai@@ la@@ ble@@ _F@@ eatures AS T1 JOIN Ref_@@ F@@ eat@@ ure_@@ Types AS T2 ON T1.@@ feat@@ ure@@ _type_code = T2.@@ feat@@ ure@@ _type_code WHERE T1.@@ feat@@ ure@@ _name = "@@ Air@@ C@@ on"
SELECT T2.@@ propert@@ y@@ _type_description FROM Pro@@ per@@ ties AS T1 JOIN Ref_@@ Pro@@ per@@ t@@ y_@@ Types AS T2 ON T1.@@ propert@@ y@@ _type_code = T2.@@ propert@@ y@@ _type_code GROUP BY T1.@@ propert@@ y@@ _type_code
SELECT propert@@ y_name FROM Pro@@ per@@ ties WHERE propert@@ y@@ _type_code = "H@@ ou@@ se@@ " UNION SELECT propert@@ y_name FROM Pro@@ per@@ ties WHERE propert@@ y@@ _type_code = "A@@ part@@ ment@@ " AND room_count > 1
