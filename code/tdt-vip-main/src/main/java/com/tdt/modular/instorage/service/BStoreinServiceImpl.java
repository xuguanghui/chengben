package com.tdt.modular.instorage.service;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.tdt.core.common.constant.Constants;
import com.tdt.modular.base.entity.BCompanyInfo;
import com.tdt.modular.base.entity.Supplier;
import com.tdt.modular.base.mapper.SupplierMapper;
import com.tdt.modular.base.service.BCompanyInfoServiceImpl;
import com.tdt.modular.base.service.GeneralOrderNoService;
import com.tdt.modular.instorage.entity.BStrorein;
import com.tdt.modular.instorage.mapper.BStoreinMapper;
import com.tdt.sys.core.shiro.ShiroKit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Date;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author xgh
 * @since 2020-07-05
 */
@Service
public class BStoreinServiceImpl extends ServiceImpl<BStoreinMapper, BStrorein> {
    @Resource
    private SupplierMapper supplierMapper;
    @Autowired
    BCompanyInfoServiceImpl bCompanyInfoService;
    @Autowired
    GeneralOrderNoService generalOrderNoService;

    @Transactional(rollbackFor = Exception.class)
    public BStrorein add(BStrorein param){
        Supplier supplier = supplierMapper.selectById(param.getSupplierId());

        QueryWrapper<BCompanyInfo> queryComanyInfo = new QueryWrapper<>();
        queryComanyInfo.eq("userid",ShiroKit.getUser().getId());
        BCompanyInfo one = bCompanyInfoService.getOne(queryComanyInfo);
        BStrorein entity = new BStrorein();

        entity.setSupplier(supplier.getName());
        entity.setTypeInDate(param.getTypeInDate());
        entity.setSupplierId(supplier.getId());
        entity.setUserid(ShiroKit.getUser().getId());
        entity.setUserName(ShiroKit.getUser().getName());
        entity.setRemark(param.getRemark());
        entity.setCompanyName(one.getCompanyshortname());
        entity.setProjectName(one.getProjectshortname());
        entity.setOrderNo(generalOrderNoService.getOrderNo(entity.getUserid(),entity.getSupplierId()));
        this.save(entity);
        return entity;
    }
}
