
<!-- README.md is generated from README.Rmd. Please edit that file -->

## Predicting this year’s Premier League

This repo uses a simplified version of [David Firth’s
methodology](https://github.com/DavidFirth/alt3code) to predict the
outcome of the Premier League for this season. Here are those
predictions:

<div id="ixuyyqzgbp" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
<style>#ixuyyqzgbp table {
  font-family: system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}
&#10;#ixuyyqzgbp thead, #ixuyyqzgbp tbody, #ixuyyqzgbp tfoot, #ixuyyqzgbp tr, #ixuyyqzgbp td, #ixuyyqzgbp th {
  border-style: none;
}
&#10;#ixuyyqzgbp p {
  margin: 0;
  padding: 0;
}
&#10;#ixuyyqzgbp .gt_table {
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
&#10;#ixuyyqzgbp .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}
&#10;#ixuyyqzgbp .gt_title {
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
&#10;#ixuyyqzgbp .gt_subtitle {
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
&#10;#ixuyyqzgbp .gt_heading {
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
&#10;#ixuyyqzgbp .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#ixuyyqzgbp .gt_col_headings {
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
&#10;#ixuyyqzgbp .gt_col_heading {
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
&#10;#ixuyyqzgbp .gt_column_spanner_outer {
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
&#10;#ixuyyqzgbp .gt_column_spanner_outer:first-child {
  padding-left: 0;
}
&#10;#ixuyyqzgbp .gt_column_spanner_outer:last-child {
  padding-right: 0;
}
&#10;#ixuyyqzgbp .gt_column_spanner {
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
&#10;#ixuyyqzgbp .gt_spanner_row {
  border-bottom-style: hidden;
}
&#10;#ixuyyqzgbp .gt_group_heading {
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
&#10;#ixuyyqzgbp .gt_empty_group_heading {
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
&#10;#ixuyyqzgbp .gt_from_md > :first-child {
  margin-top: 0;
}
&#10;#ixuyyqzgbp .gt_from_md > :last-child {
  margin-bottom: 0;
}
&#10;#ixuyyqzgbp .gt_row {
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
&#10;#ixuyyqzgbp .gt_stub {
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
&#10;#ixuyyqzgbp .gt_stub_row_group {
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
&#10;#ixuyyqzgbp .gt_row_group_first td {
  border-top-width: 2px;
}
&#10;#ixuyyqzgbp .gt_row_group_first th {
  border-top-width: 2px;
}
&#10;#ixuyyqzgbp .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#ixuyyqzgbp .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}
&#10;#ixuyyqzgbp .gt_first_summary_row.thick {
  border-top-width: 2px;
}
&#10;#ixuyyqzgbp .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#ixuyyqzgbp .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#ixuyyqzgbp .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}
&#10;#ixuyyqzgbp .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
}
&#10;#ixuyyqzgbp .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}
&#10;#ixuyyqzgbp .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}
&#10;#ixuyyqzgbp .gt_footnotes {
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
&#10;#ixuyyqzgbp .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#ixuyyqzgbp .gt_sourcenotes {
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
&#10;#ixuyyqzgbp .gt_sourcenote {
  font-size: 90%;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}
&#10;#ixuyyqzgbp .gt_left {
  text-align: left;
}
&#10;#ixuyyqzgbp .gt_center {
  text-align: center;
}
&#10;#ixuyyqzgbp .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}
&#10;#ixuyyqzgbp .gt_font_normal {
  font-weight: normal;
}
&#10;#ixuyyqzgbp .gt_font_bold {
  font-weight: bold;
}
&#10;#ixuyyqzgbp .gt_font_italic {
  font-style: italic;
}
&#10;#ixuyyqzgbp .gt_super {
  font-size: 65%;
}
&#10;#ixuyyqzgbp .gt_footnote_marks {
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
}
&#10;#ixuyyqzgbp .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}
&#10;#ixuyyqzgbp .gt_indent_1 {
  text-indent: 5px;
}
&#10;#ixuyyqzgbp .gt_indent_2 {
  text-indent: 10px;
}
&#10;#ixuyyqzgbp .gt_indent_3 {
  text-indent: 15px;
}
&#10;#ixuyyqzgbp .gt_indent_4 {
  text-indent: 20px;
}
&#10;#ixuyyqzgbp .gt_indent_5 {
  text-indent: 25px;
}
&#10;#ixuyyqzgbp .katex-display {
  display: inline-flex !important;
  margin-bottom: 0.75em !important;
}
&#10;#ixuyyqzgbp div.Reactable > div.rt-table > div.rt-thead > div.rt-tr.rt-tr-group-header > div.rt-th-group:after {
  height: 0px !important;
}
</style>
<table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="Team">Team</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Played">Played</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Exp_Points">Exp_Points</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td headers="Team" class="gt_row gt_left">LIV</td>
<td headers="Played" class="gt_row gt_right">38</td>
<td headers="Exp_Points" class="gt_row gt_right">87.65974</td></tr>
    <tr><td headers="Team" class="gt_row gt_left">ARS</td>
