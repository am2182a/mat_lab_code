%Preallocate some memory 

tic
m= zeros(1,1000000);
for i = 1:1000000
    m(i) = i;
end 
toc