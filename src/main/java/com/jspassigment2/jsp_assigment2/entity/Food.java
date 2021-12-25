package com.jspassigment2.jsp_assigment2.entity;

import com.jspassigment2.jsp_assigment2.annotation.Column;
import com.jspassigment2.jsp_assigment2.annotation.Entity;
import com.jspassigment2.jsp_assigment2.annotation.Id;
import com.jspassigment2.jsp_assigment2.util.SQLDataTypes;

import java.util.Date;

@Entity(tableName = "food")
public class Food {
    @Id(autoIncrement = true)
    @Column(name = "id",type = SQLDataTypes.INTEGER)
    private int id;
    @Column(name = "food_name",type = SQLDataTypes.VARCHAR255)
    private String name;
    @Column(name = "price",type = SQLDataTypes.DOUBLE)
    private double price;
    @Column(name = "description",type = SQLDataTypes.TEXT)
    private String description;
    @Column(name = "thumbnail",type = SQLDataTypes.VARCHAR255)
    private String thumbnail;
    @Column(name = "status",type = SQLDataTypes.INTEGER)
    private int status;
    @Column(name = "created_at",type = SQLDataTypes.DATE)
    private Date created_at;
    @Column(name = "updated_at", type = SQLDataTypes.DATE)
    private Date updated_at;

    @Column(name = "categoryId", type = SQLDataTypes.INTEGER)
    private int categoryId;
}
