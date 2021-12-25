package com.jspassigment2.jsp_assigment2.controller;

import com.example.assigment1.assigment.entity.Food;
import com.example.assigment1.assigment.repository.JpaRepository;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CreateNewFood extends HttpServlet {

    private JpaRepository<Food> repository = new JpaRepository<>(Food.class);
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/admin/CreateFood.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            req.setCharacterEncoding("UTF-8");
            String Name = String.valueOf(req.getParameter("name"));
            String Description = String.valueOf(req.getParameter("description"));
            String Thumbnail = String.valueOf(req.getParameter("image"));
            int status = Integer.parseInt(req.getParameter("status"));
            double price = Double.parseDouble(req.getParameter("price"));
            int categoryId = Integer.parseInt(req.getParameter("categoryId"));
            Food product = new Food(Name,price,Description,Thumbnail,status,categoryId);
            repository.save(product);

        }catch (Exception ex){
            resp.getWriter().println("Bad request");
        }
    }
}
