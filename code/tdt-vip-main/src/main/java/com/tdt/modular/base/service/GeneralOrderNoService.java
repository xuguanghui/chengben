package com.tdt.modular.base.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.tdt.core.util.MyConstants;
import com.tdt.modular.base.entity.BCompanyInfo;
import com.tdt.modular.base.entity.GeneralOrderNo;
import com.tdt.modular.base.mapper.GeneralOrderNoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class GeneralOrderNoService extends ServiceImpl<GeneralOrderNoMapper, GeneralOrderNo> {

    @Autowired
    SupplierService supplierService;
    @Autowired
    BCompanyInfoServiceImpl bCompanyInfoService;
    public String getOrderNo(Long userId,Long supplierId){
        QueryWrapper<GeneralOrderNo> query = new QueryWrapper<>();
        query.eq("supplierid",supplierId);
        query.eq("userid",userId);
        query.eq("ordertype", MyConstants.ORDER_TYPE_RUKU);
        GeneralOrderNo generalOrderNo = this.baseMapper.selectOne(query);


        QueryWrapper<BCompanyInfo> queryComanyInfo = new QueryWrapper<>();
        queryComanyInfo.eq("userid",userId);
        BCompanyInfo one = bCompanyInfoService.getOne(queryComanyInfo);
        Integer orderno = one.getOrderno();

        //没有则新增一条
        if(generalOrderNo == null){
            GeneralOrderNo newGeneralOrderNo = new GeneralOrderNo();
            newGeneralOrderNo.setCurrentnumber(1);
            newGeneralOrderNo.setOrdertype(MyConstants.ORDER_TYPE_RUKU);
            newGeneralOrderNo.setSupplierid(supplierId);
            newGeneralOrderNo.setUserid(userId);
            this.baseMapper.insert(newGeneralOrderNo);
            return String.valueOf(orderno) +
                    supplierOrderPart(String.valueOf(supplierId),MyConstants.SUPPLIER_ORDERNO_LENGTH)
                    +supplierOrderPart("1",MyConstants.RUKU_ORDERNO_LENGTH) ;
        }
        generalOrderNo.setCurrentnumber(generalOrderNo.getCurrentnumber() + 1);
        this.baseMapper.updateById(generalOrderNo);
        return String.valueOf(orderno) +
                supplierOrderPart(String.valueOf(supplierId),MyConstants.SUPPLIER_ORDERNO_LENGTH)
                + supplierOrderPart(String.valueOf(generalOrderNo.getCurrentnumber() + 1),MyConstants.RUKU_ORDERNO_LENGTH);
    }
    public  static String supplierOrderPart(String orderNo ,int size){
        int orderNoSize = orderNo.length();
        StringBuilder OrderNo = new StringBuilder();
        for (int i = 0; i < size - orderNoSize; i++) {
            OrderNo.append("0");
        }
        OrderNo.append(orderNo);
        return OrderNo.toString();
    }

    public static void main(String[] args) {
        System.out.println(supplierOrderPart("2",8));
    }
}
