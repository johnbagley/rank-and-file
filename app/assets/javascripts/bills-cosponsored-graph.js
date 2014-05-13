$(function () {
  var memberName = $('[data-role=member-name]').text();
  var $graph = $('#bills-cosponsored-graph');
  var billsCosponsored = $graph.data('bills-cosponsored');
  var averageBillsCosponsored = $graph.data('average-bills-cosponsored');

  if (billsCosponsored.length > 3) {
    Number(billsCosponsored.replace(/\,/g,''));
  }

  if (averageBillsCosponsored.length > 3) {
    Number(averageBillsCosponsored.replace(/\,/g,''));
  }

  $('#bills-cosponsored-graph').highcharts({
    chart: {
      type: 'column'
    },
    credits: {
      enabled: false
    },
    tooltip: {
      enabled: true
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
          data: [billsCosponsored]
      },
      {
        name: 'Average',
        data: [averageBillsCosponsored]
      }
    ]
  });
});
