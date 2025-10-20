package com.example.service;

import com.example.model.Signup;

public interface SignupService {
    Signup registerUser(Signup user);
    Signup getUserByEmail(String email);
}

