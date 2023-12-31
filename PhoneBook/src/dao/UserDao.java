package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import entity.User;

public class UserDao {
	private Connection con;

	public UserDao(Connection con) {
		super();
		this.con = con;
	}

	public boolean userRegister(User u) {
		boolean f = false;

		try {
			String sql = "insert into user(name,email,pwd) values(?,?,?)";

			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, u.getName());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPassword());

			int i = ps.executeUpdate();

			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

//login validation mtd
	public User loginUser(String email, String pwd1) {
		User user = null;
		try {
			String sql = "select * from user where email=? and pwd=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, pwd1);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				user = new User();
				user.setId(rs.getInt(1));
				user.setName(rs.getString(2));
				user.setEmail(rs.getString(3));
				user.setPassword(rs.getString(4));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}

}
