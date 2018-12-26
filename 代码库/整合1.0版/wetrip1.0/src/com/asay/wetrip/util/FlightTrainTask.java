package com.asay.wetrip.util;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
public class FlightTrainTask {
	public static int topicId=1;
    @Scheduled(cron = "* 30 * * * ? ") // 间隔30分钟执行
    public void taskCycle() {       
        topicId+=1;
        System.out.println(topicId);       
    }
}