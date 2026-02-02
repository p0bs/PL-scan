
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

    ## Warning: There were 6 warnings in `dplyr::mutate()`.
    ## The first warning was:
    ## ℹ In argument: `dplyr::across(...)`.
    ## Caused by warning in `as_numeric()`:
    ## ! NAs introduced by coercion
    ## ℹ Run `dplyr::last_dplyr_warnings()` to see the 5 remaining warnings.

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
93.6%
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
Man City
</td>
<td style="text-align:right;">
3.3%
</td>
<td style="text-align:right;">
95.2%
</td>
<td style="text-align:right;">
99.0%
</td>
<td style="text-align:right;">
99.7%
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
Aston Villa
</td>
<td style="text-align:right;">
2.9%
</td>
<td style="text-align:right;">
94.9%
</td>
<td style="text-align:right;">
99.1%
</td>
<td style="text-align:right;">
99.8%
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
Liverpool
</td>
<td style="text-align:right;">
0.1%
</td>
<td style="text-align:right;">
63.2%
</td>
<td style="text-align:right;">
86.7%
</td>
<td style="text-align:right;">
94.7%
</td>
<td style="text-align:right;">
99.8%
</td>
<td style="text-align:right;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
Chelsea
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
36.2%
</td>
<td style="text-align:right;">
72.4%
</td>
<td style="text-align:right;">
86.9%
</td>
<td style="text-align:right;">
99.3%
</td>
<td style="text-align:right;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
Man Utd
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
5.4%
</td>
<td style="text-align:right;">
17.4%
</td>
<td style="text-align:right;">
39.1%
</td>
<td style="text-align:right;">
87.5%
</td>
<td style="text-align:right;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
Newcastle
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
1.1%
</td>
<td style="text-align:right;">
5.9%
</td>
<td style="text-align:right;">
18.0%
</td>
<td style="text-align:right;">
72.2%
</td>
<td style="text-align:right;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
Sunderland
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
1.1%
</td>
<td style="text-align:right;">
5.3%
</td>
<td style="text-align:right;">
16.0%
</td>
<td style="text-align:right;">
71.6%
</td>
<td style="text-align:right;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
Brentford
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
0.9%
</td>
<td style="text-align:right;">
4.5%
</td>
<td style="text-align:right;">
14.3%
</td>
<td style="text-align:right;">
66.4%
</td>
<td style="text-align:right;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
Bournemouth
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
0.9%
</td>
<td style="text-align:right;">
4.3%
</td>
<td style="text-align:right;">
13.1%
</td>
<td style="text-align:right;">
60.8%
</td>
<td style="text-align:right;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
Everton
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
0.6%
</td>
<td style="text-align:right;">
3.1%
</td>
<td style="text-align:right;">
9.6%
</td>
<td style="text-align:right;">
52.6%
</td>
<td style="text-align:right;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
Fulham
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
0.3%
</td>
<td style="text-align:right;">
1.6%
</td>
<td style="text-align:right;">
6.0%
</td>
<td style="text-align:right;">
45.4%
</td>
<td style="text-align:right;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
Brighton
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
0.5%
</td>
<td style="text-align:right;">
1.9%
</td>
<td style="text-align:right;">
23.0%
</td>
<td style="text-align:right;">
0.2%
</td>
</tr>
<tr>
<td style="text-align:left;">
Crystal Palace
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
0.2%
</td>
<td style="text-align:right;">
0.8%
</td>
<td style="text-align:right;">
12.8%
</td>
<td style="text-align:right;">
0.6%
</td>
</tr>
<tr>
<td style="text-align:left;">
Notts Forest
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
0.2%
</td>
<td style="text-align:right;">
5.7%
</td>
<td style="text-align:right;">
1.7%
</td>
</tr>
<tr>
<td style="text-align:left;">
Leeds Utd
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
2.2%
</td>
<td style="text-align:right;">
2.3%
</td>
</tr>
<tr>
<td style="text-align:left;">
Tottenham
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
0.8%
</td>
<td style="text-align:right;">
6.7%
</td>
</tr>
<tr>
<td style="text-align:left;">
West Ham
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
88.6%
</td>
</tr>
<tr>
<td style="text-align:left;">
Burnley
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
Wolves
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
</tr>
</tbody>
</table>

