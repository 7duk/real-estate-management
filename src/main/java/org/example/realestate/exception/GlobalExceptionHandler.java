package org.example.realestate.exception;

import jakarta.servlet.http.HttpServletRequest;
import org.springframework.http.ProblemDetail;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import java.net.URI;
import java.util.List;

@RestControllerAdvice(annotations = RestController.class)
public class GlobalExceptionHandler {
    @ExceptionHandler(value = AppException.class)
    public ResponseEntity<ProblemDetail> handle(final AppException exception, final HttpServletRequest request) {
        ProblemDetail problemDetail =  ProblemDetail.forStatusAndDetail(exception.getErrorCode().getHttpStatus() ,exception.getMessage());
        problemDetail.setTitle("Application Exception");
        problemDetail.setInstance(URI.create(request.getRequestURI()));
        problemDetail.setProperty("errors", List.of(exception.getMessage()));
        return ResponseEntity.status(exception.getErrorCode().getHttpStatus()).body(problemDetail);
    }
}
