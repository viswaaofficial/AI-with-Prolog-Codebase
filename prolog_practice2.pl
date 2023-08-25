#Consider the following family tree:  
#Here are the resultant clauses: 
#------------------------------- 
#  male(james1).  
#  male(charles1).
#  male(charles2).
#  male(james2). 
#  male(george1).  

#  female(catherine).  
#  female(elizabeth).  
#  female(sophia).  

#  parent(charles1, james1).  
#  parent(elizabeth, james1).  
#  parent(charles2, charles1).  
#  parent(catherine, charles1).  
#  parent(james2, charles1).  
#  parent(sophia, elizabeth).  
#  parent(george1, sophia). 

#Here is how you would formulate the following queries: 

#     Was George I the parent of Charles I?  
#              Query: parent(charles1, george1).  

#     Who was Charles I's parent? 
#              Query: parent(charles1,X).  

#     Who were the children of Charles I? 
#              Query: parent(X,charles1).  

#Now try expressing the following rules: 
#     M is the mother of X if she is a parent of X and is female  
#     F is the father of X if he is a parent of X and is male  
#     X is a sibling of Y if they both have the same parent.  

#Furthermore add rules defining: 

#    "sister", "brother",  
#     "aunt", "uncle",     
#     "grandparent", "cousin" 


male(james1).
male(charles1).
male(charles2).
male(james2).
male(george1).

female(catherine).
female(elizabeth).
female(sophia).

parent(james1,charles1).
parent(james1,elizabeth).
parent(charles1,charles2).
parent(charles1,catherine).
parent(charles1,james2).
parent(elizabeth,sophia).
parent(sophia,george1).

mother(M,X) :- parent(M,X),female(M).
father(M,X) :- parent(M,X),male(M).
siblings(X,Y) :- parent(M,X),parent(M,Y),Y\=X.
sister(X,Y) :- siblings(X,Y),female(X).
brother(X,Y) :- siblings(X,Y),male(X).
aunt(X,Y) :- parent(M,Y),sister(X,M).
uncle(X,Y) :- parent(M,Y),brother(X,M).
