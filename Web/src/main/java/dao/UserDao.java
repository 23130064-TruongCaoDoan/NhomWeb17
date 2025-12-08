package dao;

import model.User;

public class UserDao extends BaseDao {
    public  User finduser(String username) {
        return getJdbi().withHandle(handle ->
                    handle.createQuery("select * from USER where phone=:username OR email=:username")
                            .bind("username", username).mapToBean(User.class).findFirst().orElse(null)
    );
    }

    public static void main(String[] args) {
        UserDao ud = new UserDao();
        System.out.println(ud.finduser("123@gmail.com"));
    }
}
