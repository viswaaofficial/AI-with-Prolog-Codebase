#likes(mary,food). 
#likes(mary,wine). 
#likes(john,wine). 
#likes(john,mary). 

#Write rules to verify the following cases:likes(john,x)  
#1. John likes anything that Mary likes  
#2. John likes anyone who likes wine  
#3. John likes anyone who likes themselves 


likes(mary,food).
likes(mary,wine).
likes(john,wine).
likes(john,mary).
likes_1(john,B) :- likes(mary,B).
likes_2(john,X) :- likes(X,wine).
likes_3(john,Y) :- likes(Y,Y).
