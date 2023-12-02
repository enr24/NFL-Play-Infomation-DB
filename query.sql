.mode box
-- SELECT players.nflId, players.displayName, players.position FROM Tracking JOIN Players ON Tracking.nflId = PLayers.nflId 
-- WHERE (tracking.event LIKE 'qb_sack') AND (players.position NOT IN ('QB', 'RB', 'WR','TE', 'T', 'G', 'C')) ;

-- SELECT tracking.nflId,tracking.event, players.displayName, players.position, tracking.time FROM Tracking JOIN Players ON Tracking.nflId = Players.nflId 
-- WHERE (tracking.event LIKE 'qb_sack') AND (players.position LIKE 'QB');

--SELECT

--AND (players.position LIKE 'QB') ;

--SELECT nflId, event, time FROM tracking WHERE event like 'qb_sack'

--SELECT COUNT (ballCarrierId) FROM plays

-- SELECT AVG(passProbability) * 100 FROM plays

-- SELECT DISTINCT (foulName1) from plays

-- SELECT COUNT (foulName1) FROM plays WHERE (foulName1 LIKE 'Disqualification')

-- SELECT MAX(week) FROM Games
-- SELECT DISTINCT COUNT(playDescription) FROM plays GROUP BY (Games.week)

--SELECT COUNT (playId) as plays, gameId from Plays where gameId LIKE '20220911%' GROUP BY gameId;

-- # Question 1
SELECT COUNT(Plays.playId) as plays, Games.gameDate, strftime('%u', Games.dateTime) as Day
from Plays, Games 
where Games.gameId = Plays.gameId
group by (Games.gameDate)
ORDER BY plays;