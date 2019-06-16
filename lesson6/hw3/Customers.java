package lesson6.hw3;

public class Customers {

    /*CREATE TABLE CUSTOMERS(
CUSTOMER_ID NUMBER,
CONSTRAINT CUSTOMER_PK PRIMARY KEY (CUSTOMER_ID),
COMPANY_NAME NVARCHAR2(50) UNIQUE,
CONTACT_NAME NVARCHAR2(50) NOT NULL,
CONTACT_TITLE NVARCHAR2(100) NOT NULL,
ADDRESS NVARCHAR2(50) NOT NULL,
CITY NVARCHAR2(50) NOT NULL,
REGION NVARCHAR2(50) NOT NULL,
POSTAL_CODE NUMBER NOT NULL,
COUNTRY NVARCHAR2(50) NOT NULL,
PHONE NUMBER NOT NULL,
FAX NUMBER NOT NULL
);*/

    private long customerId;
    private String companyName;
    private String contactName;
    private String contactTitle;
    private String address;
    private String city;
    private String region;
    private int postalCode;
    private String country;
    private int phoneNumber;
    private int faxNumber;

    public Customers(long customerId, String companyName, String contactName, String contactTitle,
                     String address, String city, String region, int postalCode, String country,
                     int phoneNumber, int faxNumber) {
        this.customerId = customerId;
        this.companyName = companyName;
        this.contactName = contactName;
        this.contactTitle = contactTitle;
        this.address = address;
        this.city = city;
        this.region = region;
        this.postalCode = postalCode;
        this.country = country;
        this.phoneNumber = phoneNumber;
        this.faxNumber = faxNumber;
    }

    public long getCustomerId() {
        return customerId;
    }

    public String getCompanyName() {
        return companyName;
    }

    public String getContactName() {
        return contactName;
    }

    public String getContactTitle() {
        return contactTitle;
    }

    public String getAddress() {
        return address;
    }

    public String getCity() {
        return city;
    }

    public String getRegion() {
        return region;
    }

    public int getPostalCode() {
        return postalCode;
    }

    public String getCountry() {
        return country;
    }

    public int getPhoneNumber() {
        return phoneNumber;
    }

    public int getFaxNumber() {
        return faxNumber;
    }
}
