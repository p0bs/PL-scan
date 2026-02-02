
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

<div id="vzdtsnvtdm" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#vzdtsnvtdm table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
&#10;#vzdtsnvtdm thead, #vzdtsnvtdm tbody, #vzdtsnvtdm tfoot, #vzdtsnvtdm tr, #vzdtsnvtdm td, #vzdtsnvtdm th {
  border-style: none;
}
&#10;#vzdtsnvtdm p {
  margin: 0;
  padding: 0;
}
&#10;#vzdtsnvtdm .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}
&#10;#vzdtsnvtdm .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}
&#10;#vzdtsnvtdm .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}
&#10;#vzdtsnvtdm .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}
&#10;#vzdtsnvtdm .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#vzdtsnvtdm .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#vzdtsnvtdm .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#vzdtsnvtdm .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}
&#10;#vzdtsnvtdm .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}
&#10;#vzdtsnvtdm .gt_column_spanner_outer:first-child {
  padding-left: 0;
}
&#10;#vzdtsnvtdm .gt_column_spanner_outer:last-child {
  padding-right: 0;
}
&#10;#vzdtsnvtdm .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}
&#10;#vzdtsnvtdm .gt_spanner_row {
  border-bottom-style: hidden;
}
&#10;#vzdtsnvtdm .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}
&#10;#vzdtsnvtdm .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}
&#10;#vzdtsnvtdm .gt_from_md > :first-child {
  margin-top: 0;
}
&#10;#vzdtsnvtdm .gt_from_md > :last-child {
  margin-bottom: 0;
}
&#10;#vzdtsnvtdm .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}
&#10;#vzdtsnvtdm .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#vzdtsnvtdm .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}
&#10;#vzdtsnvtdm .gt_row_group_first td {
  border-top-width: 2px;
}
&#10;#vzdtsnvtdm .gt_row_group_first th {
  border-top-width: 2px;
}
&#10;#vzdtsnvtdm .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#vzdtsnvtdm .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}
&#10;#vzdtsnvtdm .gt_first_summary_row.thick {
  border-top-width: 2px;
}
&#10;#vzdtsnvtdm .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#vzdtsnvtdm .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#vzdtsnvtdm .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}
&#10;#vzdtsnvtdm .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}
&#10;#vzdtsnvtdm .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}
&#10;#vzdtsnvtdm .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#vzdtsnvtdm .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#vzdtsnvtdm .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#vzdtsnvtdm .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#vzdtsnvtdm .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#vzdtsnvtdm .gt_left {
  text-align: left;
}
&#10;#vzdtsnvtdm .gt_center {
  text-align: center;
}
&#10;#vzdtsnvtdm .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}
&#10;#vzdtsnvtdm .gt_font_normal {
  font-weight: normal;
}
&#10;#vzdtsnvtdm .gt_font_bold {
  font-weight: bold;
}
&#10;#vzdtsnvtdm .gt_font_italic {
  font-style: italic;
}
&#10;#vzdtsnvtdm .gt_super {
  font-size: 65%;
}
&#10;#vzdtsnvtdm .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}
&#10;#vzdtsnvtdm .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}
&#10;#vzdtsnvtdm .gt_indent_1 {
  text-indent: 5px;
}
&#10;#vzdtsnvtdm .gt_indent_2 {
  text-indent: 10px;
}
&#10;#vzdtsnvtdm .gt_indent_3 {
  text-indent: 15px;
}
&#10;#vzdtsnvtdm .gt_indent_4 {
  text-indent: 20px;
}
&#10;#vzdtsnvtdm .gt_indent_5 {
  text-indent: 25px;
}
&#10;#vzdtsnvtdm .katex-display {
  display: inline-flex !important;
  margin-bottom: 0.75em !important;
}
&#10;#vzdtsnvtdm div.Reactable > div.rt-table > div.rt-thead > div.rt-tr.rt-tr-group-header > div.rt-th-group:after {
  height: 0px !important;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="midName">midName</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="champion">champion</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="top_four">top_four</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="top_five">top_five</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="top_six">top_six</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="top_half">top_half</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="relegation">relegation</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="midName" class="gt_row gt_left">Arsenal</td>
