
postgres=# update from people address='Grajdanskaya' where id=4;
ОШИБКА:  ошибка синтаксиса (примерное положение: "from")
СТРОКА 1: update from people address='Grajdanskaya' where id=4;
^
postgres=# update people set address='Grajdanskaya' where id=4;
UPDATE 1
    postgres=# update people set email='ozgordu2u@gmail.com', occupation='Malchy' where id=4;
UPDATE 1
    postgres=# delete from people where id=1;
DELETE 0
postgres=# select id from people;
id
----
2
  3
  5
  6
  7
  8
  9
 10
 11
 12
 13
 14
 15
 16
 17
 18
 19
 20
 21
 22
 23
 24
 25
 26
 27
 28
 29
postgres=# select * from people where nationality='China';
id | first_name | last_name | age | gender |        address        |  phone_number   |         email         |
 occupation           | nationality |             education              | languages | is_married | has_children | height | weight
----+------------+-----------+-----+--------+-----------------------+-----------------+-----------------------+-------------------------------+-------------+------------------------------------+-----------+------------+--------------+--------+--------
  8 | Shelia     | Malling   |  77 | F      | 121 Welch Avenue      | 138.112.191.91  | smalling7@dmoz.org    | Account Executive             | China       | Liaoning Technical University      | Swati     | f          | f            |     11 |     32
 13 | Chiquia    | Seary     |  34 | F      | 40683 Coleman Parkway | 140.216.159.251 | csearyc@angelfire.com | Analog Circuit Design manager | China       | Shenyang Pharmaceutical University | Nepali    | f          | t            |     68 |     78
 37 | Creight    | Elvidge   |  69 | M      | 2 Reinke Trail        | 162.160.254.66  | celvidge10@ft.com     | Assistant Manager             | China       | Fuzhou University                  | Dhivehi   | f          | t            |     12 |     39
(3 ёЄЁюъш)


postgres=# select from people where age between 25 and 35 and occupation='Teacher';
--
(2 ёЄЁюъш)


postgres=# select * from people where age between 25 and 35 and occupation='Teacher';
id | first_name |   last_name   | age | gender |      address      |  phone_number   |           email           | occupation | nationality |           education            | languages | is_married | has_children | height | weight
----+------------+---------------+-----+--------+-------------------+-----------------+---------------------------+------------+-------------+--------------------------------+-----------+------------+--------------+--------+--------
 11 | Thaxter    | Sockell       |  30 | M      | 364 Cherokee Hill | 102.139.209.164 | tsockella@sourceforge.net | Teacher    | Japan       | Tohoku Institute of Technology | Icelandic | f          | f            |      8 |     50
 40 | Aelita     | Nazirbek kyzy |  26 | F      | Bokonbaeva 23     | +996555999444   | aelita@gmail.com          | Teacher    | Kyrgyz      | Higer                          | Rus       | t          | t            | 170.51 |   45.5
(2 ёЄЁюъш)


postgres=# select * from people where is_married=true and has_children=true;
id | first_name |   last_name   | age | gender |         address         |  phone_number   |            email
   |       occupation        |  nationality   |                     education                      | languages | is_married | has_children | height | weight
----+------------+---------------+-----+--------+-------------------------+-----------------+------------------------------+-------------------------+----------------+----------------------------------------------------+-----------+------------+--------------+--------+--------
  6 | Anetta     | Rousby        |  15 | F      | 696 Superior Way        | 136.234.177.113 | arousby5@sphinn.com          | Junior Executive        | Togo           | Universite de Lome                                 | Georgian  | t          | t            |     70 |     90
 14 | Jacynth    | Elias         |  47 | F      | 23788 Schlimgen Park    | 61.253.209.224  | jeliasd@cornell.edu          | Assistant Media Planner | Czech Republic | University of New York in Prague                   | Kashmiri  | t          | t            |     53 |     44
 26 | Cob        | Borit         |  78 | M      | 8 Talisman Crossing     | 35.33.144.208   | cboritp@pagesperso-orange.fr | Paralegal               | Russia         | Moscow State University of Geodesy and Cartography | Kurdish   | t          | t            |     97 |     54
 28 | Manny      | Pepineaux     |  35 | M      | 66 International Circle | 75.133.39.246   | mpepineauxr@shop-pro.jp      | Nurse                   | Indonesia      | Universitas Bojonegoro                             | Bengali   | t          | t            |     93 |     14
 31 | Siffre     | Brenstuhl     |  39 | M      | 0247 Dunning Terrace    | 21.45.224.221   | sbrenstuhlu@qq.com           | Senior Sales Associate  | Mexico         | Universidad Lasallista Benavente                   | Burmese   | t          | t            |     72 |     94
 39 | Aibek      | Usonov        |  24 | M      | Chui 123                | +996555777444   | aibek@gmail.com
   | Doctor                  | Kyrgyz         | Higer                                              | kyrgyz    | t          | t            | 170.11 |   72.5
 40 | Aelita     | Nazirbek kyzy |  26 | F      | Bokonbaeva 23           | +996555999444   | aelita@gmail.com
   | Teacher                 | Kyrgyz         | Higer                                              | Rus       | t          | t            | 170.51 |   45.5
(7 ёЄЁюъ)


postgres=# select * from where gender='F' and height>170;
ОШИБКА:  ошибка синтаксиса (примерное положение: "where")
СТРОКА 1: select * from where gender='F' and height>170;
^
postgres=# select * from people where gender='F' and height>170;
id | first_name |   last_name   | age | gender |    address    | phone_number  |      email       | occupation | nationality | education | languages | is_married | has_children | height | weight
----+------------+---------------+-----+--------+---------------+---------------+------------------+------------+-------------+-----------+-----------+------------+--------------+--------+--------
 40 | Aelita     | Nazirbek kyzy |  26 | F      | Bokonbaeva 23 | +996555999444 | aelita@gmail.com | Teacher    | Kyrgyz      | Higer     | Rus       | t          | t            | 170.51 |   45.5
(1 ёЄЁюър)


postgres=# select * from people where gender='M' and weight<75;
id | first_name | last_name  | age | gender |         address         |  phone_number   |            email
|          occupation          |           nationality            |                     education                      |  languages  | is_married | has_children | height | weight
----+------------+------------+-----+--------+-------------------------+-----------------+------------------------------+------------------------------+----------------------------------+----------------------------------------------------+-------------+------------+--------------+--------+--------
  2 | Flinn      | Prator     |  86 | M      | 319 Valley Edge Parkway | 179.126.50.126  | fprator1@ted.com
| Human Resources Assistant IV | Peru                             | Universidad Particular Inca Garcilaso de la Vega   | Catalan     | f          | f            |     16 |     54
  3 | Lars       | Eggar      |  52 | M      | 58673 Gina Circle       | 248.250.99.167  | leggar2@ted.com
