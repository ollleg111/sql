package lesson6.hw3;

public class Suppliers {

    /*CREATE TABLE SUPPLIERS(
SUPPLIER_ID NUMBER,
CONSTRAINT SUPPLIER_PK PRIMARY KEY (SUPPLIER_ID),
COMPANY_NAME NVARCHAR2(50) UNIQUE,
CONTACT_NAME NVARCHAR2(50) NOT NULL,
CONTACT_TITLE NVARCHAR2(100) NOT NULL,
ADDRESS NVARCHAR2(50) NOT NULL,
CITY NVARCHAR2(50) NOT NULL,
REGION NVARCHAR2(50) NOT NULL,
POSTAL_CODE NUMBER NOT NULL,
COUNTRY NVARCHAR2(50) NOT NULL,
PHONE NUMBER NOT NULL,
FAX NUMBER NOT NULL,
HOME_PAGE NVARCHAR2(50) UNIQUE
);*/
    private long supplierId;
    private String companyName;
    private String contactName;
    private String contactTitle;
    private String address;
    private String city;
    private String region;
    private int postaralCode;
    private String country;
    private int phoneNumber;
    private int faxNumber;
    private String homePage;

    public Suppliers(long supplierId, String companyName, String contactName, String contactTitle, String address,
                     String city, String region, int postaralCode, String country, int phoneNumber, int faxNumber,
                     String homePage) {
        this.supplierId = supplierId;
        this.companyName = companyName;
        this.contactName = contactName;
        this.contactTitle = contactTitle;
        this.address = address;
        this.city = city;
        this.region = region;
        this.postaralCode = postaralCode;
        this.country = country;
        this.phoneNumber = phoneNumber;
        this.faxNumber = faxNumber;
        this.homePage = homePage;
    }

    public long getSupplierId() {
        return supplierId;
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

    public int getPostaralCode() {
        return postaralCode;
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

    public String getHomePage() {
        return homePage;
    }
}
