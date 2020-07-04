package com.tdt.modular.base.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
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
 * @since 2020-07-03
 */
@TableName("b_element")
@Data
@EqualsAndHashCode(callSuper = false)
public class BElement implements Serializable {

    private static final long serialVersionUID=1L;

    /**
     * 主键
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 元素名称
     */
    @TableField("elementname")
    private String elementname;

    /**
     * 元素类型
     */
    @TableField("type")
    private String type;

    /**
     * 父Id
     */
    @TableField("pid")
    private Integer pid;

    /**
     * 1:可被删除，0:不可被删除
     */
    @TableField("candelete")
    private Integer candelete;

    @TableField("remark")
    private String remark;
    @TableField("createtime")
    private Long createtime;


}
