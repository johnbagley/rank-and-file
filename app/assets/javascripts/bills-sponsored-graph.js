$(function () {
  var memberName = $('[data-role=member-name]').text();
  var $graph = $('#bills-sponsored-graph');
  var billsSponsored = $graph.data('bills-sponsored');
  var averageBillsSponsored = $graph.data('average-bills-sponsored');

  if (billsSponsored.length > 3) {
    Number(billsSponsored.replace(/\,/g,''));
  }

  if (averageBillsSponsored.length > 3) {
    Number(averageBillsSponsored.replace(/\,/g,''));
  }

  $('#bills-sponsored-graph').highcharts({
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
          data: [billsSponsored]
      },
      {
      name: 'Average',
        data: [averageBillsSponsored]
      }
    ]
  });
})
