$(function () {
  var memberName = $('[data-role=member-name]').text();
  var $graph = $('#amendments-sponsored-graph');
  var amendmentsSponsored = $graph.data('amendments-sponsored');
  var averageAmendmentsSponsored = $graph.data('average-amendments-sponsored');

  if (amendmentsSponsored.length > 3) {
    amendmentsSponsored = Number(amendmentsSponsored.replace(/\,/g,''));
  }

  if (averageAmendmentsSponsored.length > 3) {
    averageAmendmentsSponsored = Number(averageAmendmentsSponsored.replace(/\,/g,''));
  }

  $('#amendments-sponsored-graph').highcharts({
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
          data: [amendmentsSponsored]
      },
      {
        name: 'Average',
          data: [averageAmendmentsSponsored]
      }
    ]
  });
})
