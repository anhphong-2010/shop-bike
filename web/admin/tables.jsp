<%-- 
    Document   : tables
    Created on : Jun 15, 2019, 7:27:54 PM
    Author     : pc
--%>

<%@page import="Models.ProductDAO"%>
<%@page import="Models.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Anh Phong ByeBike Admin - Product Data</title>

        <!-- Custom fonts for this template-->
        <link href="asset/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

        <!-- Page level plugin CSS-->
        <link href="asset/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="asset/css/sb-admin.css" rel="stylesheet">

    </head>

    <body id="page-top">
        <!-- Start Header-->
        <%@ include file="header.jsp" %>
        <!-- End Header-->
        <div id="content-wrapper">

            <div class="container-fluid">

                <!-- Breadcrumbs-->
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="/shopxedap/admin/index.jsp">Dashboard</a>
                    </li>
                    <li class="breadcrumb-item active">Product</li>
                </ol>

                <!-- DataTables Example -->
                <div class="card mb-3">
                    <div class="card-header">
                        <i class="fas fa-table"></i>
                        Product Data Table</div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Name</th>
                                        <th>Price</th>
                                        <th>Category ID</th>
                                        <th>Quantity</th>
                                        <th>Description</th>
                                        <th>Picture</th>
                                        <th>Big Picture 1</th>
                                        <th>Big Picture 2</th>
                                        <th>Big Picture 3</th>
                                        <th>Small Picture 1</th>
                                        <th>Small Picture 2</th>
                                        <th>Small Picture 3</th>
                                        <th>Brand</th>
                                        <th>Color</th>
                                        <th>Frame</th>
                                        <th>Weight</th>
                                        <th>Size</th>
                                        <th>Wheels</th>
                                        <th>Brake</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tfoot>
                                    <tr>
                                        <th>ID</th>
                                        <th>Name</th>
                                        <th>Price</th>
                                        <th>Category ID</th>
                                        <th>Quantity</th>
                                        <th>Description</th>
                                        <th>Picture</th>
                                        <th>Big Picture 1</th>
                                        <th>Big Picture 2</th>
                                        <th>Big Picture 3</th>
                                        <th>Small Picture 1</th>
                                        <th>Small Picture 2</th>
                                        <th>Small Picture 3</th>
                                        <th>Brand</th>
                                        <th>Color</th>
                                        <th>Frame</th>
                                        <th>Weight</th>
                                        <th>Size</th>
                                        <th>Wheels</th>
                                        <th>Brake</th>
                                        <th></th>
                                    </tr>
                                </tfoot>
                                <tbody>

                                    <tr>
                                        <%                                            
                                            ArrayList<Product> arrpro = ProductDAO.getProduct();
                                            for (int i = 0; i < arrpro.size(); i++) {
                                                Product pro = arrpro.get(i);
                                        %>
                                        <td style="font-size: 12px"><%= pro.getMasanpham()%></td>
                                        <td style="font-size: 12px"><%= pro.getTensanpham()%></td>
                                        <td style="font-size: 12px"><%= pro.getGiatien()%></td>
                                        <td style="font-size: 12px"><%= pro.getMaloaisanpham()%></td>
                                        <td style="font-size: 12px"><%= pro.getSoluong()%></td>
                                        <td style="font-size: 12px"><%= pro.getMota()%></td>
                                        <td style="font-size: 12px">
                                            <%= pro.getHinhanhsanpham()%>
                                            <hr>
                                            <img src="/shopxedap/<%= pro.getHinhanhsanpham()%>" width="70" height="80" />
                                        </td>
                                        <td style="font-size: 12px">
                                            <%= pro.getHinhanhto1()%>
                                            <hr>
                                            <img src="/shopxedap/<%= pro.getHinhanhto1()%>" width="70" height="80" />
                                        </td>
                                        <td style="font-size: 12px">
                                            <%= pro.getHinhanhto2()%>
                                            <hr>
                                            <img src="/shopxedap/<%= pro.getHinhanhto2()%>" width="70" height="80" />
                                        </td>
                                        <td style="font-size: 12px">
                                            <%= pro.getHinhanhto3()%>
                                            <hr>
                                            <img src="/shopxedap/<%= pro.getHinhanhto3()%>" width="70" height="80" />
                                        </td>
                                        <td style="font-size: 12px">
                                            <%= pro.getHinhanhnho1()%>
                                            <hr>
                                            <img src="/shopxedap/<%= pro.getHinhanhnho1()%>" width="70" height="80" />
                                        </td>
                                        <td style="font-size: 12px">
                                            <%= pro.getHinhanhnho2()%>
                                            <hr>
                                            <img src="/shopxedap/<%= pro.getHinhanhnho2()%>" width="70" height="80" />
                                        </td>
                                        <td style="font-size: 12px">
                                            <%= pro.getHinhanhnho3()%>
                                            <hr>
                                            <img src="/shopxedap/<%= pro.getHinhanhnho3()%>" width="70" height="80" />
                                        </td>
                                        <td style="font-size: 12px"><%= pro.getTenthuonghieu()%></td>
                                        <td style="font-size: 12px"><%= pro.getMausac()%></td>
                                        <td style="font-size: 12px"><%= pro.getKhung()%></td>
                                        <td style="font-size: 12px"><%= pro.getTrongluong()%></td>
                                        <td style="font-size: 12px"><%= pro.getKichthuoc()%></td>
                                        <td style="font-size: 12px"><%= pro.getBanhxe()%></td>
                                        <td style="font-size: 12px"><%= pro.getPhanh()%></td>
                                        <td>
                                            <a href="/shopxedap/admin/editproduct.jsp?masanpham=<%= pro.getMasanpham()%>"><span id="editbutton" class="badge badge-primary" style="font-size: 14px;">Edit</span></a>
                                            <hr>
                                            <a href="/shopxedap/ProductManagerController?command=delete&masanpham=<%= pro.getMasanpham()%>"><span id="deletebutton" class="badge badge-danger" style="font-size: 14px;">Delete</span></a>
                                        </td>
                                    </tr>
                                    <%
                                        }
                                    %>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                </div>

                <p class="small text-center text-muted my-5">
                    <em>More table examples coming soon...</em>
                </p>

            </div>

            <!-- /.container-fluid -->

            <!-- Sticky Footer -->
            <%@ include file="footer.jsp" %>
            <!--Close Footer -->
        </div>
        <!-- /.content-wrapper -->
        <!-- /#wrapper -->

        <!-- Scroll to Top Button-->
        <a class="scroll-to-top rounded" href="#page-top">
            <i class="fas fa-angle-up"></i>
        </a>

        <!-- Logout Modal-->
        <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                    <div class="modal-footer">
                        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                        <a class="btn btn-primary" href="login.jsp">Logout</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Bootstrap core JavaScript-->
        <script src="asset/vendor/jquery/jquery.min.js"></script>
        <script src="asset/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="asset/vendor/jquery-easing/jquery.easing.min.js"></script>

        <!-- Page level plugin JavaScript-->
        <script src="asset/vendor/datatables/jquery.dataTables.js"></script>
        <script src="asset/vendor/datatables/dataTables.bootstrap4.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="asset/js/sb-admin.min.js"></script>

        <!-- Demo scripts for this page-->
        <script src="asset/js/demo/datatables-demo.js"></script>

    </body>
</html>

