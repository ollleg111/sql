package lesson6.hw3;

public class Products {

    /*CREATE TABLE PRODUCTS(
PRODUCT_ID NUMBER,
CONSTRAINT PRODUCT_PK PRIMARY KEY (PRODUCT_ID),
PRODUCT_NAME NVARCHAR2(100) UNIQUE,
SUPPLIER_ID NUMBER,
CONSTRAINT SUPPLIER_FK FOREIGN KEY(SUPPLIER_ID) REFERENCES SUPPLIERS(SUPPLIER_ID),
CATEGORY_ID NUMBER,
CONSTRAINT CATEGORY_FK FOREIGN KEY(CATEGORY_ID) REFERENCES CATEGORIES(CATEGORY_ID),
QUANTITY_PER_UNIT NUMBER NOT NULL,
UNIT_PRICE NUMBER NOT NULL,
UNIT_ON_STOCK NUMBER NOT NULL,
UNIT_ON_ORDER NUMBER NOT NULL,
REORDER_LEVEL NUMBER NOT NULL,
DISCONTINUED NUMBER NOT NULL
);*/

    private Suppliers suppliers;
    private Categories categories;

    private long productId;
    private int quantityPerUnit;
    private double unitPrice;
    private int unitsInStock;
    private int unitsOnOrder;
    private int reorderLevel;
    private int discontinued;

    public Products(long productId, Suppliers suppliers, Categories categories, int quantityPerUnit,
                    double unitPrice, int unitsInStock, int unitsOnOrder, int reorderLevel, int discontinued) {
        this.productId = productId;
        this.suppliers = suppliers;
        this.categories = categories;
        this.quantityPerUnit = quantityPerUnit;
        this.unitPrice = unitPrice;
        this.unitsInStock = unitsInStock;
        this.unitsOnOrder = unitsOnOrder;
        this.reorderLevel = reorderLevel;
        this.discontinued = discontinued;
    }

    public long getProductId() {
        return productId;
    }

    public Suppliers getSuppliers() {
        return suppliers;
    }

    public Categories getCategories() {
        return categories;
    }

    public int getQuantityPerUnit() {
        return quantityPerUnit;
    }

    public double getUnitPrice() {
        return unitPrice;
    }

    public int getUnitsInStock() {
        return unitsInStock;
    }

    public int getUnitsOnOrder() {
        return unitsOnOrder;
    }

    public int getReorderLevel() {
        return reorderLevel;
    }

    public int getDiscontinued() {
        return discontinued;
    }
}
