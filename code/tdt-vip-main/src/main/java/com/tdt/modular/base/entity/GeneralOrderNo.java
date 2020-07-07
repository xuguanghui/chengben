package com.tdt.modular.base.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.io.Serializable;

@Data
@TableName("b_general_order_no")
public class GeneralOrderNo implements Serializable {
    private static final long serialVersionUID = 1L;
    /**
     * 编号
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
     * 供应商id
     */
    @TableField("supplierid")
    private Long supplierid;
    @TableField("userid")
    private Long userid;


    @TableField("ordertype")
    private String ordertype;
    @TableField("currentnumber")
    private Integer currentnumber;
}