| Analyst Programmer           | Ireland                          | Athlone Institute of Technology                    | Danish      | f          | t            |     92 |     36
  7 | Lynn       | Linnell    |  22 | M      | 845 Meadow Vale Court   | 160.241.22.2    | llinnell6@huffingtonpost.com | Office Assistant IV          | United States                    | Arizona State University                           | Montenegrin | f          | f            |     86 |     24
 11 | Thaxter    | Sockell    |  30 | M      | 364 Cherokee Hill       | 102.139.209.164 | tsockella@sourceforge.net    | Teacher                      | Japan                            | Tohoku Institute of Technology                     | Icelandic   | f          | f            |      8 |     50
 15 | Rickard    | Forrington |  23 | M      | 3 Independence Trail    | 203.29.165.156  | rforringtone@statcounter.com | Structural Analysis Engineer | Ecuador                          | Universidad Tecnica de Machala                     | Somali      | f          | f            |     37 |     55
 16 | Luce       | Atwel      |  30 | M      | 5 Carioca Parkway       | 111.114.48.233  | latwelf@pcworld.com
| Paralegal                    | Philippines                      | Our Lady of Fatima University                      | Indonesian  | t          | f            |     89 |     28
 17 | Mord       | Bendall    |  54 | M      | 37507 Memorial Pass     | 145.41.158.94   | mbendallg@bloomberg.com      | Nurse                        | Guatemala                        | Universidad Rural de Guatemala                     | Tajik       | f          | t            |      3 |     15
 21 | Artemus    | Roust      |  60 | M      | 87 Lakewood Parkway     | 71.241.55.36    | aroustk@theglobeandmail.com  | Social Worker                | Sweden                           | Malmo University College                           | Finnish     | t          | f            |     49 |     64
 23 | Gustave    | Jahnke     |  23 | M      | 4764 Hagan Avenue       | 72.219.226.14   | gjahnkem@msu.edu
| Media Manager III            | Indonesia                        | Sekolah Tinggi Akuntansi Negara (STAN)             | Albanian    | t          | f            |     24 |     26
 26 | Cob        | Borit      |  78 | M      | 8 Talisman Crossing     | 35.33.144.208   | cboritp@pagesperso-orange.fr | Paralegal                    | Russia                           | Moscow State University of Geodesy and Cartography | Kurdish     | t          | t            |     97 |     54
 28 | Manny      | Pepineaux  |  35 | M      | 66 International Circle | 75.133.39.246   | mpepineauxr@shop-pro.jp      | Nurse                        | Indonesia                        | Universitas Bojonegoro                             | Bengali     | t          | t            |     93 |     14
 30 | Valentino  | Rillstone  |  69 | M      | 46765 Aberg Terrace     | 7.0.20.137      | vrillstonet@sina.com.cn      | Assistant Manager            | Philippines                      | Wesleyan University Philippines                    | Portuguese  | t          | f            |     44 |     43
 32 | Bogey      | Pretty     |  81 | M      | 6177 Bluestem Center    | 231.36.59.220   | bprettyv@about.me
| VP Accounting                | Philippines                      | Benguet State University                           | Croatian    | f          | t            |     96 |     10
 36 | Reagan     | Willavoys  |  58 | M      | 5 Schlimgen Park        | 97.9.2.171      | rwillavoysz@addthis.com      | VP Accounting                | Portugal                         | Escola Superior de Hotelaria e Turismo do Estoril  | Fijian      | f          | t            |     70 |     49
 37 | Creight    | Elvidge    |  69 | M      | 2 Reinke Trail          | 162.160.254.66  | celvidge10@ft.com
| Assistant Manager            | China                            | Fuzhou University                                  | Dhivehi     | f          | t            |     12 |     39
 38 | Abai       | Asanov     |  20 | M      | Ahunbaeva 123           | +996555666444   | abai@gmail.com
| Teacher                      | Kyrgyz                           | HIger                                              | Rus         | f          | f            | 183.51 |   70.5
 39 | Aibek      | Usonov     |  24 | M      | Chui 123                | +996555777444   | aibek@gmail.com
| Doctor                       | Kyrgyz                           | Higer                                              | kyrgyz      | t          | t            | 170.11 |   72.5
  4 | Niki       | Pitrelli   |  75 | M      | Grajdanskaya            | 177.0.7.44      | ozgordu2u@gmail.com
| Malchy                       | Democratic Republic of the Congo | Universite de Kamina                               | Malagasy    | f          | f            |     60 |     65
(18 ёЄЁюъ)


postgres=#
postgres=#
postgres=# select * from people where age=(select round(avg(age)) from people);
id | first_name | last_name | age | gender |    address     |  phone_number  |        email         |        occupation         | nationality |            education             | languages | is_married | has_children | height | weight
----+------------+-----------+-----+--------+----------------+----------------+----------------------+---------------------------+-------------+----------------------------------+-----------+------------+--------------+--------+--------
 18 | Sallyanne  | Pryell    |  51 | F      | 0867 Dawn Hill | 129.130.174.68 | spryellh@nbcnews.com | Systems Administrator III | El Salvador | Universidad Luterana Salvadorena | Polish    | f          | t            |     27 |     72
(1 ёЄЁюър)


postgres=# select occupation, count(occupation)from people group by occupation;
occupation           | count
-------------------------------+-------
 Social Worker                 |     1
 Senior Sales Associate        |     1
 Assistant Manager             |     2
 Web Designer II               |     1
 Administrative Officer        |     1
 Account Executive             |     1
 Structural Analysis Engineer  |     1
 Paralegal                     |     3
 Nurse                         |     2
 Malchy                        |     1
 Teacher                       |     3
 Professor                     |     1
 Product Engineer              |     1
 Computer Systems Analyst IV   |     1
 Junior Executive              |     1
 Analog Circuit Design manager |     1
 Analyst Programmer            |     1
 Office Assistant IV           |     2
 Research Associate            |     1
 Systems Administrator III     |     1
 Media Manager III             |     1
 Registered Nurse              |     1
 Programmer I                  |     1
 Senior Developer              |     2
 VP Accounting                 |     2
 Assistant Media Planner       |     1
 Director of Sales             |     1
 Geologist I                   |     1
 Human Resources Assistant IV  |     1
 Doctor                        |     1
(30 ёЄЁюъ)


postgres=# select * from people min(age) limit 1;
age | first_name | last_name | age | gender |         address         |  phone_number  |      email       |          occupation          | nationality |                    education                     | languages | is_married | has_children | height | weight
-----+------------+-----------+-----+--------+-------------------------+----------------+------------------+------------------------------+-------------+--------------------------------------------------+-----------+------------+--------------+--------+--------
   2 | Flinn      | Prator    |  86 | M      | 319 Valley Edge Parkway | 179.126.50.126 | fprator1@ted.com | Human Resources Assistant IV | Peru        | Universidad Particular Inca Garcilaso de la Vega | Catalan   | f          | f
   |     16 |     54
(1 ёЄЁюър)


