package dao;

public class OrderDao extends BaseDao{

    public int addOrder(int userId, double totalAmount, String note, Integer dis, Integer ship) {
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

    public static void main(String[] args) {
        OrderDao orderDao = new OrderDao();
        System.out.println(orderDao.addOrder(31,2000,"",13,14));
    }
}
