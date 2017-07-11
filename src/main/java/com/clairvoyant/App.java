package com.clairvoyant;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.PropertySource;

/**
 * Created by pbhavsar on 7/8/17.
 */
@SpringBootApplication
@PropertySource("application-${spring.profiles.active}.properties")
public class App {

    public static void main(String[] args) {
        SpringApplication.run(App.class);
    }

}