<br/>

### Predictions with a shorter memory

**(Based upon performances over the last 19 games, be that this season
or last season)**

    ## Warning: There were 6 warnings in `dplyr::mutate()`.
    ## The first warning was:
    ## ℹ In argument: `dplyr::across(...)`.
    ## Caused by warning in `as_numeric()`:
    ## ! NAs introduced by coercion
    ## ℹ Run `dplyr::last_dplyr_warnings()` to see the 5 remaining warnings.

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
87.2%
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
Aston Villa
</td>
<td style="text-align:right;">
7.5%
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
Man City
</td>
<td style="text-align:right;">
5.3%
</td>
<td style="text-align:right;">
99.8%
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
Chelsea
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
51.5%
</td>
<td style="text-align:right;">
81.9%
</td>
<td style="text-align:right;">
92.0%
</td>
<td style="text-align:right;">
99.7%
</td>
<td style="text-align:right;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
Man Utd
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
39.4%
</td>
<td style="text-align:right;">
75.8%
</td>
<td style="text-align:right;">
88.5%
</td>
<td style="text-align:right;">
99.4%
</td>
<td style="text-align:right;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
Liverpool
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
3.4%
</td>
<td style="text-align:right;">
13.4%
</td>
<td style="text-align:right;">
33.9%
</td>
<td style="text-align:right;">
86.8%
</td>
<td style="text-align:right;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
Brentford
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
2.4%
</td>
<td style="text-align:right;">
11.0%
</td>
<td style="text-align:right;">
29.9%
</td>
<td style="text-align:right;">
85.4%
</td>
<td style="text-align:right;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
Sunderland
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
1.8%
</td>
<td style="text-align:right;">
7.7%
</td>
<td style="text-align:right;">
20.6%
</td>
<td style="text-align:right;">
76.6%
</td>
<td style="text-align:right;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
Everton
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
0.9%
</td>
<td style="text-align:right;">
4.3%
</td>
<td style="text-align:right;">
12.9%
</td>
<td style="text-align:right;">
62.9%
</td>
<td style="text-align:right;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
Fulham
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
0.3%
</td>
<td style="text-align:right;">
2.1%
</td>
<td style="text-align:right;">
8.2%
</td>
<td style="text-align:right;">
57.9%
</td>
<td style="text-align:right;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
Bournemouth
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
0.3%
</td>
<td style="text-align:right;">
2.0%
</td>
<td style="text-align:right;">
6.8%
</td>
<td style="text-align:right;">
48.4%
</td>
<td style="text-align:right;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
Newcastle
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
0.2%
</td>
<td style="text-align:right;">
1.4%
</td>
<td style="text-align:right;">
6.1%
</td>
<td style="text-align:right;">
57.3%
</td>
<td style="text-align:right;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
Brighton
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
0.2%
</td>
<td style="text-align:right;">
0.9%
</td>
<td style="text-align:right;">
17.1%
</td>
<td style="text-align:right;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
Crystal Palace
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
0.1%
</td>
<td style="text-align:right;">
4.7%
</td>
<td style="text-align:right;">
0.2%
</td>
</tr>
<tr>
<td style="text-align:left;">
Notts Forest
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
2.3%
</td>
<td style="text-align:right;">
0.8%
</td>
</tr>
<tr>
<td style="text-align:left;">
Tottenham
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
1.1%
</td>
<td style="text-align:right;">
1.0%
</td>
</tr>
<tr>
<td style="text-align:left;">
Leeds Utd
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
0.4%
</td>
<td style="text-align:right;">
1.3%
</td>
</tr>
<tr>
<td style="text-align:left;">
West Ham
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
96.8%
</td>
</tr>
<tr>
<td style="text-align:left;">
Burnley
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
</tr>
<tr>
<td style="text-align:left;">
Wolves
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
</td>
<td style="text-align:right;">
NA
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
