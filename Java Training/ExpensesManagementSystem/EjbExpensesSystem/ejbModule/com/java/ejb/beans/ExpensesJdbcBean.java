package com.java.ejb.beans;

import java.sql.SQLException;

import javax.ejb.LocalBean;
import javax.ejb.Remote;
import javax.ejb.Stateless;

import com.java.ejb.dao.ExpensesDao;
import com.java.ejb.dao.ExpensesDaoImpl;
import com.java.ejb.model.Expenses;

/**
 * Session Bean implementation class ExpensesJdbcBean
 */
@Stateless
@Remote(ExpensesJdbcBeanRemote.class)
public class ExpensesJdbcBean implements ExpensesJdbcBeanRemote {
	
	static ExpensesDao daoImpl;
	
	static {
		daoImpl = new ExpensesDaoImpl();
	}

    /**
     * Default constructor. 
     */
    public ExpensesJdbcBean() {
        // TODO Auto-generated constructor stub
    }

	@Override
	public Expenses addExpense(Expenses expense) throws ClassNotFoundException, SQLException {
		return daoImpl.addExpense(expense);
	}

}
