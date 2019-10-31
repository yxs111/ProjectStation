package com.xcy.nuoya.utils;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.util.Hashtable;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;


/**
 * @Auther: http://www/qfedu.com
 * @Date: 2019/7/4
 * @Description: com.xcy.nuoya.utils
 * @version: 1.0
 */
public class StringToCode {


    public static void getCodeByText(String code,String IMAGE_DIR) throws IOException {
        int width = 80;
        int height = 80;
        String format = "png";
        Hashtable hints = new Hashtable();
        hints.put(EncodeHintType.CHARACTER_SET, "utf-8");
        hints.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.M);
        hints.put(EncodeHintType.MARGIN, 2);
        try {

            BitMatrix bitMatrix = new MultiFormatWriter().encode("http://wpa.qq.com/msgrd?v=3&uin="+code+"&site=qq&menu=yes", BarcodeFormat.QR_CODE, width, height, hints);
            Path file = new File(IMAGE_DIR+code+".png").toPath();//在D盘生成二维码图片
            MatrixToImageWriter.writeToPath(bitMatrix, format, file);
        } catch (WriterException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        try {
            getCodeByText("xude","E:\\images\\");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


}
