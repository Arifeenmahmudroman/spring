package com.jspmvc.common;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface ICommonService <T>{

    public T save(HttpServletRequest request);
    public T edit(long id);
    public T update(HttpServletRequest request);
    public List<T> getAll();
    public boolean delete(long id);
}
