
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class Sql_DB {
	/**
	 * Connect to a sample database
	 */
	public static Connection connect() {
		Connection con = null;
		try {
			Class.forName("org.sqlite.JDBC");
			con = DriverManager.getConnection("jdbc:sqlite:C:\\Users\\ammar\\Desktop\\Connection_Sqlite.db");
			System.out.println("Connected!");
		} catch (ClassNotFoundException | SQLException e) {
			System.out.println(e+"");
		}

		return con;
	}
	
	public static void insert(String name, String email, String message) {
        //String sql = "INSERT INTO contacts(name,email,message) VALUES(?,?,?)";
        try /*(Connection conn = connect();
                PreparedStatement pstmt = conn.prepareStatement(sql)) */{
	            /*pstmt.setString(1, name);
	            pstmt.setString(2, email);
	            pstmt.setString(3, message);
	            pstmt.executeUpdate();*/
        	Connection con1 = connect();
        	String query1 = " insert into contacts (name, email, message)" + " values ('"
					+ name + "', '" + email + "', '" + message + "');";
			PreparedStatement posted1 = con1.prepareStatement(query1);
			posted1.execute();

			con1.close();
			posted1.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
	
	public static void selectAll(){
        String sql = "SELECT id, name, message FROM contacts";
        
        try (Connection conn = connect();
             Statement stmt  = conn.createStatement();
             ResultSet rs    = stmt.executeQuery(sql)){
            
            // loop through the result set
            while (rs.next()) {
                System.out.println(rs.getInt("id") +  "\t" + 
                                   rs.getString("name") + "\t" +
                                   rs.getString("message"));
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
	
}
