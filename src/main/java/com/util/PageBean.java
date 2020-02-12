package com.util;

import java.util.List;

public class PageBean<T> {
    private int curPage = 1;
    private int pageCount = 6;
    private int totalPage;
    private int totalCount;
    private List<T> pageData;


    public int getTotalPage() {
        if (totalCount%pageCount==0){
            this.totalPage=totalCount/pageCount;
        }else {
            this.totalPage=(totalCount/pageCount)+1;
        }
        return totalPage;
    }


    public int getCurPage() {
        return curPage;
    }

    public void setCurPage(int curPage) {
        this.curPage = curPage;
    }

    public int getPageCount() {
        return pageCount;
    }

    public void setPageCount(int pageCount) {
        this.pageCount = pageCount;
    }


    public int getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

    public List<T> getPageData() {
        return pageData;
    }

    public void setPageData(List<T> pageData) {
        this.pageData = pageData;
    }

    @Override
    public String toString() {
        return "PageBean{" +
                "curPage=" + curPage +
                ", pageCount=" + pageCount +
                ", totalPage=" + totalPage +
                ", totalCount=" + totalCount +
                ", pageData=" + pageData +
                '}';
    }
}
