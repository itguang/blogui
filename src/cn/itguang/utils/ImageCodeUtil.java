package cn.itguang.utils;



import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.imageio.stream.ImageOutputStream;

public class ImageCodeUtil {
    /**
     * 生成随机验证码字符串
     * 
     * @return
     */
    public static String getImageCodeStr() {

        Random random = new Random();
        String code[] = { "A", "a", "B", "b", "C", "c", "D", "d", "E", "e",
                "F", "f", "G", "g", "H", "h", "I", "i", "J", "j", "K", "k",
                "L", "l", "M", "m", "N", "n", "O", "o", "P", "p", "Q", "q",
                "R", "r", "S", "s", "T", "t", "U", "u", "V", "v", "W", "w",
                "X", "x", "Y", "y", "Z", "z", "0", "1", "2", "3", "4", "5",
                "6", "7", "8", "9", "0", "1", "2", "3", "4", "5", "6", "7",
                "8", "9", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9",
                "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "1",
                "2", "3", "4", "5", "6", "7", "8", "9", "0", "1" };
        // 取随机产生的认证码(4位字符)
        StringBuffer codeStr = new StringBuffer("");
        for (int i = 0; i < 4; i++) {
            String cStr = code[random.nextInt(104)];
            codeStr.append(cStr);
        }
        return codeStr.toString();
    }

    /**
     * 生成带随机验证码的图片
     * 
     * @param codeStr
     * @return
     */
    public static BufferedImage createImage(String codeStr) {
        int width = 60, height = 20;
        BufferedImage image = new BufferedImage(width, height,
                BufferedImage.TYPE_INT_RGB);
        // 获取图形上下文
        Graphics g = image.getGraphics();
        // 生成随机类
        Random random = new Random();
        // 设定背景色
        g.setColor(getRandColor(200, 250));
        g.fillRect(0, 0, width, height);
        // 设定字体
        g.setFont(new Font("Times New Roman", Font.PLAIN, 18));
        // 随机产生155条干扰线，使图象中的认证码不易被其它程序探测到
        g.setColor(getRandColor(160, 200));
        for (int i = 0; i < 155; i++) {
            int x = random.nextInt(width);
            int y = random.nextInt(height);
            int xl = random.nextInt(12);
            int yl = random.nextInt(12);
            g.drawLine(x, y, x + xl, y + yl);
        }
        for (int i = 0; i < codeStr.length(); i++) {
            String cStr = codeStr.charAt(i) + "";
            g.setColor(new Color(random.nextInt(125), random.nextInt(125),
                    random.nextInt(125)));
            g.setFont(new Font("", Font.PLAIN, 20 + random.nextInt(5)));
            g.drawString(cStr, 15 * i + random.nextInt(5),
                    20 - random.nextInt(5));
        }
        g.dispose();
        return image;
    }

    /**
     * 返回验证码图片的流格式
     * 
     * @param codeStr
     * @return
     */
    public static ByteArrayInputStream getImageAsInputStream(String codeStr) {
        BufferedImage image = createImage(codeStr);
        return convertImageToStream(image);
    }
    
    private static ByteArrayInputStream convertImageToStream(BufferedImage image) {
        ByteArrayInputStream inputStream = null;
        ByteArrayOutputStream output = null;
        ImageOutputStream imageOut = null;
        try {
            output = new ByteArrayOutputStream();
            imageOut = ImageIO.createImageOutputStream(output);
            ImageIO.write(image, "JPEG", imageOut);
            inputStream = new ByteArrayInputStream(output.toByteArray());
        } catch (Exception e) {
            e.printStackTrace();
        } finally{
            try {
                if(imageOut!=null){
                    imageOut.close();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        return inputStream;
    }

    /*
     * 给定范围获得随机颜色
     */
    private static Color getRandColor(int fc, int bc) {
        Random random = new Random();
        if (fc > 255)
            fc = 255;
        if (bc > 255)
            bc = 255;
        int r = fc + random.nextInt(bc - fc);
        int g = fc + random.nextInt(bc - fc);
        int b = fc + random.nextInt(bc - fc);
        return new Color(r, g, b);
    }

}