@header_background_color: #333;
@header_text_color: #FDFDFD;
@alternate_row_background_color: #DDD;

@table_width: 750px;
@table_body_height: 300px;
@column_one_width: 200px;
@column_two_width: 200px;
@column_three_width: 350px;

.fixed_headers {
  width: @table_width;
  table-layout: fixed;
  border-collapse: collapse;
  
  th { text-decoration: underline; }
  th, td {
    padding: 5px;
    text-align: center;
  }
  
  td:nth-child(1), th:nth-child(1) { min-width: @column_one_width; }
  td:nth-child(2), th:nth-child(2) { min-width: @column_two_width; }
  td:nth-child(3), th:nth-child(3) { width: @column_three_width; }

  thead {
    background-color: @header_background_color;
    color: @header_text_color;
    tr {
      display: block;
      position: relative;
    }
  }
  tbody {
    display: block;
    overflow: auto;
  
    height: @table_body_height;
    tr:nth-child(even) {
      background-color: @alternate_row_background_color;
    }
  }
}

.old_ie_wrapper {
  height: @table_body_height;
  width: @table_width;
  overflow-x: hidden;
  overflow-y: auto;
  tbody { height: auto; }
}