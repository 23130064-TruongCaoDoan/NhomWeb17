package Service;

import dao.VoucherDao;
import model.Voucher;

import java.util.ArrayList;
import java.util.List;


public class VoucherService {
    private VoucherDao voucherDao = new VoucherDao();
    private UserService userService = new UserService();

    public boolean addVoucher(String code, String description, int conditionPrice, String conditionBook, String conditionPublisher, String start_date, String end_date, int usage, double value, String type) {
        return voucherDao.addVoucher(code, description, conditionPrice, conditionBook, conditionPublisher, start_date, end_date, usage,value,type);
    }

    public List<Voucher> getListVoucher() {
        return voucherDao.getVoucherList();
    }

//    public List<Voucher> getListVoucherSortTime(String type) {
//        return voucherDao.getListVoucherSortTime(type);
//    }
//
    public static void main(String[] args) {
        VoucherDao voucherDao = new VoucherDao();
//        for (Voucher voucher : voucherDao.getListVoucherSortTime("ASC")) {
//            System.out.println(voucher.toString());
//        }
        System.out.println(voucherDao.deleteVoucher(5));
    }
//
//    public List<Voucher> getListVoucherSortType(String type) {
//        return voucherDao.getListVoucherSortType(type);
//    }

    public List<Voucher> filterVoucher(String keyword, String type, String time) {
        return voucherDao.filterVoucher(keyword, type, time);
    }

    public boolean deleteVoucher(int id) {
        return voucherDao.deleteVoucher(id);
    }

    public boolean updateVoucher(int id, String code, String description, int conditionPrice, String conditionBook, String conditionPublisher, String startDate, String endDate, int usageLimit, double valuee, String type) {
        return voucherDao.updateVoucher(id,code,description,conditionPrice,conditionBook,conditionPublisher,startDate,endDate,usageLimit,valuee,type);
    }
    public boolean isValidVoucher(String code){
        List<Voucher> vouchers = voucherDao.getVoucherList();
        for (Voucher v : vouchers){
            if (v.getCode().equals(code)){
                return true;
            }
        }
        return false;
    }
    public void insertVoucherForAll(String code) {
        if (!isValidVoucher(code)) return;
        List<Integer> listId = userService.getAllUserIds();
        int voucherId = voucherDao.getVoucherIdByCode(code);
        voucherDao.insertVoucherForAll(voucherId, listId);
    }

    public void insertVoucherForUsers(String code, String userIdsRaw) {

        if (!isValidVoucher(code)) return;
        if (userIdsRaw == null || userIdsRaw.isBlank()) return;

        List<Integer> userIds = new ArrayList<>();

        for (String s : userIdsRaw.split(",")) {
            s = s.trim();
            if (!s.matches("KH\\d+")) {
                continue;
            }
            int id = Integer.parseInt(s.substring(2));
            if (userService.existsById(id)) {
                userIds.add(id);
            }
        }


        if (!userIds.isEmpty()) {
            int voucherId = voucherDao.getVoucherIdByCode(code);
            voucherDao.insertVoucherForUsers(voucherId, userIds);
        }
    }

}
