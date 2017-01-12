package com.mvc.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.mvc.entity.Student;

@Repository("entityDao")
public class EntityDao {

	@Autowired
	private SessionFactory sessionFactory;

	public void save(Student s) {
		sessionFactory.getCurrentSession().save(s);
	}

	@SuppressWarnings("unchecked")
	public List<Student> findAll() {
		return sessionFactory.getCurrentSession().createQuery("from Student")
				.list();
	}

	public void update(Student model) {
		sessionFactory.getCurrentSession().update(model);
	}

	public void delete(Student model) {
		sessionFactory.getCurrentSession().delete(model);
	}
}