create database nba;
use nba;

SELECT TEAM_ID FROM players_sample 
WHERE TEAM_CITY = "milwaukee";

# milwaukee team ID is 1610612749

SELECT * FROM games_sample
WHERE TEAM_ID_home = 1610612749 OR TEAM_ID_away = 1610612749;

SELECT * FROM players_sample AS players
WHERE PLAYER_NAME = "Giannis Antetokounmpo";
SELECT avg(PTS), avg(REB), avg(AST) FROM players_sample AS players
WHERE PLAYER_NAME = "Giannis Antetokounmpo";

SELECT * FROM players_sample
WHERE PTS >= 10 AND AST >=10 AND REB >= 10;

create table giannis
select * from players_sample where PLAYER_NAME = "Giannis Antetokounmpo" ;


SELECT * 
FROM games_sample gs 
LEFT JOIN players_sample pl 
using (GAME_ID)
having pl.PLAYER_NAME = "Giannis Antetokounmpo";


