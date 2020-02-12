package com.crawl.crawl.page;

import org.jsoup.select.Elements;


public class PageParserTool {




    public static Elements select(Page page, String cssSelector) {
        return page.getDoc().select(cssSelector);
    }
}
