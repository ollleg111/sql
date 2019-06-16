package lesson6.hw3;

public class OrderDetails {

    /*CREATE TABLE ORDER_DETAILS(
ORDER_ID NUMBER,
CONSTRAINT ORDER_FK FOREIGN KEY(ORDER_ID) REFERENCES ORDERS(ORDER_ID),
PRODUCT_ID NUMBER,
CONSTRAINT PRODUCT_FK FOREIGN KEY(PRODUCT_ID) REFERENCES PRODUCTS(PRODUCT_ID),
UNIT_PRICE NUMBER NOT NULL,
QUANTITY NUMBER NOT NULL,
DISCOUNT NUMBER NOT NULL
);*/

    private Orders orders;
    private Products products;
    private double unitPrice;
    private int quantity;
    private int discount;

    public OrderDetails(Orders orders, Products products, double unitPrice, int quantity, int discount) {
        this.orders = orders;
        this.products = products;
        this.unitPrice = unitPrice;
        this.quantity = quantity;
        this.discount = discount;
    }

    public Orders getOrders() {
        return orders;
    }

    public Products getProducts() {
        return products;
    }

    public double getUnitPrice() {
        return unitPrice;
    }

    public int getQuantity() {
        return quantity;
    }

    public int getDiscount() {
        return discount;
    }
}
