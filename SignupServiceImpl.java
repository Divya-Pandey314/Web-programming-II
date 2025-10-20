package com.example.service;

import com.example.dao.SignupDAO;
import com.example.model.Signup;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Service
public class SignupServiceImpl implements SignupService {

    private static final Logger logger = LoggerFactory.getLogger(SignupServiceImpl.class);

    @Autowired
    private SignupDAO signupDAO;

    @Override
    public Signup registerUser(Signup signup) {
        logger.info("=== SIGNUP SERVICE: Registering new user ===");

        // Check if email already exists
        if (signupDAO.existsByEmail(signup.getEmail())) {
            throw new RuntimeException("Email already registered: " + signup.getEmail());
        }

        // For now, we'll store the password as plain text (NOT RECOMMENDED FOR PRODUCTION)
        // In a real application, you should encrypt the password
        logger.warn("STORING PASSWORD AS PLAIN TEXT - NOT SECURE!");

        // Step 8: Save user through DAO
        Signup registeredUser = signupDAO.save(signup);
        logger.info("User registered successfully with ID: {}", registeredUser.getId());

        return registeredUser;
    }

    @Override
    public Signup getUserByEmail(String email) {
        logger.info("Fetching user by email: {}", email);
        return signupDAO.findByEmail(email).orElse(null);
    }
}
