<%-- 
    Document   : UniversityInfo
    Created on : Aug 25, 2022, 6:57:51 PM
    Author     : hmayw
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AICTE details</title>
    <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
    <link rel="stylesheet" href="deshboard.css">
    <link rel="stylesheet" href="studentdashboard.css">

</head>
<body>
    <div id="bg">
        <div id="left">
            <div id="logo">
                <div id = "smaldiv">
                    <img src="logo.jpg" alt="">
                    <!-- h2>AICTE</h2>< -->
                </div>
                <h4>Admin <span>Penal</span></h4>
                
            </div>
            <div id="leftHalf">
                <div id="list">
                    <div class="details">
                        <i id="dash" class="ri-dashboard-fill"></i>
                        <a href="AdminDashboard.jsp"><h5 id="dash" >Home</h5></a>
                        
                    </div>
                    <div class="details">
                        <i id="dash" class="ri-dashboard-fill"></i>
                        <a href="UniversityInfo.jsp"><h5 id="dash" >Institute detail</h5></a>
                        
                    </div>
                    <div class="details">
                        <i id="dash" class="ri-dashboard-fill"></i>
                        <a href="UniversityUpdate.jsp"><h5 id="dash" >Add Institute detail</h5></a>
                        
                    </div>
                    <div class="details">
                        <i id="dash" class="ri-dashboard-fill"></i>
                        <a href="AllStudents.jsp"><h5 id="dash" >Student detail</h5></a>
                        
                    </div>
                    
                </div>
            </div>
        </div>
        <div id="center">
            <nav>
                <div id="one">
                    <i class="ri-search-line"></i>
                    <input type="text" placeholder="Search">
                </div>
                <div id="two">
                    <i class="ri-notification-2-fill"></i>
                </div>
            </nav>
            <div id="detailList">
                <h3>Institute Information</h3>
            </div>
            <div><br>
                <table style="width:100%">
                    <tr>
                      <th>Unyversity Name</th>
                      <th>Id</th>
                      <th>Address</th>
                    </tr>
                    <tr>
                      <td>RGPV</td>
                      <td>@123</td>
                      <td>Bhopal</td>
                    </tr>
                    <tr>
                      <td>BU</td>
                      <td>@7689</td>
                      <td>Bhopal (M.P.)</td>
                    </tr>
                  </table>  
               </table>
            </div>
                <div class="edit"><br>
                    <a href="#"><button>Delete</button></a>
                    <!-- <a href="Unyversity_detail update.html"><button>Edit</button></a> -->
                <!-- <div id="about">
                    <a href="#">About US</a>
                    <a href="#"> Help</a>
                </div> -->

            </div>
        </div>
    </div>
</body>
</html>
