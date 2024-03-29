 package com.epidial.common;

 import java.util.List;


 public class Page<T> {
	 // 总页数
	 private int totalPageCount = 0;
	 // 页面大小，即每页显示记录数
	 private int pageSize = 200;
	 // 记录总数
	 private int totalCount;
	 // 当前页码
	 private int currPageNo = 0;
	 // 每页新闻集合
	 private List<T> newsList;

     public int getZong() {
         return zong;
     }

     public void setZong(int zong) {
         this.zong = zong;
     }

     private int zong;

     public int getDang() {
         return dang;
     }

     public void setDang(int dang) {
         this.dang = dang;
     }

     private int dang;



     public int getMypage() {
         return mypage;
     }

     public void setMypage(int mypage) {
         this.mypage = mypage;
     }

     private int mypage=0;


	 public int getCurrPageNo() {
		 if (totalPageCount == 0)
			 return 0;
		 return currPageNo;
	 }

	 public void setCurrPageNo(int currPageNo) {
		 if (currPageNo > 0)
			 this.currPageNo = currPageNo;
	 }

	 public int getPageSize() {
		 return pageSize;
	 }

	 public void setPageSize(int pageSize) {
		 if (pageSize > 0)
			 this.pageSize = pageSize;
	 }

	 public int getTotalCount() {
		 return totalCount;
	 }

	 public void setTotalCount(int totalCount) {
		 if (totalCount > 0) {
			 this.totalCount = totalCount;
			 // 计算总页数
			 totalPageCount = this.totalCount % pageSize == 0 ? (this.totalCount / pageSize)
					 : (this.totalCount / pageSize + 1);
		 }
	 }

	 public int getTotalPageCount() {
		 return totalPageCount;
	 }

	 public void setTotalPageCount(int totalPageCount) {
		 this.totalPageCount = totalPageCount;
	 }

	 public List<T> getNewsList() {
		 return newsList;
	 }


	 public void setNewsList(List<T> newsList) {
		 this.newsList = newsList;
	 }

	 @Override
	 public String toString() {
		 return "Page [totalPageCount=" + totalPageCount + ", pageSize="
				 + pageSize + ", totalCount=" + totalCount + ", currPageNo="
				 + currPageNo + ", newsList=" + newsList + "]";
	 }

 }