<td headers="champion" class="gt_row gt_left">93.6%</td>
<td headers="top_four" class="gt_row gt_left">&gt; 99.9%</td>
<td headers="top_five" class="gt_row gt_left">&gt; 99.9%</td>
<td headers="top_six" class="gt_row gt_left">&gt; 99.9%</td>
<td headers="top_half" class="gt_row gt_left">&gt; 99.9%</td>
<td headers="relegation" class="gt_row gt_left">&lt; 0.1%</td></tr>
    <tr><td headers="midName" class="gt_row gt_left">Man City</td>
<td headers="champion" class="gt_row gt_left">3.3%</td>
<td headers="top_four" class="gt_row gt_left">95.2%</td>
<td headers="top_five" class="gt_row gt_left">99.0%</td>
<td headers="top_six" class="gt_row gt_left">99.7%</td>
<td headers="top_half" class="gt_row gt_left">&gt; 99.9%</td>
<td headers="relegation" class="gt_row gt_left">&lt; 0.1%</td></tr>
    <tr><td headers="midName" class="gt_row gt_left">Aston Villa</td>
<td headers="champion" class="gt_row gt_left">2.9%</td>
<td headers="top_four" class="gt_row gt_left">94.9%</td>
<td headers="top_five" class="gt_row gt_left">99.1%</td>
<td headers="top_six" class="gt_row gt_left">99.8%</td>
<td headers="top_half" class="gt_row gt_left">&gt; 99.9%</td>
<td headers="relegation" class="gt_row gt_left">&lt; 0.1%</td></tr>
    <tr><td headers="midName" class="gt_row gt_left">Liverpool</td>
<td headers="champion" class="gt_row gt_left">0.1%</td>
<td headers="top_four" class="gt_row gt_left">63.2%</td>
<td headers="top_five" class="gt_row gt_left">86.7%</td>
<td headers="top_six" class="gt_row gt_left">94.7%</td>
<td headers="top_half" class="gt_row gt_left">99.8%</td>
<td headers="relegation" class="gt_row gt_left">&lt; 0.1%</td></tr>
    <tr><td headers="midName" class="gt_row gt_left">Chelsea</td>
<td headers="champion" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_four" class="gt_row gt_left">36.2%</td>
<td headers="top_five" class="gt_row gt_left">72.4%</td>
<td headers="top_six" class="gt_row gt_left">86.9%</td>
<td headers="top_half" class="gt_row gt_left">99.3%</td>
<td headers="relegation" class="gt_row gt_left">&lt; 0.1%</td></tr>
    <tr><td headers="midName" class="gt_row gt_left">Man Utd</td>
<td headers="champion" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_four" class="gt_row gt_left">5.4%</td>
<td headers="top_five" class="gt_row gt_left">17.4%</td>
<td headers="top_six" class="gt_row gt_left">39.1%</td>
<td headers="top_half" class="gt_row gt_left">87.5%</td>
<td headers="relegation" class="gt_row gt_left">&lt; 0.1%</td></tr>
    <tr><td headers="midName" class="gt_row gt_left">Newcastle</td>
<td headers="champion" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_four" class="gt_row gt_left">1.1%</td>
<td headers="top_five" class="gt_row gt_left">5.9%</td>
<td headers="top_six" class="gt_row gt_left">18.0%</td>
<td headers="top_half" class="gt_row gt_left">72.2%</td>
<td headers="relegation" class="gt_row gt_left">&lt; 0.1%</td></tr>
    <tr><td headers="midName" class="gt_row gt_left">Sunderland</td>
<td headers="champion" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_four" class="gt_row gt_left">1.1%</td>
<td headers="top_five" class="gt_row gt_left">5.3%</td>
<td headers="top_six" class="gt_row gt_left">16.0%</td>
<td headers="top_half" class="gt_row gt_left">71.6%</td>
<td headers="relegation" class="gt_row gt_left">&lt; 0.1%</td></tr>
    <tr><td headers="midName" class="gt_row gt_left">Brentford</td>
