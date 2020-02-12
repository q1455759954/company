package com.crawl.crawl.link;

import java.util.HashSet;
import java.util.LinkedList;
import java.util.Set;

public class Links {

    //已经访问过的url集合，使用set保证不重复
    private static Set visitedUrlSet = new HashSet();

    //待访问的 url 集合  待访问的主要考虑 1:规定访问顺序;2:保证不提供重复的带访问地址;
    private static LinkedList unVisitedUrlQueue = new LinkedList();


    //添加到链接队列
    public static void addUnvisitedUrlQueue(String url) {
        if (url!=null&&!unVisitedUrlQueue.contains(url)&&!visitedUrlSet.contains(url)){
            unVisitedUrlQueue.add(url);
        }

    }

    public static int getVisitedUrlNum() {
        return unVisitedUrlQueue.size();
    }

    public static boolean unVisitedUrlQueueIsEmpty() {
        if (unVisitedUrlQueue.isEmpty())
            return true;
        return false;
    }

    public static Object removeHeadOfUnVisitedUrlQueue() {
        return unVisitedUrlQueue.removeFirst();
    }
}
