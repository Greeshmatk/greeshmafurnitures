/**
 * AppContextConfig.java
 * 
 * This class contains all the configurations necessary for database
 * communication. It contains the base packages to scan that contains
 * the models/entities that are to be persisted. It contains database
 * specific informations to establish connection and Hibernate configurations.
 * The <code>@Configuration</code> annotation specifies that this Java
 * class is a configuration class and <code>@ComponentScan</code> 
 * annotation specifies the location of entity classes and DAO.
 * 
 * @author Pradeep Kumar
 */

package com.niit.backend1.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;

@Configuration
@ComponentScan(basePackages = "com.niit.backend1")
public class AppContextConfig {

	@Autowired
	@Bean
	public DataSource getH2DataSource() {
		BasicDataSource dataSource = new BasicDataSource();
		
		dataSource.setDriverClassName("org.h2.Driver");
		dataSource.setUrl("jdbc:h2:tcp://localhost/~/backend1");
		dataSource.setUsername("sa");
		dataSource.setPassword("");
		
		return dataSource;
	}
	
	@Autowired
	@Bean
	public LocalSessionFactoryBean getSessionFactory(DataSource dataSource) {
		LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();
		
		sessionFactory.setDataSource(dataSource);
		sessionFactory.setHibernateProperties(getHibernateProperties());
		sessionFactory.setPackagesToScan(new String[] {"com.niit.backend1.model"});
		
		return sessionFactory;
	}
	
	@Autowired
	@Bean
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager();
		transactionManager.setSessionFactory(sessionFactory);
		return transactionManager;
	}
	
	public Properties getHibernateProperties() {
		Properties properties = new Properties();
		
		properties.setProperty("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		properties.setProperty("hibernate.show_sql", "true");
		properties.setProperty("hibernate.hbm2ddl.auto", "update");
		
		return properties;
	}
}