<td headers="champion" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_four" class="gt_row gt_left">0.9%</td>
<td headers="top_five" class="gt_row gt_left">4.5%</td>
<td headers="top_six" class="gt_row gt_left">14.3%</td>
<td headers="top_half" class="gt_row gt_left">66.4%</td>
<td headers="relegation" class="gt_row gt_left">&lt; 0.1%</td></tr>
    <tr><td headers="midName" class="gt_row gt_left">Bournemouth</td>
<td headers="champion" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_four" class="gt_row gt_left">0.9%</td>
<td headers="top_five" class="gt_row gt_left">4.3%</td>
<td headers="top_six" class="gt_row gt_left">13.1%</td>
<td headers="top_half" class="gt_row gt_left">60.8%</td>
<td headers="relegation" class="gt_row gt_left">&lt; 0.1%</td></tr>
    <tr><td headers="midName" class="gt_row gt_left">Everton</td>
<td headers="champion" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_four" class="gt_row gt_left">0.6%</td>
<td headers="top_five" class="gt_row gt_left">3.1%</td>
<td headers="top_six" class="gt_row gt_left">9.6%</td>
<td headers="top_half" class="gt_row gt_left">52.6%</td>
<td headers="relegation" class="gt_row gt_left">&lt; 0.1%</td></tr>
    <tr><td headers="midName" class="gt_row gt_left">Fulham</td>
<td headers="champion" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_four" class="gt_row gt_left">0.3%</td>
<td headers="top_five" class="gt_row gt_left">1.6%</td>
<td headers="top_six" class="gt_row gt_left">6.0%</td>
<td headers="top_half" class="gt_row gt_left">45.4%</td>
<td headers="relegation" class="gt_row gt_left">&lt; 0.1%</td></tr>
    <tr><td headers="midName" class="gt_row gt_left">Brighton</td>
<td headers="champion" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_four" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_five" class="gt_row gt_left">0.5%</td>
<td headers="top_six" class="gt_row gt_left">1.9%</td>
<td headers="top_half" class="gt_row gt_left">23.0%</td>
<td headers="relegation" class="gt_row gt_left">0.2%</td></tr>
    <tr><td headers="midName" class="gt_row gt_left">Crystal Palace</td>
<td headers="champion" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_four" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_five" class="gt_row gt_left">0.2%</td>
<td headers="top_six" class="gt_row gt_left">0.8%</td>
<td headers="top_half" class="gt_row gt_left">12.8%</td>
<td headers="relegation" class="gt_row gt_left">0.6%</td></tr>
    <tr><td headers="midName" class="gt_row gt_left">Notts Forest</td>
<td headers="champion" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_four" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_five" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_six" class="gt_row gt_left">0.2%</td>
<td headers="top_half" class="gt_row gt_left">5.7%</td>
<td headers="relegation" class="gt_row gt_left">1.7%</td></tr>
    <tr><td headers="midName" class="gt_row gt_left">Leeds Utd</td>
<td headers="champion" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_four" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_five" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_six" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_half" class="gt_row gt_left">2.2%</td>
<td headers="relegation" class="gt_row gt_left">2.3%</td></tr>
    <tr><td headers="midName" class="gt_row gt_left">Tottenham</td>
<td headers="champion" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_four" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_five" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_six" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_half" class="gt_row gt_left">0.8%</td>
<td headers="relegation" class="gt_row gt_left">6.7%</td></tr>
    <tr><td headers="midName" class="gt_row gt_left">West Ham</td>
<td headers="champion" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_four" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_five" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_six" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_half" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="relegation" class="gt_row gt_left">88.6%</td></tr>
    <tr><td headers="midName" class="gt_row gt_left">Burnley</td>
<td headers="champion" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_four" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_five" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_six" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_half" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="relegation" class="gt_row gt_left">&gt; 99.9%</td></tr>
    <tr><td headers="midName" class="gt_row gt_left">Wolves</td>
<td headers="champion" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_four" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_five" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_six" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_half" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="relegation" class="gt_row gt_left">&gt; 99.9%</td></tr>
  </tbody>
  &#10;</table>
