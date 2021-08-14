Feature: Filter games by developer
  @gamesByDeveloper
  Scenario: Filter games by developer without finding result
    Given a set of games
      | NAME                       | RELEASE DATE | DEVELOPER            | RATE   |
     | The Witcher 3: Wild Hunt   | 2015         | CD Projekt           | M      |
     | Splatoon                   | 2016         | Nintendo             | T      |
     | Super Smash Bros. Ultimate | 2018         | Bandai Namco Studios | E      |
     | The Last of Us             | 2013         | Naughty Dog          | M      |
    Given a game developer: Nintendo
    When the user search games by developer
    Then 1 games will match
    Then the names of these games are
    | NAME                       |
    | Splatoon                   |