%Switch Statement 
n = input('Enter a number: '); 
m = input('Enter another number: ');
action = input('What calculation should I perform?');

switch action
    case 'add'
        output = n+m
    case 'subtract'
        output = n-m 
    case 'multiply' 
        output = n*m
    case 'divide' 
        output = n/m 
    otherwise
        disp("Sorry Dave, I can't do that");
end