postgres=# select * from people where email  like '%gmail.com';
id | first_name |   last_name   | age | gender |    address    | phone_number  |        email        | occupation |           nationality            |      education       | languages | is_married | has_children | height | weight
----+------------+---------------+-----+--------+---------------+---------------+---------------------+------------+----------------------------------+----------------------+-----------+------------+--------------+--------+--------
 38 | Abai       | Asanov        |  20 | M      | Ahunbaeva 123 | +996555666444 | abai@gmail.com      | Teacher    | Kyrgyz                           | HIger                | Rus       | f          | f            | 183.51 |   70.5
 39 | Aibek      | Usonov        |  24 | M      | Chui 123      | +996555777444 | aibek@gmail.com     | Doctor     | Kyrgyz                           | Higer                | kyrgyz    | t          | t            | 170.11 |   72.5
 40 | Aelita     | Nazirbek kyzy |  26 | F      | Bokonbaeva 23 | +996555999444 | aelita@gmail.com    | Teacher    | Kyrgyz                           | Higer                | Rus       | t          | t            | 170.51 |   45.5
  4 | Niki       | Pitrelli      |  75 | M      | Grajdanskaya  | 177.0.7.44    | ozgordu2u@gmail.com | Malchy     | Democratic Republic of the Congo | Universite de Kamina | Malagasy  | f          | f            |     60 |     65
(4 ёЄЁюъш)


postgres=# select first_name from people where order by height desc;
ОШИБКА:  ошибка синтаксиса (примерное положение: "order")
СТРОКА 1: select first_name from people where order by height desc;
^
postgres=# select first_name from people order by height desc;
first_name
------------
Abai
 Aelita
 Aibek
 Sari
 Cob
 Bogey
 Debora
 Giorgia
 Manny
 Lars
 Luce
 Estel
 Lynn
 Cristen
 Siffre
 Reagan
 Anetta
 Jacquelyn
 Chiquia
 Niki
 Mil
 Philis
 Jacynth
 Artemus
 Valentino
 Sutton
 Archer
postgres=# select first_name, height from people order by height desc;
first_name | height
------------+--------
 Abai       | 183.51
 Aelita     | 170.51
 Aibek      | 170.11
 Sari       |     99
 Cob        |     97
 Bogey      |     96
 Debora     |     94
 Giorgia    |     93
 Manny      |     93
 Lars       |     92
 Luce       |     89
 Estel      |     89
 Lynn       |     86
 Cristen    |     79
 Siffre     |     72
 Reagan     |     70
 Anetta     |     70
 Jacquelyn  |     68
 Chiquia    |     68
 Niki       |     60
 Mil        |     58
 Philis     |     53
 Jacynth    |     53
 Artemus    |     49
 Valentino  |     44
 Sutton     |     42
 Archer     |     41
 Carlita    |     39
 Rickard    |     37
 Sallyanne  |     27
 Gustave    |     24
 Devon      |     23
 Ardyce     |     17
 Flinn      |     16
 Creight    |     12
 Shelia     |     11
 Sybilla    |      9
 Thaxter    |      8
 Mord       |      3
(39 ёЄЁюъ)


postgres=# select * from people where nationality='Russia';
id | first_name | last_name | age | gender |       address       | phone_number  |            email             |    occupation    | nationality |                     education                      | languages | is_married | has_children | height | weight
----+------------+-----------+-----+--------+---------------------+---------------+------------------------------+------------------+-------------+----------------------------------------------------+-----------+------------+--------------+--------+--------
 22 | Debora     | Vreiberg  |  55 | F      | 158 Miller Alley    | 190.192.87.75 | dvreibergl@skyrock.com       | Senior Developer | Russia      | Nevsky Institute of Language and Culture           | Greek     | t          | f            |     94 |     37
 26 | Cob        | Borit     |  78 | M      | 8 Talisman Crossing | 35.33.144.208 | cboritp@pagesperso-orange.fr | Paralegal        | Russia      | Moscow State University of Geodesy and Cartography | Kurdish   | t          | t            |     97 |     54
(2 ёЄЁюъш)


postgres=# select * from people where email like '%com' and phone_number like '+996555%';
id | first_name |   last_name   | age | gender |    address    | phone_number  |      email       | occupation | nationality | education | languages | is_married | has_children | height | weight
----+------------+---------------+-----+--------+---------------+---------------+------------------+------------+-------------+-----------+-----------+------------+--------------+--------+--------
 38 | Abai       | Asanov        |  20 | M      | Ahunbaeva 123 | +996555666444 | abai@gmail.com   | Teacher    | Kyrgyz      | HIger     | Rus       | f          | f            | 183.51 |   70.5
 39 | Aibek      | Usonov        |  24 | M      | Chui 123      | +996555777444 | aibek@gmail.com  | Doctor     | Kyrgyz      | Higer     | kyrgyz    | t          | t            | 170.11 |   72.5
 40 | Aelita     | Nazirbek kyzy |  26 | F      | Bokonbaeva 23 | +996555999444 | aelita@gmail.com | Teacher    | Kyrgyz      | Higer     | Rus       | t          | t            | 170.51 |   45.5
(3 ёЄЁюъш)


postgres=# update people set occuation=null where id=2;
ОШИБКА:  столбец "occuation" в таблице "people" не существует
СТРОКА 1: update people set occuation=null where id=2;
^
postgres=# update people set occuation='null' where id=2;
ОШИБКА:  столбец "occuation" в таблице "people" не существует
СТРОКА 1: update people set occuation='null' where id=2;
^
postgres=# update people set occuation='null' where id=2;
ОШИБКА:  столбец "occuation" в таблице "people" не существует
СТРОКА 1: update people set occuation='null' where id=2;
^
postgres=# update people set occupation='null' where id=2;
UPDATE 1
    postgres=# select * from people where occupation='null';
id | first_name | last_name | age | gender |         address         |  phone_number  |      email       | occupation | nationality |                    education                     | languages | is_married | has_children | height | weight
----+------------+-----------+-----+--------+-------------------------+----------------+------------------+------------+-------------+--------------------------------------------------+-----------+------------+--------------+--------+--------
  2 | Flinn      | Prator    |  86 | M      | 319 Valley Edge Parkway | 179.126.50.126 | fprator1@ted.com | null       | Peru        | Universidad Particular Inca Garcilaso de la Vega | Catalan   | f          | f            |     16 |     54
(1 ёЄЁюър)


postgres=# select * from people where is_married=false;
id | first_name |  last_name  | age | gender |         address         |  phone_number   |            email
 |          occupation           |           nationality            |                       education
    |  languages  | is_married | has_children | height | weight
