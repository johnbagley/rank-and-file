$(function () {
  var memberName = $('[data-role=member-name]').text();
  var $graph = $('#amendments-cosponsored-graph');
  var amendmentsCosponsored = $graph.data('amendments-cosponsored');
  var averageAmendmentsCosponsored = $graph.data('average-amendments-cosponsored');


  if (amendmentsCosponsored.length > 3) {
    Number(amendmentsCosponsored.replace(/\,/g,''));
  }

  if (averageAmendmentsCosponsored.length > 3) {
    Number(averageAmendmentsCosponsored.replace(/\,/g,''));
  }

  $('#amendments-cosponsored-graph').highcharts({
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
      enabled: true
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
          data: [averageAmendmentsCosponsored]
      }
    ]
  });
})
