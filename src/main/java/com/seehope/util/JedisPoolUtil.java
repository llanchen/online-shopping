package com.seehope.util;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class JedisPoolUtil {
    private static JedisPool jedisPool;
    static{

        //读取配置文件
        InputStream is = JedisPoolUtil.class.getClassLoader().getResourceAsStream("redis.properties");
        //创建Properties对象
        Properties pro = new Properties();
        //关联文件
        try {
            pro.load(is);
        } catch (IOException e) {
            e.printStackTrace();
        }

          JedisPoolConfig config = new JedisPoolConfig();
          config.setMaxTotal(Integer.parseInt(pro.getProperty("maxTotal")));
          config.setMaxIdle(Integer.parseInt(pro.getProperty("maxIdle")));
          jedisPool = new JedisPool(config,pro.getProperty("host"),Integer.parseInt(pro.getProperty("port")));


//        //(1)
//          JedisPoolConfig config = new JedisPoolConfig();
//          config.setMaxTotal(30);
//          config.setMaxIdle(10);
//
//        //（2）创建Jedis连接池对象
//          jedisPool = new JedisPool(config,"localhost",6379);
    }

    /**
     * 获取连接方法
     */
    public static Jedis getJedis(){
        return jedisPool.getResource();
    }

}
