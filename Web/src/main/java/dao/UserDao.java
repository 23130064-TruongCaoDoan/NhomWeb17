package dao;

import DTO.UserWithTotalSpentDTO;
import model.User;

import java.util.List;

public class UserDao extends BaseDao {
    public User finduser(String username) {
        return getJdbi().withHandle(handle ->
                handle.createQuery("select * from USER where phone=:username OR email=:username")
                        .bind("username", username).mapToBean(User.class).findFirst().orElse(null)
        );
    }

    public List<User> getListUser() {
        return getJdbi().withHandle(handle ->
                handle.createQuery("SELECT * FROM User")
                        .mapToBean(User.class)
                        .list()
        );
    }

    public static void main(String[] args) {
        UserDao ud = new UserDao();
        System.out.println(ud.finduser("123@gmail.com"));
    }

    public void addUser(String fullname, String email, String password) {
        getJdbi().withHandle(handle ->
                handle.createUpdate("insert into USER(name,email,password_hash,role) values(:username, :email, :password,:role)").bind("username", fullname).bind("email", email).bind("password", password).bind("role",0).execute()
        );
    }

    public void updatePass(String password) {
        getJdbi().withHandle(handle ->
                handle.createUpdate("update USER set password_hash=:password").bind("password", password).execute()
        );
    }

    public boolean checkRole(String email) {
        return getJdbi().withHandle(handle ->
                handle.createQuery("SELECT role FROM USER where email=:email")
                        .bind("email", email)
                        .mapTo(boolean.class).one()
        );
    }

    public List<UserWithTotalSpentDTO> getUserWithTotalSpent() {
        return getJdbi().withHandle(handle ->
                handle.createQuery("SELECT u.id, u.name, u.email,u.point, SUM(o.total_amount) AS total_spent FROM user u LEFT JOIN orders o ON u.id = o.user_id GROUP BY u.id, u.name, u.email ")
                        .mapToBean(UserWithTotalSpentDTO.class)
                        .list()
        );
    }
}
