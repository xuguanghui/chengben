package com.tdt.sys.modular.consts.service;

import com.tdt.base.pojo.page.LayuiPageInfo;
import com.tdt.sys.modular.consts.entity.SysConfig;
import com.tdt.sys.modular.consts.model.params.SysConfigParam;
import com.tdt.sys.modular.consts.model.result.SysConfigResult;
import com.baomidou.mybatisplus.extension.service.IService;
import com.tdt.sys.modular.consts.entity.SysConfig;
import com.tdt.sys.modular.consts.model.params.SysConfigParam;
import com.tdt.sys.modular.consts.model.result.SysConfigResult;

import java.util.List;

/**
 * <p>
 * 参数配置 服务类
 * </p>
 *
 * @author xgh
 * @since 2020/06/28
 */
public interface SysConfigService extends IService<SysConfig> {

    /**
     * 新增
     *
     * @author xgh
     * @Date 2020/06/28
     */
    void add(SysConfigParam param);

    /**
     * 删除
     *
     * @author xgh
     * @Date 2020/06/28
     */
    void delete(SysConfigParam param);

    /**
     * 更新
     *
     * @author xgh
     * @Date 2020/06/28
     */
    void update(SysConfigParam param);

    /**
     * 查询单条数据，Specification模式
     *
     * @author xgh
     * @Date 2020/06/28
     */
    SysConfigResult findBySpec(SysConfigParam param);

    /**
     * 查询列表，Specification模式
     *
     * @author xgh
     * @Date 2020/06/28
     */
    List<SysConfigResult> findListBySpec(SysConfigParam param);

    /**
     * 查询分页数据，Specification模式
     *
     * @author xgh
     * @Date 2020/06/28
     */
     LayuiPageInfo findPageBySpec(SysConfigParam param);

}
