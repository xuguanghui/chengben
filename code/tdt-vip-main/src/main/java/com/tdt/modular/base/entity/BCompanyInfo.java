package com.tdt.modular.base.entity;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * <p>
 * 
 * </p>
 *
 * @author xgh
 * @since 2020-07-02
 */
@TableName("b_company_info")
@Data
@EqualsAndHashCode(callSuper = false)
public class BCompanyInfo implements Serializable {

    private static final long serialVersionUID=1L;
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;
    @TableField("companyfullname")
    private String companyfullname;

    @TableField("companytype")
    private String companytype;
    @TableField("companyshortname")
    private String companyshortname;
    @TableField("projectfullname")
    private String projectfullname;
    @TableField("projectshortname")
    private String projectshortname;
    @TableField("userid")
    private Long userid;

}
