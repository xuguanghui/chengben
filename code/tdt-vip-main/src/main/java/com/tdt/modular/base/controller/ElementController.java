package com.tdt.modular.base.controller;

import cn.hutool.core.util.StrUtil;
import cn.stylefeng.roses.core.reqres.response.ResponseData;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.tdt.base.pojo.page.LayuiPageFactory;
import com.tdt.modular.base.entity.BElement;
import com.tdt.modular.base.entity.Supplier;
import com.tdt.modular.base.model.params.SupplierParam;
import com.tdt.modular.base.service.ElementService;
import com.tdt.modular.base.service.SupplierService;
import com.tdt.sys.modular.system.warpper.DeptWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
import java.util.Map;

/**
 * Created by xuguanghui on 2020/7/3.
 */
@Controller
@RequestMapping("/element")
public class ElementController {

    @Autowired
    ElementService elementService;
    private String PREFIX = "/modular/base/element";
    
    /**
     * 跳转到主页面
     *
     * @author chenc
     * @Date 2019-08-19
     */
    @RequestMapping("")
    public String index(Model model, String type) {
        model.addAttribute("type",type);
        return PREFIX + "/element.html";
    }
    @RequestMapping("/childlist")
    public String childIndex() {
        return PREFIX + "/elementChild.html";
    }

    /**
     * 新增页面
     *
     * @author chenc
     * @Date 2019-08-19
     */
    @RequestMapping("/add")
    public String add(Model model, String type,String pid) {
        model.addAttribute("type",type);
        model.addAttribute("pid",pid);
        return PREFIX + "/element_add.html";
    }

    /**
     * 编辑页面
     *
     * @author chenc
     * @Date 2019-08-19
     */
    @RequestMapping("/edit")
    public String edit() {
        return PREFIX + "/element_edit.html";
    }

    /**
     * 新增接口
     *
     * @author chenc
     * @Date 2019-08-19
     */
    @RequestMapping("/addItem")
    @ResponseBody
    public ResponseData addItem(BElement element) {
        element.setCreatetime((System.currentTimeMillis())/1000);
        this.elementService.save(element);
        return ResponseData.success();
    }

    /**
     * 编辑接口
     *
     * @author chenc
     * @Date 2019-08-19
     */
    @RequestMapping("/editItem")
    @ResponseBody
    public ResponseData editItem(BElement element) {
        element.setCreatetime((System.currentTimeMillis())/1000);
        BElement target = this.elementService.getById(element.getId());
        target.setElementname(element.getElementname());
        target.setRemark(element.getRemark());
        this.elementService.updateById(target);
        //this.elementService.update(element,null);
        return ResponseData.success();
    }

    /**
     * 删除接口
     *
     * @author chenc
     * @Date 2019-08-19
     */
    @RequestMapping("/delete")
    @ResponseBody
    public ResponseData delete(Long id) {
        this.elementService.removeById(id);
        return ResponseData.success();
    }

    /**
     * 查看详情接口
     *
     * @author chenc
     * @Date 2019-08-19
     */
    @RequestMapping("/detail")
    @ResponseBody
    public ResponseData detail(Long id) {
        BElement detail = this.elementService.getById(id);
        return ResponseData.success(detail);
    }
    /**
     * 查询下拉列表
     *
     * @author xgh
     * @Date 2019-08-19
     */
    @ResponseBody
    @RequestMapping("/listForSelect")
    public ResponseData listForSelect() {

        QueryWrapper<BElement> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("type","2");
        List<BElement> list = elementService.list(queryWrapper);
        return ResponseData.success(list);
    }
    /**
     * 查询列表
     *
     * @author xgh
     * @Date 2019-08-19
     */
    @ResponseBody
    @RequestMapping("/list")
    public Object list(BElement element) {
        //获取分页参数
        Page<BElement> page = LayuiPageFactory.defaultPage();
        QueryWrapper<BElement> queryWrapper = new QueryWrapper<>();
        if(StrUtil.isNotEmpty(element.getElementname())){
            queryWrapper.like("elementname",element.getElementname());
        }
        if(element.getPid() != null){
            queryWrapper.eq("pid",element.getPid());
        }
        if(StrUtil.isNotEmpty(element.getType())){
            queryWrapper.eq("type",element.getType());
        }else{
            queryWrapper.eq("type","-1");
        }
        queryWrapper.orderByDesc("createtime");
        IPage<BElement> page1 = elementService.page(page, queryWrapper);
        //根据条件查询日志
//        List<Map<String, Object>> result = elementService.list(page, paramCondition);
//        page.setRecords(new DeptWrapper(result).wrap());
        return LayuiPageFactory.createPageInfo(page1);
    }

}
