package org.example.realestate.security;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.web.SecurityFilterChain;
import java.util.stream.Stream;

@Configuration
@EnableWebSecurity
public class SecurityConfiguration {
    private final String prefixPath = "/api/v1/";
    private final String[] allowedURLS = Stream.of("test")
            .map(str -> prefixPath + str)
            .toArray(String[]::new);

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http, JwtAccessDeniedHandler jwtAccessDeniedHandler, JwtAuthenticationEntryPointHandler jwtAuthenticationEntryPointHandler) throws Exception {
        return http
                .csrf(AbstractHttpConfigurer::disable)
                .cors(Customizer.withDefaults())
                .authorizeHttpRequests(authorizeRequests ->
                        authorizeRequests.requestMatchers(allowedURLS).permitAll()
                                .anyRequest().authenticated().anyRequest())
                .oauth2ResourceServer(oauth2ResourceServer ->
                        oauth2ResourceServer.jwt(Customizer.withDefaults()))
                .sessionManagement(sessionManagement ->
                        sessionManagement.sessionCreationPolicy(SessionCreationPolicy.STATELESS))
                .exceptionHandling(exceptionHandling ->
                        exceptionHandling.accessDeniedHandler(jwtAccessDeniedHandler)
                                .authenticationEntryPoint(jwtAuthenticationEntryPointHandler))
                .build();
    }

}



