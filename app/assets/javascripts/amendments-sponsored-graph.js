$(function () {
  var memberName = $('[data-role=member-name]').text();

  $('#amendments-sponsored-graph').highcharts({
    chart: {
      type: 'column'
    },
    credits: {
      enabled: false
    },
    tooltip: {
      enabled: false
      },
    title: {
      text: 'Amendments Sponsored'
    },
    xAxis: {
      categories: ['']
    },
    yAxis: {
      title: {
        text: ''
      }
    },
    series: [
      {
        name: memberName,
          data: [50]
      },
      {
        name: 'Average',
          data: [78]
      }
    ]
  });
})
