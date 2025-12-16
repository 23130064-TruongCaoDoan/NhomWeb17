package Service;

import dao.UserDao;
import model.User;

public class UserService {
    private UserDao userDao=new UserDao();
    public User findUser(String user){
        return userDao.finduser(user);
    }


    public static void main(String[] args) {
        UserService userService=new UserService();
        System.out.println(userService.findUser("13@gmail.com"));
    }

    public boolean checkPass(User user,String password) {
        return user.getPassword_hash().equals(password) ;
    }

    public boolean checkExit(String email) {

        if(findUser(email)!=null){
            return true;
        }
        return false;

    }

    public void addUser(String fullname, String email, String password) {
        userDao.addUser(fullname,email, password);
    }

}
