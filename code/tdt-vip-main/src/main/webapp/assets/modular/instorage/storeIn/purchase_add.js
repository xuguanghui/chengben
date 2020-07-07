layui.use(['form', 'admin', 'ax', 'laydate'], function () {
    var $ax = layui.ax;
    var form = layui.form;
    var admin = layui.admin;
    var laydate = layui.laydate;

    //让当前iframe弹层高度适应
    admin.iframeAuto();

    laydate.render({
        elem: '#typeInDate',
        type: 'date',
        format: 'yyyy-MM-dd',
        trigger: 'click'
    });

    var PurchaseInfoDlg={};

    //表单提交事件
    form.on('submit(btnSubmit)', function (data) {
        var ajax = new $ax(Feng.ctxPath + "/storeIn/addItem", function (data) {
            Feng.success("添加成功！");

            //传给上个页面，刷新table用
            admin.putTempData('formOk', true);

            //关掉对话框
            admin.closeThisDialog();
            PurchaseInfoDlg.addDetail(data.data.bStrorein.id,data.data.bStrorein.orderNo);
        }, function (data) {
            Feng.error("添加失败！" + data.responseJSON.message)
        });
        ajax.set(data.field);
        ajax.start();
        return false;
    });

    //弹出添加采购订单详情页面
    PurchaseInfoDlg.addDetail = function (id,orderno) {
        //传给上个页面，刷新table用
        admin.putTempData('formOk', true);
        admin.putTempData('id', id);
        admin.putTempData('orderno', orderno);

        //关掉对话框
        admin.closeThisDialog();
    };
});