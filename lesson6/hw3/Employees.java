package lesson6.hw3;

import java.util.Date;

public class Employees {

    /*CREATE TABLE EMPLOYEES(
EMPLOYEE_ID NUMBER,
CONSTRAINT EMPLOYEE_PK PRIMARY KEY (EMPLOYEE_ID),
LAST_NAME NVARCHAR2(50) NOT NULL,
FIRST_NAME NVARCHAR2(50) NOT NULL,
TITLE NVARCHAR2(100) NOT NULL,
TITLE_OF_COURTESY NVARCHAR2(100) NOT NULL,
BIRTH_DATE TIMESTAMP NOT NULL,
HIRE_DATE TIMESTAMP NOT NULL,
ADDRESS NVARCHAR2(50) NOT NULL,
CITY NVARCHAR2(50) NOT NULL,
REGION NVARCHAR2(50) NOT NULL,
POSTAL_CODE NUMBER NOT NULL,
SHIP_COUNTRY NVARCHAR2(50) NOT NULL,
HOME_PHONE NUMBER NOT NULL,
EXTENSION NUMBER NOT NULL,
PHOTO NVARCHAR2(50) NOT NULL,
-- не знаю ничего о фото
NOTES NVARCHAR2(100) UNIQUE,
REPORTS_TO NVARCHAR2(100) UNIQUE
);*/

    private long employeeId;
    private String lastName;
    private String firstName;
    private String title;
    private String titleOfCourtesy;
    private Date birthDate;
    private String hireDate;
    private int address;
    private String city;
    private String region;
    private int postalCode;
    private String shipCountry;
    private int homePhone;
    private int extension;
    private String photo;
    private String notes;
    private String reportsTo;

    public Employees(long employeeId, String lastName, String firstName, String title, String titleOfCourtesy,
                     Date birthDate, String hireDate, int address, String city, String region, int postalCode,
                     String shipCountry, int homePhone, int extension, String photo, String notes, String reportsTo) {
        this.employeeId = employeeId;
        this.lastName = lastName;
        this.firstName = firstName;
        this.title = title;
        this.titleOfCourtesy = titleOfCourtesy;
        this.birthDate = birthDate;
        this.hireDate = hireDate;
        this.address = address;
        this.city = city;
        this.region = region;
        this.postalCode = postalCode;
        this.shipCountry = shipCountry;
        this.homePhone = homePhone;
        this.extension = extension;
        this.photo = photo;
        this.notes = notes;
        this.reportsTo = reportsTo;
    }

    public long getEmployeeId() {
        return employeeId;
    }

    public String getLastName() {
        return lastName;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getTitle() {
        return title;
    }

    public String getTitleOfCourtesy() {
        return titleOfCourtesy;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public String getHireDate() {
        return hireDate;
    }

    public int getAddress() {
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

    public String getShipCountry() {
        return shipCountry;
    }

    public int getHomePhone() {
        return homePhone;
    }

    public int getExtension() {
        return extension;
    }

    public String getPhoto() {
        return photo;
    }

    public String getNotes() {
        return notes;
    }

    public String getReportsTo() {
        return reportsTo;
    }
}
