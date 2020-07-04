package com.tdt.modular.base.model.params;

import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;
import cn.stylefeng.roses.kernel.model.validator.BaseValidatingParam;

import java.math.BigDecimal;
import java.util.Date;
import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author chenc
 * @since 2019-08-19
 */
@Data
public class SupplierParam implements Serializable, BaseValidatingParam {

    private static final long serialVersionUID = 1L;


    /**
     * 编号
     */
    private Long id;

    /**
     * 名称
     */
    private String name;
    private String sname;

    /**
     * 联系人
     */
    private String contact;

    /**
     * 电话
     */
    private String phone;

    /**
     * 备注
     */
    private String remark;

    /**
     * 所属仓库id
     */
    private Long warehouseid;

    /**
     * 创建人id
     */
    private Long createid;

    /**
     * 创建人
     */
    private String creator;

    /**
     * 创建时间
     */
    private Date createtime;

    /**
     * 修改人id
     */
    private Long updateid;

    /**
     * 修改人
     */
    private String updator;

    /**
     * 修改时间
     */
    private Date updatetime;

    private Long categoryid;

    private String categoryname;

    private BigDecimal contractsum;
    private BigDecimal tax;

    @Override
    public String checkParam() {
        return null;
    }

}
