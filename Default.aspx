<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default"  %>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>MasterPage</title>
  <!-- Bootstrap core CSS-->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin CSS-->
  <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
    <style type="text/css">
        .auto-style1 {
            font-family: "Segoe UI";
            color: #FFC107;
        }
    </style>
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
    <form id="form1" runat="server">
  <!-- Navigation-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="index.html">Start Bootstrap</a>
   
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
        
        <li>  <a class="nav-link"  href="Ingreso.aspx">
            <i class="fa fa-fw fa-sign-out"></i>Ingreso</a>  
        </li>
       <li> 
           <a class="nav-link"  href="Taxi.aspx">
           <i class="fa fa-fw fa-sign-out"></i>Taxi</a>
       </li>
       <li> 
         <a class="nav-link"  href="Receptor.aspx">
         <i class="fa fa-fw fa-sign-out"></i>Receptor</a>
      </li>
      <li> 
         <a class="nav-link"  href="Configuracion.aspx">
         <i class="fa fa-fw fa-sign-out"></i>Configuracion</a>
      </li>
      
     
      
      </ul>
      <ul class="navbar-nav sidenav-toggler">
        <li class="nav-item">
          <a class="nav-link text-center" id="sidenavToggler">
            <i class="fa fa-fw fa-angle-left"></i>
          </a>
        </li>
      </ul>
      <ul class="navbar-nav ml-auto">
     <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Charts">
          <a class="nav-link" href="Principal.aspx">
            <i class="fa fa-fw fa-file"></i>
            <span class="nav-link-text">Inicio</span>
          </a>
     
        <li class="nav-item">
          <a class="nav-link"  href="index.aspx">
            <i class="fa fa-fw fa-sign-out"></i>Cerrar Sesión</a>
        </li>

         
      </ul>
    </div>
  </nav>
  <div class="content-wrapper">
  
       <!-- Zona Editable-->


       <!-- Zona Editable-->
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>
    <!-- Logout Modal-->
   
       <!-- Logout Modal-->
    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Page level plugin JavaScript-->
    <script src="vendor/datatables/jquery.dataTables.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin.min.js"></script>
    <!-- Custom scripts for this page-->
    <script src="js/sb-admin-datatables.min.js"></script>
       <br />
       <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Label"></asp:Label>
       <br />
  </div>
    </form>
</body>

</html>