----+------------+-------------+-----+--------+-------------------------+-----------------+------------------------------+-------------------------------+----------------------------------+-------------------------------------------------------+-------------+------------+--------------+--------+--------
  3 | Lars       | Eggar       |  52 | M      | 58673 Gina Circle       | 248.250.99.167  | leggar2@ted.com
 | Analyst Programmer            | Ireland                          | Athlone Institute of Technology
    | Danish      | f          | t            |     92 |     36
  5 | Estel      | Bruckenthal |  77 | F      | 3 Barby Circle          | 94.37.130.62    | ebruckenthal4@google.es      | Senior Developer              | United States                    | Niagara University
    | English     | f          | f            |     89 |     30
  7 | Lynn       | Linnell     |  22 | M      | 845 Meadow Vale Court   | 160.241.22.2    | llinnell6@huffingtonpost.com | Office Assistant IV           | United States                    | Arizona State University
    | Montenegrin | f          | f            |     86 |     24
  8 | Shelia     | Malling     |  77 | F      | 121 Welch Avenue        | 138.112.191.91  | smalling7@dmoz.org
 | Account Executive             | China                            | Liaoning Technical University
    | Swati       | f          | f            |     11 |     32
  9 | Devon      | Dollar      |  84 | F      | 4 Mcbride Crossing      | 240.219.156.237 | ddollar8@flavors.me
 | Paralegal                     | Czech Republic                   | University of New York in Prague
    | Kannada     | f          | f            |     23 |     89
 10 | Ardyce     | Mainston    |  30 | F      | 968 Lindbergh Terrace   | 161.15.23.72    | amainston9@woothemes.com     | Professor                     | Croatia                          | University of Rijeka
    | Armenian    | f          | t            |     17 |     67
 11 | Thaxter    | Sockell     |  30 | M      | 364 Cherokee Hill       | 102.139.209.164 | tsockella@sourceforge.net    | Teacher                       | Japan                            | Tohoku Institute of Technology
    | Icelandic   | f          | f            |      8 |     50
 13 | Chiquia    | Seary       |  34 | F      | 40683 Coleman Parkway   | 140.216.159.251 | csearyc@angelfire.com        | Analog Circuit Design manager | China                            | Shenyang Pharmaceutical University
    | Nepali      | f          | t            |     68 |     78
 15 | Rickard    | Forrington  |  23 | M      | 3 Independence Trail    | 203.29.165.156  | rforringtone@statcounter.com | Structural Analysis Engineer  | Ecuador                          | Universidad Tecnica de Machala
    | Somali      | f          | f            |     37 |     55
 17 | Mord       | Bendall     |  54 | M      | 37507 Memorial Pass     | 145.41.158.94   | mbendallg@bloomberg.com      | Nurse                         | Guatemala                        | Universidad Rural de Guatemala
    | Tajik       | f          | t            |      3 |     15
 18 | Sallyanne  | Pryell      |  51 | F      | 0867 Dawn Hill          | 129.130.174.68  | spryellh@nbcnews.com         | Systems Administrator III     | El Salvador                      | Universidad Luterana Salvadorena
    | Polish      | f          | t            |     27 |     72
 19 | Jacquelyn  | Jaram       |  22 | F      | 71 Esch Avenue          | 54.121.155.97   | jjarami@google.ru
 | Web Designer II               | Philippines                      | University of Regina Carmeli
    | Indonesian  | f          | t            |     68 |     82
 20 | Sybilla    | Hannon      |  37 | F      | 2 Sage Hill             | 165.148.89.126  | shannonj@patch.com
 | Office Assistant IV           | Armenia                          | Russian-Armenian (Slavonic) State University          | Spanish     | f          | t            |      9 |     47
 24 | Carlita    | Brommage    |  81 | F      | 62520 Johnson Point     | 40.219.63.118   | cbrommagen@senate.gov        | Administrative Officer        | Palestinian Territory            | Al-Quds University - The Arab University in Jerusalem | Afrikaans   | f          | f            |     39 |     96
 25 | Philis     | Hatfull     |  48 | F      | 636 Spaight Point       | 206.255.8.16    | phatfullo@epa.gov
 | Programmer I                  | Indonesia                        | Universitas Nusa Cendana
    | Tetum       | f          | f            |     53 |      4
 27 | Sutton     | Teas        |  68 | M      | 5592 David Park         | 191.245.168.115 | steasq@icio.us
 | Research Associate            | United States                    | Indiana University (System)
    | Korean      | f          | t            |     42 |     88
 32 | Bogey      | Pretty      |  81 | M      | 6177 Bluestem Center    | 231.36.59.220   | bprettyv@about.me
 | VP Accounting                 | Philippines                      | Benguet State University
    | Croatian    | f          | t            |     96 |     10
 33 | Giorgia    | Cutill      |  87 | F      | 7725 Acker Road         | 145.135.96.75   | gcutillw@skyrock.com         | Product Engineer              | Portugal                         | Escola Superior de Artes e Design
    | Lithuanian  | f          | f            |     93 |     75
 34 | Cristen    | Shinton     |  35 | F      | 0503 Sage Street        | 26.109.168.61   | cshintonx@tinyurl.com        | Geologist I                   | Afghanistan                      | Kabul Medical University
    | Amharic     | f          | f            |     79 |     11
 35 | Mil        | Kepling     |  15 | F      | 427 Shasta Center       | 130.106.168.146 | mkeplingy@nytimes.com        | Director of Sales             | South Africa                     | University of Pretoria
postgres=#
postgres=# select *  from people where education='Higer';
id | first_name |   last_name   | age | gender |    address    | phone_number  |      email       | occupation | nationality | education | languages | is_married | has_children | height | weight
----+------------+---------------+-----+--------+---------------+---------------+------------------+------------+-------------+-----------+-----------+------------+--------------+--------+--------
 39 | Aibek      | Usonov        |  24 | M      | Chui 123      | +996555777444 | aibek@gmail.com  | Doctor     | Kyrgyz      | Higer     | kyrgyz    | t          | t            | 170.11 |   72.5
 40 | Aelita     | Nazirbek kyzy |  26 | F      | Bokonbaeva 23 | +996555999444 | aelita@gmail.com | Teacher    | Kyrgyz      | Higer     | Rus       | t          | t            | 170.51 |   45.5
(2 ёЄЁюъш)


postgres=# select * from people where height between 160 and 170;
id | first_name | last_name | age | gender | address | phone_number | email | occupation | nationality | education | languages | is_married | has_children | height | weight
----+------------+-----------+-----+--------+---------+--------------+-------+------------+-------------+-----------+-----------+------------+--------------+--------+--------
(0 ёЄЁюъ)


postgres=# select * from people where height between 60 and 70;
id | first_name | last_name | age | gender |        address        |  phone_number   |          email          |          occupation           |           nationality            |                     education                     | languages  | is_married | has_children | height | weight
----+------------+-----------+-----+--------+-----------------------+-----------------+-------------------------+-------------------------------+----------------------------------+---------------------------------------------------+------------+------------+--------------+--------+--------
  6 | Anetta     | Rousby    |  15 | F      | 696 Superior Way      | 136.234.177.113 | arousby5@sphinn.com     | Junior Executive              | Togo                             | Universite de Lome                                | Georgian   | t          | t            |     70 |     90
 13 | Chiquia    | Seary     |  34 | F      | 40683 Coleman Parkway | 140.216.159.251 | csearyc@angelfire.com   | Analog Circuit Design manager | China                            | Shenyang Pharmaceutical University                | Nepali     | f          | t            |     68 |     78
 19 | Jacquelyn  | Jaram     |  22 | F      | 71 Esch Avenue        | 54.121.155.97   | jjarami@google.ru       | Web Designer II               | Philippines                      | University of Regina Carmeli                      | Indonesian | f          | t            |     68 |     82
 36 | Reagan     | Willavoys |  58 | M      | 5 Schlimgen Park      | 97.9.2.171      | rwillavoysz@addthis.com | VP Accounting                 | Portugal                         | Escola Superior de Hotelaria e Turismo do Estoril | Fijian     | f          | t            |     70 |     49
  4 | Niki       | Pitrelli  |  75 | M      | Grajdanskaya          | 177.0.7.44      | ozgordu2u@gmail.com     | Malchy                        | Democratic Republic of the Congo | Universite de Kamina                              | Malagasy   | f          | f            |     60 |     65
