package com.db;

import java.util.Properties;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;
import org.hibernate.service.ServiceRegistry;

import com.entity.Expense;
import com.entity.User;


public class HibernateUtil {
private static SessionFactory sessionFactory;
public static SessionFactory getSessionFactory() {
	if(sessionFactory == null) {
		Configuration configuration = new Configuration();
		Properties propeties = new Properties();
		
		propeties.put(Environment.DRIVER,"com.mysql.cj.jdbc.Driver");
		propeties.put(Environment.URL,"jdbc:mysql://localhost:3306/expense_track_db");
		propeties.put(Environment.USER, "root");
		propeties.put(Environment.PASS, "");
		propeties.put(Environment.DIALECT,"org.hibernate.dialect.MySQL8Dialect");
		propeties.put(Environment.HBM2DDL_AUTO, "update");
		propeties.put(Environment.SHOW_SQL, true);
		
		//propeties.put(Environment.USE_SECOND_LEVEL_CACHE, true);
		
		configuration.setProperties(propeties);
		configuration.addAnnotatedClass(User.class);
		configuration.addAnnotatedClass(Expense.class);
		 ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
				 .applySettings(configuration.getProperties()).build();
		 sessionFactory = configuration.buildSessionFactory(serviceRegistry);
	}
	return sessionFactory;
}
}
