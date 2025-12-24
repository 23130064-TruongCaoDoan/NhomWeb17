package Service;

import dao.VoucherDao;
import model.Voucher;

public class VoucherService {
    private VoucherDao voucherDao = new VoucherDao();

    public boolean addVoucher(String code, String description, int conditionPrice, String conditionBook, String conditionPublisher, String start_date, String end_date, int usage, double value) {
        return voucherDao.addVoucher(code, description, conditionPrice, conditionBook, conditionPublisher, start_date, end_date, usage,value);
    }
}
