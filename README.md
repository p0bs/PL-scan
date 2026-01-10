
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
90.6%
</td>
<td style="text-align:right;">
100.0%
</td>
<td style="text-align:right;">
100.0%
</td>
<td style="text-align:right;">
100.0%
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
4.9%
</td>
<td style="text-align:right;">
98.1%
</td>
<td style="text-align:right;">
99.6%
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
Aston Villa
</td>
<td style="text-align:right;">
4.2%
</td>
<td style="text-align:right;">
98.3%
</td>
<td style="text-align:right;">
99.7%
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
Liverpool
</td>
<td style="text-align:right;">
0.3%
</td>
<td style="text-align:right;">
84.4%
</td>
<td style="text-align:right;">
95.1%
</td>
<td style="text-align:right;">
98.2%
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
Chelsea
</td>
<td style="text-align:right;">
0.0%
</td>
<td style="text-align:right;">
8.9%
</td>
<td style="text-align:right;">
40.5%
</td>
<td style="text-align:right;">
62.6%
</td>
<td style="text-align:right;">
94.7%
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
6.6%
</td>
<td style="text-align:right;">
32.7%
</td>
<td style="text-align:right;">
55.7%
</td>
<td style="text-align:right;">
93.2%
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
0.0%
</td>
<td style="text-align:right;">
1.0%
</td>
<td style="text-align:right;">
8.9%
</td>
<td style="text-align:right;">
21.4%
</td>
<td style="text-align:right;">
74.2%
</td>
<td style="text-align:right;">
0.0%
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
0.9%
</td>
<td style="text-align:right;">
6.7%
</td>
<td style="text-align:right;">
16.4%
</td>
<td style="text-align:right;">
66.4%
</td>
<td style="text-align:right;">
0.0%
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
0.7%
</td>
<td style="text-align:right;">
5.5%
</td>
<td style="text-align:right;">
13.8%
</td>
<td style="text-align:right;">
60.4%
</td>
<td style="text-align:right;">
0.0%
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
0.4%
</td>
<td style="text-align:right;">
3.5%
</td>
<td style="text-align:right;">
9.3%
</td>
<td style="text-align:right;">
49.2%
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
0.2%
</td>
<td style="text-align:right;">
2.5%
</td>
<td style="text-align:right;">
6.7%
</td>
<td style="text-align:right;">
41.4%
</td>
<td style="text-align:right;">
0.0%
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
0.2%
</td>
<td style="text-align:right;">
2.2%
</td>
<td style="text-align:right;">
6.2%
</td>
<td style="text-align:right;">
40.1%
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
0.1%
</td>
<td style="text-align:right;">
1.6%
</td>
<td style="text-align:right;">
4.8%
</td>
<td style="text-align:right;">
34.4%
</td>
<td style="text-align:right;">
0.1%
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
0.1%
</td>
<td style="text-align:right;">
1.5%
</td>
<td style="text-align:right;">
4.5%
</td>
<td style="text-align:right;">
35.4%
</td>
<td style="text-align:right;">
0.1%
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
0.1%
</td>
<td style="text-align:right;">
0.2%
</td>
<td style="text-align:right;">
4.1%
</td>
<td style="text-align:right;">
2.0%
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
0.1%
</td>
<td style="text-align:right;">
3.7%
</td>
<td style="text-align:right;">
1.6%
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
0.1%
</td>
<td style="text-align:right;">
2.9%
</td>
<td style="text-align:right;">
1.8%
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
94.5%
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
0.0%
</td>
<td style="text-align:right;">
99.9%
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
99.9%
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
89.0%
</td>
<td style="text-align:right;">
100.0%
</td>
<td style="text-align:right;">
100.0%
</td>
<td style="text-align:right;">
100.0%
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
7.1%
</td>
<td style="text-align:right;">
100.0%
</td>
<td style="text-align:right;">
100.0%
</td>
<td style="text-align:right;">
100.0%
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
Aston Villa
</td>
<td style="text-align:right;">
3.9%
</td>
<td style="text-align:right;">
100.0%
</td>
<td style="text-align:right;">
100.0%
</td>
<td style="text-align:right;">
100.0%
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
0.0%
</td>
<td style="text-align:right;">
60.2%
</td>
<td style="text-align:right;">
78.5%
</td>
<td style="text-align:right;">
87.6%
</td>
<td style="text-align:right;">
98.9%
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
13.3%
</td>
<td style="text-align:right;">
35.0%
</td>
<td style="text-align:right;">
52.9%
</td>
<td style="text-align:right;">
91.7%
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
0.0%
</td>
<td style="text-align:right;">
8.1%
</td>
<td style="text-align:right;">
22.9%
</td>
<td style="text-align:right;">
37.3%
</td>
<td style="text-align:right;">
81.9%
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
0.0%
</td>
<td style="text-align:right;">
5.9%
</td>
<td style="text-align:right;">
18.4%
</td>
<td style="text-align:right;">
31.9%
</td>
<td style="text-align:right;">
78.9%
</td>
<td style="text-align:right;">
0.0%
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
3.3%
</td>
<td style="text-align:right;">
11.8%
</td>
<td style="text-align:right;">
23.1%
</td>
<td style="text-align:right;">
74.2%
</td>
<td style="text-align:right;">
0.0%
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
2.7%
</td>
<td style="text-align:right;">
9.8%
</td>
<td style="text-align:right;">
19.9%
</td>
<td style="text-align:right;">
69.8%
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
2.8%
</td>
<td style="text-align:right;">
9.5%
</td>
<td style="text-align:right;">
18.5%
</td>
<td style="text-align:right;">
63.2%
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
2.7%
</td>
<td style="text-align:right;">
9.1%
</td>
<td style="text-align:right;">
17.1%
</td>
<td style="text-align:right;">
59.4%
</td>
<td style="text-align:right;">
0.0%
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
0.7%
</td>
<td style="text-align:right;">
3.1%
</td>
<td style="text-align:right;">
7.2%
</td>
<td style="text-align:right;">
42.4%
</td>
<td style="text-align:right;">
0.0%
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
0.3%
</td>
<td style="text-align:right;">
1.5%
</td>
<td style="text-align:right;">
3.4%
</td>
<td style="text-align:right;">
24.6%
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
0.1%
</td>
<td style="text-align:right;">
0.4%
</td>
<td style="text-align:right;">
1.1%
</td>
<td style="text-align:right;">
11.6%
</td>
<td style="text-align:right;">
0.0%
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
0.1%
</td>
<td style="text-align:right;">
2.3%
</td>
<td style="text-align:right;">
0.0%
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
0.0%
</td>
<td style="text-align:right;">
1.0%
</td>
<td style="text-align:right;">
0.1%
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
4.1%
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
96.3%
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
0.0%
</td>
<td style="text-align:right;">
99.5%
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
100.0%
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

Finally, this page is updated daily in the season with the latest
available data. At this point, that means games up to:

Arsenal 0 - 0 Liverpool (played on 2026-01-08)
