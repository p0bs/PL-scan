
<!-- README.md is generated from README.Rmd. Please edit that file -->

## Predicting this season’s Premier League

My predictions combine open data with a simplified version of [David
Firth’s approach](https://github.com/DavidFirth/alt3code).

These predictions are based on a team’s strength, given its performance
in recent times. But how should we define *recent*? In order to duck
this question, I choose two different time periods:

- over all of last season and this season so far; and
- over the last 19 games (i.e. half season)

### Predictions with a longer memory

**(Based upon performances over last season and this season so far)**

<table>

<thead>

<tr>

<th style="text-align:left;">

Team
</th>

<th style="text-align:right;">

Champion
</th>

<th style="text-align:right;">

Top 4
</th>

<th style="text-align:right;">

Top 5
</th>

<th style="text-align:right;">

Top 6
</th>

<th style="text-align:right;">

Top Half
</th>

<th style="text-align:right;">

Relegation
</th>

</tr>

</thead>

<tbody>

<tr>

<td style="text-align:left;">

Arsenal
</td>

<td style="text-align:right;">

58.3%
</td>

<td style="text-align:right;">

97.9%
</td>

<td style="text-align:right;">

99.2%
</td>

<td style="text-align:right;">

99.7%
</td>

<td style="text-align:right;">

100.0%
</td>

<td style="text-align:right;">

0.0%
</td>

</tr>

<tr>

<td style="text-align:left;">

Liverpool
</td>

<td style="text-align:right;">

25.0%
</td>

<td style="text-align:right;">

93.5%
</td>

<td style="text-align:right;">

97.4%
</td>

<td style="text-align:right;">

99.0%
</td>

<td style="text-align:right;">

100.0%
</td>

<td style="text-align:right;">

0.0%
</td>

</tr>

<tr>

<td style="text-align:left;">

Sunderland
</td>

<td style="text-align:right;">

13.0%
</td>

<td style="text-align:right;">

85.7%
</td>

<td style="text-align:right;">

93.5%
</td>

<td style="text-align:right;">

97.1%
</td>

<td style="text-align:right;">

99.9%
</td>

<td style="text-align:right;">

0.0%
</td>

</tr>

<tr>

<td style="text-align:left;">

Man City
</td>

<td style="text-align:right;">

2.5%
</td>

<td style="text-align:right;">

53.3%
</td>

<td style="text-align:right;">

70.8%
</td>

<td style="text-align:right;">

82.3%
</td>

<td style="text-align:right;">

98.4%
</td>

<td style="text-align:right;">

0.0%
</td>

</tr>

<tr>

<td style="text-align:left;">

Chelsea
</td>

<td style="text-align:right;">

0.5%
</td>

<td style="text-align:right;">

22.4%
</td>

<td style="text-align:right;">

40.2%
</td>

<td style="text-align:right;">

56.8%
</td>

<td style="text-align:right;">

93.0%
</td>

<td style="text-align:right;">

0.0%
</td>

</tr>

<tr>

<td style="text-align:left;">

Aston Villa
</td>

<td style="text-align:right;">

0.3%
</td>

<td style="text-align:right;">

16.0%
</td>

<td style="text-align:right;">

31.3%
</td>

<td style="text-align:right;">

47.7%
</td>

<td style="text-align:right;">

90.2%
</td>

<td style="text-align:right;">

0.0%
</td>

</tr>

<tr>

<td style="text-align:left;">

Bournemouth
</td>

<td style="text-align:right;">

0.3%
</td>

<td style="text-align:right;">

14.0%
</td>

<td style="text-align:right;">

27.1%
</td>

<td style="text-align:right;">

42.0%
</td>

<td style="text-align:right;">

86.5%
</td>

<td style="text-align:right;">

0.1%
</td>

</tr>

<tr>

<td style="text-align:left;">

Newcastle
</td>

<td style="text-align:right;">

0.1%
</td>

<td style="text-align:right;">

11.1%
</td>

<td style="text-align:right;">

23.2%
</td>

<td style="text-align:right;">

37.9%
</td>

<td style="text-align:right;">

85.4%
</td>

<td style="text-align:right;">

0.1%
</td>

</tr>

<tr>

<td style="text-align:left;">

Crystal Palace
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

2.0%
</td>

<td style="text-align:right;">

5.3%
</td>

<td style="text-align:right;">

10.5%
</td>

<td style="text-align:right;">

51.3%
</td>

<td style="text-align:right;">

1.8%
</td>

</tr>

<tr>

<td style="text-align:left;">

Brighton
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

1.9%
</td>

<td style="text-align:right;">

5.2%
</td>

<td style="text-align:right;">

10.7%
</td>

<td style="text-align:right;">

53.4%
</td>

<td style="text-align:right;">

1.2%
</td>

</tr>

<tr>

<td style="text-align:left;">

Brentford
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

1.2%
</td>

<td style="text-align:right;">

3.5%
</td>

<td style="text-align:right;">

7.6%
</td>

<td style="text-align:right;">

46.2%
</td>

<td style="text-align:right;">

1.8%
</td>

</tr>

<tr>

<td style="text-align:left;">

Notts Forest
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.2%
</td>

<td style="text-align:right;">

0.7%
</td>

<td style="text-align:right;">

1.8%
</td>

<td style="text-align:right;">

19.2%
</td>

<td style="text-align:right;">

10.1%
</td>

</tr>

<tr>

<td style="text-align:left;">

Man Utd
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.6%
</td>

<td style="text-align:right;">

1.8%
</td>

<td style="text-align:right;">

4.1%
</td>

<td style="text-align:right;">

32.5%
</td>

<td style="text-align:right;">

3.8%
</td>

</tr>

<tr>

<td style="text-align:left;">

Fulham
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.1%
</td>

<td style="text-align:right;">

0.3%
</td>

<td style="text-align:right;">

0.7%
</td>

<td style="text-align:right;">

10.4%
</td>

<td style="text-align:right;">

17.6%
</td>

</tr>

<tr>

<td style="text-align:left;">

Tottenham
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.1%
</td>

<td style="text-align:right;">

0.2%
</td>

<td style="text-align:right;">

0.7%
</td>

<td style="text-align:right;">

10.4%
</td>

<td style="text-align:right;">

16.0%
</td>

</tr>

<tr>

<td style="text-align:left;">

Everton
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.1%
</td>

<td style="text-align:right;">

0.3%
</td>

<td style="text-align:right;">

0.7%
</td>

<td style="text-align:right;">

9.5%
</td>

<td style="text-align:right;">

17.6%
</td>

</tr>

<tr>

<td style="text-align:left;">

Burnley
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.1%
</td>

<td style="text-align:right;">

0.3%
</td>

<td style="text-align:right;">

9.0%
</td>

<td style="text-align:right;">

11.9%
</td>

</tr>

<tr>

<td style="text-align:left;">

Leeds Utd
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.2%
</td>

<td style="text-align:right;">

4.7%
</td>

<td style="text-align:right;">

26.7%
</td>

</tr>

<tr>

<td style="text-align:left;">

West Ham
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

92.1%
</td>

</tr>

<tr>

<td style="text-align:left;">

Wolves
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

99.1%
</td>

</tr>

</tbody>

</table>

<br/>

### Predictions with a shorter memory

**(Based upon performances over the last 19 games, be that this season
or last season)**

<table>

<thead>

<tr>

<th style="text-align:left;">

Team
</th>

<th style="text-align:right;">

Champion
</th>

<th style="text-align:right;">

Top 4
</th>

<th style="text-align:right;">

Top 5
</th>

<th style="text-align:right;">

Top 6
</th>

<th style="text-align:right;">

Top Half
</th>

<th style="text-align:right;">

Relegation
</th>

</tr>

</thead>

<tbody>

<tr>

<td style="text-align:left;">

Arsenal
</td>

<td style="text-align:right;">

78.2%
</td>

<td style="text-align:right;">

99.3%
</td>

<td style="text-align:right;">

99.8%
</td>

<td style="text-align:right;">

99.9%
</td>

<td style="text-align:right;">

100.0%
</td>

<td style="text-align:right;">

0.0%
</td>

</tr>

<tr>

<td style="text-align:left;">

Man City
</td>

<td style="text-align:right;">

13.3%
</td>

<td style="text-align:right;">

91.4%
</td>

<td style="text-align:right;">

96.9%
</td>

<td style="text-align:right;">

98.8%
</td>

<td style="text-align:right;">

100.0%
</td>

<td style="text-align:right;">

0.0%
</td>

</tr>

<tr>

<td style="text-align:left;">

Sunderland
</td>

<td style="text-align:right;">

4.4%
</td>

<td style="text-align:right;">

77.2%
</td>

<td style="text-align:right;">

90.3%
</td>

<td style="text-align:right;">

95.9%
</td>

<td style="text-align:right;">

99.9%
</td>

<td style="text-align:right;">

0.0%
</td>

</tr>

<tr>

<td style="text-align:left;">

Aston Villa
</td>

<td style="text-align:right;">

3.3%
</td>

<td style="text-align:right;">

65.4%
</td>

<td style="text-align:right;">

83.3%
</td>

<td style="text-align:right;">

92.1%
</td>

<td style="text-align:right;">

99.6%
</td>

<td style="text-align:right;">

0.0%
</td>

</tr>

<tr>

<td style="text-align:left;">

Liverpool
</td>

<td style="text-align:right;">

0.7%
</td>

<td style="text-align:right;">

43.4%
</td>

<td style="text-align:right;">

70.0%
</td>

<td style="text-align:right;">

84.9%
</td>

<td style="text-align:right;">

99.3%
</td>

<td style="text-align:right;">

0.0%
</td>

</tr>

<tr>

<td style="text-align:left;">

Chelsea
</td>

<td style="text-align:right;">

0.1%
</td>

<td style="text-align:right;">

9.0%
</td>

<td style="text-align:right;">

19.7%
</td>

<td style="text-align:right;">

36.0%
</td>

<td style="text-align:right;">

83.7%
</td>

<td style="text-align:right;">

0.0%
</td>

</tr>

<tr>

<td style="text-align:left;">

Bournemouth
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

3.3%
</td>

<td style="text-align:right;">

8.2%
</td>

<td style="text-align:right;">

17.1%
</td>

<td style="text-align:right;">

66.0%
</td>

<td style="text-align:right;">

0.0%
</td>

</tr>

<tr>

<td style="text-align:left;">

Newcastle
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

4.0%
</td>

<td style="text-align:right;">

11.0%
</td>

<td style="text-align:right;">

24.5%
</td>

<td style="text-align:right;">

79.7%
</td>

<td style="text-align:right;">

0.0%
</td>

</tr>

<tr>

<td style="text-align:left;">

Man Utd
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

2.7%
</td>

<td style="text-align:right;">

8.1%
</td>

<td style="text-align:right;">

19.1%
</td>

<td style="text-align:right;">

73.1%
</td>

<td style="text-align:right;">

0.0%
</td>

</tr>

<tr>

<td style="text-align:left;">

Crystal Palace
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

2.1%
</td>

<td style="text-align:right;">

5.7%
</td>

<td style="text-align:right;">

13.0%
</td>

<td style="text-align:right;">

60.0%
</td>

<td style="text-align:right;">

0.1%
</td>

</tr>

<tr>

<td style="text-align:left;">

Everton
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.9%
</td>

<td style="text-align:right;">

2.8%
</td>

<td style="text-align:right;">

7.0%
</td>

<td style="text-align:right;">

42.1%
</td>

<td style="text-align:right;">

0.2%
</td>

</tr>

<tr>

<td style="text-align:left;">

Brentford
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

1.0%
</td>

<td style="text-align:right;">

3.1%
</td>

<td style="text-align:right;">

8.4%
</td>

<td style="text-align:right;">

52.6%
</td>

<td style="text-align:right;">

0.1%
</td>

</tr>

<tr>

<td style="text-align:left;">

Brighton
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.2%
</td>

<td style="text-align:right;">

0.9%
</td>

<td style="text-align:right;">

2.7%
</td>

<td style="text-align:right;">

28.7%
</td>

<td style="text-align:right;">

0.3%
</td>

</tr>

<tr>

<td style="text-align:left;">

Fulham
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.1%
</td>

<td style="text-align:right;">

0.2%
</td>

<td style="text-align:right;">

6.0%
</td>

<td style="text-align:right;">

3.8%
</td>

</tr>

<tr>

<td style="text-align:left;">

Leeds Utd
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.2%
</td>

<td style="text-align:right;">

5.7%
</td>

<td style="text-align:right;">

2.9%
</td>

</tr>

<tr>

<td style="text-align:left;">

Tottenham
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

1.7%
</td>

<td style="text-align:right;">

10.4%
</td>

</tr>

<tr>

<td style="text-align:left;">

Burnley
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

1.8%
</td>

<td style="text-align:right;">

7.3%
</td>

</tr>

<tr>

<td style="text-align:left;">

Notts Forest
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

85.1%
</td>

</tr>

<tr>

<td style="text-align:left;">

Wolves
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

90.0%
</td>

</tr>

<tr>

<td style="text-align:left;">

West Ham
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

0.0%
</td>

<td style="text-align:right;">

99.9%
</td>

</tr>

</tbody>

</table>

<br/>

### Notes and data

Please note that 0.0% and 100.0% outcomes do not necessarily signify
certainty in their specific assessment, as:

- this model uses 100,000 simulations and not 1,000;
- the skill of a team is assumed to be static over the remainder of the
  season – an assumption that I aim to relax in time; and more
  pertinently
- this model, like all models, is imperfect – but, I think, better than
  no model at all

Finally, and with thanks to GitHub Actions, this page is updated daily
in the season with the latest available data. At this point, that means
games up to and including the day of:

WOL 2 - 3 BUR (played on 2025-10-25)
