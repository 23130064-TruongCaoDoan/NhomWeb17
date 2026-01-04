package dao;

public class OrderDao extends BaseDao{

    public int addOrder(int userId, double totalAmount, String note, int dis, int ship) {
        try {
            return getJdbi().withHandle(handle ->
                    handle.createUpdate("""
                INSERT INTO ORDERS
                (user_id, total_amount, note, status, dis_voucher_id, ship_voucher_id)
                VALUES (:user_id, :total_amount, :note, :status, :dis_voucher_id, :ship_voucher_id)
            """)
                            .bind("user_id", userId)
                            .bind("total_amount", totalAmount)
                            .bind("note", note)
                            .bind("status", "NOPAID")
                            .bind("dis_voucher_id", dis)
                            .bind("ship_voucher_id", ship)
                            .executeAndReturnGeneratedKeys("id")
                            .mapTo(int.class)
                            .one()
            );
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }
}
