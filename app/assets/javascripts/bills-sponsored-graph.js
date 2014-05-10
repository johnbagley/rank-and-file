$(function () {
  var memberName = $('[data-role=member-name]').text();
  var billsSponsored = ($('#bills-sponsored-graph').data('bills-sponsored'));

  if (billsSponsored.length > 3) {
    Number(billsSponsored.replace(/\,/g,''));
  }

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
          data: [billsSponsored]
      },
      {
      name: 'Average',
        data: [225]
      }
    ]
  });
})
