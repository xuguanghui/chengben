package com.tdt.modular.base.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;

import java.math.BigDecimal;
import java.util.Date;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableField;
import lombok.Data;

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
@TableName("b_supplier")
public class Supplier implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 编号
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
     * 名称
     */
    @TableField("name")
    private String name;
    /**
     * 名称
     */
    @TableField("sname")
    private String sname;

    /**
     * 联系人
     */
    @TableField("contact")
    private String contact;

    /**
     * 电话
     */
    @TableField("phone")
    private String phone;

    /**
     * 备注
     */
    @TableField("remark")
    private String remark;

    /**
     * 所属仓库id
     */
    @TableField("warehouseid")
    private Long warehouseid;

    /**
     * 创建人id
     */
    @TableField("createid")
    private Long createid;

    /**
     * 创建人
     */
    @TableField("creator")
    private String creator;

    /**
     * 创建时间
     */
    @TableField("createtime")
    private Date createtime;

    /**
     * 修改人id
     */
    @TableField("updateid")
    private Long updateid;

    /**
     * 修改人
     */
    @TableField("updator")
    private String updator;

    /**
     * 修改时间
     */
    @TableField("updatetime")
    private Date updatetime;
    @TableField("categoryid")
    private Long categoryid;

    @TableField("categoryname")
    private String categoryname;

    @TableField("contractsum")
    private BigDecimal contractsum;
    @TableField("tax")
    private BigDecimal tax;
}
