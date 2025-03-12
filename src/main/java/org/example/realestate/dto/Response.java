package org.example.realestate.dto;

import lombok.Builder;
import lombok.Setter;

@Builder
public class Response {
    int code;
    Object data;
    String message;
}
