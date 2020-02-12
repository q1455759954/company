package com.crawl.crawl.page;

import com.crawl.crawl.util.CharsetDetector;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

import java.io.UnsupportedEncodingException;

public class Page {

    private byte[] content;
    private String html;//网页源码字符串
    private Document doc;//网页Dom文档
    private String charset;//字符编码
    private String url ;//url路径
    private String contentType ;// 内容类型


    public Page(byte[] responseBody, String url, String contentType) {
        this.content=responseBody;
        this.url=url;
        this.contentType=contentType;
    }
    public String getCharset() {
        return charset;
    }
    public String getUrl(){return url ;}
    public String getContentType(){ return contentType ;}
    public byte[] getContent(){ return content ;}

    public String getHtml(){
        if (html!=null){
            return html;
        }
        if (content==null){
            return null;
        }
        if (charset==null){
//            charset = CharsetDetector.guessEncoding(content); // 根据内容来猜测 字符编码
            charset="utf-8";
        }
        try {
            this.html = new String(content,charset);
            return html;
        } catch (UnsupportedEncodingException ex) {
            ex.printStackTrace();
            return null;
        }
    }

    public Document getDoc(){
        if (doc!=null)
            return doc;
        try {
            this.doc = Jsoup.parse(getHtml(), url);
            return doc;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
    }


}
