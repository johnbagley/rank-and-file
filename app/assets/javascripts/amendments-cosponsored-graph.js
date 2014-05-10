$(function () {
  var memberName = $('[data-role=member-name]').text();
  var amendmentsCosponsored = ($('#amendments-cosponsored-graph').data('amendments-cosponsored'));

  if (amendmentsCosponsored.length > 3) {
    Number(amendmentsCosponsored.replace(/\,/g,''));
  }

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
          data: [amendmentsCosponsored]
      },
      {
        name: 'Average',
          data: [493]
      }
    ]
  });
})
