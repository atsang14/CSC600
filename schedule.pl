
teaches(ducta, 210).
teaches(charlietuttle, 210).
teaches(ducta, 220).
teaches(chinwong, 220).
teaches(ducta, 340).
teaches(jozo, 600).

freshman(210).

sophmore(220).

junior(340).

senior(600).

morning(210).
morning(220).
morning(340).
morning(600).

afternoon(210).

tth(210).
tth(220).
tth(340).

mwf(210).
mwf(220).
mwf(340).
mwf(600).

teaches_freshman(Instructor) :- teaches(Instructor, Courseid), freshman(Courseid).

teaches_sophomore(Instructor) :- teaches(Instructor, Courseid), sophmore(Courseid).

teaches_junior(Instructor) :- teaches(Instructor, Courseid), junior(Courseid).

teaches_senior(Instructor) :- teaches(Instructor, Courseid), senior(Courseid).

teaches_morning(Instructor) :- teaches(Instructor, Courseid), morning(Courseid).

teaches_afternoon(Instructor) :- teaches(Instructor, Courseid), afternoon(Courseid).

teaches_whole_day(Instructor) :- teaches(Instructor, Courseid), afternoon(Courseid), morning(Courseid).

works_mw(Instructor) :- teaches(Instructor, Courseid), mwf(Instructor, Courseid).

works_tth(Instructor) :- teaches(Instructor, Courseid), tth(Instructor, Courseid).

teaches_three_classes(Instructor) :- teaches(Instructor, Courseid1), teaches(Instructor, Courseid2), teaches(Instructor, Courseid3).