</div>

<br/>

### Predictions with a shorter memory

**(Based upon performances over the last 19 games, be that this season
or last season)**

<div id="rxdaakvvyc" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#rxdaakvvyc table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
&#10;#rxdaakvvyc thead, #rxdaakvvyc tbody, #rxdaakvvyc tfoot, #rxdaakvvyc tr, #rxdaakvvyc td, #rxdaakvvyc th {
  border-style: none;
}
&#10;#rxdaakvvyc p {
  margin: 0;
  padding: 0;
}
&#10;#rxdaakvvyc .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 16px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: auto;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}
&#10;#rxdaakvvyc .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}
&#10;#rxdaakvvyc .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}
&#10;#rxdaakvvyc .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}
&#10;#rxdaakvvyc .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#rxdaakvvyc .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#rxdaakvvyc .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}
&#10;#rxdaakvvyc .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}
&#10;#rxdaakvvyc .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: normal;
  text-transform: inherit;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}
&#10;#rxdaakvvyc .gt_column_spanner_outer:first-child {
  padding-left: 0;
}
&#10;#rxdaakvvyc .gt_column_spanner_outer:last-child {
  padding-right: 0;
}
&#10;#rxdaakvvyc .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}
&#10;#rxdaakvvyc .gt_spanner_row {
  border-bottom-style: hidden;
}
&#10;#rxdaakvvyc .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  text-align: left;
}
&#10;#rxdaakvvyc .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}
&#10;#rxdaakvvyc .gt_from_md > :first-child {
  margin-top: 0;
}
&#10;#rxdaakvvyc .gt_from_md > :last-child {
  margin-bottom: 0;
}
&#10;#rxdaakvvyc .gt_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}
&#10;#rxdaakvvyc .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#rxdaakvvyc .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}
&#10;#rxdaakvvyc .gt_row_group_first td {
  border-top-width: 2px;
}
&#10;#rxdaakvvyc .gt_row_group_first th {
  border-top-width: 2px;
}
&#10;#rxdaakvvyc .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#rxdaakvvyc .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}
&#10;#rxdaakvvyc .gt_first_summary_row.thick {
  border-top-width: 2px;
}
&#10;#rxdaakvvyc .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#rxdaakvvyc .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#rxdaakvvyc .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}
&#10;#rxdaakvvyc .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}
&#10;#rxdaakvvyc .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}
&#10;#rxdaakvvyc .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#rxdaakvvyc .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#rxdaakvvyc .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#rxdaakvvyc .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}
&#10;#rxdaakvvyc .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#rxdaakvvyc .gt_left {
  text-align: left;
}
&#10;#rxdaakvvyc .gt_center {
  text-align: center;
}
&#10;#rxdaakvvyc .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}
&#10;#rxdaakvvyc .gt_font_normal {
  font-weight: normal;
}
&#10;#rxdaakvvyc .gt_font_bold {
  font-weight: bold;
}
&#10;#rxdaakvvyc .gt_font_italic {
  font-style: italic;
}
&#10;#rxdaakvvyc .gt_super {
  font-size: 65%;
}
&#10;#rxdaakvvyc .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}
&#10;#rxdaakvvyc .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}
&#10;#rxdaakvvyc .gt_indent_1 {
  text-indent: 5px;
}
&#10;#rxdaakvvyc .gt_indent_2 {
  text-indent: 10px;
}
&#10;#rxdaakvvyc .gt_indent_3 {
  text-indent: 15px;
}
&#10;#rxdaakvvyc .gt_indent_4 {
  text-indent: 20px;
}
&#10;#rxdaakvvyc .gt_indent_5 {
  text-indent: 25px;
}
&#10;#rxdaakvvyc .katex-display {
  display: inline-flex !important;
  margin-bottom: 0.75em !important;
}
&#10;#rxdaakvvyc div.Reactable > div.rt-table > div.rt-thead > div.rt-tr.rt-tr-group-header > div.rt-th-group:after {
  height: 0px !important;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="midName">midName</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="champion">champion</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="top_four">top_four</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="top_five">top_five</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="top_six">top_six</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="top_half">top_half</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="relegation">relegation</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="midName" class="gt_row gt_left">Arsenal</td>
