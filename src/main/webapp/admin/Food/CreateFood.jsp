
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.jspassigment2.jsp_assigment2.entity.Food" %>
<%@ page import="com.jspassigment2.jsp_assigment2.entity.Category" %><%--
  Created by IntelliJ IDEA.
  User: it
  Date: 12/7/2021
  Time: 10:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%
  request.setCharacterEncoding("utf-8");
  Food food = (Food) request.getAttribute("product");
  food = new Food();
  ArrayList<Category> categories = (ArrayList<Category>) request.getAttribute("categories");
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <jsp:include page="/include/head.jsp">
    <jsp:param name="title" value="Tạo sản phẩm"/>
  </jsp:include>
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
  <!-- Navbar -->
  <jsp:include page="/include/header.jsp"/>

  <jsp:include page="/include/aside/aside.jsp"/>

  <div class="content-wrapper">
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Simple Tables</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">List Products</li>
            </ol>
          </div>
        </div>
      </div>
    </section>
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <!-- left column -->
          <div class="col-md-10">
            <!-- general form elements -->
            <div class="card card-primary">
              <!-- form start -->
              <form action="/admin/create" method="post">
                <div class="card-body">
                  <%-- <div class="form-group" hidden>
                     <label for="ID"> ID</label>
                     <input type="text" name="ID" class="form-control" id="ID">
                   </div>--%>
                  <div class="form-group">
                    <label for="ProductName">Product Name</label>
                    <input type="text" name="name" class="form-control" <%= food.getName()%>  id="ProductName">
                  </div>
                  <div class="form-group">
                    <label for="Description">Description</label>
                    <input type="text" name="description" id="Description" <%= food.getDescription()%> class="form-control"  />
                  </div>
                  <div class="form-group">
                    <label for="Price">Price</label>
                    <input type="text" name="price" class="form-control" <%= food.getPrice()%>  id="Price">
                  </div>
                  <div class="form-group">
                    <label for="Image">Image</label>
                    <input type="text" name="image" class="form-control" <%= food.getThumbnail()%> id="Image">
                  </div>
                  <div class="form-group">
                    <label for="Status">Status</label>
                    <input type="number" name="status" class="form-control" <%= food.getStatus()%> id="Status">
                  </div>
                    <div class="form-group">
                      <label for="Category">Category</label>
                      <select name="category" id="Category">
                        <%
                          for (int i = 0; i < categories.size(); i++) {

                        %>
                        <option value="<%= categories.get(i).getId()%>"><%= categories.get(i).getName()%></option>
                        <%
                          }
                        %>
                      </select>
                      <%--<input type="number" name="categoryId" class="form-control" <%= food.getCategoryId()%> id="categoryId">--%>
                    </div>
                </div>
                <!-- /.card-body -->
                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Submit</button>
                </div>
              </form>
            </div>
          </div>

        </div>
      </div>
    </section>
  </div>
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="../resources/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="../resources/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="../resources/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../resources/dist/js/demo.js"></script>
</body>
</html>

