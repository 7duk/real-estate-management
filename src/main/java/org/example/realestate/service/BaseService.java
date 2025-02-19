package org.example.realestate.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface BaseService<T> {
    Page<T> getWithPagination(Pageable pageable);
    T save(T t);
    boolean delete(T t);
}
