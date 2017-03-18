$(function () {
  'use strict';
  window.Timelines = {
    getData: function () {
      $.getJSON($(location).attr('href')+'.json').then(function (data) {
        var date = new Date(data['data'][0][1]);

        var options = {};
        options['categories'] = [date.toDateString()];

        Chart.generateChart('Kites Timeline', data, 'Timespan', 'timeline', options);
      });
    }
  };
});
