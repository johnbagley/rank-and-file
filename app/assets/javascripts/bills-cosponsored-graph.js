$(function () {
  var memberName = $('[data-role=member-name]').text();
  var $graph = $('#bills-cosponsored-graph');
  var billsCosponsored = $graph.data('bills-cosponsored');
  var averageBillsCosponsored = $graph.data('average-bills-cosponsored');

  if (billsCosponsored.length > 3) {
    billsCosponsored = Number(billsCosponsored.replace(/\,/g,''));
  }

  if (averageBillsCosponsored.length > 3) {
    averageBillsCosponsored = Number(averageBillsCosponsored.replace(/\,/g,''));
  }

  $('#bills-cosponsored-graph').highcharts({
    chart: {
      type: 'column'
    },
    plotOptions: {
        column: {
            dataLabels: {
                enabled: true
            }
        }
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
          data: [billsCosponsored]
      },
      {
        name: 'Average',
        data: [averageBillsCosponsored]
      }
    ]
  });
});
