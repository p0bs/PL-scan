
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
66.8%
</td>
<td style="text-align:right;">
98.9%
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
22.6%
</td>
<td style="text-align:right;">
94.7%
</td>
<td style="text-align:right;">
98.2%
</td>
<td style="text-align:right;">
99.3%
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
7.0%
</td>
<td style="text-align:right;">
80.2%
</td>
<td style="text-align:right;">
91.0%
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
Man City
</td>
<td style="text-align:right;">
2.7%
</td>
<td style="text-align:right;">
62.7%
</td>
<td style="text-align:right;">
79.5%
</td>
<td style="text-align:right;">
88.9%
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
0.6%
</td>
<td style="text-align:right;">
29.2%
</td>
<td style="text-align:right;">
51.3%
</td>
<td style="text-align:right;">
68.2%
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
Aston Villa
</td>
<td style="text-align:right;">
0.1%
</td>
<td style="text-align:right;">
12.2%
</td>
<td style="text-align:right;">
26.2%
</td>
<td style="text-align:right;">
43.0%
</td>
<td style="text-align:right;">
88.3%
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
9.4%
</td>
<td style="text-align:right;">
20.8%
</td>
<td style="text-align:right;">
35.8%
</td>
<td style="text-align:right;">
83.7%
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
4.1%
</td>
<td style="text-align:right;">
10.1%
</td>
<td style="text-align:right;">
19.5%
</td>
<td style="text-align:right;">
68.8%
</td>
<td style="text-align:right;">
0.4%
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
4.4%
</td>
<td style="text-align:right;">
11.0%
</td>
<td style="text-align:right;">
21.5%
</td>
<td style="text-align:right;">
74.2%
</td>
<td style="text-align:right;">
0.2%
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
2.6%
</td>
<td style="text-align:right;">
7.1%
</td>
<td style="text-align:right;">
14.8%
</td>
<td style="text-align:right;">
63.0%
</td>
<td style="text-align:right;">
0.5%
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
0.6%
</td>
<td style="text-align:right;">
1.9%
</td>
<td style="text-align:right;">
4.7%
</td>
<td style="text-align:right;">
37.0%
</td>
<td style="text-align:right;">
2.0%
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
1.9%
</td>
<td style="text-align:right;">
4.6%
</td>
<td style="text-align:right;">
36.0%
</td>
<td style="text-align:right;">
2.2%
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
0.2%
</td>
<td style="text-align:right;">
0.5%
</td>
<td style="text-align:right;">
1.4%
</td>
<td style="text-align:right;">
17.0%
</td>
<td style="text-align:right;">
8.0%
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
0.4%
</td>
<td style="text-align:right;">
1.1%
</td>
<td style="text-align:right;">
14.0%
</td>
<td style="text-align:right;">
11.3%
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
0.0%
</td>
<td style="text-align:right;">
0.2%
</td>
<td style="text-align:right;">
0.7%
</td>
<td style="text-align:right;">
11.1%
</td>
<td style="text-align:right;">
12.6%
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
0.2%
</td>
<td style="text-align:right;">
0.5%
</td>
<td style="text-align:right;">
8.5%
</td>
<td style="text-align:right;">
15.2%
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
1.4%
</td>
<td style="text-align:right;">
38.4%
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
1.4%
</td>
<td style="text-align:right;">
34.8%
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
0.3%
</td>
<td style="text-align:right;">
74.8%
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
99.4%
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
78.4%
</td>
<td style="text-align:right;">
99.5%
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
Man City
</td>
<td style="text-align:right;">
17.9%
</td>
<td style="text-align:right;">
96.9%
</td>
<td style="text-align:right;">
99.1%
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
Sunderland
</td>
<td style="text-align:right;">
1.5%
</td>
<td style="text-align:right;">
59.8%
</td>
<td style="text-align:right;">
78.7%
</td>
<td style="text-align:right;">
90.2%
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
Aston Villa
</td>
<td style="text-align:right;">
1.2%
</td>
<td style="text-align:right;">
52.8%
</td>
<td style="text-align:right;">
73.2%
</td>
<td style="text-align:right;">
86.8%
</td>
<td style="text-align:right;">
99.5%
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
57.3%
</td>
<td style="text-align:right;">
79.5%
</td>
<td style="text-align:right;">
91.7%
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
0.2%
</td>
<td style="text-align:right;">
20.7%
</td>
<td style="text-align:right;">
36.9%
</td>
<td style="text-align:right;">
58.2%
</td>
<td style="text-align:right;">
95.2%
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
4.2%
</td>
<td style="text-align:right;">
9.9%
</td>
<td style="text-align:right;">
20.7%
</td>
<td style="text-align:right;">
77.1%
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
3.6%
</td>
<td style="text-align:right;">
8.6%
</td>
<td style="text-align:right;">
18.1%
</td>
<td style="text-align:right;">
71.1%
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
4.0%
</td>
<td style="text-align:right;">
9.9%
</td>
<td style="text-align:right;">
20.7%
</td>
<td style="text-align:right;">
78.5%
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
0.6%
</td>
<td style="text-align:right;">
2.2%
</td>
<td style="text-align:right;">
6.4%
</td>
<td style="text-align:right;">
57.5%
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
0.2%
</td>
<td style="text-align:right;">
0.8%
</td>
<td style="text-align:right;">
3.0%
</td>
<td style="text-align:right;">
42.8%
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
1.0%
</td>
<td style="text-align:right;">
3.0%
</td>
<td style="text-align:right;">
37.5%
</td>
<td style="text-align:right;">
0.1%
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
0.3%
</td>
<td style="text-align:right;">
1.2%
</td>
<td style="text-align:right;">
25.0%
</td>
<td style="text-align:right;">
0.2%
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
0.3%
</td>
<td style="text-align:right;">
7.9%
</td>
<td style="text-align:right;">
2.0%
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
0.2%
</td>
<td style="text-align:right;">
5.9%
</td>
<td style="text-align:right;">
3.0%
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
1.9%
</td>
<td style="text-align:right;">
4.4%
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
0.5%
</td>
<td style="text-align:right;">
14.3%
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
88.4%
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
91.2%
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
96.5%
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

WHU 3 - 1 NEW (played on 2025-11-01)
