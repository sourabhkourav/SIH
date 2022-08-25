<%-- 
    Document   : UniversityUpdate
    Created on : Aug 25, 2022, 6:58:42 PM
    Author     : hmayw
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Institute details</title>
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
                    <!-- <h2>J</h2> -->
                </div>
                <h4>Admin<span>Penal</span></h4>
                
            </div>
            <div id="leftHalf">
                <div id="list">
                    <div class="details">
                        <i id="dash" class="ri-dashboard-fill"></i>
                        <a href="AdminDashboard.jsp"><h5 id="dash" >Home</h5></a>
                        
                    </div>
                    <div class="details">
                        <i id="dash" class="ri-dashboard-fill"></i>
                        <a href="UniversityInfo.jsp"><h5 id="dash" >Institute Info</h5></a>
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
                <div id="downList">
                    <img src="https://ouch-cdn2.icons8.com/i60mWXyYo0NUDg6fCdoCvfC2JLhy2qV4abxwMPXx6hQ/rs:fit:256:256/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvNDE5/Lzg3YTNlOTE3LWNl/ZjAtNDg5OC04NDhi/LWE4ODk5ODMwMWZl/ZC5zdmc.png" alt="">
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
                <table>
                    <tr>
                        <th>Id</th>
                        <td><input type="id" placeholder="Enter id" name="id"> </td>
                    </tr>
                    <tr>
                        <th>Name</th>
                        <td><input type="text" placeholder="Enter your Institute name " name="Name"> </td>
                    </tr>
                    <tr>
                        <th>Address</th>
                        <td><input type="text" placeholder="Enter Address" name="Address"></td>
                     </tr>
                     <tr>
                        <th>Postal code</th>
                        <td><input type="text" placeholder="Enter Postal code" name="Postal code"></td>
                     </tr>
                     <tr>
                        <th>Region</th>
                        <td><input type="text" placeholder="Enter Region" name="Region"></td>
                     </tr>
                     <tr>
                        <th>State</th>
                        <td><input type="text" placeholder="Enter State" name="State"></td>
                     </tr>
                     <tr>
                        <th>City</th>
                        <td><input type="text" placeholder="Enter City" name="City"></td>
                     </tr>
                     <tr>
                        <th>Institute Type</th>
                        <td><input type="text" placeholder="Enter Unyversity type" name="type"></td>
                    </tr>
                    <tr>
                    <th>Website</th>
                        <td><input type="text" placeholder="Enter Website" name="Website"></td>
                    </tr>
                    <tr>
                        <th>Contact No.</th>
                        <td><input type="text" placeholder="Enter contect No." name="contect No."></td>
                    </tr>
                    <tr>
                        <th>Email Id</th>
                        <td><input type="email" placeholder="Enter Email" name="email"></td>
                    </tr>        
                </table></div>
                <div class="edit"><br>
                    <a href="Unyversity_detail.html"><button>Save</button></a> 
                </div>
                <!-- <div id="about">
                    <a href="#">About US</a>
                    <a href="#"> Help</a>
                </div> -->

            </div>
        </div>
    </div>
</body>
</html>
