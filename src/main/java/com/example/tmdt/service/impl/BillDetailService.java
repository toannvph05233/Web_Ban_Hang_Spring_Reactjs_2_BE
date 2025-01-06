package com.example.tmdt.service.impl;

import com.example.tmdt.dto.BillDetailDTO;
import com.example.tmdt.dto.CartDetailDTO;
import com.example.tmdt.mapper.BillDetailMapper;
import com.example.tmdt.mapper.BillMapper;
import com.example.tmdt.mapper.CartDetailMapper;
import com.example.tmdt.mapper.ProductMapper;
import com.example.tmdt.model.*;
import com.example.tmdt.model.buyPrd.Bill;
import com.example.tmdt.model.buyPrd.BillDetail;
import com.example.tmdt.model.buyPrd.CartDetail;
import com.example.tmdt.model.fkProduct.Shop;
import com.example.tmdt.repository.*;
import com.example.tmdt.security.model.Account;
import com.example.tmdt.security.service.impl.AccountServiceImpl;
import com.example.tmdt.service.IBillDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.*;

@Service
public class BillDetailService implements IBillDetailService {
    @Autowired
    private CartDetailRepository cartDetailRepository;
    @Autowired
    private CartRepository cartRepository;
    @Autowired
    private BillRepository billRepository;
    @Autowired
    private BillDetailRepository billDetailRepository;
    @Autowired
    private ProductRepository productRepository;
    @Autowired
    private ShopRepository shopRepository;
    @Autowired
    private BillDetailMapper billDetailMapper;
    @Autowired
    private BillMapper billMapper;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private CartDetailMapper cartDetailMapper;
    @Autowired
    private NotificationRepository notificationRepository;
    @Autowired
    private IProductDetailRepo iProductDetailRepo;

    @Autowired
    AccountServiceImpl accountService;

    @Autowired
    DiscountRepository discountRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Override
    public void save(BillDetailDTO dto) {

    }

    @Override
    public void delete(Long id) {

    }

    @Override
    public BillDetailDTO findOne(Long id) {
        return null;
    }

    @Override
    public List<BillDetailDTO> findAll() {
        return null;
    }


    @Override
    public List<Bill> addToBill(List<CartDetailDTO> cartDetailDTOS, Long idAccount, Long discount) {
        List<Bill> bills = new ArrayList<>();
        User user = userRepository.findUserByAccount_Id(idAccount);
        List<Long> ids = new ArrayList<>();
        ProductDetail productDetail = iProductDetailRepo.findById(cartDetailDTOS.get(0).getProductDetail().getId()).get();

        ids.add(productDetail.getProduct().getShop().getId());
        if (user.getAddress() != null && user.getPhone() != null) {
            List<CartDetail> cartDetails = cartDetailMapper.toEntity(cartDetailDTOS);
            for (CartDetail cartDetail : cartDetails) {
                for (Long id : ids) {
                    if (!cartDetail.getProductDetail().getProduct().getShop().getId().equals(id)) {
                        ids.add(cartDetail.getProductDetail().getProduct().getShop().getId());
                        break;
                    }
                }
            }
            for (Long id : ids) {
                Bill bill = createBillDetail1(cartDetailDTOS, id, user, discount);
                bills.add(bill);
            }
        }
        return bills;
    }

    @Override
    public List<Bill> addToBillOffline(List<CartDetailDTO> cartDetailDTOS, String email) {
        List<Bill> bills = new ArrayList<>();
        Account account = accountService.findAccountByEmail(email);
        User user = userRepository.findUserByEmail(email);
        if (account == null){
            account = new Account();
            account.setPassword(passwordEncoder.encode("123456"));
            account.setUsername(email);
            account.setEmail(email);
            account.setStatus("active");
            accountService.save(account);
            user = new User();
            user.setEmail(email);
            user.setAvatar("https://images.pexels.com/photos/1212487/pexels-photo-1212487.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500");
            user.setAccount(account);
            userRepository.save(user);
        }
        List<Long> ids = new ArrayList<>();
        ProductDetail productDetail = iProductDetailRepo.findById(cartDetailDTOS.get(0).getProductDetail().getId()).get();

        ids.add(productDetail.getProduct().getShop().getId());
            List<CartDetail> cartDetails = cartDetailMapper.toEntity(cartDetailDTOS);
            for (CartDetail cartDetail : cartDetails) {
                for (Long id : ids) {
                    if (!cartDetail.getProductDetail().getProduct().getShop().getId().equals(id)) {
                        ids.add(cartDetail.getProductDetail().getProduct().getShop().getId());
                        break;
                    }
                }

            for (Long id : ids) {
                Bill bill = createBillDetailOffline(cartDetailDTOS, id, user);
                bills.add(bill);
            }
        }
        return bills;
    }

