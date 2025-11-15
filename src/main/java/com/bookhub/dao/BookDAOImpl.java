package com.bookhub.dao;

//Author : Mayank Garg

import com.bookhub.entity.Book;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;

@Repository
@Transactional
public class BookDAOImpl implements BookDAO {

    @Autowired
    private SessionFactory sessionFactory;

    public void save(Book book) {
        sessionFactory.getCurrentSession().saveOrUpdate(book);
    }

    public List<Book> findAll() {
        return sessionFactory.getCurrentSession().createQuery("from Book", Book.class).list();
    }
}
