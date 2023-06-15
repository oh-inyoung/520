package com.foods.vo;

import java.sql.Date;

public class FoodsVO {
   /* 영양제 id */
   private int foodsId;
   
   /* 영양제 이름 */
   private String foodsName;

   /* 카테고리 코드 */
   private String cateCode;
   
   /* 카테고리 이름 */
   private String cateName;
   
   /* 상품 가격 */
   private int foodsPrice;
   
   /* 상품 소개 */
   private String foodsDetail;

   /* 등록 날짜 */
   private Date foodsRegDate;
   
   /* 수정 날짜 */
   private Date foodsUpdateDate;

   public int getFoodsId() {
      return foodsId;
   }

   public void setFoodsId(int foodsId) {
      this.foodsId = foodsId;
   }

   public String getFoodsName() {
      return foodsName;
   }

   public void setFoodsName(String foodsName) {
      this.foodsName = foodsName;
   }

   public String getCateCode() {
      return cateCode;
   }

   public void setCateCode(String cateCode) {
      this.cateCode = cateCode;
   }

   public String getCateName() {
      return cateName;
   }

   public void setCateName(String cateName) {
      this.cateName = cateName;
   }

   public int getFoodsPrice() {
      return foodsPrice;
   }

   public void setFoodsPrice(int foodsPrice) {
      this.foodsPrice = foodsPrice;
   }

   

   public String getFoodsDetail() {
      return foodsDetail;
   }

   public void setFoodsDetail(String foodsDetail) {
      this.foodsDetail = foodsDetail;
   }

   public Date getFoodsRegDate() {
      return foodsRegDate;
   }

   public void setFoodsRegDate(Date foodsRegDate) {
      this.foodsRegDate = foodsRegDate;
   }

   public Date getFoodsUpdateDate() {
      return foodsUpdateDate;
   }

   public void setFoodsUpdateDate(Date foodsUpdateDate) {
      this.foodsUpdateDate = foodsUpdateDate;
   }

   @Override
   public String toString() {
      return "FoodsVO [foodsId=" + foodsId + ", foodsName=" + foodsName + ", cateCode=" + cateCode + ", cateName="
            + cateName + ", foodsPrice=" + foodsPrice + ",foodsDetail=" + foodsDetail + ", foodsRegDate=" + foodsRegDate
            + ", foodsUpdateDate=" + foodsUpdateDate + "]";
   }
   
}