(5 ёЄЁюъ)


postgres=# select * from people where language='English', language='Chenese';
ОШИБКА:  ошибка синтаксиса (примерное положение: ",")
СТРОКА 1: select * from people where language='English', language='Che...
                                                       ^
postgres=# select * from people where language='English' or language='Chenese';
ОШИБКА:  столбец "language" не существует
СТРОКА 1: select * from people where language='English' or language='C...
    ^
    ПОДСКАЗКА:  Возможно, предполагалась ссылка на столбец "people.languages".
    postgres=# select * from people where languages='English', language='Chenese';
ОШИБКА:  ошибка синтаксиса (примерное положение: ",")
СТРОКА 1: select * from people where languages='English', language='Ch...
                                                        ^
postgres=# select * from people where languages='English' or language='Chenese';
ОШИБКА:  столбец "language" не существует
СТРОКА 1: select * from people where languages='English' or language='...
                                                            ^
ПОДСКАЗКА:  Возможно, предполагалась ссылка на столбец "people.languages".
postgres=#  select * from people where people.languages='English' or language='Chenese';
ОШИБКА:  столбец "language" не существует
СТРОКА 1: ...* from people where people.languages='English' or language='...
                                                               ^
ПОДСКАЗКА:  Возможно, предполагалась ссылка на столбец "people.languages".
postgres=#  select * from people where languages='English' and language='Chenese';
ОШИБКА:  столбец "language" не существует
СТРОКА 1: ...elect * from people where languages='English' and language='...
                                                               ^
ПОДСКАЗКА:  Возможно, предполагалась ссылка на столбец "people.languages".
postgres=#  select * from people where languages='English' ;
id | first_name |  last_name  | age | gender |    address     | phone_number |          email          |    occupation    |  nationality  |     education      | languages | is_married | has_children | height | weight
----+------------+-------------+-----+--------+----------------+--------------+-------------------------+------------------+---------------+--------------------+-----------+------------+--------------+--------+--------
  5 | Estel      | Bruckenthal |  77 | F      | 3 Barby Circle | 94.37.130.62 | ebruckenthal4@google.es | Senior Developer | United States | Niagara University | English   | f          | f            |     89 |     30
(1 ёЄЁюър)


postgres=# select * from people where languages in ('English','Korean') ;
id | first_name |  last_name  | age | gender |     address     |  phone_number   |          email          |     occupation     |  nationality  |          education          | languages | is_married | has_children | height | weight
----+------------+-------------+-----+--------+-----------------+-----------------+-------------------------+--------------------+---------------+-----------------------------+-----------+------------+--------------+--------+--------
  5 | Estel      | Bruckenthal |  77 | F      | 3 Barby Circle  | 94.37.130.62    | ebruckenthal4@google.es | Senior Developer   | United States | Niagara University          | English   | f          | f            |     89 |     30
 27 | Sutton     | Teas        |  68 | M      | 5592 David Park | 191.245.168.115 | steasq@icio.us          | Research Associate | United States | Indiana University (System) | Korean    | f          | t            |     42 |     88
(2 ёЄЁюъш)


postgres=# select * from people where is_married=false and has_children=true;
id | first_name | last_name | age | gender |        address        |  phone_number   |          email           |          occupation           |  nationality  |                     education                     | languages  | is_married | has_children | height | weight
----+------------+-----------+-----+--------+-----------------------+-----------------+--------------------------+-------------------------------+---------------+---------------------------------------------------+------------+------------+--------------+--------+--------
  3 | Lars       | Eggar     |  52 | M      | 58673 Gina Circle     | 248.250.99.167  | leggar2@ted.com          | Analyst Programmer            | Ireland       | Athlone Institute of Technology                   | Danish     | f          | t            |     92 |     36
 10 | Ardyce     | Mainston  |  30 | F      | 968 Lindbergh Terrace | 161.15.23.72    | amainston9@woothemes.com | Professor                     | Croatia       | University of Rijeka                              | Armenian   | f          | t            |     17 |     67
 13 | Chiquia    | Seary     |  34 | F      | 40683 Coleman Parkway | 140.216.159.251 | csearyc@angelfire.com    | Analog Circuit Design manager | China         | Shenyang Pharmaceutical University                | Nepali     | f          | t            |     68 |     78
 17 | Mord       | Bendall   |  54 | M      | 37507 Memorial Pass   | 145.41.158.94   | mbendallg@bloomberg.com  | Nurse                         | Guatemala     | Universidad Rural de Guatemala                    | Tajik      | f          | t            |      3 |     15
 18 | Sallyanne  | Pryell    |  51 | F      | 0867 Dawn Hill        | 129.130.174.68  | spryellh@nbcnews.com     | Systems Administrator III     | El Salvador   | Universidad Luterana Salvadorena                  | Polish     | f          | t            |     27 |     72
 19 | Jacquelyn  | Jaram     |  22 | F      | 71 Esch Avenue        | 54.121.155.97   | jjarami@google.ru        | Web Designer II               | Philippines   | University of Regina Carmeli                      | Indonesian | f          | t            |     68 |     82
 20 | Sybilla    | Hannon    |  37 | F      | 2 Sage Hill           | 165.148.89.126  | shannonj@patch.com       | Office Assistant IV           | Armenia       | Russian-Armenian (Slavonic) State University      | Spanish    | f          | t            |      9 |     47
 27 | Sutton     | Teas      |  68 | M      | 5592 David Park       | 191.245.168.115 | steasq@icio.us           | Research Associate            | United States | Indiana University (System)                       | Korean     | f          | t            |     42 |     88
 32 | Bogey      | Pretty    |  81 | M      | 6177 Bluestem Center  | 231.36.59.220   | bprettyv@about.me        | VP Accounting                 | Philippines   | Benguet State University                          | Croatian   | f          | t            |     96 |     10
 35 | Mil        | Kepling   |  15 | F      | 427 Shasta Center     | 130.106.168.146 | mkeplingy@nytimes.com    | Director of Sales             | South Africa  | University of Pretoria                            | Persian    | f          | t            |     58 |      8
 36 | Reagan     | Willavoys |  58 | M      | 5 Schlimgen Park      | 97.9.2.171      | rwillavoysz@addthis.com  | VP Accounting                 | Portugal      | Escola Superior de Hotelaria e Turismo do Estoril | Fijian     | f          | t            |     70 |     49
 37 | Creight    | Elvidge   |  69 | M      | 2 Reinke Trail        | 162.160.254.66  | celvidge10@ft.com        | Assistant Manager             | China         | Fuzhou University                                 | Dhivehi    | f          | t            |     12 |     39
(12 ёЄЁюъ)


postgres=# select * from people where weight>80 or is_married=true;
id | first_name |   last_name   | age | gender |         address         |  phone_number   |            email
   |         occupation          |      nationality      |                       education                       | languages  | is_married | has_children | height | weight
