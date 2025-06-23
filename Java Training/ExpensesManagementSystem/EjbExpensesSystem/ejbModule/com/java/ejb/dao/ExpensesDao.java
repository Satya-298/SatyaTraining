package com.java.ejb.dao;

import java.sql.SQLException;

import com.java.ejb.model.Expenses;

public interface ExpensesDao {

	Expenses addExpense(Expenses expense) throws ClassNotFoundException, SQLException;
}
