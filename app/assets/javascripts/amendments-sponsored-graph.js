$(function () {
  var memberName = $('[data-role=member-name]').text();
  var amendmentsSponsored = ($('#amendments-sponsored-graph').data('amendments-sponsored'));

  if (amendmentsSponsored.length > 3) {
    amendmentsSponsored = Number(amendmentsSponsored.replace(/\,/g,''));
  }

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
          data: [amendmentsSponsored]
      },
      {
        name: 'Average',
          data: [78]
      }
    ]
  });
})
