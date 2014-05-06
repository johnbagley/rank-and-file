$(function () {
  var memberName = $('[data-role=member-name]').text();

  $('#bills-sponsored-graph').highcharts({
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
      text: 'Bills Sponsored'
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
          data: [22]
      },
      {
      name: 'Average',
        data: [5]
      }
    ]
  });
})
