use epl_normalized_final;

SELECT team.Club_name,team_info.Stadium,team_info.Manager
FROM team inner join team_info
ON team.Club_name=team_info.Club_name
order by Club_name;

SELECT player.Player_name,player_info.Jersey_no,position.Position,team.Club_name FROM player inner join player_info on player.Player_name=player_info.Player_name inner join position ON player.Player_id=position.Player_id inner join team on player_info.Club_id=team.Club_id
order by Player_name;

SELECT Club_name,Goals_for,Goals_conceeded,Goal_difference,Home_Goals,Away_Goals FROM team NATURAL join goals_team NATURAL join goals order by Goal_difference desc


SELECT player.Player_name,attacking_output.Goals,attacking_output.Assists,attacking_output.Attacking_Output FROM attacking_output inner join attacking_output_player ON attacking_output.Attack_id=attacking_output_player.Attack_id inner join player on attacking_output_player.Player_id=player.Player_id
order by Attacking_Output desc;


SELECT team.Club_name,fouls.Yellow_Cards,fouls.Red_Cards,fouls.Total Cards
FROM fouls inner join fouls_team ON  
fouls.Fouls_id= fouls_team.Fouls_id
inner join team on
fouls_team.Club_id=team.Club_id
order by Cards desc;

SELECT player.Player_name,fouls.Yellow_Cards,fouls.Red_Cards,fouls.Total Cards
FROM fouls inner join fouls_player ON  
fouls.Fouls_id= fouls_player.Fouls_id
inner join player on
fouls_player.Player_id=player.Player_id
order by Cards desc;

SELECT team.Club_name,points.Points_won,points.Points_dropped,points.Percentage
FROM points inner join points_home ON 
points_home.points_id=points.Points_id
inner join team on
points_home.Club_id=team.Club_id
order by Percentage desc;

SELECT Club_name,Points_won,Points_dropped,Percentage
FROM points natural join points_away natural join team
order by Percentage desc;

SELECT team.Club_Name,passing_team.Pass_completion,passing_team.Pass_accuracy FROM passing_team inner join team ON passing_team.Club_id=team.Club_id
order by Pass_Accuracy desc;

SELECT player.Player_Name,passing_player.Pass_completion,passing_player.Pass_accuracy FROM passing_player inner join player ON passing_player.Player_id=player.Player_id
order by Pass_Accuracy desc;


SELECT team.Club_Name,set_pieces_team.Free_kicks,set_pieces_team.Penalties,set_pieces_team.Corners,set_pieces_team.Percentage FROM set_pieces_team inner join team ON set_pieces_team.Club_id=team.Club_id
order by Percentage desc;


SELECT team.Club_Name,shots_accuracy.Total_shots,shots_accuracy.Shots_on_target,shots_accuracy.Shot_accuracy
FROM shots_accuracy inner join shots_team
ON shots_accuracy.Accuracy_id=shots_team.Accuracy_id
inner join team 
on shots_team.Club_id=team.Club_id
order by Shot_Accuracy desc;

SELECT team.Club_Name,total_revenues.Match_day,total_revenues.Broadcast,total_revenues.Commercial,total_revenues.Total FROM total_revenues inner join revenues ON total_revenues.Total_id=revenues.Total_id inner join team on revenues.Club_id=team.Club_id
order by Total desc;


SELECT team.Club_Name,standingspoints.Points,standingspoints.Standings
FROM standings inner join standingspoints ON standings.Standings=standingspoints.Standings 
inner join team
on standings.Club_id=team.Club_id
order by standings;


