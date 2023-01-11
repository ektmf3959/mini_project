package co.mini.prj.product.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ProductVO {
//	PRODUCT_NUM        NOT NULL NUMBER         
//	PRICE                       NUMBER         
//	COUNT                       NUMBER         
//	PRODUCT_NAME                VARCHAR2(300)  
//	PRODUCT_TYPE                VARCHAR2(20)   
//	HIT                         NUMBER         
//	PT_STATE                    VARCHAR2(20)   
//	EXPLAIN                     VARCHAR2(4000) 
//	PRODUCT_ATTACH_DIR          VARCHAR2(200)  
//	PRODUCT_ATTACH              VARCHAR2(250)  
	
	private int productNum;
	private int price;
	private int count;
	private String productName;
	private String productType;
	private int hit;
	private int total; // 총 상품수 + 1
	private String ptState;
	private String explain;
	private String productAttachDir;
	private String productAttach;
    public int getProductNum() {
        return productNum;
    }
    public void setProductNum(int productNum) {
        this.productNum = productNum;
    }
    public int getPrice() {
        return price;
    }
    public void setPrice(int price) {
        this.price = price;
    }
    public int getCount() {
        return count;
    }
    public void setCount(int count) {
        this.count = count;
    }
    public String getProductName() {
        return productName;
    }
    public void setProductName(String productName) {
        this.productName = productName;
    }
    public String getProductType() {
        return productType;
    }
    public void setProductType(String productType) {
        this.productType = productType;
    }
    public int getHit() {
        return hit;
    }
    public void setHit(int hit) {
        this.hit = hit;
    }
    public int getTotal() {
        return total;
    }
    public void setTotal(int total) {
        this.total = total;
    }
    public String getPtState() {
        return ptState;
    }
    public void setPtState(String ptState) {
        this.ptState = ptState;
    }
    public String getExplain() {
        return explain;
    }
    public void setExplain(String explain) {
        this.explain = explain;
    }
    public String getProductAttachDir() {
        return productAttachDir;
    }
    public void setProductAttachDir(String productAttachDir) {
        this.productAttachDir = productAttachDir;
    }
    public String getProductAttach() {
        return productAttach;
    }
    public void setProductAttach(String productAttach) {
        this.productAttach = productAttach;
    }
	
	
}
