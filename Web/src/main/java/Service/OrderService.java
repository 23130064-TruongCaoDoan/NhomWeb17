package Service;

import dao.OrderDao;
import dao.ShippingDao;

public class OrderService {
    OrderDao orderDao;
    ShippingDao shippingDao;

    public OrderService() {
        this.orderDao = new OrderDao();
        this.shippingDao = new ShippingDao();
    }

    public boolean addOrder(int userId, double totalAmount, String note, Integer dis, Integer ship, Integer address_id, String shipping_type, double shipping_cost, String delivered_date) {
        int order_id = orderDao.addOrder(userId, totalAmount, note, dis, ship);
        int ship_id = shippingDao.addShipping(order_id, address_id, shipping_type, shipping_cost, delivered_date);
        return order_id !=-1 && ship_id !=-1;
    }

    public static void main(String[] args) {
        OrderService orderService = new OrderService();
        System.out.println(orderService.addOrder(31,2000,"hehe",13,14,9, "nhanh",20000,"22/10/2024"));

    }

}
