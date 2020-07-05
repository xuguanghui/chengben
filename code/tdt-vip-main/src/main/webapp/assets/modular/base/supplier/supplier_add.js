layui.use(['form', 'admin', 'ax','selectPlus'], function () {
    var $ = layui.jquery;
    var $ax = layui.ax;
    var form = layui.form;
    var admin = layui.admin;
    var selectPlus = layui.selectPlus;

    //让当前iframe弹层高度适应
    admin.iframeAuto();

    $("#name").focus();
    var optionList = [];
    var ajax = new $ax(Feng.ctxPath + "/element/listForSelect", function (data) {
        if(!data.data){
            return false;
        }
        var arrays = data.data;
        for (let i = 0; i < arrays.length; i++) {
            optionList.push({id:arrays[i].id,name:arrays[i].elementname});
        }
        selectPlus.render({
            el: '#multiSelect',
            data: optionList,
            valueName: "name",
            values: [],
            valueSeparator: " - "
        });

    }, function (data) {
        selectPlus.render({
            el: '#multiSelect',
            data: [],
            valueName: "name",
            values: [],
            valueSeparator: " - "
        });
        Feng.error("获取失败请联系管理员！" + data.message)
    });
    //ajax.set(data.field);
    ajax.start();
    //初始化多选

     selectPlus.on('selectPlus(multiSelect)', function (obj) {
        console.log(obj.checked); //当前是否选中状态
        console.log(obj.values); //选中的数据
        console.log(obj.checkedData); //选中的相关数据
        console.log(obj.isAll); //是否是全选
        console.log(obj.ele); //点击的DOM
         var checkIds = [];
        var checkData = obj.checkedData;
         for (let i = 0; i < checkData.length; i++) {
             checkIds.push(checkData[i].id);
         }
        $("#categoryids").val(checkIds);
        $("#categoryname").val(obj.values);
    });
    //表单提交事件
    form.on('submit(btnSubmit)', function (data) {
        var ajax = new $ax(Feng.ctxPath + "/supplier/addItem", function (data) {
            Feng.success("添加成功！");

            //传给上个页面，刷新table用
            admin.putTempData('formOk', true);

            //关掉对话框
            admin.closeThisDialog();

        }, function (data) {
            Feng.error("添加失败！" + data.responseJSON.message)
        });
        ajax.set(data.field);
        ajax.start();

        return false;
    });

});