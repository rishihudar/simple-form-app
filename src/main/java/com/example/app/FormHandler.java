package com.example.app;

import org.springframework.web.bind.annotation.*;

@RestController
public class FormHandler {

    @PostMapping("/submit")
    public String handleForm(@RequestParam String name, @RequestParam String email) {
        return "Form submitted successfully! Name: " + name + ", Email: " + email;
    }
}