<td headers="Played" class="gt_row gt_right">38</td>
<td headers="Exp_Points" class="gt_row gt_right">80.25468</td></tr>
    <tr><td headers="Team" class="gt_row gt_left">MCI</td>
<td headers="Played" class="gt_row gt_right">38</td>
<td headers="Exp_Points" class="gt_row gt_right">71.73053</td></tr>
    <tr><td headers="Team" class="gt_row gt_left">CHE</td>
<td headers="Played" class="gt_row gt_right">38</td>
<td headers="Exp_Points" class="gt_row gt_right">66.51834</td></tr>
    <tr><td headers="Team" class="gt_row gt_left">NOT</td>
<td headers="Played" class="gt_row gt_right">38</td>
<td headers="Exp_Points" class="gt_row gt_right">65.06703</td></tr>
    <tr><td headers="Team" class="gt_row gt_left">NEW</td>
<td headers="Played" class="gt_row gt_right">38</td>
<td headers="Exp_Points" class="gt_row gt_right">64.22733</td></tr>
    <tr><td headers="Team" class="gt_row gt_left">AST</td>
<td headers="Played" class="gt_row gt_right">38</td>
<td headers="Exp_Points" class="gt_row gt_right">64.18524</td></tr>
    <tr><td headers="Team" class="gt_row gt_left">BOU</td>
<td headers="Played" class="gt_row gt_right">38</td>
<td headers="Exp_Points" class="gt_row gt_right">60.70798</td></tr>
    <tr><td headers="Team" class="gt_row gt_left">BRI</td>
<td headers="Played" class="gt_row gt_right">38</td>
<td headers="Exp_Points" class="gt_row gt_right">58.92557</td></tr>
    <tr><td headers="Team" class="gt_row gt_left">FUL</td>
<td headers="Played" class="gt_row gt_right">38</td>
<td headers="Exp_Points" class="gt_row gt_right">52.85656</td></tr>
    <tr><td headers="Team" class="gt_row gt_left">WHU</td>
<td headers="Played" class="gt_row gt_right">38</td>
<td headers="Exp_Points" class="gt_row gt_right">47.67239</td></tr>
    <tr><td headers="Team" class="gt_row gt_left">TOT</td>
<td headers="Played" class="gt_row gt_right">38</td>
<td headers="Exp_Points" class="gt_row gt_right">47.53885</td></tr>
    <tr><td headers="Team" class="gt_row gt_left">BRE</td>
<td headers="Played" class="gt_row gt_right">38</td>
<td headers="Exp_Points" class="gt_row gt_right">46.41414</td></tr>
    <tr><td headers="Team" class="gt_row gt_left">MUN</td>
<td headers="Played" class="gt_row gt_right">38</td>
<td headers="Exp_Points" class="gt_row gt_right">46.04186</td></tr>
    <tr><td headers="Team" class="gt_row gt_left">CPA</td>
<td headers="Played" class="gt_row gt_right">38</td>
<td headers="Exp_Points" class="gt_row gt_right">45.73726</td></tr>
    <tr><td headers="Team" class="gt_row gt_left">EVE</td>
<td headers="Played" class="gt_row gt_right">38</td>
<td headers="Exp_Points" class="gt_row gt_right">38.88060</td></tr>
    <tr><td headers="Team" class="gt_row gt_left">WOL</td>
<td headers="Played" class="gt_row gt_right">38</td>
<td headers="Exp_Points" class="gt_row gt_right">34.77922</td></tr>
    <tr><td headers="Team" class="gt_row gt_left">IPS</td>
<td headers="Played" class="gt_row gt_right">38</td>
<td headers="Exp_Points" class="gt_row gt_right">28.12831</td></tr>
    <tr><td headers="Team" class="gt_row gt_left">LEI</td>
<td headers="Played" class="gt_row gt_right">38</td>
<td headers="Exp_Points" class="gt_row gt_right">24.09435</td></tr>
    <tr><td headers="Team" class="gt_row gt_left">SOU</td>
<td headers="Played" class="gt_row gt_right">38</td>
<td headers="Exp_Points" class="gt_row gt_right">10.04308</td></tr>
  </tbody>
  &#10;  
</table>
</div>
