package connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnect {

	private static Connection con;
	public static Connection getCon() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://mysql:3306/pbdb","root","root5412@B");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return con;
	}
}
