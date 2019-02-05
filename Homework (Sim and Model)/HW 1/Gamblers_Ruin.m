 
num_players = 10000;
variable_test = 25;
num_iter = 999;
start_money = 25;
money = zeros(num_players,num_iter);
money(:,1) = start_money*ones(num_players,1);
for n=1:num_iter
  players_in_game = money(:,n)>0;
  num_players_in_game = sum(players_in_game);
  money(players_in_game,n+1) = ...
      money(players_in_game,n) + ...
      2*(rand(num_players_in_game,1)<=0.5) - 1;
  
end

%Adding turn number of bankruptcy to mean_count matrix 
i = 1;
for n=1:num_players
    if players_in_game(n,1) == 0
        for m = 1:num_iter
           if money(n,m)>0 && money(n,m+1) == 0 
              broke_turn_count(i) = m+1;
              i = i+1;
              break
           end
        end
    end
end
mean = round(mean(broke_turn_count),0);
stand_dev = std(broke_turn_count);
figure(1); plot(1:(num_iter+1),money(1:10,:)); 