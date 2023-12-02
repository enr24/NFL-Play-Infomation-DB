DROP TABLE IF EXISTS Players;
CREATE TABLE Players(
    nflId Integer PRIMARY KEY,
    height Text,
    weight Integer,
    birthDate DATE,
    collegeName Text,
    position Text,
    displayName Text
);
.import --csv --skip 1 players.csv Players

DROP TABLE IF EXISTS Games;
CREATE TABLE Games(
    gameId Integer, 
    season Integer, 
    week Integer,
    gameDate DATE, 
    gameTimeEastern TIME,
    homeTeamAbbr Text,
    visitorTeamAbbr Text, 
    homeFinalScore Integer,
    visitorFinalScore Integer
);
.import --csv --skip 1 games.csv Games

DROP TABLE IF EXISTS Tracking;
CREATE TABLE Tracking (
    gameId Integer,
    -- FOREIGN KEY (gameId) REFERENCES Games(gameId),
    playId Integer,
    nflId Integer,
    -- FOREIGN KEY (nflId) REFERENCES Players(nflId),
    displayName Text,
    frameId Integer,
    time DateTime,
    jerseyNumber Integer,
    club Text,
    playDirection Text,
    x Real,
    y Real,
    s Real,
    a Real,
    dis Real,
    o Integer,
    dir Integer, 
    event Text
);

.import --csv --skip 1 tracking_week_1.csv Tracking
.import --csv --skip 1 tracking_week_2.csv Tracking
.import --csv --skip 1 tracking_week_3.csv Tracking
.import --csv --skip 1 tracking_week_4.csv Tracking
.import --csv --skip 1 tracking_week_5.csv Tracking
.import --csv --skip 1 tracking_week_6.csv Tracking
.import --csv --skip 1 tracking_week_7.csv Tracking
.import --csv --skip 1 tracking_week_8.csv Tracking
.import --csv --skip 1 tracking_week_9.csv Tracking

DROP TABLE IF EXISTS Plays;
CREATE TABLE Plays(
    gameId Integer,
    -- FOREIGN KEY (gameId) REFERENCES Games(gameId),
    playId Integer,
    ballCarrierId Integer,
    ballCarrierDisplayName Text,
    playDescription Text,
    quarter Integer,
    down Integer,
    yardsToGo Integer,
    possessionTeam Text,
    defensiveTeam Text,
    yardlineSide Text,
    yardlineNumber Integer,
    gameClock Text,
    preSnapHomeScore Integer,
    preSnapVisitorScore Integer,
    passResult Text,
    passLength Real,
    penaltyYards Real,
    prePenaltyPlayResult Integer,
    playResult Integer,
    playNullifiedByPenalty Text,
    absoluteYardlineNumber Integer,
    offenseFormation Text,
    defendersIntegerheBox Real,
    passProbability Real,
    preSnapHomeTeamWinProbability Real,
    preSnapVisitorTeamWinProbability Real,
    homeTeamWinProbabilityAdded Real,
    visitorTeamWinProbilityAdded Real,
    expectedPoIntegers Real,
    expectedPoIntegersAdded Real,
    foulName1 Real,
    foulName2 Real,
    foulNFLId1 Real,
    foulNFLId2 Real
);

.import --csv --skip 1 plays.csv Plays

DROP TABLE IF EXISTS Tackles; 
CREATE TABLE Tackles(
    gameId Integer,
    -- FOREIGN KEY (gameId) REFERENCES Games(gameId),
    playId Integer,
    nflId Integer,
    -- FOREIGN KEY (nflId) REFERENCES Players(nflId),
    tackle Integer,
    assist Integer,
    forcedFumble Integer, 
    pff_missedTackle Integer
);

.import --csv --skip 1 tackles.csv Tackles

