package lesson6.hw3;

public class Shippers {

    /*CREATE TABLE SHIPPERS(
SHIPPER_ID NUMBER,
CONSTRAINT SHIPPER_PK PRIMARY KEY (SHIPPER_ID),
COMPANY_NAME NVARCHAR2(50) NOT NULL,
PHONE NUMBER NOT NULL
);*/

    private long shippersId;
    private String companyName;
    private int phoneNumber;

    public Shippers(long shippersId, String companyName, int phoneNumber) {
        this.shippersId = shippersId;
        this.companyName = companyName;
        this.phoneNumber = phoneNumber;
    }

    public long getShippersId() {
        return shippersId;
    }

    public String getCompanyName() {
        return companyName;
    }

    public int getPhoneNumber() {
        return phoneNumber;
    }
}
