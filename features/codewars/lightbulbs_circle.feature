# Feature: Lightbulbs Circle
#   As a carnival operator,
#   I want to programmatically turn light bulbs on and off in a sequence
#   In order to entertain the carnival goers
#
#   Scenario Outline:
#     Given I start with a series of lightbulbs: "<initial>"
#     And the lightbulbs go through "<n>" number of turns
#     Then the series of lightbulbs should be "<final>"
#
#     Examples:
#     | initial                                                 | n   | final                                                   |
#     | 0, 1, 1, 0, 1, 1                                        | 2   | 1, 0, 1, 1, 0, 1                                        |
#     | 0, 0, 1, 1, 1                                           | 5   | 1, 1, 1, 0, 1                                           |
#     | 1, 0, 1, 1, 0, 1, 1, 0, 1                               | 10  | 0, 1, 1, 0, 1, 1, 0, 1, 1                               |
#     | 1, 1, 0, 0, 0, 1, 1, 1, 1, 1                            | 20  | 1, 0, 0, 0, 0, 0, 1, 1, 0, 1                            |
#     | 1, 0, 0, 1, 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 1, 0, 0, 0, 1 | 50  | 0, 0, 1, 0, 0, 1, 1, 0, 1, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0 |
