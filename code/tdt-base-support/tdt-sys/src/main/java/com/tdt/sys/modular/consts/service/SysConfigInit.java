package com.tdt.sys.modular.consts.service;

import com.tdt.base.consts.ConstantsContext;
import com.tdt.sys.modular.consts.entity.SysConfig;
import com.tdt.sys.modular.consts.entity.SysConfig;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * <p>
 * 参数配置 服务类
 * </p>
 *容器启动后自动调用，初始化资源
 */
@Component
@Slf4j
public class SysConfigInit implements CommandLineRunner {

    @Autowired
    private SysConfigService sysConfigService;

    @Override
    public void run(String... args) {

        //初始化所有的常量
        List<SysConfig> list = sysConfigService.list();

        if (list != null && list.size() > 0) {
            for (SysConfig sysConfig : list) {
                ConstantsContext.putConstant(sysConfig.getCode(), sysConfig.getValue());
            }

            log.info("初始化常量" + list.size() + "条！");
        }

    }
}
