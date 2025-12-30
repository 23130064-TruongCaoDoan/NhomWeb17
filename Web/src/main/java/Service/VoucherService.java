package Service;

import dao.VoucherDao;
import model.Voucher;

import java.util.List;

public class VoucherService {
    private VoucherDao voucherDao = new VoucherDao();

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
}
