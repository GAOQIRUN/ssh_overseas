package com.mvc.dao;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.mvc.entity.Account;

@Repository("accountDao")
public class AccountDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public void save(Account a){
		sessionFactory.getCurrentSession().save(a);
	}
	@SuppressWarnings("unchecked")
	public List<Account> findAll(){
		return sessionFactory.getCurrentSession().createQuery("from Account").list();
	}
	@SuppressWarnings("unchecked")
	public List<Account> login(String name, String password){
		return sessionFactory.getCurrentSession().createQuery("from Account where name='"+name+"' and password='"+password+"'").list();
	}
	
	@SuppressWarnings("unchecked")
	public List<Account> loginbyname(String name){
		return sessionFactory.getCurrentSession().createQuery("select a.name from Account a where a.name='"+name+"'").list();
	}
	
	@SuppressWarnings("unchecked")
	public List<Account> is_exist(String zd,String sth){
		return sessionFactory.getCurrentSession().createQuery("select a.name from Account a where a."+zd+"='"+sth+"'").list();
	}
	
	public void update(Account model) {
		sessionFactory.getCurrentSession().update(model);
	}

	public void delete(Account model) {
		sessionFactory.getCurrentSession().delete(model);
	}
}
