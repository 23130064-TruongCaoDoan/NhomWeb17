package dao;

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
                handle.createUpdate("insert into USER(name,email,password_hash) values(:username, :email, :password)").bind("username", fullname).bind("email", email).bind("password", password).execute()
        );
    }

    public void updatePass(String password) {
        getJdbi().withHandle(handle ->
                handle.createUpdate("update USER set password_hash=:password").bind("password", password).execute()
        );
    }
}
