<!-- <?php require "../login/loginheader.php"; ?> -->

<!DOCTYPE html>
<html>
<title>SMS - NITC</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="../css/w3.css">
<link rel="stylesheet" href="../css/lat.css">
<link rel="stylesheet" href="../css/font.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif;}
body, html {
    height: 100%;
    color: #777;
    line-height: 1.8;
}

/* Create a Parallax Effect */
.bgimg-1, .bgimg-2, .bgimg-3 {
    background-attachment: fixed;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}

/* First image (Logo. Full height) */
.bgimg-1 {
    background-image: url('../img/nitc1.jpg');
    min-height: 100%;
}

/* Second image (Portfolio) */
.bgimg-2 {
    background-image: url("../img/nitc2.jpg");
    min-height: 400px;
}

/* Third image (Contact) */
.bgimg-3 {
    background-image: url("../img/nitc3.jpg");
    min-height: 400px;
}

.w3-wide {letter-spacing: 10px;}
.w3-hover-opacity {cursor: pointer;}

/* Turn off parallax scrolling for tablets and phones */
@media only screen and (max-device-width: 1024px) {
    .bgimg-1, .bgimg-2, .bgimg-3 {
        background-attachment: scroll;
    }
}
</style>
<body>

<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar" id="myNavbar">
    <a class="w3-bar-item w3-button w3-hover-black w3-hide-medium w3-hide-large w3-right" href="javascript:void(0);" onclick="toggleFunction()" title="Toggle Navigation Menu">
      <i class="fa fa-bars"></i>
    </a>
    <a href="../home.php" class="w3-bar-item w3-button">HOME</a>
    <a href="teacher.php" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-user"></i> TEACHER</a>
    <a href="student.php" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-th"></i> STUDENT</a>
    <a href="mess.php" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-envelope"></i> MESS FEE</a>
    <a href="attendance.php" class="w3-bar-item w3-button w3-hide-small"><i class="fa fa-envelope"></i> ATTENDANCE</a>
    <a href="../login/logout.php" class="w3-bar-item w3-button w3-hide-small w3-right w3-hover-red">
      LOGOUT
    </a>
  </div>

  <!-- Navbar on small screens -->
 <div id="navDemo" class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium">
    <a href="../home.php" class="w3-bar-item w3-button" onclick="toggleFunction()">HOME</a>
    <a href="teacher.php" class="w3-bar-item w3-button" onclick="toggleFunction()">TEACHER</a>
    <a href="student.php" class="w3-bar-item w3-button" onclick="toggleFunction()">STUDENT</a>
    <a href="mess.php" class="w3-bar-item w3-button" onclick="toggleFunction()">MESS FEE</a>
    <a href="attendance.php" class="w3-bar-item w3-button">ATTENDANCE</a>
    <a href="../login/logout.php" class="w3-bar-item w3-button w3-hide-small w3-right w3-hover-red">
      LOGOUT
    </a>
  </div>
</div>

<!-- WORK HERE -->















<!-- Add Google Maps -->
<script>
function myMap()
{
  myCenter=new google.maps.LatLng(41.878114, -87.629798);
  var mapOptions= {
    center:myCenter,
    zoom:12, scrollwheel: false, draggable: false,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById("googleMap"),mapOptions);

  var marker = new google.maps.Marker({
    position: myCenter,
  });
  marker.setMap(map);
}

// Modal Image Gallery
function onClick(element) {
  document.getElementById("img01").src = element.src;
  document.getElementById("modal01").style.display = "block";
  var captionText = document.getElementById("caption");
  captionText.innerHTML = element.alt;
}

// Change style of navbar on scroll
window.onscroll = function() {myFunction()};
function myFunction() {
    var navbar = document.getElementById("myNavbar");
    if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) {
        navbar.className = "w3-bar" + " w3-card" + " w3-animate-top" + " w3-white";
    } else {
        navbar.className = navbar.className.replace(" w3-card w3-animate-top w3-white", "");
    }
}

// Used to toggle the menu on small screens when clicking on the menu button
function toggleFunction() {
    var x = document.getElementById("navDemo");
    if (x.className.indexOf("w3-show") == -1) {
        x.className += " w3-show";
    } else {
        x.className = x.className.replace(" w3-show", "");
    }
}
</script>
<script src="../scripts/google.js"></script>


</body>
</html>
