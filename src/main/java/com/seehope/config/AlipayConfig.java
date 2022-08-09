package com.seehope.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {

//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

    // 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
    public static String app_id = "2021000118607089";

    // 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCMJMSlBvKcHAkeIL/8fefef0ZSZaM0FUfRCTzVVkX8Two62ai3GDOxZL2TCsf6TING/ZCe9p71h8+RsrqQwse+JpxMuOL4iKbPGL0ZuUELZxRotFNle/7f9Vh2R0sKAisMtcaDI+B02kJQFPNyyTUJaMO/sWXVBDCPqNf/3JIuY22SSKnZX4cTQne/aNZHK5lEB2U9gKVQ5scWL1fZ0uBScblKi7oxjcSok1VLxizxntDzqdJR5b5SxFLVMuob4IydVphX3ob7jCc04BKRIcgwNAVKrTzrxreEYr5x6F79/falXbKXol2fPBCSgfnn+A/Ubmo8P6jj9i69MJ/sBQujAgMBAAECggEAXgQ0n/l/PNdaDoouAfd9XDjKNnDVAhXcrhGibASKwu9Lj5uBogNsem949nJfIj2+PBvTr7EHhvRrffUHUCI72gcRCC9opQ8XyQtxoRY02q92c5+16vk6TYjMpdzCLJ6zvr0bxdKFvB7IKe1EPRdaq0tLNwiNplA/O8Er1wxkTRWLQNhRPEHBYTi+X36IQbBk+5elCbC7QCzzf30vYZ76v8NonZVFRwHDNKgmXmm1jsPtMATyYjCD4V1woclkQQLzCFi0kJXqDsInChyvR90/WwoNQNwv7m03Z+sAfJuAlfwScXnep1OxccRzr8nEFIK3+jiwX1j/DM3F27euxET28QKBgQDTMK2Njrj7VOxvKwFxXrZlUplJ9hV4lcWOuXE9CBWrwU//zHgCfJNtWSLx1WuUHLV+fp0yMtQ6JWQOxIyGRwtpKGiz78Xdyt4K6UL9jo5fgxIMS0kTxCNGTGXcN0LiSQ0B5HU9IbjuRZRgfBPVpN4Ihf/u0ddqemjYMuP437A2HwKBgQCp4QUzBR86l8oJC0w6HCvMW4/xvmyIIVEPq7qnFT7CAdWqoJI9TQl3lrxVZzDxE9WVXy21JXHhm9MZzvtLywIuuM/Foc7WUtuoHqQMrjDBATQ7GmB27j5QneHjLLT950fCE1f/UrS2QBUZZS3rEfQeuzr1pSlnMg6h9WSRvMiR/QKBgQCk8qkrHiUm0G6WaV2IIbSOMNRfKyAb/ca+seJbC9x5ONR180psjsZLKsqbXdjXZxDuio/WrFKMU7XxvtwO6KBl8tTMbWL61z9UAFp9VgGnYeUPyyF5mcD/YB5SwKqxuOK67qgPJi6dk6TPMzn+rPVqbNa3vhflJ1SKQD1EndmwewKBgHkjEX8RPvScOqB6Yu/pGL5P6HQ9Es173H7tOVtdxfO4NTHH8KAv5/lUDpZj0D2IpDwws7pBqlRztnPn6cBhUfwZI2fNe13PlfzrZJX6PJ/UiPdAVttYBi2cd/Bz99g6bSwSeSSDSIPRbHpAcR74HXkwj9mM3dpNkqug/gcCdI/NAoGAEaoNdga7Q0rA11NMeJyCYGXJlzwk6Q3RNL7BaP8NkXJTy/srP+gZcVvQMTKHlg8G81Zs6IMdgbgmLbKCUKwj3ATWTWWySNbM7QR9lifz+cgkk7erG2CV5Gb4rcLosk7McStRvszFLHeZJrtspavBtr1l5diGoGvEO9axVXNL3Io=";

    // 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAgLsQR0ogpGW2/m7yaEiXF2FhHSsANzrlgM5fZTiLdQx+bj6tVZ+R4RDFp/OwtZB2wU8mE8nMwRZMtkWvim2kLOL3gXNDIo4B7jLcKuQI08/3KCTkxEXciFu769UtJGwyXhYjofcn44HCTqT9BciYZvoW+H+D7TP72TIgDhwsS6pd+mep+GrKhK0a/XZ8GE3POBvgjLCwLIhCtLtQh57qpoSt7np0IdPUxDX/MsBCnBgK9Eq/9q+yUsNI7xPkpDB81FBSJNvegPjwwfvbiFMZLGpVHeZlM1+aDsFrHWeR7xBf8o5PI30fI9qiYNF1wzCKTNOHCPdsEbshjDd37H2JOQIDAQAB";

    // 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String notify_url = "http://liangqianying.free.idcfengye.com/shopping/pay";

    // 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String return_url = "http://liangqianying.free.idcfengye.com/shopping/pay";

    // 签名方式
    public static String sign_type = "RSA2";

    // 字符编码格式
    public static String charset = "utf-8";

    // 支付宝网关
    public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";

    // 支付宝网关
    public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /**
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis()+".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
