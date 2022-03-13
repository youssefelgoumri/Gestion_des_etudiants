<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
  <link rel="stylesheet" type="text/css" href="../font/font-awesome.min.css">
<title>Admins</title>

  <style>
    #myInput,#myInput2,#myInput3 {
  background-image: url('/css/searchicon.png'); /* Add a search icon to input */
  background-position: 10px 12px; /* Position the search icon */
  background-repeat: no-repeat; /* Do not repeat the icon image */
  width: 27%; /* Full-width */
  font-size: 16px; /* Increase font-size */
  padding: 12px 20px 12px 40px; /* Add some padding */
  border: 1px solid #ddd; /* Add a grey border */
  margin-bottom: 12px; /* Add some space below the input */
}
input{
  background-color: rgb(245, 245, 245);

}
input:hover {
  background-color: white;
}

button{
  size: 40%;
}
table{
  border-radius: 3px;
}

#myTable {
  border-collapse: collapse; /* Collapse borders */
  width: 100%; /* Full-width */
  font-size: 18px; /* Increase font-size */
  background-color: rgb(245, 245, 245);
  border: 2px solid #eb9f28 !important;
}

#myTable th, #myTable td {
  text-align: left; /* Left-align text */
  padding: 12px; /* Add padding */
}

#myTable tr {
  /* Add a bottom border to all table rows */
  border-bottom: 1px solid #ddd;
}

#myTable tr.header {
  /* Add a grey background color to the table header and on hover */
  background-color: #eb9f28;
  color: white;
}
#myTable tr:hover:not(.header) {
  /* Add a grey background color to the table header and on hover */
  background-color: white;
}

h1{
  text-align: center;
  font-family: Arial, Helvetica, sans-serif;
  font-size: xx-large;
  padding: 20px;
}

a{
  color: #eb9f28;
}
a:hover{
  background-color: white;
  color: black;
}
.btn-primary{
  background-color: #eb9f28;
  border-color: #eb9f28;
  color: white;
}
.btn-primary:hover, .btn-primary:focus, .btn-primary:active, .btn-primary.active, .open>.dropdown-toggle.btn-primary {
    color: #eb9f28;
    background-color: white;
    border-color: #eb9f28; /*set the color you want here*/
}
  </style>
  
  <script>
    function myFunction() {
      // Declare variables
      var input, filter, table, tr, td, i, txtValue;
      input = document.getElementById("myInput");
      filter = input.value.toUpperCase();
      table = document.getElementById("myTable");
      tr = table.getElementsByTagName("tr");
    
      // Loop through all table rows, and hide those who don't match the search query
      for (i = 0; i < tr.length; i++) {
        td = tr[i].getElementsByTagName("td")[0];
        if (td) {
          txtValue = td.textContent || td.innerText;
          if (txtValue.toUpperCase().indexOf(filter) > -1) {
            tr[i].style.display = "";
          } else {
            tr[i].style.display = "none";
          }
        }
      }
    }

    function myFunction2() {
      // Declare variables
      var input, filter, table, tr, td, i, txtValue;
      input = document.getElementById("myInput2");
      filter = input.value.toUpperCase();
      table = document.getElementById("myTable");
      tr = table.getElementsByTagName("tr");
    
      // Loop through all table rows, and hide those who don't match the search query
      for (i = 0; i < tr.length; i++) {
        td = tr[i].getElementsByTagName("td")[1];
        if (td) {
          txtValue = td.textContent || td.innerText;
          if (txtValue.toUpperCase().indexOf(filter) > -1) {
            tr[i].style.display = "";
          } else {
            tr[i].style.display = "none";
          }
        }
      }
    }

    function myFunction3() {
      // Declare variables
      var input, filter, table, tr, td, i, txtValue;
      input = document.getElementById("myInput3");
      filter = input.value.toUpperCase();
      table = document.getElementById("myTable");
      tr = table.getElementsByTagName("tr");
    
      // Loop through all table rows, and hide those who don't match the search query
      for (i = 0; i < tr.length; i++) {
        td = tr[i].getElementsByTagName("td")[2];
        if (td) {
          txtValue = td.textContent || td.innerText;
          if (txtValue.toUpperCase().indexOf(filter) > -1) {
            tr[i].style.display = "";
          } else {
            tr[i].style.display = "none";
          }
        }
      }
    }
    </script>

</head>

<body>
  <div class="container">
    
    <h1 class="admin-label">Admins</h1>

    <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names..">
    <input type="text" id="myInput2" onkeyup="myFunction2()" placeholder="Search for username..">
    <input type="text" id="myInput3" onkeyup="myFunction3()" placeholder="Search for email.."> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <a href="#" class="btn btn-primary p-5 pt-3 pb-3 mb-3" style="font-size: medium;font-weight: bold; "> Add Admin</a>


  <table id="myTable" class="table">
    <tr class="header">
      <th style="width:20%;">Full Name</th>
      <th style="width:20%;">Username</th>
      <th style="width:20%;">Email</th>
      <th style="width:10%;">Action</th>
    </tr>
    <tr>
      <td>Youssef El Goumri</td>
      <td>y7goumri</td>
      <td>yel@gmail.com</td>
      <td>
        <a href="#">
          <span class="glyphicon glyphicon-edit"></span>
        </a> &nbsp;
        <a href="">
          <span class="glyphicon glyphicon-trash"></span>
        </a>

      </td>
    </tr>
    <tr>
      <td>Test</td>
      <td>test</td>
      <td>test@gmail.com</td>
      <td>
        <a href="#">
          <span class="glyphicon glyphicon-edit"></span> 
        </a> &nbsp;
        <a href="">
          <span class="glyphicon glyphicon-trash"></span>
        </a>
      </td>
    </tr>
    <tr>
      <td>Ayoub Izourane</td>
      <td>ayoub</td>
      <td>ayoub@gmail.com</td>
      <td>
        <a href="#">
          <span class="glyphicon glyphicon-edit"></span>
        </a> &nbsp;
        <a href="">
          <span class="glyphicon glyphicon-trash"></span>
        </a>
        
      </td>
    </tr>
    <tr>
      <td>Admin Name</td>
      <td>admin2</td>
      <td>admin2@gmail.com</td>
      <td>
        <a href="#">
          <span class="glyphicon glyphicon-edit"></span> 
        </a>&nbsp;
        <a href="">
          <span class="glyphicon glyphicon-trash"></span>
        </a>
      </td>
    </tr>
  </table>
  </div>
  
</body>
</html>