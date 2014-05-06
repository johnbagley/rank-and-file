$(function () {
  var memberName = $('[data-role=member-name]').text();
  $('#amendments-cosponsored-graph').highcharts({

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
      text: 'Amendments Co-Sponsored'
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
          data: [232]
      },
      {
        name: 'Average',
          data: [493]
      }
    ]
  });
})
