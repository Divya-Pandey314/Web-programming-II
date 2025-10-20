package com.example.dao.impl;

import com.example.dao.SignupDAO;
import com.example.model.Signup;
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
import java.sql.Timestamp;
import java.util.Optional;

@Repository
public class SignupDAOImpl implements SignupDAO {

    private static final Logger logger = LoggerFactory.getLogger(SignupDAOImpl.class);

    @Autowired
    private JdbcTemplate jdbcTemplate;

    private static final String INSERT_SQL = "INSERT INTO users (full_name, email, password, created_at) VALUES (?, ?, ?, ?)";
    private static final String SELECT_BY_EMAIL_SQL = "SELECT * FROM users WHERE email = ?";
    private static final String EXISTS_BY_EMAIL_SQL = "SELECT COUNT(*) FROM users WHERE email = ?";

    private final RowMapper<Signup> signupRowMapper = (rs, rowNum) -> {
        Signup signup = new Signup();
        signup.setId(rs.getLong("id"));
        signup.setFullName(rs.getString("full_name"));
        signup.setEmail(rs.getString("email"));
        signup.setPassword(rs.getString("password"));
        signup.setCreatedAt(rs.getTimestamp("created_at").toLocalDateTime());
        return signup;
    };

    @Override
    public Signup save(Signup signup) {
        logger.info("=== SIGNUP DAO: Saving user ===");

        KeyHolder keyHolder = new GeneratedKeyHolder();

        // Step 9: Execute SQL INSERT
        jdbcTemplate.update(connection -> {
            PreparedStatement ps = connection.prepareStatement(INSERT_SQL, Statement.RETURN_GENERATED_KEYS);
            ps.setString(1, signup.getFullName());
            ps.setString(2, signup.getEmail());
            ps.setString(3, signup.getPassword());
            ps.setTimestamp(4, Timestamp.valueOf(signup.getCreatedAt()));
            return ps;
        }, keyHolder);

        signup.setId(keyHolder.getKey().longValue());
        logger.info("User saved successfully with ID: {}", signup.getId());
        return signup;
    }

    @Override
    public Optional<Signup> findByEmail(String email) {
        try {
            Signup signup = jdbcTemplate.queryForObject(SELECT_BY_EMAIL_SQL, signupRowMapper, email);
            return Optional.ofNullable(signup);
        } catch (EmptyResultDataAccessException e) {
            return Optional.empty();
        }
    }

    @Override
    public boolean existsByEmail(String email) {
        Integer count = jdbcTemplate.queryForObject(EXISTS_BY_EMAIL_SQL, Integer.class, email);
        return count != null && count > 0;
    }
}
