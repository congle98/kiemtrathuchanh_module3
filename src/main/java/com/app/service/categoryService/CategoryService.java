package com.app.service.categoryService;

import com.app.connectionJDBC.ConnectionJDBC;
import com.app.model.Category;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoryService implements ICategoryService {
    private final String SELECT_ALL_CATEGORY = "select * from category";
    private final String SELECT_BY_ID = "select * from category where id = ?;";

    private Connection connection = ConnectionJDBC.getConnection();
    @Override
    public List<Category> findAll() {
        List<Category> categoryList = new ArrayList<>();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_CATEGORY);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt(1);
                String name = resultSet.getString(2);
                Category category = new Category(id,name);
                categoryList.add(category);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return categoryList;
    }

    @Override
    public Category findById(int id) {
       Category category = null;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_BY_ID);
            preparedStatement.setInt(1,id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int id_category = resultSet.getInt(1);
                String name = resultSet.getString(2);
                category = new Category(id_category,name);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return category;
    }

    @Override
    public void save(Category p) {



    }

    @Override
    public void delete(int id) {

    }

    @Override
    public void edit(int id, Category category) {

    }

    @Override
    public String toString() {
        return "CategoryService{" +
                "SELECT_ALL_CATEGORY='" + SELECT_ALL_CATEGORY + '\'' +
                ", SELECT_BY_ID='" + SELECT_BY_ID + '\'' +
                ", connection=" + connection +
                '}';
    }
}
