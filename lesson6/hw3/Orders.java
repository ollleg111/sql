package lesson6.hw3;

import java.util.Date;

public class Orders {

    /*CREATE TABLE ORDERS(
ORDER_ID NUMBER,
CONSTRAINT ORDER_PK PRIMARY KEY (ORDER_ID),
CUSTOMER_ID NUMBER,
CONSTRAINT CUSTOMER_FK FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMERS(CUSTOMER_ID),
EMPLOYEE_ID NUMBER,
CONSTRAINT EMPLOYEE_FK FOREIGN KEY(EMPLOYEE_ID) REFERENCES EMPLOYEES(EMPLOYEE_ID),
SHIPPER_ID NUMBER,
CONSTRAINT SHIPPER_FK FOREIGN KEY(SHIPPER_ID) REFERENCES SHIPPERS(SHIPPER_ID),
ORDER_DATE TIMESTAMP NOT NULL,
REQUIRED_DATE TIMESTAMP NOT NULL,
SHIPPED_DATE TIMESTAMP NOT NULL,
SHIP_VIA NVARCHAR2(50) NOT NULL,
FREIGHT NUMBER NOT NULL,
SHIP_NAME NVARCHAR2(50) NOT NULL,
SHIP_ADDRESS NVARCHAR2(50) NOT NULL,
SHIP_CITY NVARCHAR2(50) NOT NULL,
SHIP_REGION NVARCHAR2(50) NOT NULL,
SHIP_POSTAL_CODE NUMBER NOT NULL,
SHIP_COUNTRY NVARCHAR2(50) NOT NULL
);*/

    private Customers customers;
    private Employees employees;
    private Shippers shippers;

    private long orderId;
    private Date requiredDate;
    private Date ahippedDate;
    private String shipVia;
    private int freight;
    private String shipName;
    private String shipAddress;
    private String shipCity;
    private String shipRegion;
    private int shipPostalCode;
    private String shipCountry;

    public Orders(Customers customers, Employees employees, Shippers shippers, long orderId, Date requiredDate,
                  Date ahippedDate, String shipVia, int freight, String shipName, String shipAddress,
                  String shipCity, String shipRegion, int shipPostalCode, String shipCountry) {
        this.customers = customers;
        this.employees = employees;
        this.shippers = shippers;
        this.orderId = orderId;
        this.requiredDate = requiredDate;
        this.ahippedDate = ahippedDate;
        this.shipVia = shipVia;
        this.freight = freight;
        this.shipName = shipName;
        this.shipAddress = shipAddress;
        this.shipCity = shipCity;
        this.shipRegion = shipRegion;
        this.shipPostalCode = shipPostalCode;
        this.shipCountry = shipCountry;
    }

    public Customers getCustomers() {
        return customers;
    }

    public Employees getEmployees() {
        return employees;
    }

    public Shippers getShippers() {
        return shippers;
    }

    public long getOrderId() {
        return orderId;
    }

    public Date getRequiredDate() {
        return requiredDate;
    }

    public Date getAhippedDate() {
        return ahippedDate;
    }

    public String getShipVia() {
        return shipVia;
    }

    public int getFreight() {
        return freight;
    }

    public String getShipName() {
        return shipName;
    }

    public String getShipAddress() {
        return shipAddress;
    }

    public String getShipCity() {
        return shipCity;
    }

    public String getShipRegion() {
        return shipRegion;
    }

    public int getShipPostalCode() {
        return shipPostalCode;
    }

    public String getShipCountry() {
        return shipCountry;
    }
}
