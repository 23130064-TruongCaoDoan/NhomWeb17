package dao;

import model.Address;
import model.Book;

import java.util.List;

public class AddressDao extends BaseDao{
    public void insertAddress(Address address) {
        getJdbi().useHandle(handle -> {
            handle.createUpdate(
                            "INSERT INTO address (user_id, name, phone, city, district, ward, specificAddress, is_default) " +
                                    "VALUES (:userId, :name, :phone, :city, :district, :ward, :specificAddress, :isDefault)"
                    )
                    .bind("userId", address.getUserId())
                    .bind("name", address.getName())
                    .bind("phone", address.getPhone())
                    .bind("city", address.getCity())
                    .bind("district", address.getDistrict())
                    .bind("ward", address.getWard())
                    .bind("specificAddress", address.getSpecificAddress())
                    .bind("isDefault", address.getIsDefault() ? 1 : 0)
                    .execute();
        });
    }
    public List<Address> getAddress(int userId) {
        return getJdbi().withHandle(handle ->
                handle.createQuery("SELECT * FROM ADDRESS WHERE user_id = :userId ORDER BY ID")
                        .bind("userId", userId)
                        .mapToBean(Address.class)
                        .list()

        );
    }
    publi
}
