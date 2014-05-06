$(function () {
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
    series: [{
      name: "<%= @member.full_name %>",
        data: [122]
    }, {
      name: 'Average',
        data: [80]
    }]
  });
})
