
<!-- README.md is generated from README.Rmd. Please edit that file -->

## Predicting this season’s Premier League

My predictions combine [open
data](https://www.football-data.co.uk/mmz4281/2526/E0.csv) with a
simplified version of [David Firth’s
approach](https://github.com/DavidFirth/alt3code).

These predictions are based upon a team’s strength, given its recent
performance. But how should we define *recent*? In order to duck this
question, I choose two different time periods:

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

<th style="text-align:left;">

Champion
</th>

<th style="text-align:left;">

Top 4
</th>

<th style="text-align:left;">

Top 5
</th>

<th style="text-align:left;">

Top 6
</th>

<th style="text-align:left;">

Top Half
</th>

<th style="text-align:left;">

Relegation
</th>

</tr>

</thead>

<tbody>

<tr>

<td style="text-align:left;">

Arsenal
</td>

<td style="text-align:left;">

93.6%
</td>

<td style="text-align:left;">

\> 99.9%
</td>

<td style="text-align:left;">

\> 99.9%
</td>

<td style="text-align:left;">

\> 99.9%
</td>

<td style="text-align:left;">

\> 99.9%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

</tr>

<tr>

<td style="text-align:left;">

Man City
</td>

<td style="text-align:left;">

3.3%
</td>

<td style="text-align:left;">

95.2%
</td>

<td style="text-align:left;">

99.0%
</td>

<td style="text-align:left;">

99.7%
</td>

<td style="text-align:left;">

\> 99.9%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

</tr>

<tr>

<td style="text-align:left;">

Aston Villa
</td>

<td style="text-align:left;">

2.9%
</td>

<td style="text-align:left;">

94.9%
</td>

<td style="text-align:left;">

99.1%
</td>

<td style="text-align:left;">

99.8%
</td>

<td style="text-align:left;">

\> 99.9%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

</tr>

<tr>

<td style="text-align:left;">

Liverpool
</td>

<td style="text-align:left;">

0.1%
</td>

<td style="text-align:left;">

63.2%
</td>

<td style="text-align:left;">

86.7%
</td>

<td style="text-align:left;">

94.7%
</td>

<td style="text-align:left;">

99.8%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

</tr>

<tr>

<td style="text-align:left;">

Chelsea
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

36.2%
</td>

<td style="text-align:left;">

72.4%
</td>

<td style="text-align:left;">

86.9%
</td>

<td style="text-align:left;">

99.3%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

</tr>

<tr>

<td style="text-align:left;">

Man Utd
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

5.4%
</td>

<td style="text-align:left;">

17.4%
</td>

<td style="text-align:left;">

39.1%
</td>

<td style="text-align:left;">

87.5%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

</tr>

<tr>

<td style="text-align:left;">

Newcastle
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

1.1%
</td>

<td style="text-align:left;">

5.9%
</td>

<td style="text-align:left;">

18.0%
</td>

<td style="text-align:left;">

72.2%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

</tr>

<tr>

<td style="text-align:left;">

Sunderland
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

1.1%
</td>

<td style="text-align:left;">

5.3%
</td>

<td style="text-align:left;">

16.0%
</td>

<td style="text-align:left;">

71.6%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

</tr>

<tr>

<td style="text-align:left;">

Brentford
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

0.9%
</td>

<td style="text-align:left;">

4.5%
</td>

<td style="text-align:left;">

14.3%
</td>

<td style="text-align:left;">

66.4%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

</tr>

<tr>

<td style="text-align:left;">

Bournemouth
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

0.9%
</td>

<td style="text-align:left;">

4.3%
</td>

<td style="text-align:left;">

13.1%
</td>

<td style="text-align:left;">

60.8%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

</tr>

<tr>

<td style="text-align:left;">

Everton
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

0.6%
</td>

<td style="text-align:left;">

3.1%
</td>

<td style="text-align:left;">

9.6%
</td>

<td style="text-align:left;">

52.6%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

</tr>

<tr>

<td style="text-align:left;">

Fulham
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

0.3%
</td>

<td style="text-align:left;">

1.6%
</td>

<td style="text-align:left;">

6.0%
</td>

<td style="text-align:left;">

45.4%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

</tr>

<tr>

<td style="text-align:left;">

Brighton
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

0.5%
</td>

<td style="text-align:left;">

1.9%
</td>

<td style="text-align:left;">

23.0%
</td>

<td style="text-align:left;">

0.2%
</td>

</tr>

<tr>

<td style="text-align:left;">

Crystal Palace
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

0.2%
</td>

<td style="text-align:left;">

0.8%
</td>

<td style="text-align:left;">

12.8%
</td>

<td style="text-align:left;">

0.6%
</td>

</tr>

<tr>

<td style="text-align:left;">

Notts Forest
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

0.2%
</td>

<td style="text-align:left;">

5.7%
</td>

<td style="text-align:left;">

1.7%
</td>

</tr>

<tr>

<td style="text-align:left;">

Leeds Utd
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

2.2%
</td>

<td style="text-align:left;">

2.3%
</td>

</tr>

<tr>

<td style="text-align:left;">

Tottenham
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

0.8%
</td>

<td style="text-align:left;">

6.7%
</td>

</tr>

<tr>

<td style="text-align:left;">

West Ham
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

88.6%
</td>

</tr>

<tr>

<td style="text-align:left;">

Burnley
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\> 99.9%
</td>

</tr>

<tr>

<td style="text-align:left;">

Wolves
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\> 99.9%
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

<th style="text-align:left;">

Champion
</th>

<th style="text-align:left;">

Top 4
</th>

<th style="text-align:left;">

Top 5
</th>

<th style="text-align:left;">

Top 6
</th>

<th style="text-align:left;">

Top Half
</th>

<th style="text-align:left;">

Relegation
</th>

</tr>

</thead>

<tbody>

<tr>

<td style="text-align:left;">

Arsenal
</td>

<td style="text-align:left;">

87.2%
</td>

<td style="text-align:left;">

\> 99.9%
</td>

<td style="text-align:left;">

\> 99.9%
</td>

<td style="text-align:left;">

\> 99.9%
</td>

<td style="text-align:left;">

\> 99.9%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

</tr>

<tr>

<td style="text-align:left;">

Aston Villa
</td>

<td style="text-align:left;">

7.5%
</td>

<td style="text-align:left;">

\> 99.9%
</td>

<td style="text-align:left;">

\> 99.9%
</td>

<td style="text-align:left;">

\> 99.9%
</td>

<td style="text-align:left;">

\> 99.9%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

</tr>

<tr>

<td style="text-align:left;">

Man City
</td>

<td style="text-align:left;">

5.3%
</td>

<td style="text-align:left;">

99.8%
</td>

<td style="text-align:left;">

\> 99.9%
</td>

<td style="text-align:left;">

\> 99.9%
</td>

<td style="text-align:left;">

\> 99.9%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

</tr>

<tr>

<td style="text-align:left;">

Chelsea
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

51.5%
</td>

<td style="text-align:left;">

81.9%
</td>

<td style="text-align:left;">

92.0%
</td>

<td style="text-align:left;">

99.7%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

</tr>

<tr>

<td style="text-align:left;">

Man Utd
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

39.4%
</td>

<td style="text-align:left;">

75.8%
</td>

<td style="text-align:left;">

88.5%
</td>

<td style="text-align:left;">

99.4%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

</tr>

<tr>

<td style="text-align:left;">

Liverpool
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

3.4%
</td>

<td style="text-align:left;">

13.4%
</td>

<td style="text-align:left;">

33.9%
</td>

<td style="text-align:left;">

86.8%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

</tr>

<tr>

<td style="text-align:left;">

Brentford
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

2.4%
</td>

<td style="text-align:left;">

11.0%
</td>

<td style="text-align:left;">

29.9%
</td>

<td style="text-align:left;">

85.4%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

</tr>

<tr>

<td style="text-align:left;">

Sunderland
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

1.8%
</td>

<td style="text-align:left;">

7.7%
</td>

<td style="text-align:left;">

20.6%
</td>

<td style="text-align:left;">

76.6%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

</tr>

<tr>

<td style="text-align:left;">

Everton
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

0.9%
</td>

<td style="text-align:left;">

4.3%
</td>

<td style="text-align:left;">

12.9%
</td>

<td style="text-align:left;">

62.9%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

</tr>

<tr>

<td style="text-align:left;">

Fulham
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

0.3%
</td>

<td style="text-align:left;">

2.1%
</td>

<td style="text-align:left;">

8.2%
</td>

<td style="text-align:left;">

57.9%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

</tr>

<tr>

<td style="text-align:left;">

Bournemouth
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

0.3%
</td>

<td style="text-align:left;">

2.0%
</td>

<td style="text-align:left;">

6.8%
</td>

<td style="text-align:left;">

48.4%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

</tr>

<tr>

<td style="text-align:left;">

Newcastle
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

0.2%
</td>

<td style="text-align:left;">

1.4%
</td>

<td style="text-align:left;">

6.1%
</td>

<td style="text-align:left;">

57.3%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

</tr>

<tr>

<td style="text-align:left;">

Brighton
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

0.2%
</td>

<td style="text-align:left;">

0.9%
</td>

<td style="text-align:left;">

17.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

</tr>

<tr>

<td style="text-align:left;">

Crystal Palace
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

0.1%
</td>

<td style="text-align:left;">

4.7%
</td>

<td style="text-align:left;">

0.2%
</td>

</tr>

<tr>

<td style="text-align:left;">

Notts Forest
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

2.3%
</td>

<td style="text-align:left;">

0.8%
</td>

</tr>

<tr>

<td style="text-align:left;">

Tottenham
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

1.1%
</td>

<td style="text-align:left;">

1.0%
</td>

</tr>

<tr>

<td style="text-align:left;">

Leeds Utd
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

0.4%
</td>

<td style="text-align:left;">

1.3%
</td>

</tr>

<tr>

<td style="text-align:left;">

West Ham
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

96.8%
</td>

</tr>

<tr>

<td style="text-align:left;">

Burnley
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\> 99.9%
</td>

</tr>

<tr>

<td style="text-align:left;">

Wolves
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\< 0.1%
</td>

<td style="text-align:left;">

\> 99.9%
</td>

</tr>

</tbody>

</table>

<br/>

### Notes and data

These model estimates are only meant to be a general guide and should
not be used for the purposes of trading. Furthermore, please avoid any
overconfidence in the model’s specific assessments, as:

- the model uses 425,532 simulations for each fixture, which is probably
  nowhere near enough to convey all possible combinations of results for
  the remaining games in the season (unless we are *very* close to the
  end of the season);
- the model assumes that the skill of each team will remain static over
  the rest of the season;
- the model only considers the previous results of a team to project its
  future results (thereby ignoring other impacts, such as ownership or
  management changes).

Like all models, therefore, this model is imperfect … but, I think,
better than no model at all.

<br/>

Finally, this page is updated daily in the season with the latest
available data. At this point, that means games up to:

Tottenham 2 - 2 Man City (played on 2026-02-01)
