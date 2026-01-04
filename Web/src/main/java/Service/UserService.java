package Service;

import DTO.UserWithTotalSpentDTO;
import Util.PasswordUtil;
import dao.UserDao;
import model.User;

import java.util.ArrayList;
import java.util.List;

public class UserService {
    private UserDao userDao = new UserDao();

    public User findUser(String user) {
        return userDao.finduser(user);
    }


    public static void main(String[] args) {
        UserService userService = new UserService();
        System.out.println(userService.findUser("13@gmail.com"));
    }

    public boolean checkPass(User user, String password) {
        PasswordUtil passwordUtil = new PasswordUtil();
        return passwordUtil.checkPassword(password, user.getPassword_hash());
    }

    public boolean checkExit(String email) {

        if (findUser(email) != null) {
            return true;
        }
        return false;

    }

    public void addUser(String fullname, String email, String password) {
        userDao.addUser(fullname, email, password);
    }

    public void updatePass(String email, String password) {
        if (checkExit(email)) {
            userDao.updatePass(password);
        }
    }

    public boolean checkRole(User user) {
        return userDao.checkRole(user.getEmail());
    }

    public boolean isValidPassword(String password) {
        String regex = "^(?=.*\\d)(?=.*[@$!%*?&])[A-Za-z\\d@$!%*?&]{8,}$";
        return password != null && password.matches(regex);
    }
    public List<Integer> getAllUserIds(){
        List<User> ls = userDao.getListUser();
        List<Integer> rs = new ArrayList<>();
        for (User u : ls){
            rs.add(u.getId());
        }
        return rs;
    }
    public User getUserById(String id){
        int idNumber = Integer.parseInt(id.substring(2));
        return userDao.findUserById(idNumber);
    }
    public List<UserWithTotalSpentDTO> getUserWithTotalSpent(String q, String stock) {
        return userDao.getUserWithTotalSpent(q,stock);
    }

    public boolean existsById(int id) {
        return userDao.existsById(id);
    }

}
