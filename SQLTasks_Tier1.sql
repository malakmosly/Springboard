/* Welcome to the SQL mini project. You will carry out this project partly in
the PHPMyAdmin interface, and partly in Jupyter via a Python connection.

This is Tier 1 of the case study, which means that there'll be more guidance for you about how to 
setup your local SQLite connection in PART 2 of the case study. 

The questions in the case study are exactly the same as with Tier 2. 

PART 1: PHPMyAdmin
You will complete questions 1-9 below in the PHPMyAdmin interface. 
Log in by pasting the following URL into your browser, and
using the following Username and Password:

URL: https://sql.springboard.com/
Username: student
Password: learn_sql@springboard

The data you need is in the "country_club" database. This database
contains 3 tables:
    i) the "Bookings" table,
    ii) the "Facilities" table, and
    iii) the "Members" table.

In this case study, you'll be asked a series of questions. You can
solve them using the platform, but for the final deliverable,
paste the code for each solution into this script, and upload it
to your GitHub.

Before starting with the questions, feel free to take your time,
exploring the data, and getting acquainted with the 3 tables. */


/* QUESTIONS 
/* Q1: Some of the facilities charge a fee to members, but some do not.
Write a SQL query to produce a list of the names of the facilities that do. */
A1: The facilities that charge a member cost are as follows:
Tennis Court 1 ($5.0)
Tennis Court 2 ($5.0)
Massage Room 1($9.9)
Massage Room 2($9.9)
Squash Court($3.5)


/* Q2: How many facilities do not charge a fee to members? */
A2: Facilities that do not charge a fee are as follows:
Badminton Court
Table Tennis
Snooker Table
Pool Table

/* Q3: Write an SQL query to show a list of facilities that charge a fee to members,
where the fee is less than 20% of the facility's monthly maintenance cost.
Return the facid, facility name, member cost, and monthly maintenance of the
facilities in question. */
A3: 
Tennis Court 1
5.0
200
0

Tennis Court 2
5.0
200
1

Badminton Court
0.0
50
2

Table Tennis
0.0
10
3

Massage Room 1
9.9
3000
4

Massage Room 2
9.9
3000
5

Squash Court
3.5
80
6

Snooker Table
0.0
15
7

Pool Table
0.0
15
8

/* Q4: Write an SQL query to retrieve the details of facilities with ID 1 and 5.
Try writing the query without using the OR operator. */
A4: 
ID 1:
Name: Tennis Court 2
Member cost: 5.0
Guest cost: 25.0
Initial outlay: 8000
Monthly maintanence: 200

ID 5:
Name: Massage Room 2
Member cost: 9.9
Guest cost: 80.0
Initial outlay: 4000
Monthly maintanence: 3000

/* Q5: Produce a list of facilities, with each labelled as
'cheap' or 'expensive', depending on if their monthly maintenance cost is
more than $100. Return the name and monthly maintenance of the facilities
in question. */
A5:
CHEAP: 
Table Tennis ($10)
Snooker Table ($15)
Pool Table ($15)
Badminton Court ($50)
Squash Court ($80)

EXPENSIVE: 
Tennis Court 1 ($200)
Tennis Court 2 ($200)
Massage Room 1 ($3000)
Massage Room 2 ($3000)

/* Q6: You'd like to get the first and last name of the last member(s)
who signed up. Try not to use the LIMIT clause for your solution. */

Darren
Smith
2012-09-26 18:08:45

/* Q7: Produce a list of all members who have used a tennis court.
Include in your output the name of the court, and the name of the member
formatted as a single column. Ensure no duplicate data, and order by
the member name. */
Anne Baker, Tennis Court 2
Anne Baker, Tennis Court 1
Burton Tracy, Tennis Court 1
Burton Tracy, Tennis Court 2
Charles Owen, Tennis Court 1
Charles Owen, Tennis Court 2
Darren Smith, Tennis Court 2
David Jones, Tennis Court 1
David Jones, Tennis court 2
David Pinker, Tennis Court 1
David Farrell, Tennis Court 1
David Farrell, Tennis Court 2
Douglas Jones, Tennis Court 1
Erica Crumpet, Tennis Court 1
Florence Bader, Tennis Court 1 
Florence Bader, Tennis Court 2
Gerald Butters, Tenns Court 1,
Gerald Butters, Tennis Court 2
Henrietta Rumney, Tennis Court 2
Jack Smith, Tennis Court 1
Jack Smith, Tennis Court 2
Janice Joplette, Tennis Court 1
Janice Joplette, Tennis Court 2
Jemima Farrell, Tennis Court 1
Jemima Farrel, Tennis Court 2
Joan Coplin, Tennis Court 1
John Hunt, Tennis Court 1
John Hunt, Tennis Court 2
Matthew Genting, Tennis Court 1
Milicent Purview, Tennis Court 2
Nancy Dare, Tennis Court 1
Nancy Dare, Tennis Court 2
Ponder Stibbons, Tennis Court 1
Ponder Stibbons, Tennis Court 2
Ramnaresh Sarwin, Tennis Court 1
Ramnaresh Sarwin, Tennis Court 2
Tim Rownam, Tennis Court 1
Tim Rownam, Tennis Court 2
Tim Boothe, Tennis Court 1
Tim Boothe, Tennis Court 2
Timothy Baker, Tennis Court 1
Timothy Baker, Tennis Court 2
Tracy Smith, Tennis Court 1
Tracy Smith, Tennis Court 2

