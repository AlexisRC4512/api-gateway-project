package com.nttdata.api_gateway.configuration;

import com.nttdata.api_gateway.filter.JwtAuthenticationFilter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.gateway.filter.GlobalFilter;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class GatewayConfig {

    @Autowired
    private JwtAuthenticationFilter jwtAuthenticationFilter;

    @Bean
    public GlobalFilter jwtFilter() {
        return (exchange, chain) -> jwtAuthenticationFilter.filter(exchange, chain);
    }
}