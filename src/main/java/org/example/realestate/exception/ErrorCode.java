package org.example.realestate.exception;

import lombok.AccessLevel;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import org.springframework.http.HttpStatus;

@RequiredArgsConstructor
@Getter
@FieldDefaults(level = AccessLevel.PRIVATE ,makeFinal = true)
public enum ErrorCode {

    USER_NOT_EXISTED(400,"User not existed",HttpStatus.BAD_REQUEST),
    UN_AUTHORIZED(401,"Access Denied",HttpStatus.FORBIDDEN),
    UN_AUTHENTICATED(401,"Unauthorized",HttpStatus.UNAUTHORIZED);

    int code;
    String message;
    HttpStatus httpStatus;
}
