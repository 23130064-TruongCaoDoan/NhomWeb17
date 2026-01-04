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

    public boolean addOrder(int userId, double totalAmount, String note, int dis, int ship, int address_id, String shipping_type, double shipping_cost, String delivered_date) {
        int order_id = orderDao.addOrder(userId, totalAmount, note, dis, ship);
        int ship_id = shippingDao.addShipping(order_id, address_id, shipping_type, shipping_cost, delivered_date);
        return order_id !=-1 && ship_id !=-1;
    }

}
