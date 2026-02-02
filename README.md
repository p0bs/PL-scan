
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

    ## # A tibble: 20 × 7
    ##    midName        champion top_four top_five top_six top_half relegation
    ##    <chr>          <chr>    <chr>    <chr>    <chr>   <chr>    <chr>     
    ##  1 Arsenal        93.6%    > 99.9%  > 99.9%  > 99.9% > 99.9%  < 0.1%    
    ##  2 Man City       3.3%     95.2%    99.0%    99.7%   > 99.9%  < 0.1%    
    ##  3 Aston Villa    2.9%     94.9%    99.1%    99.8%   > 99.9%  < 0.1%    
    ##  4 Liverpool      0.1%     63.2%    86.7%    94.7%   99.8%    < 0.1%    
    ##  5 Chelsea        < 0.1%   36.2%    72.4%    86.9%   99.3%    < 0.1%    
    ##  6 Man Utd        < 0.1%   5.4%     17.4%    39.1%   87.5%    < 0.1%    
    ##  7 Newcastle      < 0.1%   1.1%     5.9%     18.0%   72.2%    < 0.1%    
    ##  8 Sunderland     < 0.1%   1.1%     5.3%     16.0%   71.6%    < 0.1%    
    ##  9 Brentford      < 0.1%   0.9%     4.5%     14.3%   66.4%    < 0.1%    
    ## 10 Bournemouth    < 0.1%   0.9%     4.3%     13.1%   60.8%    < 0.1%    
    ## 11 Everton        < 0.1%   0.6%     3.1%     9.6%    52.6%    < 0.1%    
    ## 12 Fulham         < 0.1%   0.3%     1.6%     6.0%    45.4%    < 0.1%    
    ## 13 Brighton       < 0.1%   < 0.1%   0.5%     1.9%    23.0%    0.2%      
    ## 14 Crystal Palace < 0.1%   < 0.1%   0.2%     0.8%    12.8%    0.6%      
    ## 15 Notts Forest   < 0.1%   < 0.1%   < 0.1%   0.2%    5.7%     1.7%      
    ## 16 Leeds Utd      < 0.1%   < 0.1%   < 0.1%   < 0.1%  2.2%     2.3%      
    ## 17 Tottenham      < 0.1%   < 0.1%   < 0.1%   < 0.1%  0.8%     6.7%      
    ## 18 West Ham       < 0.1%   < 0.1%   < 0.1%   < 0.1%  < 0.1%   88.6%     
    ## 19 Burnley        < 0.1%   < 0.1%   < 0.1%   < 0.1%  < 0.1%   > 99.9%   
    ## 20 Wolves         < 0.1%   < 0.1%   < 0.1%   < 0.1%  < 0.1%   > 99.9%

<br/>

### Predictions with a shorter memory

**(Based upon performances over the last 19 games, be that this season
or last season)**

    ## # A tibble: 20 × 7
    ##    midName        champion top_four top_five top_six top_half relegation
    ##    <chr>          <chr>    <chr>    <chr>    <chr>   <chr>    <chr>     
    ##  1 Arsenal        87.2%    > 99.9%  > 99.9%  > 99.9% > 99.9%  < 0.1%    
    ##  2 Aston Villa    7.5%     > 99.9%  > 99.9%  > 99.9% > 99.9%  < 0.1%    
    ##  3 Man City       5.3%     99.8%    > 99.9%  > 99.9% > 99.9%  < 0.1%    
    ##  4 Chelsea        < 0.1%   51.5%    81.9%    92.0%   99.7%    < 0.1%    
    ##  5 Man Utd        < 0.1%   39.4%    75.8%    88.5%   99.4%    < 0.1%    
    ##  6 Liverpool      < 0.1%   3.4%     13.4%    33.9%   86.8%    < 0.1%    
    ##  7 Brentford      < 0.1%   2.4%     11.0%    29.9%   85.4%    < 0.1%    
    ##  8 Sunderland     < 0.1%   1.8%     7.7%     20.6%   76.6%    < 0.1%    
    ##  9 Everton        < 0.1%   0.9%     4.3%     12.9%   62.9%    < 0.1%    
    ## 10 Fulham         < 0.1%   0.3%     2.1%     8.2%    57.9%    < 0.1%    
    ## 11 Bournemouth    < 0.1%   0.3%     2.0%     6.8%    48.4%    < 0.1%    
    ## 12 Newcastle      < 0.1%   0.2%     1.4%     6.1%    57.3%    < 0.1%    
    ## 13 Brighton       < 0.1%   < 0.1%   0.2%     0.9%    17.1%    < 0.1%    
    ## 14 Crystal Palace < 0.1%   < 0.1%   < 0.1%   0.1%    4.7%     0.2%      
    ## 15 Notts Forest   < 0.1%   < 0.1%   < 0.1%   < 0.1%  2.3%     0.8%      
    ## 16 Tottenham      < 0.1%   < 0.1%   < 0.1%   < 0.1%  1.1%     1.0%      
    ## 17 Leeds Utd      < 0.1%   < 0.1%   < 0.1%   < 0.1%  0.4%     1.3%      
    ## 18 West Ham       < 0.1%   < 0.1%   < 0.1%   < 0.1%  < 0.1%   96.8%     
    ## 19 Burnley        < 0.1%   < 0.1%   < 0.1%   < 0.1%  < 0.1%   > 99.9%   
    ## 20 Wolves         < 0.1%   < 0.1%   < 0.1%   < 0.1%  < 0.1%   > 99.9%

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
