
<!-- README.md is generated from README.Rmd. Please edit that file -->

## Predicting this season’s Premier League

I use a simplified version of [David Firth’s
approach](https://github.com/DavidFirth/alt3code) and data from the
[Open Football repo](https://github.com/openfootball/football.json) on
GitHub to predict the outcome of this season’s Premier League.

The predictions are based on a team’s strength, given its performance in
recent times. But how should we define *recent*? In order to duck this
question, I choose two different time periods:

- over all of last season and this season so far; and
- over the last 19 games (i.e. half season)

Here are those predictions. Please note that 0.0% and 100.0% outcomes do
not necessarily signify certainty in their specific assessment, as:

- this model uses 100,000 simulations and not 1,000; and more
  pertinently
- this model (like all models) is imperfect (but, I think, better than
  no model at all)

### Predicted probabilities

#### (Based upon performances over last season and this season so far)

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
Liverpool
</td>
<td style="text-align:right;">
99.4%
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
Arsenal
</td>
<td style="text-align:right;">
0.6%
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
0.0%
</td>
<td style="text-align:right;">
76.0%
</td>
<td style="text-align:right;">
89.7%
</td>
<td style="text-align:right;">
95.9%
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
Notts Forest
</td>
<td style="text-align:right;">
0.0%
</td>
<td style="text-align:right;">
59.4%
</td>
<td style="text-align:right;">
79.8%
</td>
<td style="text-align:right;">
91.8%
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
Newcastle
</td>
<td style="text-align:right;">
0.0%
</td>
<td style="text-align:right;">
24.1%
</td>
<td style="text-align:right;">
48.0%
</td>
<td style="text-align:right;">
70.3%
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
Chelsea
</td>
<td style="text-align:right;">
0.0%
</td>
<td style="text-align:right;">
28.8%
</td>
<td style="text-align:right;">
50.7%
</td>
<td style="text-align:right;">
72.4%
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
Brighton
</td>
<td style="text-align:right;">
0.0%
</td>
<td style="text-align:right;">
7.1%
</td>
<td style="text-align:right;">
18.2%
</td>
<td style="text-align:right;">
36.2%
</td>
<td style="text-align:right;">
97.9%
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
0.0%
</td>
<td style="text-align:right;">
3.6%
</td>
<td style="text-align:right;">
10.0%
</td>
<td style="text-align:right;">
22.6%
</td>
<td style="text-align:right;">
94.9%
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
0.5%
</td>
<td style="text-align:right;">
2.0%
</td>
<td style="text-align:right;">
6.3%
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
Fulham
</td>
<td style="text-align:right;">
0.0%
</td>
<td style="text-align:right;">
0.4%
</td>
<td style="text-align:right;">
1.4%
</td>
<td style="text-align:right;">
4.2%
</td>
<td style="text-align:right;">
76.6%
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
0.1%
</td>
<td style="text-align:right;">
0.3%
</td>
<td style="text-align:right;">
26.7%
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
0.0%
</td>
<td style="text-align:right;">
0.0%
</td>
<td style="text-align:right;">
0.1%
</td>
<td style="text-align:right;">
12.9%
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
0.0%
</td>
<td style="text-align:right;">
0.0%
</td>
<td style="text-align:right;">
0.0%
</td>
<td style="text-align:right;">
4.8%
</td>
<td style="text-align:right;">
0.0%
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
2.2%
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
1.7%
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
0.0%
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
0.1%
</td>
</tr>
<tr>
<td style="text-align:left;">
Leicester
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
Ipswich
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
<tr>
<td style="text-align:left;">
Southampton
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

### Predicted probabilities

#### (Based upon performances over the last 19 games, be that this season or last season)

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
Liverpool
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
Arsenal
</td>
<td style="text-align:right;">
0.2%
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
100.0%
</td>
<td style="text-align:right;">
0.0%
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
98.7%
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
Brighton
</td>
<td style="text-align:right;">
0.0%
</td>
<td style="text-align:right;">
26.3%
</td>
<td style="text-align:right;">
46.0%
</td>
<td style="text-align:right;">
62.3%
</td>
<td style="text-align:right;">
97.2%
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
25.7%
</td>
<td style="text-align:right;">
43.2%
</td>
<td style="text-align:right;">
58.0%
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
Man City
</td>
<td style="text-align:right;">
0.0%
</td>
<td style="text-align:right;">
17.8%
</td>
<td style="text-align:right;">
36.1%
</td>
<td style="text-align:right;">
53.6%
</td>
<td style="text-align:right;">
97.0%
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
16.1%
</td>
<td style="text-align:right;">
35.0%
</td>
<td style="text-align:right;">
54.0%
</td>
<td style="text-align:right;">
97.5%
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
9.6%
</td>
<td style="text-align:right;">
22.4%
</td>
<td style="text-align:right;">
36.7%
</td>
<td style="text-align:right;">
91.3%
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
0.0%
</td>
<td style="text-align:right;">
2.5%
</td>
<td style="text-align:right;">
6.8%
</td>
<td style="text-align:right;">
13.0%
</td>
<td style="text-align:right;">
70.7%
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
2.7%
</td>
<td style="text-align:right;">
7.5%
</td>
<td style="text-align:right;">
14.4%
</td>
<td style="text-align:right;">
71.6%
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
1.0%
</td>
<td style="text-align:right;">
3.3%
</td>
<td style="text-align:right;">
7.2%
</td>
<td style="text-align:right;">
59.8%
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
0.3%
</td>
<td style="text-align:right;">
0.8%
</td>
<td style="text-align:right;">
17.9%
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
0.0%
</td>
<td style="text-align:right;">
0.0%
</td>
<td style="text-align:right;">
0.0%
</td>
<td style="text-align:right;">
0.6%
</td>
<td style="text-align:right;">
0.0%
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
0.0%
</td>
<td style="text-align:right;">
0.0%
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
0.1%
</td>
</tr>
<tr>
<td style="text-align:left;">
Ipswich
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
<tr>
<td style="text-align:left;">
Leicester
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
<tr>
<td style="text-align:left;">
Southampton
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

### Data

This page is updated daily with the latest available data. At this
point, that means games up to and including:

Leicester 0 - 3 Man Utd (played on 2025-03-16)
