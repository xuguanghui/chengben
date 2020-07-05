package com.tdt;
import cn.stylefeng.roses.core.config.MybatisDataSourceAutoConfiguration;
import cn.stylefeng.roses.core.config.WebAutoConfiguration;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * SpringBoot方式启动类
 *
 * @author xgh
 * @Date 2017/5/21 12:06
 */
@SpringBootApplication(exclude = {WebAutoConfiguration.class, MybatisDataSourceAutoConfiguration.class})
public class TdtApplication {

    private final static Logger logger = LoggerFactory.getLogger(TdtApplication.class);

    public static void main(String[] args) {
        SpringApplication.run(TdtApplication.class, args);
        logger.info(" 系统 启动成功!");
    }
}
