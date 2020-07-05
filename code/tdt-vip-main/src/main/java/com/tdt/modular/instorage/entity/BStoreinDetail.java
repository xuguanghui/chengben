package com.tdt.modular.instorage.entity;

import java.math.BigDecimal;
import com.baomidou.mybatisplus.annotation.IdType;
import java.time.LocalDate;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import java.time.LocalDateTime;
import java.io.Serializable;

import com.baomidou.mybatisplus.annotation.TableName;
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
@TableName("b_storein_detail")
@Data
@EqualsAndHashCode(callSuper = false)
public class BStoreinDetail implements Serializable {

    private static final long serialVersionUID=1L;

    /**
     * 主键
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Long id;

    /**
     * 材料id
     */
    @TableField("cailiao_id")
    private Long cailiaoId;
    @TableField("cailiao_name")
    private String cailiaoName;
    @TableField("type_in_date")
    private LocalDate typeInDate;
    @TableField("create_time")
    private LocalDateTime createTime;
    @TableField("gui_ge")
    private String guiGe;
    @TableField("dan_wei")
    private String danWei;
    @TableField("price")
    private BigDecimal price;
    @TableField("price_tax")
    private BigDecimal priceTax;
    @TableField("amount")
    private BigDecimal amount;
    @TableField("total_price")
    private BigDecimal totalPrice;
    @TableField("productor")
    private String productor;
    @TableField("appearance_validation")
    private String appearanceValidation;
    @TableField("materials_type")
    private String materialsType;


}
