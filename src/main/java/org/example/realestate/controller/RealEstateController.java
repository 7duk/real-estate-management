package org.example.realestate.controller;

import org.example.realestate.dto.Response;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
@RequestMapping("/api/v1")
public class RealEstateController {
    @GetMapping("/health-check")
    public ResponseEntity<?> healthCheck(){
        return ResponseEntity.badRequest().body(Response.builder().code(200).message("Health Check OK").build());
    }

    @GetMapping("/private-resource")
    @PreAuthorize("hasAnyRole('ADMIN','USER') and hasAuthority('SCOPE_read')")
    public ResponseEntity<?> getPrivateResource(){
        return ResponseEntity.ok().body(Response.builder().code(200).message("Private Resource For User, Admin").build());
    }

    @GetMapping("/admin-resource")
    @PreAuthorize("hasRole('ADMIN') and hasAuthority('SCOPE_read')")
    public ResponseEntity<?> getAdminResource(){
        return ResponseEntity.ok().body(Response.builder().code(200).message("Admin Resource For Admin").build());
    }
}
