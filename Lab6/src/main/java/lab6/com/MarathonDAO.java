/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package lab6.com;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author marli
 */
public class MarathonDAO {
        private Connection connection;
        private int result = 0;
        
        public MarathonDAO() throws ClassNotFoundException{
            connection = Database.getConnection();
        }
        
        public int addDetails (Marathon marathon){
            try{
                String mySQL = "INSERT INTO marathon(icno, name, category) VALUES (?,?,?)";
                PreparedStatement  preparedStatement = connection.prepareStatement(mySQL);
                
                System.out.println("IC No   = " + marathon.getIcno());
                System.out.println("Name    = " + marathon.getName());
                System.out.println("Category    = " + marathon.getCategory());
                
                preparedStatement.setString(1, marathon.getIcno());
                preparedStatement.setString(2, marathon.getName());
                preparedStatement.setString(3, marathon.getCategory());
                result = preparedStatement.executeUpdate();  
            } 
            catch (SQLException e){
                e.printStackTrace();
            }
            return result;
            
        }
}
