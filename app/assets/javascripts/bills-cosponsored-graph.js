$(function () {
  var memberName = $('[data-role=member-name]').text();
  var billsCosponsored = ($('#bills-cosponsored-graph').data('bills-cosponsored'));
  var billsCosponsoredReplace = Number(billsCosponsored.replace(/\,/g,''));

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
        data: [billsCosponsoredReplace]
      },
      {
        name: 'Average',
        data: [80]
      }
    ]
  });
});
