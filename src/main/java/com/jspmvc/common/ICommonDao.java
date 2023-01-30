package com.jspmvc.common;

import java.util.List;

public interface ICommonDao<T> {

    public T save(T t);
    public List<T> getAll();
    public T getByID(long id);
    public T delete(T t);
    public T update(T t);
}
