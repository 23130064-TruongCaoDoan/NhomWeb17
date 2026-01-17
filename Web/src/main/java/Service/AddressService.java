package Service;

import dao.AddressDao;
import model.Address;

import java.util.List;

public class AddressService {
    private AddressDao addressDao = new AddressDao();
    public void insertAddress(Address address){
        addressDao.insertAddress(address);
    }
    public List<Address> getAddress(int userId){
        return addressDao.getAddress(userId);
    }
    public void deleteAddress(int id){
        addressDao.deleteAddress(id);
    }
    public void updateAddress(Address address){
        addressDao.updateAddress(address);
    }

    public Address getAddressById(int id) {
        return addressDao.getAddressById(id);
    }
}