<td headers="champion" class="gt_row gt_left">87.2%</td>
<td headers="top_four" class="gt_row gt_left">&gt; 99.9%</td>
<td headers="top_five" class="gt_row gt_left">&gt; 99.9%</td>
<td headers="top_six" class="gt_row gt_left">&gt; 99.9%</td>
<td headers="top_half" class="gt_row gt_left">&gt; 99.9%</td>
<td headers="relegation" class="gt_row gt_left">&lt; 0.1%</td></tr>
    <tr><td headers="midName" class="gt_row gt_left">Aston Villa</td>
<td headers="champion" class="gt_row gt_left">7.5%</td>
<td headers="top_four" class="gt_row gt_left">&gt; 99.9%</td>
<td headers="top_five" class="gt_row gt_left">&gt; 99.9%</td>
<td headers="top_six" class="gt_row gt_left">&gt; 99.9%</td>
<td headers="top_half" class="gt_row gt_left">&gt; 99.9%</td>
<td headers="relegation" class="gt_row gt_left">&lt; 0.1%</td></tr>
    <tr><td headers="midName" class="gt_row gt_left">Man City</td>
<td headers="champion" class="gt_row gt_left">5.3%</td>
<td headers="top_four" class="gt_row gt_left">99.8%</td>
<td headers="top_five" class="gt_row gt_left">&gt; 99.9%</td>
<td headers="top_six" class="gt_row gt_left">&gt; 99.9%</td>
<td headers="top_half" class="gt_row gt_left">&gt; 99.9%</td>
<td headers="relegation" class="gt_row gt_left">&lt; 0.1%</td></tr>
    <tr><td headers="midName" class="gt_row gt_left">Chelsea</td>
<td headers="champion" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_four" class="gt_row gt_left">51.5%</td>
<td headers="top_five" class="gt_row gt_left">81.9%</td>
<td headers="top_six" class="gt_row gt_left">92.0%</td>
<td headers="top_half" class="gt_row gt_left">99.7%</td>
<td headers="relegation" class="gt_row gt_left">&lt; 0.1%</td></tr>
    <tr><td headers="midName" class="gt_row gt_left">Man Utd</td>
<td headers="champion" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_four" class="gt_row gt_left">39.4%</td>
<td headers="top_five" class="gt_row gt_left">75.8%</td>
<td headers="top_six" class="gt_row gt_left">88.5%</td>
<td headers="top_half" class="gt_row gt_left">99.4%</td>
<td headers="relegation" class="gt_row gt_left">&lt; 0.1%</td></tr>
    <tr><td headers="midName" class="gt_row gt_left">Liverpool</td>
<td headers="champion" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_four" class="gt_row gt_left">3.4%</td>
<td headers="top_five" class="gt_row gt_left">13.4%</td>
<td headers="top_six" class="gt_row gt_left">33.9%</td>
<td headers="top_half" class="gt_row gt_left">86.8%</td>
<td headers="relegation" class="gt_row gt_left">&lt; 0.1%</td></tr>
    <tr><td headers="midName" class="gt_row gt_left">Brentford</td>
<td headers="champion" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_four" class="gt_row gt_left">2.4%</td>
<td headers="top_five" class="gt_row gt_left">11.0%</td>
<td headers="top_six" class="gt_row gt_left">29.9%</td>
<td headers="top_half" class="gt_row gt_left">85.4%</td>
<td headers="relegation" class="gt_row gt_left">&lt; 0.1%</td></tr>
    <tr><td headers="midName" class="gt_row gt_left">Sunderland</td>
<td headers="champion" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_four" class="gt_row gt_left">1.8%</td>
<td headers="top_five" class="gt_row gt_left">7.7%</td>
<td headers="top_six" class="gt_row gt_left">20.6%</td>
<td headers="top_half" class="gt_row gt_left">76.6%</td>
<td headers="relegation" class="gt_row gt_left">&lt; 0.1%</td></tr>
    <tr><td headers="midName" class="gt_row gt_left">Everton</td>