    private Bill createBillDetail1(List<CartDetailDTO> cartDetailDTOS, Long shopId, User user, Long discountId) {
        double totalBill = 0;
        for (CartDetailDTO cartDetailDTO : cartDetailDTOS) {
            ProductDetail productDetail = iProductDetailRepo.findById(cartDetailDTO.getProductDetail().getId()).get();
            Double newPrice = productDetail.getProduct().getPrice() - (productDetail.getProduct().getPrice() * productDetail.getProduct().getPromotion() / 100);
            totalBill += (cartDetailDTO.getQuantity() * newPrice);
        }
        if (discountId != 0) {
            Discount discountObj = discountRepository.findById(discountId).get();
            totalBill -= discountObj.getCode();
            discountObj.setCount(discountObj.getCount()-1);
            discountRepository.save(discountObj);
        }
        Shop shop = shopRepository.findById(shopId).get();
        Bill bill = new Bill();
        bill.setShop(shop);
        bill.setTotal(totalBill + " ");
        bill.setName(user.getName());
        bill.setPhone(user.getPhone());
        bill.setAddress(user.getAddress());
        bill.setWards(user.getWards());
        bill.setDate(LocalDate.now());
        bill.setStatus("Chờ xác nhận");
        bill.setPayment("chưa thanh toán");
        bill.setAccount(cartDetailDTOS.get(0).getCart().getAccount());
        bill = billRepository.save(bill);

        User user1 = userRepository.findUserByAccount_Id(bill.getAccount().getId());
        Notification notification = new Notification();
        notification.setBill(bill);
        notification.setTitle("Thông báo shop");
        notification.setContent("Đơn hàng đã được đặt");
        notification.setAvatar(user1.getAvatar());
        notification.setCreateAt(LocalDateTime.now());
        notification.setShop(shop);
        notification.setAccount(bill.getAccount());
        notificationRepository.save(notification);

        for (CartDetailDTO cartDetailDTO : cartDetailDTOS) {
            ProductDetail productDetail = iProductDetailRepo.findById(cartDetailDTO.getProductDetail().getId()).get();
            if (productDetail.getProduct().getShop().getId().equals(bill.getShop().getId())) {
                CartDetail cartDetail = cartDetailMapper.toEntity(cartDetailDTO);
                BillDetail billDetail = new BillDetail();
                billDetail.setBill(bill);
                billDetail.setProductDetail(productDetail);
                billDetail.setQuantity(cartDetail.getQuantity());
                //xem lại
                Double newPrice = productDetail.getProduct().getPrice() - (productDetail.getProduct().getPrice() * productDetail.getProduct().getPromotion() / 100);
                billDetail.setPrice(newPrice);
                Double total = cartDetail.getQuantity() * newPrice;
                billDetail.setTotal(total);

                Double quantity = cartDetail.getQuantity();
                Product product = productDetail.getProduct();

                productDetail.setQuantity((int) (productDetail.getQuantity() - quantity));
                iProductDetailRepo.save(productDetail);
                product.setQuantity((int) (product.getQuantity() - quantity));
                product.setCount(product.getCount() + 1);
                productRepository.save(product);
                billDetailRepository.save(billDetail);

                cartDetailRepository.deleteCartDetailByProduct(product.getId());
            }
        }
        return bill;
    }
    private Bill createBillDetailOffline(List<CartDetailDTO> cartDetailDTOS, Long shopId, User user) {
        double totalBill = 0;
        for (CartDetailDTO cartDetailDTO : cartDetailDTOS) {
            ProductDetail productDetail = iProductDetailRepo.findById(cartDetailDTO.getProductDetail().getId()).get();
            Double newPrice = productDetail.getProduct().getPrice() - (productDetail.getProduct().getPrice() * productDetail.getProduct().getPromotion() / 100);
            totalBill += (cartDetailDTO.getQuantity() * newPrice);
        }
        Shop shop = shopRepository.findById(shopId).get();
        Bill bill = new Bill();
        bill.setShop(shop);
        bill.setTotal(totalBill + " ");
        bill.setName(user.getName());
        bill.setPhone(user.getPhone());
        bill.setAddress(user.getAddress());
        bill.setWards(user.getWards());
        bill.setDate(LocalDate.now());
        bill.setStatus("Đã giao");
        bill.setPayment("đã thanh toán");
        bill.setAccount(cartDetailDTOS.get(0).getCart().getAccount());
        bill = billRepository.save(bill);

        User user1 = userRepository.findUserByAccount_Id(bill.getAccount().getId());
        Notification notification = new Notification();
        notification.setBill(bill);
        notification.setTitle("Thông báo shop");
        notification.setContent("Đơn hàng đã được giao");
        notification.setAvatar(user1.getAvatar());
        notification.setCreateAt(LocalDateTime.now());
        notification.setShop(shop);
        notification.setAccount(bill.getAccount());
        notificationRepository.save(notification);

        for (CartDetailDTO cartDetailDTO : cartDetailDTOS) {
            ProductDetail productDetail = iProductDetailRepo.findById(cartDetailDTO.getProductDetail().getId()).get();
            if (productDetail.getProduct().getShop().getId().equals(bill.getShop().getId())) {
                CartDetail cartDetail = cartDetailMapper.toEntity(cartDetailDTO);
                BillDetail billDetail = new BillDetail();
                billDetail.setBill(bill);
                billDetail.setProductDetail(productDetail);
                billDetail.setQuantity(cartDetail.getQuantity());
                //xem lại
                Double newPrice = productDetail.getProduct().getPrice() - (productDetail.getProduct().getPrice() * productDetail.getProduct().getPromotion() / 100);
                billDetail.setPrice(newPrice);
                Double total = cartDetail.getQuantity() * newPrice;
                billDetail.setTotal(total);

                Double quantity = cartDetail.getQuantity();
                Product product = productDetail.getProduct();

                productDetail.setQuantity((int) (productDetail.getQuantity() - quantity));
                iProductDetailRepo.save(productDetail);
                product.setQuantity((int) (product.getQuantity() - quantity));
                product.setCount(product.getCount() + 1);
                productRepository.save(product);
                billDetailRepository.save(billDetail);

                cartDetailRepository.deleteCartDetailByProduct(product.getId());
            }
        }
        return bill;
    }


