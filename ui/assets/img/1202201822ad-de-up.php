<?php

 include '1202201822db.php';
 
 $msg = $err = ""; 
 
 // Processing form data when form is submitted
 if($_SERVER["REQUEST_METHOD"] == "POST"){
 //add wallet
 if (isset($_POST['save'])) {
 $wname = trim($_POST['wname']);
 $add = trim($_POST['add']);
 
 if (!empty($wname) && !empty($add) ) {
 mysqli_query($link, "INSERT INTO wallet (name, address) VALUES ('$wname', '$add') ");
 echo "<script type='text/javascript'>alert('Wallet added successfully')</script>";
 echo "<script> window.location = '".$_SERVER['PHP_SELF']."';</script>";
 }
 }
 
 // update
 if(isset($_POST['update'])){
 $wid = trim($_POST['wid']);
 $address = trim($_POST['address']);
 mysqli_query($link, "UPDATE wallet SET address = '$address' WHERE id = '$wid' ");
 echo "<script type='text/javascript'>alert('Wallet address has been updated successfully')</script>";
 echo "<script> window.location = '".$_SERVER['PHP_SELF']."';</script>";
 }
 
 
 // delet wallet
 if(isset($_POST['delete'])){
 $wid = trim($_POST['wid']);
 
 mysqli_query($link, "DELETE FROM wallet WHERE id = '$wid' ");
 echo "<script type='text/javascript'>alert('Wallet address has been Deleted successfully')</script>";
 echo "<script> window.location = '".$_SERVER['PHP_SELF']."';</script>";
 }
 
 
 }
 ?>
 
 <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
 
 
 
 <link rel="stylesheet" href=" https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
 <link rel="stylesheet" href=" https://cdn.datatables.net/1.10.19/css/dataTables.jqueryui.min.css">
 <link rel="stylesheet" href=" https://cdn.datatables.net/buttons/1.5.6/css/buttons.jqueryui.min.css">
 
 
 
 
 
 <link rel="stylesheet" href=" https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap.min.css">
 <link rel="stylesheet" href=" https://cdn.datatables.net/buttons/1.5.6/css/buttons.bootstrap.min.css">
 <link rel="stylesheet" href="">
 
 
 
 <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
 
 
 <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
 <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/dataTables.jqueryui.min.js"></script>
 <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/buttons/1.5.6/js/dataTables.buttons.min.js"></script>
 
 <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.jqueryui.min.js"></script>
 
 <script type="text/javascript" charset="utf8" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
 <script type="text/javascript" charset="utf8" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
 <script type="text/javascript" charset="utf8" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
 <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.html5.min.js"></script>
 <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.print.min.js"></script>
 <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.colVis.min.js"></script>
 <style>
 .table-responsive {
 overflow-x: hidden;
 }
 @media (max-width: 8000px) {
 .table-responsive {
 overflow-x: auto;
 }
 </style>
 <div class="page-content">
 <div class="container-fluid">
 <?php 
 if ($msg != "") {
 echo customAlert("success", $msg);
 }
 if ($err != "") {
 echo customAlert("error", $err);
 }
 
 ?>
 <div class="row">
 <div class="col-lg-12">
 <div class="card">
 <div class="card-header">
 <h4 class="card-title mb-0">All Wallets</h4>
 </div><!-- end card header -->
 
 <div class="card-body">
 <div id="customerList">
 
 
 <div class="table-responsive table-card mt-3 mb-1">
 <table id="myTable" class="table-responsive" >  
 <thead class="table-light">
 <tr class="info">
 <th>ID</th>
 <th>Name</th>
 <th>Address</th>
 <th>Action</th>
 </tr>
 </thead>
 <tbody>
 <?php
 $i = 1;
 $select = mysqli_query($link, "SELECT * FROM wallet ");
 if (mysqli_num_rows($select)) {
 while ($row = mysqli_fetch_assoc($select)) {
 
 ?>
 <tr>
 <form method="post" action="">
 <input type="hidden" name="wid" value="<?php echo $row['id'] ?>">
 <td><?php echo $row['id'] ?></td>
 <td><?php echo $row['name'] ?></td>
 <td><textarea name="address" class="form-control"><?php echo $row['address'] ?></textarea></td>							
 <td>
 <button type="submit" name="update" onclick="return confirm('To Proceed click Ok')" class="btn btn-primary">Update Wallet</button>
 </td>
 
 </tr>
 
 </form>
 <?php }
 } ?>
 </tbody>
 
 </table>  
 </div>
 </div>
 </div><!-- end card -->
 </div>
 <!-- end col -->
 </div>
 <!-- end col -->
 </div>
 <!-- end row -->
 <br>
 <br>
 <br>
 
 
 
 
 
 <div class="page-content">
 <div class="container-fluid">
 <div class="row">
 <div class="col-lg-12">
 <div class="card">
 <div class="card-body">
 <div class="card-header">
 <h4 class="card-title mb-0">Add wallet for payment</h4>
 </div>
 <form method="post" action="">
 <div class="live-preview">
 <div class="row gy-4">
 <div class="col-xxl-6 col-md-12">
 <div>
 <label for="basiInput" class="form-label">Wallet Name</label>
 <input type="text" class="form-control" name="wname" id="basiInput">
 </div>
 </div>
 <div class="col-xxl-6 col-md-12">
 <div>
 <label for="basiInput" class="form-label">Wallet Address</label>
 <input type="text" class="form-control" name="add" id="basiInput">
 </div>
 </div>
 <div class="col-xxl-6 col-md-12">
 <div>
 <button type="submit" name="save" class="btn btn-primary">Save</button>
 </div>
 </div>
 </div>
 </form>
 </div>
 </div>
 </div>
 </div>
 </div>
 </div>
 </div>
 
 
 
 <div class="page-content">
 <div class="container-fluid">
 <div class="row">
 <div class="col-lg-12">
 <div class="card">
 <div class="card-body">
 <div class="card-header">
 <h4 class="card-title mb-0">Delete wallet Address</h4>
 </div>
 <form method="post" action="">
 <div class="live-preview">
 <div class="row gy-4">
 <div class="col-xxl-6 col-md-12">
 <div>
 <label for="basiInput" class="form-label">Wallet ID</label>
 <input type="text" class="form-control" name="wid" id="basiInput">
 </div>
 </div>
 <div class="col-xxl-6 col-md-12">
 <div>
 <button type="submit" name="delete" class="btn btn-primary">Delete Wallet</button>
 </div>
 </div>
 </div>
 </form>
 </div>
 </div>
 </div>
 </div>
 </div>
 </div>
 </div>
 
 