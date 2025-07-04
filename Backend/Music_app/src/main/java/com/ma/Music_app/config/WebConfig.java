package com.ma.Music_app.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/songs/**")
                .addResourceLocations("file:uploads/songs/");

        registry.addResourceHandler("/images/**")
                .addResourceLocations("file:uploads/images/");
    }
}
