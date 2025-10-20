package com.example.dao.impl;

import com.example.model.Login;

import java.util.List;
import java.util.Optional;

public interface LoginDAO {
    Login save(Login login);

    Optional<Login> findByEmail(String email);

    Optional<Login> findByUsername(String username);

    Optional<Login> findByEmailOrUsername(String emailOrUsername);

    boolean deleteById(Long id);
}
