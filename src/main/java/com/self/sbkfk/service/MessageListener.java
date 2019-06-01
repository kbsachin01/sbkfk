package com.self.sbkfk.service;

import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Component;

@Component
public class MessageListener{

    @KafkaListener(topics="${kafka.topic.name}")
    public void messagePrint(String data) {
        System.out.println(data);
    }

}