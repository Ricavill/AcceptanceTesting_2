Feature: Filter games by rating
  @gamesByRaTING
  Scenario: Filter games by rating without finding result
    Given a set of games
       | NAME                       | RELEASE DATE | DEVELOPER            | RATE   |
     | The Witcher 3: Wild Hunt   | 2015         | CD Projekt           | M      |
     | Splatoon                   | 2016         | Nintendo             | T      |
     | Super Smash Bros. Ultimate | 2018         | Bandai Namco Studios | E      |
     | The Last of Us             | 2013         | Naughty Dog          | M      |
    Given a list of ratings ["T","E"]
    When the user search games by rating
    Then 2 games will match
    Then the names of these games are
    | NAME                       |
    | Splatoon                   |
    | Super Smash Bros. Ultimate |