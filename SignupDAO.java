package com.example.dao.impl;

import com.example.model.Signup;
import java.util.Optional;

public interface SignupDAO {
    Signup save(Signup signup);
    Optional<Signup> findByEmail(String email);
    boolean existsByEmail(String email);
}
