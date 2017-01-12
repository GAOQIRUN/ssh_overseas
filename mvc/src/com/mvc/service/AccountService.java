package com.mvc.service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.mvc.dao.AccountDao;
import com.mvc.entity.Account;

@Service("accountService")
@Transactional
public class AccountService {
	@Autowired
	public AccountDao accountDao;
	
	public void save (Account a){
		accountDao.save(a);
	}
	public void delete(Account a){
		accountDao.delete(a);
	}
	public List<Account> login(String name,String password){
		 return accountDao.login(name, password);
	}
	public void update(Account model) {
		accountDao.update(model);
	}
	public List<Account>loginbyname(String name){
		 return accountDao.loginbyname(name);
	}
	public boolean is_exist(String zd,String sth){
		 return (accountDao.is_exist(zd, sth).size()>=1);
	}
}
