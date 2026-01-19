
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
93.1%
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
4.0%
</td>
<td style="text-align:right;">
97.0%
</td>
<td style="text-align:right;">
99.3%
</td>
<td style="text-align:right;">
99.8%
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
2.6%
</td>
<td style="text-align:right;">
95.7%
</td>
<td style="text-align:right;">
99.0%
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
0.2%
</td>
<td style="text-align:right;">
74.9%
</td>
<td style="text-align:right;">
89.8%
</td>
<td style="text-align:right;">
95.5%
</td>
<td style="text-align:right;">
99.8%
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
17.8%
</td>
<td style="text-align:right;">
49.7%
</td>
<td style="text-align:right;">
69.0%
</td>
<td style="text-align:right;">
96.4%
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
6.2%
</td>
<td style="text-align:right;">
22.2%
</td>
<td style="text-align:right;">
41.9%
</td>
<td style="text-align:right;">
87.9%
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
3.7%
</td>
<td style="text-align:right;">
16.3%
</td>
<td style="text-align:right;">
33.6%
</td>
<td style="text-align:right;">
85.4%
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
1.5%
</td>
<td style="text-align:right;">
7.0%
</td>
<td style="text-align:right;">
15.7%
</td>
<td style="text-align:right;">
62.9%
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
0.8%
</td>
<td style="text-align:right;">
4.1%
</td>
<td style="text-align:right;">
11.0%
</td>
<td style="text-align:right;">
55.8%
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
0.9%
</td>
<td style="text-align:right;">
4.3%
</td>
<td style="text-align:right;">
10.8%
</td>
<td style="text-align:right;">
54.2%
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
0.6%
</td>
<td style="text-align:right;">
3.4%
</td>
<td style="text-align:right;">
8.7%
</td>
<td style="text-align:right;">
45.7%
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
0.4%
</td>
<td style="text-align:right;">
2.2%
</td>
<td style="text-align:right;">
6.1%
</td>
<td style="text-align:right;">
41.5%
</td>
<td style="text-align:right;">
0.1%
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
0.3%
</td>
<td style="text-align:right;">
1.7%
</td>
<td style="text-align:right;">
4.8%
</td>
<td style="text-align:right;">
33.3%
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
0.2%
</td>
<td style="text-align:right;">
1.0%
</td>
<td style="text-align:right;">
3.0%
</td>
<td style="text-align:right;">
26.8%
</td>
<td style="text-align:right;">
0.2%
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
1.0%
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
0.1%
</td>
<td style="text-align:right;">
3.3%
</td>
<td style="text-align:right;">
3.2%
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
1.5%
</td>
<td style="text-align:right;">
4.0%
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
91.6%
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
99.8%
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
85.0%
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
12.7%
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
2.3%
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
Man Utd
</td>
<td style="text-align:right;">
0.0%
</td>
<td style="text-align:right;">
27.3%
</td>
<td style="text-align:right;">
47.5%
</td>
<td style="text-align:right;">
62.8%
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
Liverpool
</td>
<td style="text-align:right;">
0.0%
</td>
<td style="text-align:right;">
24.5%
</td>
<td style="text-align:right;">
44.0%
</td>
<td style="text-align:right;">
59.4%
</td>
<td style="text-align:right;">
94.1%
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
17.7%
</td>
<td style="text-align:right;">
34.2%
</td>
<td style="text-align:right;">
49.2%
</td>
<td style="text-align:right;">
90.4%
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
14.6%
</td>
<td style="text-align:right;">
30.9%
</td>
<td style="text-align:right;">
46.8%
</td>
<td style="text-align:right;">
90.5%
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
8.2%
</td>
<td style="text-align:right;">
21.0%
</td>
<td style="text-align:right;">
36.6%
</td>
<td style="text-align:right;">
88.9%
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
4.1%
</td>
<td style="text-align:right;">
10.7%
</td>
<td style="text-align:right;">
18.9%
</td>
<td style="text-align:right;">
67.7%
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
1.9%
</td>
<td style="text-align:right;">
6.3%
</td>
<td style="text-align:right;">
13.5%
</td>
<td style="text-align:right;">
67.6%
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
1.0%
</td>
<td style="text-align:right;">
3.1%
</td>
<td style="text-align:right;">
7.0%
</td>
<td style="text-align:right;">
47.3%
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
0.5%
</td>
<td style="text-align:right;">
1.6%
</td>
<td style="text-align:right;">
3.7%
</td>
<td style="text-align:right;">
29.6%
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
0.1%
</td>
<td style="text-align:right;">
0.5%
</td>
<td style="text-align:right;">
1.2%
</td>
<td style="text-align:right;">
14.0%
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
0.3%
</td>
<td style="text-align:right;">
0.8%
</td>
<td style="text-align:right;">
10.8%
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
0.1%
</td>
<td style="text-align:right;">
3.0%
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
0.0%
</td>
<td style="text-align:right;">
1.2%
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
0.1%
</td>
<td style="text-align:right;">
1.2%
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
98.9%
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
99.8%
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

Aston Villa 0 - 1 Everton (played on 2026-01-18)
