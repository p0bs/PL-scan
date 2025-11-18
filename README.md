
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
71.2%
</td>
<td style="text-align:right;">
99.1%
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
20.0%
</td>
<td style="text-align:right;">
94.1%
</td>
<td style="text-align:right;">
97.7%
</td>
<td style="text-align:right;">
99.1%
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
6.2%
</td>
<td style="text-align:right;">
79.6%
</td>
<td style="text-align:right;">
89.6%
</td>
<td style="text-align:right;">
94.8%
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
1.2%
</td>
<td style="text-align:right;">
44.1%
</td>
<td style="text-align:right;">
63.5%
</td>
<td style="text-align:right;">
77.4%
</td>
<td style="text-align:right;">
97.6%
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
0.9%
</td>
<td style="text-align:right;">
39.6%
</td>
<td style="text-align:right;">
59.3%
</td>
<td style="text-align:right;">
74.2%
</td>
<td style="text-align:right;">
96.9%
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
20.3%
</td>
<td style="text-align:right;">
36.7%
</td>
<td style="text-align:right;">
54.3%
</td>
<td style="text-align:right;">
92.4%
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
0.1%
</td>
<td style="text-align:right;">
8.7%
</td>
<td style="text-align:right;">
17.7%
</td>
<td style="text-align:right;">
29.7%
</td>
<td style="text-align:right;">
77.9%
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
5.3%
</td>
<td style="text-align:right;">
11.9%
</td>
<td style="text-align:right;">
21.7%
</td>
<td style="text-align:right;">
69.6%
</td>
<td style="text-align:right;">
0.3%
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
2.9%
</td>
<td style="text-align:right;">
7.1%
</td>
<td style="text-align:right;">
13.8%
</td>
<td style="text-align:right;">
60.0%
</td>
<td style="text-align:right;">
0.5%
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
3.8%
</td>
<td style="text-align:right;">
9.0%
</td>
<td style="text-align:right;">
17.2%
</td>
<td style="text-align:right;">
65.6%
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
1.3%
</td>
<td style="text-align:right;">
3.8%
</td>
<td style="text-align:right;">
8.3%
</td>
<td style="text-align:right;">
48.1%
</td>
<td style="text-align:right;">
0.7%
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
0.5%
</td>
<td style="text-align:right;">
1.6%
</td>
<td style="text-align:right;">
3.9%
</td>
<td style="text-align:right;">
31.6%
</td>
<td style="text-align:right;">
2.0%
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
0.4%
</td>
<td style="text-align:right;">
1.1%
</td>
<td style="text-align:right;">
2.6%
</td>
<td style="text-align:right;">
23.4%
</td>
<td style="text-align:right;">
3.5%
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
0.3%
</td>
<td style="text-align:right;">
0.8%
</td>
<td style="text-align:right;">
1.9%
</td>
<td style="text-align:right;">
18.4%
</td>
<td style="text-align:right;">
6.5%
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
9.9%
</td>
<td style="text-align:right;">
11.2%
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
13.1%
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
0.5%
</td>
<td style="text-align:right;">
47.1%
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
0.4%
</td>
<td style="text-align:right;">
62.3%
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
0.2%
</td>
<td style="text-align:right;">
52.9%
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
99.6%
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
64.3%
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
33.4%
</td>
<td style="text-align:right;">
99.0%
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
Aston Villa
</td>
<td style="text-align:right;">
1.3%
</td>
<td style="text-align:right;">
60.7%
</td>
<td style="text-align:right;">
76.2%
</td>
<td style="text-align:right;">
86.5%
</td>
<td style="text-align:right;">
99.4%
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
0.4%
</td>
<td style="text-align:right;">
51.1%
</td>
<td style="text-align:right;">
70.4%
</td>
<td style="text-align:right;">
83.6%
</td>
<td style="text-align:right;">
99.4%
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
0.3%
</td>
<td style="text-align:right;">
27.8%
</td>
<td style="text-align:right;">
42.8%
</td>
<td style="text-align:right;">
57.9%
</td>
<td style="text-align:right;">
93.9%
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
0.2%
</td>
<td style="text-align:right;">
27.4%
</td>
<td style="text-align:right;">
44.2%
</td>
<td style="text-align:right;">
60.3%
</td>
<td style="text-align:right;">
95.6%
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
0.1%
</td>
<td style="text-align:right;">
14.4%
</td>
<td style="text-align:right;">
25.7%
</td>
<td style="text-align:right;">
38.9%
</td>
<td style="text-align:right;">
86.4%
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
0.1%
</td>
<td style="text-align:right;">
11.5%
</td>
<td style="text-align:right;">
21.3%
</td>
<td style="text-align:right;">
33.8%
</td>
<td style="text-align:right;">
83.3%
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
6.1%
</td>
<td style="text-align:right;">
12.5%
</td>
<td style="text-align:right;">
21.7%
</td>
<td style="text-align:right;">
74.3%
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
1.2%
</td>
<td style="text-align:right;">
3.1%
</td>
<td style="text-align:right;">
6.6%
</td>
<td style="text-align:right;">
49.5%
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
1.0%
</td>
<td style="text-align:right;">
2.8%
</td>
<td style="text-align:right;">
6.3%
</td>
<td style="text-align:right;">
48.8%
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
0.3%
</td>
<td style="text-align:right;">
1.0%
</td>
<td style="text-align:right;">
2.7%
</td>
<td style="text-align:right;">
32.8%
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
0.1%
</td>
<td style="text-align:right;">
0.4%
</td>
<td style="text-align:right;">
1.2%
</td>
<td style="text-align:right;">
22.8%
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
0.1%
</td>
<td style="text-align:right;">
0.2%
</td>
<td style="text-align:right;">
0.5%
</td>
<td style="text-align:right;">
10.6%
</td>
<td style="text-align:right;">
0.6%
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
0.1%
</td>
<td style="text-align:right;">
3.0%
</td>
<td style="text-align:right;">
3.5%
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
8.0%
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
48.7%
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
59.5%
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
79.7%
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

Man City 3 - 0 Liverpool (played on 2025-11-09)
