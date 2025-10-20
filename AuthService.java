package com.example.service;

import com.example.dao.UserDAO;
import com.example.model.User;
import com.example.util.JwtUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import jakarta.annotation.PostConstruct;
import java.util.Optional;

@Service
public class AuthService {

    private static final Logger logger = LoggerFactory.getLogger(AuthService.class);

    @Autowired
    private JwtUtil jwtUtil;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    private UserDAO userDAO;

    @PostConstruct
    @Transactional
    public void initializeDemoUsers() {
        logger.info("Initializing demo users...");

        // Create demo users if they don't exist
        if (!userDAO.existsByUsername("admin")) {
            User admin = new User("admin", passwordEncoder.encode("admin123"));
            admin.setRole("ADMIN");
            userDAO.save(admin);
            logger.info("Demo admin user created");
        }

        if (!userDAO.existsByUsername("user")) {
            User user = new User("user", passwordEncoder.encode("user123"));
            userDAO.save(user);
            logger.info("Demo user created");
        }
    }

    /**
     * Authenticate user and return JWT token
     */
    public String authenticate(String username, String password) {
        logger.info("Authenticating user: {}", username);

        Optional<User> userOpt = userDAO.findByUsername(username);
        if (userOpt.isEmpty()) {
            logger.warn("User not found: {}", username);
            return null;
        }

        User user = userOpt.get();
        if (!passwordEncoder.matches(password, user.getPassword())) {
            logger.warn("Invalid password for user: {}", username);
            return null;
        }

        String token = jwtUtil.generateToken(username);
        logger.info("Authentication successful for user: {}", username);
        return token;
    }

    /**
     * Get user by username
     */
    public User getUserByUsername(String username) {
        return userDAO.findByUsername(username).orElse(null);
    }

    /**
     * Register new user
     */
    @Transactional
    public boolean registerUser(String username, String password) {
        logger.info("Registering user: {}", username);

        if (userDAO.existsByUsername(username)) {
            logger.warn("User already exists: {}", username);
            return false;
        }

        User newUser = new User(username, passwordEncoder.encode(password));
        userDAO.save(newUser);

        logger.info("User registered successfully: {}", username);
        return true;
    }
}
