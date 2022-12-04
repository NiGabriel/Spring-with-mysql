/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Config;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

/**
 *
 * @author Gabe
 */
public class Connextion {
    
    public DriverManagerDataSource Connect(){
        
        DriverManagerDataSource dt = new DriverManagerDataSource();
        dt.setDriverClassName("com.mysql.jdbc.Driver");
        dt.setUrl("jdbc:mysql://localhost:3306/bus");
        dt.setUsername("root");
        dt.setPassword("");
        
        return dt;
       
    }
  
    
}
