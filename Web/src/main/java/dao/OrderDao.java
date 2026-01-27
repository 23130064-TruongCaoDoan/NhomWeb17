package dao;

import DTO.MyOrderDTO;
import model.Order;

import java.util.List;

public class OrderDao extends BaseDao{

    public int addOrder(int userId, double totalAmount, String note, Integer dis, Integer ship) {
        try {
            return getJdbi().withHandle(handle ->
                    handle.createUpdate("""
                INSERT INTO `ORDERS`
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

        public List<MyOrderDTO> findOrdersByUserId(int userId) {

            String sql = """
            SELECT 
                o.id            AS orderId,
                o.order_date    AS orderDate,
                o.status        AS status,
                o.total_amount  AS totalAmount,

                SUM(oi.quantity) AS totalQuantity,
                MIN(b.cover_img_url) AS firstBookImage
            FROM orders o
            JOIN order_items oi ON o.id = oi.order_id
            JOIN books b ON oi.book_id = b.id
            WHERE o.user_id = :userId
            GROUP BY o.id, o.order_date, o.status, o.total_amount
            ORDER BY o.order_date DESC
        """;

            return getJdbi().withHandle(handle ->
                    handle.createQuery(sql)
                            .bind("userId", userId)
                            .mapToBean(MyOrderDTO.class)
                            .list()
            );
    }

    public static void main(String[] args) {
        OrderDao orderDao = new OrderDao();
        System.out.println(orderDao.addOrder(31,2000,"",13,14));
    }
}
