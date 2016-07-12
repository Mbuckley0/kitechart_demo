$(function () {
  'use strict';
  window.Kites = {
    getData: function () {
      var chartType = $('#kite_chart_type').val().toLowerCase();
      var firstColumn = $('#kite_first_column').val();
      var secondColumn = $('#kite_second_column').val();
      var thirdColumn = $('#kite_third_column').val();

      $.getJSON($(location).attr('href')+'kites.json', { first_column: firstColumn, second_column: secondColumn, third_column: thirdColumn }).then(function (data) {
        Chart.generateChart('Kites By Color', 'Count', chartType, data['colors'], data['size'], data['material']);
      });
    }
  };

  $('#kite_chart_type').on("change", Kites.getData);
  $('#kite_first_column').on("change", Kites.getData);
  $('#kite_second_column').on("change", Kites.getData);
  $('#kite_third_column').on("change", Kites.getData);
});
