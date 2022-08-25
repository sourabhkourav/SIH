<%-- 
    Document   : GraphData
    Created on : Aug 25, 2022, 6:11:19 PM
    Author     : hmayw
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import='DAOClasses.StudentDAO'%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<style>
  #chartdiv {
    width: 100%;
    height: 500px;
  }
</style>

<!-- Resources -->
<script src="https://cdn.amcharts.com/lib/5/index.js"></script>
<script src="https://cdn.amcharts.com/lib/5/xy.js"></script>
<script src="https://cdn.amcharts.com/lib/5/themes/Animated.js"></script>

<!-- Chart code -->
<script>
  am5.ready(function () {
    // Create root element
    // https://www.amcharts.com/docs/v5/getting-started/#Root_element
    var root = am5.Root.new("chartdiv");

    // Set themes
    // https://www.amcharts.com/docs/v5/concepts/themes/
    root.setThemes([am5themes_Animated.new(root)]);

    // Create chart
    // https://www.amcharts.com/docs/v5/charts/xy-chart/
    var chart = root.container.children.push(
      am5xy.XYChart.new(root, {
        panX: false,
        panY: false,
        wheelX: "panX",
        wheelY: "zoomX",
        layout: root.verticalLayout,
      })
    );

    // Add legend
    // https://www.amcharts.com/docs/v5/charts/xy-chart/legend-xy-series/
    var legend = chart.children.push(
      am5.Legend.new(root, {
        centerX: am5.p50,
        x: am5.p50,
      })
    );
  
    // Data
    <%  ServletContext sc=request.getServletContext(); %>
    var data = [
      {
        year: "2017",
       <%  
            int [] arr1= StudentDAO.getUnAndEmployedStudentYearWise((Connection)sc.getAttribute("conn"),"2017"); 
         %>
        income: <%= arr1[0] %>,
        expenses:<%= arr1[1] %>,
      },
      {
        year: "2018",
//        <%  
            int [] arr2= StudentDAO.getUnAndEmployedStudentYearWise((Connection)sc.getAttribute("conn"),"2018"); 
         %>
       income: <%= arr2[0] %>,
        expenses:<%= arr2[1] %>,
      },
      {
        year: "2019",
        <% int [] arr3= StudentDAO.getUnAndEmployedStudentYearWise((Connection)sc.getAttribute("conn"),"2019");%> 
       income: <%= arr3[0] %>,
        expenses:<%= arr3[1] %>,
      },
      {
        year: "2020",
        <% int [] arr4= StudentDAO.getUnAndEmployedStudentYearWise((Connection)sc.getAttribute("conn"),"2020"); %>
        income: <%= arr4[0] %>,
        expenses:<%= arr4[1] %>,
      },
      {
        year: "2021",
       <%  int [] arr5= StudentDAO.getUnAndEmployedStudentYearWise((Connection)sc.getAttribute("conn"),"2021"); %> 
       income: <%= arr5[0] %>,
        expenses:<%= arr5[1] %>,
      },
      {
        year: "2022",
        <%  
          
            int [] arr6= StudentDAO.getUnAndEmployedStudentYearWise((Connection)sc.getAttribute("conn"),"2022"); 
         %>
        income: <%= arr6[0] %>,
        expenses:<%= arr6[1] %>,
      }
    ];

    // Create axes
    // https://www.amcharts.com/docs/v5/charts/xy-chart/axes/
    var yAxis = chart.yAxes.push(
      am5xy.CategoryAxis.new(root, {
        categoryField: "year",
        renderer: am5xy.AxisRendererY.new(root, {
          inversed: true,
          cellStartLocation: 0.1,
          cellEndLocation: 0.9,
        }),
      })
    );

    yAxis.data.setAll(data);

    var xAxis = chart.xAxes.push(
      am5xy.ValueAxis.new(root, {
        renderer: am5xy.AxisRendererX.new(root, {}),
        min: 0,
      })
    );

    // Add series
    // https://www.amcharts.com/docs/v5/charts/xy-chart/series/
    function createSeries(field, name) {
      var series = chart.series.push(
        am5xy.ColumnSeries.new(root, {
          name: name,
          xAxis: xAxis,
          yAxis: yAxis,
          valueXField: field,
          categoryYField: "year",
          sequencedInterpolation: true,
          tooltip: am5.Tooltip.new(root, {
            pointerOrientation: "horizontal",
            labelText: "[bold]{name}[/]\n{categoryY}: {valueX}",
          }),
        })
      );

      series.columns.template.setAll({
        height: am5.p100,
      });

      series.bullets.push(function () {
        return am5.Bullet.new(root, {
          locationX: 1,
          locationY: 0.5,
          sprite: am5.Label.new(root, {
            centerY: am5.p50,
            text: "{valueX}",
            populateText: true,
          }),
        });
      });

      series.bullets.push(function () {
        return am5.Bullet.new(root, {
          locationX: 1,
          locationY: 0.5,
          sprite: am5.Label.new(root, {
            centerX: am5.p100,
            centerY: am5.p50,
            text: "{name}",
            fill: am5.color(0xffffff),
            populateText: true,
          }),
        });
      });

      series.data.setAll(data);
      series.appear();

      return series;
    }

    createSeries("income", "Employeed");
    createSeries("expenses", "UnEmployeed");

    // Add legend
    // https://www.amcharts.com/docs/v5/charts/xy-chart/legend-xy-series/
    var legend = chart.children.push(
      am5.Legend.new(root, {
        centerX: am5.p50,
        x: am5.p50,
      })
    );

    legend.data.setAll(chart.series.values);

    // Add cursor
    // https://www.amcharts.com/docs/v5/charts/xy-chart/cursor/
    var cursor = chart.set(
      "cursor",
      am5xy.XYCursor.new(root, {
        behavior: "zoomY",
      })
    );
    cursor.lineY.set("forceHidden", true);
    cursor.lineX.set("forceHidden", true);

    // Make stuff animate on load
    // https://www.amcharts.com/docs/v5/concepts/animations/
    chart.appear(1000, 100);
  }); // end am5.ready()
</script>

<!-- HTML -->
<div id="chartdiv"></div>
