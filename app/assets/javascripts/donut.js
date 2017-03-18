$(function () {
  'use strict';
  window.Donut = {
    getData: function () {
      $.getJSON($(location).attr('href')+'.json').then(function (data) {
        Chart.generateChart('Kite Donut', data, 'Donut', 'donut');
      });
    }
  };
});
