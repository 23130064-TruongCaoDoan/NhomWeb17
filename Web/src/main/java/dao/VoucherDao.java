package dao;

import model.Voucher;

import java.util.List;

public class VoucherDao extends BaseDao {
    public List<Voucher> getVoucherList() {
        return getJdbi().withHandle(handle ->
                handle.createQuery("SELECT * FROM VOUCHER").mapToBean(Voucher.class).list()
        );
    }

    public boolean addVoucher(String code, String description, int conditionPrice, String conditionBook, String conditionPublisher, String start_date, String end_date, int usage_limit, double valuee, String type) {
        int i = getJdbi().withHandle(handle ->
                handle.createUpdate("INSERT INTO VOUCHER(code,description,conditionPrice,conditionBook,conditionPublisher,start_date,end_date, usage_limit, valuee,type) values(:code,:description,:conditionPrice,:conditionBook,:conditionPublisher,:start_date,:end_date,:usage_limit,:valuee,:type)")
                        .bind("code", code)
                        .bind("description", description)
                        .bind("conditionPrice", conditionPrice)
                        .bind("conditionBook", conditionBook)
                        .bind("conditionPublisher", conditionPublisher)
                        .bind("start_date", start_date)
                        .bind("end_date", end_date)
                        .bind("usage_limit", usage_limit)
                        .bind("valuee", valuee)
                        .bind("type", type)
                        .execute()
        );
        if (i > 0) {
            return true;
        }
        return false;
    }

//    public List<Voucher> getListVoucherSortTime(String type) {
//        return getJdbi().withHandle(handle ->
//                handle.createQuery("SELECT * FROM VOUCHER" +" ORDER BY created_at "+type).mapToBean(Voucher.class).list()
//        );
//    }
//
//    public List<Voucher> getListVoucherSortType(String type) {
//        return getJdbi().withHandle(handle ->
//                handle.createQuery("SELECT * FROM VOUCHER where type like :type ORDER BY created_at DESC").bind("type",type).mapToBean(Voucher.class).list()
//        );
//    }

    public List<Voucher> filterVoucher(String keyword, String type, String time) {
        StringBuilder sql = new StringBuilder("SELECT * FROM voucher WHERE 1=1 ");

        if (keyword != null && !keyword.trim().isEmpty()) {
            sql.append(" AND (code LIKE :kw OR description LIKE :kw OR type LIKE :kw)");
        }

        if (type != null && !type.isEmpty()) {
            sql.append(" AND type = :type");
        }

        if ("new".equals(time)) {
            sql.append(" ORDER BY start_date DESC");
        } else if ("old".equals(time)) {
            sql.append(" ORDER BY start_date ASC");
        }

        return getJdbi().withHandle(handle -> {
            var query = handle.createQuery(sql.toString());

            if (keyword != null && !keyword.trim().isEmpty()) {
                query.bind("kw", "%" + keyword + "%");
            }
            if (type != null && !type.isEmpty()) {
                query.bind("type", type);
            }

            return query.mapToBean(Voucher.class).list();
        });
    }

    public boolean deleteVoucher(int id) {
        return getJdbi().inTransaction(handle -> {

            // Có thì xóa, không có thì thôi
            handle.createUpdate(
                    "DELETE FROM voucher_user WHERE voucher_id = :id"
            ).bind("id", id).execute();

            int count = handle.createUpdate(
                    "DELETE FROM voucher WHERE id = :id"
            ).bind("id", id).execute();

            return count > 0;
        });
    }

    public boolean updateVoucher(int id, String code, String description, int conditionPrice, String conditionBook, String conditionPublisher, String startDate, String endDate, int usageLimit, double valuee, String type) {
        int i = getJdbi().withHandle(handle ->
                handle.createUpdate(
                                "UPDATE voucher SET " +
                                        "code = :code, " +
                                        "description = :description, " +
                                        "conditionPrice = :conditionPrice, " +
                                        "conditionBook = :conditionBook, " +
                                        "conditionPublisher = :conditionPublisher, " +
                                        "start_date = :start_date, " +
                                        "end_date = :end_date, " +
                                        "usage_limit = :usage_limit, " +
                                        "valuee = :valuee, " +
                                        "type = :type " +
                                        "WHERE id = :id"
                        )
                        .bind("id", id)
                        .bind("code", code)
                        .bind("description", description)
                        .bind("conditionPrice", conditionPrice)
                        .bind("conditionBook", conditionBook)
                        .bind("conditionPublisher", conditionPublisher)
                        .bind("start_date", startDate)
                        .bind("end_date", endDate)
                        .bind("usage_limit", usageLimit)
                        .bind("valuee", valuee)
                        .bind("type", type)
                        .execute()
        );
        if (i > 0) {
            return true;
        }
        return false;
    }
}
