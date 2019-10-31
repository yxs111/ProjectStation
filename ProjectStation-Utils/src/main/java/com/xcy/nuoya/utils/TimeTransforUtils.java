package com.xcy.nuoya.utils;

import java.text.DecimalFormat;

public class TimeTransforUtils {
    public static String timeTransforUtils(int time) {
        String hour = "";
        String min = "";
        String sec = "";
        DecimalFormat decimalFormat = new DecimalFormat("00");
        hour = decimalFormat.format(time / 3600);
        min = decimalFormat.format((time % 3600) /60);
        sec = decimalFormat.format((time % 3600) % 60);
        return hour + ":" + min + ":" + sec;
    }

    public static void main(String[] args) {
        int time = 1589;
        TimeTransforUtils.timeTransforUtils(time);
    }
}
