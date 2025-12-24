package dao;

import model.Voucher;

import java.util.List;

public class VoucherDao extends BaseDao {
    public List<Voucher> getVoucherList() {
        return getJdbi().withHandle(handle ->
                handle.createQuery("SELECT * FROM VOUCHER").mapToBean(Voucher.class).list()
        );
    }

    public boolean addVoucher(String code, String description, int conditionPrice, String conditionBook, String conditionPublisher, String start_date, String end_date, int usage_limit, double valuee) {
        int i= getJdbi().withHandle(handle ->
                handle.createUpdate("INSERT INTO VOUCHER(code,description,conditionPrice,conditionBook,conditionPublisher,start_date,end_date, usage_limit, valuee) values(:code,:description,:conditionPrice,:conditionBook,:conditionPublisher,:start_date,:end_date,:usage_limit,:valuee)")
                        .bind("code", code)
                        .bind("description", description)
                        .bind("conditionPrice", conditionPrice)
                        .bind("conditionBook", conditionBook)
                        .bind("conditionPublisher", conditionPublisher)
                        .bind("start_date", start_date)
                        .bind("end_date", end_date)
                        .bind("usage_limit", usage_limit)
                        .bind("valuee", valuee)
                        .execute()
        );
        if(i>0){
            return true;
        }
        return false;
    }
}
