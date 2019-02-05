%If statements 
myInput = input('Please enter a number: '); 

if myInput < 0
    disp("You're kinda negative"); 
elseif (myInput >= 0) && (myInput <= 100)
    disp("You're right on!")
else
    disp("Whoa, that's a big number!"); 
end 



%Create some standard matrices 
myZeros = zeros(20,30);
myOnes = ones(100,100); 
myRandomInts = randi(5,6);  



%My first script, I'm so excited 
% disp('Go go gadget script!'); 
% 
% myMat = randi(3,3);
% myMatTranspose = myMat';