----+------------+---------------+-----+--------+-------------------------+-----------------+------------------------------+-----------------------------+-----------------------+-------------------------------------------------------+------------+------------+--------------+--------+--------
  6 | Anetta     | Rousby        |  15 | F      | 696 Superior Way        | 136.234.177.113 | arousby5@sphinn.com          | Junior Executive            | Togo                  | Universite de Lome                                    | Georgian   | t          | t            |     70 |     90
  9 | Devon      | Dollar        |  84 | F      | 4 Mcbride Crossing      | 240.219.156.237 | ddollar8@flavors.me          | Paralegal                   | Czech Republic        | University of New York in Prague                      | Kannada    | f          | f            |     23 |     89
 12 | Archer     | de Merida     |  84 | M      | 47 5th Trail            | 129.53.84.32    | ademeridab@t.co
   | Computer Systems Analyst IV | Poland                | Pedagogical University of Kielce                      | Latvian    | t          | f            |     41 |     86
 14 | Jacynth    | Elias         |  47 | F      | 23788 Schlimgen Park    | 61.253.209.224  | jeliasd@cornell.edu          | Assistant Media Planner     | Czech Republic        | University of New York in Prague                      | Kashmiri   | t          | t            |     53 |     44
 16 | Luce       | Atwel         |  30 | M      | 5 Carioca Parkway       | 111.114.48.233  | latwelf@pcworld.com          | Paralegal                   | Philippines           | Our Lady of Fatima University                         | Indonesian | t          | f            |     89 |     28
 19 | Jacquelyn  | Jaram         |  22 | F      | 71 Esch Avenue          | 54.121.155.97   | jjarami@google.ru
   | Web Designer II             | Philippines           | University of Regina Carmeli                          | Indonesian | f          | t            |     68 |     82
 21 | Artemus    | Roust         |  60 | M      | 87 Lakewood Parkway     | 71.241.55.36    | aroustk@theglobeandmail.com  | Social Worker               | Sweden                | Malmo University College                              | Finnish    | t          | f            |     49 |     64
 22 | Debora     | Vreiberg      |  55 | F      | 158 Miller Alley        | 190.192.87.75   | dvreibergl@skyrock.com       | Senior Developer            | Russia                | Nevsky Institute of Language and Culture              | Greek      | t          | f            |     94 |     37
 23 | Gustave    | Jahnke        |  23 | M      | 4764 Hagan Avenue       | 72.219.226.14   | gjahnkem@msu.edu
   | Media Manager III           | Indonesia             | Sekolah Tinggi Akuntansi Negara (STAN)                | Albanian   | t          | f            |     24 |     26
 24 | Carlita    | Brommage      |  81 | F      | 62520 Johnson Point     | 40.219.63.118   | cbrommagen@senate.gov        | Administrative Officer      | Palestinian Territory | Al-Quds University - The Arab University in Jerusalem | Afrikaans  | f          | f            |     39 |     96
 26 | Cob        | Borit         |  78 | M      | 8 Talisman Crossing     | 35.33.144.208   | cboritp@pagesperso-orange.fr | Paralegal                   | Russia                | Moscow State University of Geodesy and Cartography    | Kurdish    | t          | t            |     97 |     54
 27 | Sutton     | Teas          |  68 | M      | 5592 David Park         | 191.245.168.115 | steasq@icio.us
   | Research Associate          | United States         | Indiana University (System)                           | Korean     | f          | t            |     42 |     88
 28 | Manny      | Pepineaux     |  35 | M      | 66 International Circle | 75.133.39.246   | mpepineauxr@shop-pro.jp      | Nurse                       | Indonesia             | Universitas Bojonegoro                                | Bengali    | t          | t            |     93 |     14
 29 | Sari       | Crich         |  74 | F      | 77609 Evergreen Alley   | 63.63.100.182   | scrichs@stumbleupon.com      | Registered Nurse            | Indonesia             | Universitas Bunda Mulia Jakarta                       | Georgian   | t          | f            |     99 |     21
 30 | Valentino  | Rillstone     |  69 | M      | 46765 Aberg Terrace     | 7.0.20.137      | vrillstonet@sina.com.cn      | Assistant Manager           | Philippines           | Wesleyan University Philippines                       | Portuguese | t          | f            |     44 |     43
 31 | Siffre     | Brenstuhl     |  39 | M      | 0247 Dunning Terrace    | 21.45.224.221   | sbrenstuhlu@qq.com           | Senior Sales Associate      | Mexico                | Universidad Lasallista Benavente                      | Burmese    | t          | t            |     72 |     94
 39 | Aibek      | Usonov        |  24 | M      | Chui 123                | +996555777444   | aibek@gmail.com
   | Doctor                      | Kyrgyz                | Higer                                                 | kyrgyz     | t          | t            | 170.11 |   72.5
 40 | Aelita     | Nazirbek kyzy |  26 | F      | Bokonbaeva 23           | +996555999444   | aelita@gmail.com
   | Teacher                     | Kyrgyz                | Higer                                                 | Rus        | t          | t            | 170.51 |   45.5
(18 ёЄЁюъ)


postgres=# select * from people where order by age and order by height desc;
ОШИБКА:  ошибка синтаксиса (примерное положение: "order")
СТРОКА 1: select * from people where order by age and order by height ...
    ^
    postgres=# select * from people where (select age from order by age) and (select height from order by height desc);
ОШИБКА:  ошибка синтаксиса (примерное положение: "order")
СТРОКА 1: select * from people where (select age from order by age) an...
    ^
    postgres=# select age from people order by age;
age
-----
15
  15
  20
  22
  22
  23
  23
  24
  26
  30
  30
  30
  34
  35
  35
  37
  39
  47
  48
  51
  52
  54
  55
  58
  60
  68
  69
  69
  74
  75
  77
  77
  78
  81
  81
  84
  84
  86
  87
(39 ёЄЁюъ)


postgres=# select height from people order by height;
height
--------
3
      8
      9
     11
     12
     16
     17
     23
     24
     27
     37
     39
     41
     42
     44
     49
     53
     53
     58
     60
     68
     68
     70
     70
     72
     79
     86
     89
     89
     92
     93
     93
     94
     96
     97
     99
 170.11
 170.51
 183.51
(39 ёЄЁюъ)


postgres=# select * from people order by age, height desc;
id | first_name |   last_name   | age | gender |         address         |  phone_number   |            email
   |          occupation           |           nationality            |                       education
      |  languages  | is_married | has_children | height | weight