<td headers="champion" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_four" class="gt_row gt_left">0.9%</td>
<td headers="top_five" class="gt_row gt_left">4.3%</td>
<td headers="top_six" class="gt_row gt_left">12.9%</td>
<td headers="top_half" class="gt_row gt_left">62.9%</td>
<td headers="relegation" class="gt_row gt_left">&lt; 0.1%</td></tr>
    <tr><td headers="midName" class="gt_row gt_left">Fulham</td>
<td headers="champion" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_four" class="gt_row gt_left">0.3%</td>
<td headers="top_five" class="gt_row gt_left">2.1%</td>
<td headers="top_six" class="gt_row gt_left">8.2%</td>
<td headers="top_half" class="gt_row gt_left">57.9%</td>
<td headers="relegation" class="gt_row gt_left">&lt; 0.1%</td></tr>
    <tr><td headers="midName" class="gt_row gt_left">Bournemouth</td>
<td headers="champion" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_four" class="gt_row gt_left">0.3%</td>
<td headers="top_five" class="gt_row gt_left">2.0%</td>
<td headers="top_six" class="gt_row gt_left">6.8%</td>
<td headers="top_half" class="gt_row gt_left">48.4%</td>
<td headers="relegation" class="gt_row gt_left">&lt; 0.1%</td></tr>
    <tr><td headers="midName" class="gt_row gt_left">Newcastle</td>
<td headers="champion" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_four" class="gt_row gt_left">0.2%</td>
<td headers="top_five" class="gt_row gt_left">1.4%</td>
<td headers="top_six" class="gt_row gt_left">6.1%</td>
<td headers="top_half" class="gt_row gt_left">57.3%</td>
<td headers="relegation" class="gt_row gt_left">&lt; 0.1%</td></tr>
    <tr><td headers="midName" class="gt_row gt_left">Brighton</td>
<td headers="champion" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_four" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_five" class="gt_row gt_left">0.2%</td>
<td headers="top_six" class="gt_row gt_left">0.9%</td>
<td headers="top_half" class="gt_row gt_left">17.1%</td>
<td headers="relegation" class="gt_row gt_left">&lt; 0.1%</td></tr>
    <tr><td headers="midName" class="gt_row gt_left">Crystal Palace</td>
<td headers="champion" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_four" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_five" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_six" class="gt_row gt_left">0.1%</td>
<td headers="top_half" class="gt_row gt_left">4.7%</td>
<td headers="relegation" class="gt_row gt_left">0.2%</td></tr>
    <tr><td headers="midName" class="gt_row gt_left">Notts Forest</td>
<td headers="champion" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_four" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_five" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_six" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_half" class="gt_row gt_left">2.3%</td>
<td headers="relegation" class="gt_row gt_left">0.8%</td></tr>
    <tr><td headers="midName" class="gt_row gt_left">Tottenham</td>
<td headers="champion" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_four" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_five" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_six" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_half" class="gt_row gt_left">1.1%</td>
<td headers="relegation" class="gt_row gt_left">1.0%</td></tr>
    <tr><td headers="midName" class="gt_row gt_left">Leeds Utd</td>
<td headers="champion" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_four" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_five" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_six" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_half" class="gt_row gt_left">0.4%</td>
<td headers="relegation" class="gt_row gt_left">1.3%</td></tr>
    <tr><td headers="midName" class="gt_row gt_left">West Ham</td>
<td headers="champion" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_four" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_five" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_six" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_half" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="relegation" class="gt_row gt_left">96.8%</td></tr>
    <tr><td headers="midName" class="gt_row gt_left">Burnley</td>
<td headers="champion" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_four" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_five" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_six" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_half" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="relegation" class="gt_row gt_left">&gt; 99.9%</td></tr>
    <tr><td headers="midName" class="gt_row gt_left">Wolves</td>
<td headers="champion" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_four" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_five" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_six" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="top_half" class="gt_row gt_left">&lt; 0.1%</td>
<td headers="relegation" class="gt_row gt_left">&gt; 99.9%</td></tr>
  </tbody>
  &#10;</table>
</div>

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
