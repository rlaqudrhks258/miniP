package kr.co.mlec.common.db;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyAppSqlConfig {
	private static final SqlSession sqlMapper;
	static {
		try {
			String resource = "config/mybatis/sqlMapConfig.xml";
			Reader reader = Resources.getResourceAsReader(resource);
			SqlSessionFactory sqlFactory = 
					new SqlSessionFactoryBuilder().build(reader);
//			sqlMapper = sqlFactory.openSession();      // �궗�슜�옄媛� 吏곸젒 而ㅻ컠 �빐�빞 �븿
			sqlMapper = sqlFactory.openSession(true);  // �옄�룞 而ㅻ컠
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException(
					"Error initializing MyAppSqlConfig class. Cause: " + e);
		}
	}

	// SqlSession session = MyAppSqlConfig.getSqlSessionInstance();
	public static SqlSession getSqlSessionInstance() {
		return sqlMapper;
	}
}












