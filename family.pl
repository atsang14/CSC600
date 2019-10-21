% Facts
is_male(don).
is_male(randy).
is_male(austin).
is_male(barry).
is_male(fernando).
is_male(nolan).
is_male(papa).

is_female(jenny).
is_female(wendy).
is_female(popo).
is_female(cuu).
is_female(elizabeth).
is_female(jennyg).

is_parent_of(jenny, austin).
is_parent_of(randy, austin).

is_parent_of(jenny, prince).
is_parent_of(randy, prince).

is_parent_of(randy, fernando).
is_parent_of(elizabeth, fernando).

is_parent_of(randy, barry).
is_parent_of(jennyg, barry).

is_parent_of(popo, jenny).
is_parent_of(papa, jenny).

is_parent_of(popo, don).
is_parent_of(papa, don).

is_parent_of(popo, cuu).
is_parent_of(papa, cuu).

is_parent_of(don, nolan).
is_parent_of(wendy, nolan).

% Rules
mother(Mother, Child) :- is_parent_of(Mother, Child), is_female(Mother).

father(Father, Child) :- is_parent_of(Father, Child), is_male(Father).

siblings1(Name1, Name2) :- father(Fathername, Name1), father(Fathername, Name2), mother(Mothername1, Nam1), mother(Mothername2, Nam2), Mothername1 \= Mothername2.

siblings1(Name1, Name2) :- mother(Mothername, Nam1), mother(Mothername, Nam2), father(Fathername1, Name1), father(Fathername2, Name2), Fathername1 \= Fathername2.

brother1(Name1, Name2) :- siblings1(Name1, Name2), is_male(Name1), is_male(Name2).

sister1(Name1, Name2) :- siblings1(Name1, Name2), is_female(Name1), is_female(Name2).

siblings2(Name1, Name2) :- father(Fathername, Name1), mother(Mothername, Name2).

brother2(Name1, Name2) :- siblings2(Name1, Name2), is_male(Name1), is_male(Name2).

sister2(Name1, Name2) :- siblings2(Name1, Name2), is_female(Name1), is_female(Name2).

cousin(Name1, Name2) :- father(Fathername, Name1), mother(Mothername, Name2), siblings2(Fathername, Mothername).

uncle(Uncle, Childname) :- mother(Mothername, Childname), siblings2(Uncle, Mothername).

aunt(Aunt, Childname) :- mother(Mothername, Childname), siblings2(Aunt, Mothername).

grandparent(Grandparent, Grandchild) :- is_parent_of(Grandparent, Mothername), mother(Mothername, Grandchild).

grandmother(Grandmother, Grandchild) :- grandparent(Grandmother, Grandchild), is_female(Grandmother).

grandfather(Grandfather, Grandchild) :- grandparent(Grandfather, Grandchild), is_female(Grandfather).

grandchild(Grandchild, Grandparent) :- grandparent(Grandparent, Grandchild).


