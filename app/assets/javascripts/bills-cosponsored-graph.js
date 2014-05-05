$(function () {
  var memberName = $('[data-role=member-name]').text();

  $('#bills-cosponsored-graph').highcharts({
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
      text: 'Bills Co-Sponsored'
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
        data: [122]
      },
      {
        name: 'Average',
        data: [80]
      }
    ]
  });
});
