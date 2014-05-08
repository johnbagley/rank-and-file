$(function () {
  var memberName = $('[data-role=member-name]').text();
  var billsCosponsored = ($('#bills-cosponsored-graph').data('bills-cosponsored'));

  if (billsCosponsored.length > 3) {
    billsCosponsored = Number(billsCosponsored.replace(/\,/g,''));
  }

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
          data: [billsCosponsored]
      },
      {
        name: 'Average',
        data: [80]
      }
    ]
  });
});
