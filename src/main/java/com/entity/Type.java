package com.entity;

public class Type {
    private int id;
    private int hangKong;
    private int luYun;
    private int sanZa;
    private int chuanDai;
    private int wuLiu;

    public Type(int id, int hangKong, int luYun, int sanZa, int chuanDai, int wuLiu) {
        this.id = id;
        this.hangKong = hangKong;
        this.luYun = luYun;
        this.sanZa = sanZa;
        this.chuanDai = chuanDai;
        this.wuLiu = wuLiu;
    }

    public Type() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getHangKong() {
        return hangKong;
    }

    public void setHangKong(int hangKong) {
        this.hangKong = hangKong;
    }

    public int getLuYun() {
        return luYun;
    }

    public void setLuYun(int luYun) {
        this.luYun = luYun;
    }

    public int getSanZa() {
        return sanZa;
    }

    public void setSanZa(int sanZa) {
        this.sanZa = sanZa;
    }

    public int getChuanDai() {
        return chuanDai;
    }

    public void setChuanDai(int chuanDai) {
        this.chuanDai = chuanDai;
    }

    public int getWuLiu() {
        return wuLiu;
    }

    public void setWuLiu(int wuLiu) {
        this.wuLiu = wuLiu;
    }

    @Override
    public String toString() {
        return "Type{" +
                "id=" + id +
                ", hangKong=" + hangKong +
                ", luYun=" + luYun +
                ", sanZa=" + sanZa +
                ", chuanDai=" + chuanDai +
                ", wuLiu=" + wuLiu +
                '}';
    }
}