----+------------+---------------+-----+--------+-------------------------+-----------------+------------------------------+-------------------------------+----------------------------------+-------------------------------------------------------+-------------+------------+--------------+--------+--------
  6 | Anetta     | Rousby        |  15 | F      | 696 Superior Way        | 136.234.177.113 | arousby5@sphinn.com          | Junior Executive              | Togo                             | Universite de Lome
      | Georgian    | t          | t            |     70 |     90
 35 | Mil        | Kepling       |  15 | F      | 427 Shasta Center       | 130.106.168.146 | mkeplingy@nytimes.com        | Director of Sales             | South Africa                     | University of Pretoria
      | Persian     | f          | t            |     58 |      8
 38 | Abai       | Asanov        |  20 | M      | Ahunbaeva 123           | +996555666444   | abai@gmail.com
   | Teacher                       | Kyrgyz                           | HIger
      | Rus         | f          | f            | 183.51 |   70.5
  7 | Lynn       | Linnell       |  22 | M      | 845 Meadow Vale Court   | 160.241.22.2    | llinnell6@huffingtonpost.com | Office Assistant IV           | United States                    | Arizona State University
      | Montenegrin | f          | f            |     86 |     24
 19 | Jacquelyn  | Jaram         |  22 | F      | 71 Esch Avenue          | 54.121.155.97   | jjarami@google.ru
   | Web Designer II               | Philippines                      | University of Regina Carmeli
      | Indonesian  | f          | t            |     68 |     82
 15 | Rickard    | Forrington    |  23 | M      | 3 Independence Trail    | 203.29.165.156  | rforringtone@statcounter.com | Structural Analysis Engineer  | Ecuador                          | Universidad Tecnica de Machala
      | Somali      | f          | f            |     37 |     55
 23 | Gustave    | Jahnke        |  23 | M      | 4764 Hagan Avenue       | 72.219.226.14   | gjahnkem@msu.edu
   | Media Manager III             | Indonesia                        | Sekolah Tinggi Akuntansi Negara (STAN)
      | Albanian    | t          | f            |     24 |     26
 39 | Aibek      | Usonov        |  24 | M      | Chui 123                | +996555777444   | aibek@gmail.com
   | Doctor                        | Kyrgyz                           | Higer
      | kyrgyz      | t          | t            | 170.11 |   72.5
 40 | Aelita     | Nazirbek kyzy |  26 | F      | Bokonbaeva 23           | +996555999444   | aelita@gmail.com
   | Teacher                       | Kyrgyz                           | Higer
      | Rus         | t          | t            | 170.51 |   45.5
 16 | Luce       | Atwel         |  30 | M      | 5 Carioca Parkway       | 111.114.48.233  | latwelf@pcworld.com          | Paralegal                     | Philippines                      | Our Lady of Fatima University
      | Indonesian  | t          | f            |     89 |     28
 10 | Ardyce     | Mainston      |  30 | F      | 968 Lindbergh Terrace   | 161.15.23.72    | amainston9@woothemes.com     | Professor                     | Croatia                          | University of Rijeka
      | Armenian    | f          | t            |     17 |     67
 11 | Thaxter    | Sockell       |  30 | M      | 364 Cherokee Hill       | 102.139.209.164 | tsockella@sourceforge.net    | Teacher                       | Japan                            | Tohoku Institute of Technology
      | Icelandic   | f          | f            |      8 |     50
 13 | Chiquia    | Seary         |  34 | F      | 40683 Coleman Parkway   | 140.216.159.251 | csearyc@angelfire.com        | Analog Circuit Design manager | China                            | Shenyang Pharmaceutical University
      | Nepali      | f          | t            |     68 |     78
 28 | Manny      | Pepineaux     |  35 | M      | 66 International Circle | 75.133.39.246   | mpepineauxr@shop-pro.jp      | Nurse                         | Indonesia                        | Universitas Bojonegoro
      | Bengali     | t          | t            |     93 |     14
 34 | Cristen    | Shinton       |  35 | F      | 0503 Sage Street        | 26.109.168.61   | cshintonx@tinyurl.com        | Geologist I                   | Afghanistan                      | Kabul Medical University
      | Amharic     | f          | f            |     79 |     11
 20 | Sybilla    | Hannon        |  37 | F      | 2 Sage Hill             | 165.148.89.126  | shannonj@patch.com           | Office Assistant IV           | Armenia                          | Russian-Armenian (Slavonic) State University          | Spanish     | f          | t            |      9 |     47
 31 | Siffre     | Brenstuhl     |  39 | M      | 0247 Dunning Terrace    | 21.45.224.221   | sbrenstuhlu@qq.com           | Senior Sales Associate        | Mexico                           | Universidad Lasallista Benavente
      | Burmese     | t          | t            |     72 |     94
 14 | Jacynth    | Elias         |  47 | F      | 23788 Schlimgen Park    | 61.253.209.224  | jeliasd@cornell.edu          | Assistant Media Planner       | Czech Republic                   | University of New York in Prague
      | Kashmiri    | t          | t            |     53 |     44
 25 | Philis     | Hatfull       |  48 | F      | 636 Spaight Point       | 206.255.8.16    | phatfullo@epa.gov
   | Programmer I                  | Indonesia                        | Universitas Nusa Cendana
      | Tetum       | f          | f            |     53 |      4
 18 | Sallyanne  | Pryell        |  51 | F      | 0867 Dawn Hill          | 129.130.174.68  | spryellh@nbcnews.com         | Systems Administrator III     | El Salvador                      | Universidad Luterana Salvadorena
      | Polish      | f          | t            |     27 |     72
  3 | Lars       | Eggar         |  52 | M      | 58673 Gina Circle       | 248.250.99.167  | leggar2@ted.com
   | Analyst Programmer            | Ireland                          | Athlone Institute of Technology
      | Danish      | f          | t            |     92 |     36
 17 | Mord       | Bendall       |  54 | M      | 37507 Memorial Pass     | 145.41.158.94   | mbendallg@bloomberg.com      | Nurse                         | Guatemala                        | Universidad Rural de Guatemala
      | Tajik       | f          | t            |      3 |     15
postgres=# a     | Vreiberg      |  55 | F      | 158 Miller Alley        | 190.192.87.75   | dvreibergl@skyrock.com       | Senior Developer
postgres=#                          | Nevsky Institute of Language and Culture              | Greek       | t          | f            |     94 |     37
postgres=# n     | Willavoys     |  58 | M      | 5 Schlimgen Park        | 97.9.2.171      | rwillavoysz@addthis.com      | VP Accounting
postgres=#                          | Escola Superior de Hotelaria e Turismo do Estoril     | Fijian      | f          | t            |     70 |     49
postgres=# us    | Roust         |  60 | M      | 87 Lakewood Parkway     | 71.241.55.36    | aroustk@theglobeandmail.com  | Social Worker
postgres=#                          | Malmo University College
postgres=#
postgres=#postgres=# select * from people
select distinct first_name from people;
first_name
------------
Archer
 Jacquelyn
 Reagan
 Jacynth
 Estel
 Mord
 Siffre
 Bogey
 Devon
 Ardyce
 Manny
 Mil
 Creight
 Cristen
 Thaxter
 Valentino
 Aibek
 Anetta
 Niki
 Sallyanne
 Rickard
 Flinn
 Shelia
 Giorgia
 Luce
 Artemus
 Lynn
 Philis
 Lars
 Sutton
 Gustave
 Carlita
 Debora
 Sybilla
 Abai
 Chiquia
 Sari
 Cob
 Aelita
(39 ёЄЁюъ)


postgres=#
postgres=# select * from people where nationality in('Afghanistan', 'Japan');
id | first_name | last_name | age | gender |      address      |  phone_number   |           email           | occupation  | nationality |           education            | languages | is_married | has_children | height | weight
----+------------+-----------+-----+--------+-------------------+-----------------+---------------------------+-------------+-------------+--------------------------------+-----------+------------+--------------+--------+--------
 11 | Thaxter    | Sockell   |  30 | M      | 364 Cherokee Hill | 102.139.209.164 | tsockella@sourceforge.net | Teacher     | Japan       | Tohoku Institute of Technology | Icelandic | f          | f            |      8 |     50
 34 | Cristen    | Shinton   |  35 | F      | 0503 Sage Street  | 26.109.168.61   | cshintonx@tinyurl.com     | Geologist I | Afghanistan | Kabul Medical University       | Amharic   | f          | f            |     79 |     11
