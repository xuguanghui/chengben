package com.tdt.modular.instorage.entity;

import com.baomidou.mybatisplus.annotation.IdType;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
import java.util.Date;

import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 
 * </p>
 *
 * @author xgh
 * @since 2020-07-05
 */
@Data
@TableName("b_strorein")
@EqualsAndHashCode(callSuper = false)
public class BStrorein implements Serializable {

    private static final long serialVersionUID=1L;

    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;
    @TableField("storein_id")
    private Integer storeinId;

    /**
     * 公司名称
     */
    @TableField("company_name")
    private String companyName;

    /**
     * 项目名称
     */
    @TableField("project_name")
    private String projectName;

    /**
     * 供应商
     */
    @TableField("supplier")
    private String supplier;

    /**
     * 单号
     */
    @TableField("order_no")
    private String orderNo;

    /**
     * 入库日期
     */
    @JsonFormat(pattern="yyyy-MM-dd", timezone="GMT+8")
    @TableField("type_in_date")
    private Date typeInDate;

    /**
     * 供应商id
     */
    @TableField("supplier_id")
    private Long supplierId;

    /**
     * 创建日期
     */
    @TableField("create_time")
    private Date createTime;

    /**
     * 操作者id
     */
    @TableField("userid")
    private Long userid;

    /**
     * 用户名称
     */
    @TableField("user_name")
    private String userName;
    @TableField("remark")
    private String remark;


}
