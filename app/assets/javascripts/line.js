$(function () {
  'use strict';
  window.Line = {
    getData: function () {
      $.getJSON($(location).attr('href')+'.json').then(function (data) {
        var dateStart = moment().subtract({ months: 11 });
        var dateEnd = moment().add({ days: 1 });
        var timeValues = [];

        while (dateEnd > dateStart) {
          timeValues.push(dateStart.format('MMM YYYY'));
          dateStart.add(1, 'month');
        }

        var totalsData = [];
        $.each(data['data'], function(_key, value) {
          totalsData.push(parseFloat(value))
        });

        var options = {};
        options['categories'] = timeValues;
        options['series-name'] = 'Kites count';

        Chart.generateChart('Kite Line', {data: totalsData}, 'Kites by month', 'line', options);
      });
    }
  };
});
