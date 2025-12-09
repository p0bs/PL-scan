
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
75.3%
</td>
<td style="text-align:right;">
99.2%
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
13.1%
</td>
<td style="text-align:right;">
88.9%
</td>
<td style="text-align:right;">
95.2%
</td>
<td style="text-align:right;">
97.9%
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
6.1%
</td>
<td style="text-align:right;">
77.4%
</td>
<td style="text-align:right;">
89.3%
</td>
<td style="text-align:right;">
95.0%
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
Liverpool
</td>
<td style="text-align:right;">
4.7%
</td>
<td style="text-align:right;">
73.9%
</td>
<td style="text-align:right;">
86.9%
</td>
<td style="text-align:right;">
93.6%
</td>
<td style="text-align:right;">
99.7%
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
27.3%
</td>
<td style="text-align:right;">
49.3%
</td>
<td style="text-align:right;">
67.0%
</td>
<td style="text-align:right;">
96.2%
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
0.1%
</td>
<td style="text-align:right;">
12.3%
</td>
<td style="text-align:right;">
27.0%
</td>
<td style="text-align:right;">
44.8%
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
Crystal Palace
</td>
<td style="text-align:right;">
0.1%
</td>
<td style="text-align:right;">
6.9%
</td>
<td style="text-align:right;">
15.8%
</td>
<td style="text-align:right;">
28.7%
</td>
<td style="text-align:right;">
79.2%
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
7.5%
</td>
<td style="text-align:right;">
18.1%
</td>
<td style="text-align:right;">
32.0%
</td>
<td style="text-align:right;">
82.9%
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
2.9%
</td>
<td style="text-align:right;">
7.4%
</td>
<td style="text-align:right;">
14.9%
</td>
<td style="text-align:right;">
63.9%
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
1.8%
</td>
<td style="text-align:right;">
5.2%
</td>
<td style="text-align:right;">
11.2%
</td>
<td style="text-align:right;">
56.3%
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
1.1%
</td>
<td style="text-align:right;">
3.5%
</td>
<td style="text-align:right;">
7.9%
</td>
<td style="text-align:right;">
47.9%
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
0.4%
</td>
<td style="text-align:right;">
1.6%
</td>
<td style="text-align:right;">
3.9%
</td>
<td style="text-align:right;">
33.0%
</td>
<td style="text-align:right;">
0.4%
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
0.1%
</td>
<td style="text-align:right;">
0.6%
</td>
<td style="text-align:right;">
1.8%
</td>
<td style="text-align:right;">
23.6%
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
0.0%
</td>
<td style="text-align:right;">
0.1%
</td>
<td style="text-align:right;">
0.2%
</td>
<td style="text-align:right;">
0.6%
</td>
<td style="text-align:right;">
10.0%
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
0.0%
</td>
<td style="text-align:right;">
0.2%
</td>
<td style="text-align:right;">
0.5%
</td>
<td style="text-align:right;">
8.7%
</td>
<td style="text-align:right;">
3.7%
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
0.1%
</td>
<td style="text-align:right;">
0.4%
</td>
<td style="text-align:right;">
7.9%
</td>
<td style="text-align:right;">
3.6%
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
0.1%
</td>
<td style="text-align:right;">
34.1%
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
0.2%
</td>
<td style="text-align:right;">
55.9%
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
97.6%
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
73.6%
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
13.2%
</td>
<td style="text-align:right;">
99.2%
</td>
<td style="text-align:right;">
99.8%
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
12.7%
</td>
<td style="text-align:right;">
99.3%
</td>
<td style="text-align:right;">
99.9%
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
Everton
</td>
<td style="text-align:right;">
0.6%
</td>
<td style="text-align:right;">
76.3%
</td>
<td style="text-align:right;">
89.8%
</td>
<td style="text-align:right;">
95.0%
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
Liverpool
</td>
<td style="text-align:right;">
0.0%
</td>
<td style="text-align:right;">
5.8%
</td>
<td style="text-align:right;">
25.1%
</td>
<td style="text-align:right;">
43.4%
</td>
<td style="text-align:right;">
90.1%
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
1.1%
</td>
<td style="text-align:right;">
6.1%
</td>
<td style="text-align:right;">
13.4%
</td>
<td style="text-align:right;">
59.7%
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
5.5%
</td>
<td style="text-align:right;">
23.7%
</td>
<td style="text-align:right;">
42.3%
</td>
<td style="text-align:right;">
90.0%
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
4.5%
</td>
<td style="text-align:right;">
18.7%
</td>
<td style="text-align:right;">
33.1%
</td>
<td style="text-align:right;">
82.8%
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
4.4%
</td>
<td style="text-align:right;">
16.8%
</td>
<td style="text-align:right;">
30.4%
</td>
<td style="text-align:right;">
80.6%
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
2.5%
</td>
<td style="text-align:right;">
11.8%
</td>
<td style="text-align:right;">
22.9%
</td>
<td style="text-align:right;">
73.2%
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
1.1%
</td>
<td style="text-align:right;">
5.8%
</td>
<td style="text-align:right;">
13.1%
</td>
<td style="text-align:right;">
61.0%
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
0.3%
</td>
<td style="text-align:right;">
2.0%
</td>
<td style="text-align:right;">
5.3%
</td>
<td style="text-align:right;">
38.9%
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
0.4%
</td>
<td style="text-align:right;">
1.2%
</td>
<td style="text-align:right;">
20.2%
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
0.0%
</td>
<td style="text-align:right;">
0.0%
</td>
<td style="text-align:right;">
0.0%
</td>
<td style="text-align:right;">
2.8%
</td>
<td style="text-align:right;">
0.1%
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
0.0%
</td>
<td style="text-align:right;">
0.0%
</td>
<td style="text-align:right;">
0.7%
</td>
<td style="text-align:right;">
3.0%
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
0.1%
</td>
<td style="text-align:right;">
10.0%
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
0.0%
</td>
<td style="text-align:right;">
5.6%
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
81.6%
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
99.6%
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

Wolves 1 - 4 Man United (played on 2025-12-08)
