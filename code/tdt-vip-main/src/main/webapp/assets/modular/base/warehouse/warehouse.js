layui.use(['table', 'ax', 'func'], function () {
    var $ = layui.$;
    var table = layui.table;
    var $ax = layui.ax;
    var func = layui.func;

    /**
     * 管理
     */
    var Warehouse = {
        tableId: "warehouseTable"
    };

    /**
     * 初始化表格的列
     */
    Warehouse.initColumn = function () {
        return [[
            {type: 'checkbox'},
            {field: 'id', hide: true, title: '仓库编号'},
            {field: 'name', sort: true, title: '仓库名称'},
            {field: 'alias', sort: true, title: '仓库简称'},
            {field: 'address', sort: true, title: '仓库地址'},
            {field: 'remark', sort: true, title: '备注'},
            {align: 'center', toolbar: '#tableBar', title: '操作',fixed: 'right'}
        ]];
    };

    /**
     * 点击查询按钮
     */
    Warehouse.search = function () {
        var queryData = {};
        queryData['name'] = $("#name").val();
        queryData['alias'] = $("#alias").val();
        table.reload(Warehouse.tableId, {
            where: queryData, page: {curr: 1}
        });
    };

    /**
     * 点击重置按钮
     */
    Warehouse.reset = function () {
        $("#name").val("");
        $("#alias").val("");
        Warehouse.search();
    };

    /**
     * 弹出添加对话框
     */
    Warehouse.openAddDlg = function () {
        func.open({
            title: '添加',
            content: Feng.ctxPath + '/warehouse/add',
            tableId: Warehouse.tableId
        });
    };

    /**
    * 点击编辑
    *
    * @param data 点击按钮时候的行数据
    */
    Warehouse.openEditDlg = function (data) {
        func.open({
            title: '修改',
            content: Feng.ctxPath + '/warehouse/edit?id=' + data.id,
            tableId: Warehouse.tableId
        });
    };

    /**
     * 点击删除
     *
     * @param data 点击按钮时候的行数据
     */
    Warehouse.onDeleteItem = function (data) {
        var operation = function () {
            var ajax = new $ax(Feng.ctxPath + "/warehouse/delete", function (data) {
                Feng.success("删除成功!");
                table.reload(Warehouse.tableId);
            }, function (data) {
                Feng.error("删除失败!" + data.responseJSON.message + "!");
            });
            ajax.set("id", data.id);
            ajax.start();
        };
        Feng.confirm("是否删除?", operation);
    };

    // 渲染表格
    var tableResult = table.render({
        elem: '#' + Warehouse.tableId,
        url: Feng.ctxPath + '/warehouse/list',
        page: true,
        height: "full-158",
        cellMinWidth: 100,
        cols: Warehouse.initColumn()
    });

    // 搜索按钮点击事件
    $('#btnSearch').click(function () {
        Warehouse.search();
    });

    // 重置按钮点击事件
    $('#btnReset').click(function () {
        Warehouse.reset();
    });

    // 添加按钮点击事件
    $('#btnAdd').click(function () {
        Warehouse.openAddDlg();
    });

    // 工具条点击事件
    table.on('tool(' + Warehouse.tableId + ')', function (obj) {
        var data = obj.data;
        var layEvent = obj.event;

        if (layEvent === 'edit') {
            Warehouse.openEditDlg(data);
        } else if (layEvent === 'delete') {
            Warehouse.onDeleteItem(data);
        }
    });
});
