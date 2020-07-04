/**
 * Created by xuguanghui on 2020/7/2.
 */
layui.use(['layer', 'carousel'], function () {
    var $ = layui.jquery;
    var layer = layui.layer;
    var carousel = layui.carousel;
    var device = layui.device;

    // 渲染轮播
    carousel.render({
        elem: '.layui-carousel',
        width: '100%',
        height: '60px',
        arrow: 'none',
        autoplay: true,
        trigger: device.ios || device.android ? 'click' : 'hover',
        anim: 'fade'
    });
});