(2 ёЄЁюъш)


postgres=# select * from people where address like '%123';
id | first_name | last_name | age | gender |    address    | phone_number  |      email      | occupation | nationality | education | languages | is_married | has_children | height | weight
----+------------+-----------+-----+--------+---------------+---------------+-----------------+------------+-------------+-----------+-----------+------------+--------------+--------+--------
 38 | Abai       | Asanov    |  20 | M      | Ahunbaeva 123 | +996555666444 | abai@gmail.com  | Teacher    | Kyrgyz      | HIger     | Rus       | f          | f            | 183.51 |   70.5
 39 | Aibek      | Usonov    |  24 | M      | Chui 123      | +996555777444 | aibek@gmail.com | Doctor     | Kyrgyz      | Higer     | kyrgyz    | t          | t            | 170.11 |   72.5
(2 ёЄЁюъш)


postgres=# select * from people where phone_number like in ('%55%','%22%', '%80%');
ОШИБКА:  ошибка синтаксиса (примерное положение: "in")
СТРОКА 1: select * from people where phone_number like in ('%55%','%22...
                                                       ^
postgres=# select * from people where phone_number like '%55%' or phone_number like '%22%' or phone_number like '%80%';
 id | first_name |   last_name   | age | gender |        address        |  phone_number  |            email
|       occupation        |  nationality   |               education                |  languages  | is_married | has_children | height | weight
----+------------+---------------+-----+--------+-----------------------+----------------+------------------------------+-------------------------+----------------+----------------------------------------+-------------+------------+--------------+--------+--------
  7 | Lynn       | Linnell       |  22 | M      | 845 Meadow Vale Court | 160.241.22.2   | llinnell6@huffingtonpost.com | Office Assistant IV     | United States  | Arizona State University               | Montenegrin | f          | f            |     86 |     24
 14 | Jacynth    | Elias         |  47 | F      | 23788 Schlimgen Park  | 61.253.209.224 | jeliasd@cornell.edu
| Assistant Media Planner | Czech Republic | University of New York in Prague       | Kashmiri    | t          | t            |     53 |     44
 19 | Jacquelyn  | Jaram         |  22 | F      | 71 Esch Avenue        | 54.121.155.97  | jjarami@google.ru
| Web Designer II         | Philippines    | University of Regina Carmeli           | Indonesian  | f          | t            |     68 |     82
 21 | Artemus    | Roust         |  60 | M      | 87 Lakewood Parkway   | 71.241.55.36   | aroustk@theglobeandmail.com  | Social Worker           | Sweden         | Malmo University College               | Finnish     | t          | f            |     49 |     64
 23 | Gustave    | Jahnke        |  23 | M      | 4764 Hagan Avenue     | 72.219.226.14  | gjahnkem@msu.edu
| Media Manager III       | Indonesia      | Sekolah Tinggi Akuntansi Negara (STAN) | Albanian    | t          | f            |     24 |     26
 25 | Philis     | Hatfull       |  48 | F      | 636 Spaight Point     | 206.255.8.16   | phatfullo@epa.gov
| Programmer I            | Indonesia      | Universitas Nusa Cendana               | Tetum       | f          | f            |     53 |      4
 31 | Siffre     | Brenstuhl     |  39 | M      | 0247 Dunning Terrace  | 21.45.224.221  | sbrenstuhlu@qq.com
| Senior Sales Associate  | Mexico         | Universidad Lasallista Benavente       | Burmese     | t          | t            |     72 |     94
 32 | Bogey      | Pretty        |  81 | M      | 6177 Bluestem Center  | 231.36.59.220  | bprettyv@about.me
| VP Accounting           | Philippines    | Benguet State University               | Croatian    | f          | t            |     96 |     10
 38 | Abai       | Asanov        |  20 | M      | Ahunbaeva 123         | +996555666444  | abai@gmail.com
| Teacher                 | Kyrgyz         | HIger                                  | Rus         | f          | f            | 183.51 |   70.5
 39 | Aibek      | Usonov        |  24 | M      | Chui 123              | +996555777444  | aibek@gmail.com
| Doctor                  | Kyrgyz         | Higer                                  | kyrgyz      | t          | t            | 170.11 |   72.5
 40 | Aelita     | Nazirbek kyzy |  26 | F      | Bokonbaeva 23         | +996555999444  | aelita@gmail.com
| Teacher                 | Kyrgyz         | Higer                                  | Rus         | t          | t            | 170.51 |   45.5
(11 ёЄЁюъ)


postgres=#
postgres=# select * from people is_married=false where update set occupation='developer';
ОШИБКА:  ошибка синтаксиса (примерное положение: "=")
СТРОКА 1: select * from people is_married=false where update set occup...
                                         ^
postgres=# select * from people where is_married=false update people set occupation='developer';
ОШИБКА:  ошибка синтаксиса (примерное положение: "update")
СТРОКА 1: select * from people where is_married=false update people se...
                                                      ^
postgres=# update people set occupation='developer' where is_married=false;
UPDATE 25
postgres=# update people set first_name='Abu', last_name='Abuev' where id=2;
UPDATE 1
postgres=# update people set weight=weight+5 where has_children=true;
UPDATE 19
postgres=# delete from people where occupation='Doctor';
DELETE 1
postgres=# delete from people where age<20;
DELETE 2
postgres=# select height order by height desc limit 3;
ОШИБКА:  столбец "height" не существует
СТРОКА 1: select height order by height desc limit 3;
                 ^
postgres=# select height order by height desc from people limit 3;
ОШИБКА:  ошибка синтаксиса (примерное положение: "from")
СТРОКА 1: select height order by height desc from people limit 3;
                                             ^
postgres=# select * from people height order by height desc limit 3;
 id | first_name |   last_name   | age | gender |        address        | phone_number  |          email          |    occupation    | nationality |            education            | languages | is_married | has_children | height | weight
----+------------+---------------+-----+--------+-----------------------+---------------+-------------------------+------------------+-------------+---------------------------------+-----------+------------+--------------+--------+--------
 38 | Abai       | Asanov        |  20 | M      | Ahunbaeva 123         | +996555666444 | abai@gmail.com          | developer        | Kyrgyz      | HIger                           | Rus       | f          | f            | 183.51 |   70.5
 40 | Aelita     | Nazirbek kyzy |  26 | F      | Bokonbaeva 23         | +996555999444 | aelita@gmail.com        | Teacher          | Kyrgyz      | Higer                           | Rus       | t          | t            | 170.51 |   50.5
 29 | Sari       | Crich         |  74 | F      | 77609 Evergreen Alley | 63.63.100.182 | scrichs@stumbleupon.com | Registered Nurse | Indonesia   | Universitas Bunda Mulia Jakarta | Georgian  | t          | f            |     99 |     21
(3 ёЄЁюъш)
