package com.crawl.crawl.util;

import java.io.*;

public class FileTool {


    public static void write(String data){
        File file = new File("crawler.txt");
        String temp = "";
        try {
            //先读出来
            FileInputStream inputStream = new FileInputStream(file);
            InputStreamReader reader = new InputStreamReader(inputStream);
            BufferedReader bufferedReader = new BufferedReader(reader);
            StringBuffer buffer = new StringBuffer();
            for (int i=0;(temp=bufferedReader.readLine())!=null;i++){
                buffer.append(temp);
                buffer=buffer.append(System.getProperty("line.separator"));
            }
            //再写入
            FileOutputStream outputStream = new FileOutputStream(file);
            PrintWriter writer = new PrintWriter(outputStream);

            buffer.append(data);
            writer.write(buffer.toString().toCharArray());
            writer.flush();
            writer.close();
            inputStream.close();
            reader.close();
            bufferedReader.close();
            outputStream.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
