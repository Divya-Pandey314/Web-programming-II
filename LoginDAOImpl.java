package com.example.dao.impl;

import com.example.dao.LoginDAO;
import com.example.model.Login;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.Optional;

@Repository
public class LoginDAOImpl implements LoginDAO {

    private static final Logger logger = LoggerFactory.getLogger(LoginDAOImpl.class);

    @Autowired
    private JdbcTemplate jdbcTemplate;

    // FIXED: Include username in INSERT
    private static final String INSERT_SQL = "INSERT INTO users (username, email, password) VALUES (?, ?, ?)";
    private static final String SELECT_BY_EMAIL_SQL = "SELECT * FROM users WHERE email = ?";

    // FIXED: Remove password from SELECT (we'll verify password in service layer)
    private static final String SELECT_BY_USERNAME_SQL = "SELECT * FROM users WHERE username = ?";
    private static final String SELECT_BY_EMAIL_OR_USERNAME_SQL = "SELECT * FROM users WHERE email = ? OR username = ?";

    private final RowMapper<Login> loginRowMapper = (rs, rowNum) -> {
        Login login = new Login();
        login.setId(rs.getLong("id"));
        login.setUsername(rs.getString("username")); // ADDED: Map username
        login.setEmail(rs.getString("email"));
        login.setPassword(rs.getString("password"));
        return login;
    };

    @Override
    public Login save(Login login) {
        logger.info("=== LOGIN DAO: Saving user ===");

        KeyHolder keyHolder = new GeneratedKeyHolder();

        jdbcTemplate.update(connection -> {
            PreparedStatement ps = connection.prepareStatement(INSERT_SQL, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, login.getUsername());
            ps.setString(2, login.getEmail());
            ps.setString(3, login.getPassword());
            return ps;
        }, keyHolder);

        login.setId(keyHolder.getKey().longValue());
        logger.info("User saved successfully with ID: {}", login.getId());
        return login;
    }

    @Override
    public Optional<Login> findByEmail(String email) {
        try {
            Login login = jdbcTemplate.queryForObject(SELECT_BY_EMAIL_SQL, loginRowMapper, email);
            return Optional.ofNullable(login);
        } catch (EmptyResultDataAccessException e) {
            logger.info("No user found with email: {}", email);
            return Optional.empty();
        }
    }

    @Override
    public Optional<Login> findByUsername(String username) {
        try {
            Login login = jdbcTemplate.queryForObject(SELECT_BY_USERNAME_SQL, loginRowMapper, username);
            return Optional.ofNullable(login);
        } catch (EmptyResultDataAccessException e) {
            logger.info("No user found with username: {}", username);
            return Optional.empty();
        }
    }

    @Override
    public Optional<Login> findByEmailOrUsername(String emailOrUsername) {
        try {
            Login login = jdbcTemplate.queryForObject(SELECT_BY_EMAIL_OR_USERNAME_SQL, loginRowMapper,
                    emailOrUsername, emailOrUsername);
            return Optional.ofNullable(login);
        } catch (EmptyResultDataAccessException e) {
            logger.info("No user found with email/username: {}", emailOrUsername);
            return Optional.empty();
        }
    }


}
