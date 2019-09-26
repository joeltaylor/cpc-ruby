Feature: Five Number Summary
  I want to calculate the following values for five numbers:
  Minimum
  First Quartile (Q1)
  Median (Second Quartile; Q2)
  Third Quartile (Q3)
  Maximum
  # Median
  For example, let A = [1, 2, 3, 4, 5] and B = [1, 2, 3, 4, 5, 6]. The median of A is 3 and the median of B is (3 + 4) / 2.0 = 3.5.
  Split the list of observations in two halves, L and U. If n is odd, include the median in both halves.
  # Q1 and Q3
  Q1 is the median of L and Q3 is the median of U.
  For example, let A and B be as above. A can then be split into L_A = [1, 2, 3] and U_A = [3, 4, 5]. Q1 and Q3 of A are then 2 and 4, respectively. B splits into L_B = [1, 2, 3] and U_B = [4, 5, 6], and Q1 and Q3 of B are 2 and 5.

  Scenario Outline:
    Given I input five numbers "<input_numbers>"
    Then I should calculate a five number summary "<output_numbers>"

    Examples:
    | input_numbers                  | output_numbers          |
    | 5,4,6,-8,-2,-1,-8,7            | -8.0,-5.0,1.5,5.5,7.0   |
    # | 4,6,-6,7,-3                    | -6,-3,4,6,7             |
    # | 7,15,36,39,40,41               | 7.0,15.0,37.5,40.0,41.0 |
    # | 6,7,15,36,39,40,41,42,43,47,49 | 6.0,25.5,40.0,42.5,49.0 |
    # | 1,2,3,4,5                      | 1,2,3,4,5               |
    # | 1,2,3,4,5                      | 1,2,3,4,5               |
    # | 1,2,3,4,5,6                    | 1.0,2.0,3.5,5.0,6.0     |
    # | 6,7,15,36,39,40,41,42,43,47,49 | 6.0,25.5,40.0,42.5,49.0 |
