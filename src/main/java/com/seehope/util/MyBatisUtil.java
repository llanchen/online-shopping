package com.seehope.util;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.Reader;

public class MyBatisUtil {
    private static final String RESOURCE = "mybatis-config.xml";
    private static SqlSessionFactory sqlSessionFactory = null;
    private static ThreadLocal<SqlSession> threadLocal = new ThreadLocal<SqlSession>();
    static {
        Reader reader = null;
        try {
            reader = Resources.getResourceAsReader(RESOURCE);
            SqlSessionFactoryBuilder builder = new SqlSessionFactoryBuilder();
            sqlSessionFactory = builder.build(reader);
        } catch (Exception e1) {
            e1.printStackTrace();
            throw new ExceptionInInitializerError("初始化 MyBatis 失败，请检查配置文件或数据库");
        }
    }
    public static SqlSessionFactory getSqlSessionFactory(){
        return sqlSessionFactory;
    }

    public static SqlSession getSession(){
        closeSession();
        SqlSession session = threadLocal.get();
// 如果 session 为 null，则打开一个新的 session
        if (session == null){
            session = (sqlSessionFactory !=null) ?sqlSessionFactory.openSession():null;
            threadLocal.set(session);
        }
        return session;
    }
    public static void closeSession(){
        SqlSession session = (SqlSession) threadLocal.get();
        threadLocal.set(null);
        if (session !=null){
            session.close();
        }
    }
}