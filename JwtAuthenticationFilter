package com.example.filter;

import com.example.util.JwtUtil;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

@Component
public class JwtAuthenticationFilter extends OncePerRequestFilter {

    private static final Logger logger = LoggerFactory.getLogger(JwtAuthenticationFilter.class);

    @Autowired
    private JwtUtil jwtUtil;

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response,
                                    FilterChain filterChain) throws ServletException, IOException {

        String requestURI = request.getRequestURI();

        // Skip authentication for public endpoints
        if (isPublicEndpoint(requestURI)) {
            filterChain.doFilter(request, response);
            return;
        }

        try {
            String token = extractTokenFromRequest(request);

            if (token == null) {
                sendErrorResponse(response, "JWT token is required", HttpStatus.UNAUTHORIZED);
                return;
            }

            if (!jwtUtil.validateToken(token)) {
                sendErrorResponse(response, "Invalid JWT token", HttpStatus.UNAUTHORIZED);
                return;
            }

            String username = jwtUtil.getUsernameFromToken(token);
            if (username != null && SecurityContextHolder.getContext().getAuthentication() == null) {
                UsernamePasswordAuthenticationToken authToken =
                        new UsernamePasswordAuthenticationToken(
                                username,
                                null,
                                Collections.singletonList(new SimpleGrantedAuthority("ROLE_USER"))
                        );
                SecurityContextHolder.getContext().setAuthentication(authToken);
            }

            filterChain.doFilter(request, response);

        } catch (Exception e) {
            logger.error("Error processing JWT authentication: {}", e.getMessage());
            sendErrorResponse(response, "Authentication error", HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    private String extractTokenFromRequest(HttpServletRequest request) {
        String bearerToken = request.getHeader("Authorization");
        if (bearerToken != null && bearerToken.startsWith("Bearer ")) {
            return bearerToken.substring(7);
        }
        return null;
    }

    private boolean isPublicEndpoint(String requestURI) {
        return requestURI.startsWith("/api/auth/") ||
                requestURI.equals("/") ||
                requestURI.equals("/login") ||
                requestURI.equals("/register") ||
                requestURI.startsWith("/user/login") ||
                requestURI.startsWith("/user/signup") ||
                requestURI.endsWith(".css") ||
                requestURI.endsWith(".js") ||
                requestURI.endsWith(".jsp");
    }

    private void sendErrorResponse(HttpServletResponse response, String message, HttpStatus status)
            throws IOException {
        response.setStatus(status.value());
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        String jsonResponse = "{\"success\":false,\"message\":\"" + message + "\",\"status\":" + status.value() + "}";
        response.getWriter().write(jsonResponse);
        response.getWriter().flush();
    }
}
