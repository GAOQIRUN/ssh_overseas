package com.mvc.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.mvc.dao.EntityDao;
import com.mvc.entity.Student;

@Service("studentService")
@Transactional
public class StudentService {
	@Autowired
	public EntityDao entityDao;

	public void save(Student st) {
		entityDao.save(st);
	}

	public void delete(Student obj) {
		entityDao.delete(obj);
	}

	public List<Student> findAll() {
		return entityDao.findAll();
	}

	public void update(Student model) {
		entityDao.update(model);
	}
}