    @Override
    public List<BillDetailDTO> showBillByAccountAndStatus(Long idAccount, String status) {
        List<BillDetail> billDetails = billDetailRepository.showBillByAccountAndStatus(idAccount, status);
        return billDetailMapper.toDto(billDetails);

    }


    @Override
    public List<BillDetailDTO> displayListBuy(Long idShop, String status) {
        return null;
    }

    @Override
    public List<BillDetailDTO> findByShop(Long idShop) {
        Shop shop = shopRepository.findShopByIdAccount(idShop);
        try {
            return billDetailMapper.toDto(billDetailRepository.findAllByProductDetail_Product_Shop_Id(shop.getId()));
        } catch (Exception e) {
            return new ArrayList<>();
        }
    }

    @Override
    public List<CartDetailDTO> showProductUserSelect(List<Long> idCartDetails) {
        List<CartDetail> cartDetails = new ArrayList<>();
        for (Long idCartDetail : idCartDetails) {
            Optional<CartDetail> cartDetailOptional = cartDetailRepository.findById(idCartDetail);
            if (cartDetailOptional.isPresent()) {
                CartDetail cartDetail = cartDetailOptional.get();
                cartDetails.add(cartDetail);
            }
        }
        return cartDetailMapper.toDto(cartDetails);
    }

    @Override
    public List<BillDetailDTO> totalByDate(LocalDate date, Long idShop) {
        List<BillDetail> billDetails = billDetailRepository.totalByDate(date, idShop);
        return billDetailMapper.toDto(billDetails);
    }

    @Override
    public List<BillDetailDTO> totalByWeek(LocalDate date1, LocalDate date2, Long idShop) {
        List<BillDetail> billDetails = billDetailRepository.totalByWeek(date1, date2, idShop);
        return billDetailMapper.toDto(billDetails);
    }

    @Override
    public List<BillDetailDTO> totalBill(LocalDate date1, LocalDate date2, Long idShop) {
        List<BillDetail> billDetails = billDetailRepository.totalBill(date1, date2, idShop);
        return billDetailMapper.toDto(billDetails);
    }
}
