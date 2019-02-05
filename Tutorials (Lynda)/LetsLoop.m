%while loop
threshold = 8; 


while true
    num = randi(10);
    if num > threshold
        disp('Over threshold! SHUT DOWN!')
        break
    end
    disp('Everything is OK')
end



%for loop
n = 25;
step = 5; 

for i = 0:step:n
    disp(i)
end