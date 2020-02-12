package com.crawl.crawl.link;

//过滤器
public interface LinkFilter {
    public boolean accept(String url);
}