/* Q8: Produce a list of bookings on the day of 2012-09-14 which
will cost the member (or guest) more than $30. Remember that guests have
different costs to members (the listed costs are per half-hour 'slot'), and
the guest user's ID is always 0. Include in your output the name of the
facility, the name of the member formatted as a single column, and the cost.
Order by descending cost, and do not use any subqueries. */

A8: 
14
4
2012-09-14 08:00:00
14
4
Jack
Smith
Massage Room 1
9.9
80.0
0
4
2012-09-14 09:00:00
0
4
GUEST
GUEST
Massage Room 1
9.9
80.0
13
4
2012-09-14 11:00:00
13
4
Jemima
Farrell
Massage Room 1
9.9
80.0
9
4
2012-09-14 12:00:00
9
4
Ponder
Stibbons
Massage Room 1
9.9
80.0
0
4
2012-09-14 13:00:00
0
4
GUEST
GUEST
Massage Room 1
9.9
80.0
13
4
2012-09-14 14:00:00
13
4
Jemima
Farrell
Massage Room 1
9.9
80.0
0
4
2012-09-14 16:00:00
0
4
GUEST
GUEST
Massage Room 1
9.9
80.0
6
4
2012-09-14 18:00:00
6
4
Burton
Tracy
Massage Room 1
9.9
80.0
20
4
2012-09-14 19:00:00
20
4
Matthew
Genting
Massage Room 1
9.9
80.0
15
5
2012-09-14 09:30:00
15
5
Florence
Bader
Massage Room 2
9.9
80.0
0
5
2012-09-14 11:00:00
0
5
GUEST
GUEST
Massage Room 2
9.9
80.0

/* Q9: This time, produce the same result as in Q8, but using a subquery. */


/* PART 2: SQLite
/* We now want you to jump over to a local instance of the database on your machine. 

Copy and paste the LocalSQLConnection.py script into an empty Jupyter notebook, and run it. 

Make sure that the SQLFiles folder containing thes files is in your working directory, and
that you haven't changed the name of the .db file from 'sqlite\db\pythonsqlite'.

You should see the output from the initial query 'SELECT * FROM FACILITIES'.

Complete the remaining tasks in the Jupyter interface. If you struggle, feel free to go back
to the PHPMyAdmin interface as and when you need to. 

You'll need to paste your query into value of the 'query1' variable and run the code block again to get an output.
 
QUESTIONS:
/* Q10: Produce a list of facilities with a total revenue less than 1000.
The output of facility name and total revenue, sorted by revenue. Remember
that there's a different cost for guests and members! */

/* Q11: Produce a report of members and who recommended them in alphabetic surname,firstname order */
Darren
Smith
1

Tracy
Smith
2

Tim
Rownam
3

Janice
Joplette
4
1

Gerald
Butters
5
1

Burton
Tracy
6

Nancy
Dare
7
4

Tim
Boothe
8
3

Ponder
Stibbons
9
6

Charles
Owen
10
1

David
Jones
11
4

Anne
Baker
12
9

Jemima
Farrell
13

Jack
Smith
14
1

Florence
Bader
15
9

Timothy
Baker
16
13

David
Pinker
17
13

Matthew
Genting
20
5

Anna
Mackenzie
21
1

Joan
Coplin
22
16

Ramnaresh
Sarwin
24
15

Douglas
Jones
26
11

Henrietta
Rumney
27
20

David
Farrell
28

Henry
Worthington-Smyth
29
2

Millicent
Purview
30
2

Hyacinth
Tupperware
33

John
Hunt
35
30

Erica
Crumpet
36
2


