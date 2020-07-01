package com.tdt.sys.modular.third.controller;

import com.tdt.sys.core.shiro.ShiroKit;
import com.tdt.sys.modular.third.factory.OAuthRequestFactory;
import com.tdt.sys.modular.third.service.LoginService;
import com.tdt.sys.modular.third.service.OauthUserInfoService;
import cn.stylefeng.roses.core.base.controller.BaseController;
import com.tdt.sys.modular.third.factory.OAuthRequestFactory;
import com.tdt.sys.modular.third.service.LoginService;
import com.tdt.sys.modular.third.service.OauthUserInfoService;
import lombok.extern.slf4j.Slf4j;
import me.zhyd.oauth.model.AuthCallback;
import me.zhyd.oauth.model.AuthResponse;
import me.zhyd.oauth.model.AuthUser;
import me.zhyd.oauth.request.AuthRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * OAuth统一回调地址
 *
 * @author xgh
 * @Date 2019/6/9 16:38
 */
@Controller
@RequestMapping("/oauth")
@Slf4j
public class OAuthController extends BaseController {

    @Autowired
    private LoginService loginService;

    @Autowired
    private OauthUserInfoService oauthUserInfoService;

    /**
     * 第三方登录跳转
     *
     * @author xgh
     * @Date 2019/6/9 16:44
     */
    @RequestMapping("/render/{source}")
    public void renderAuth(@PathVariable("source") String source, HttpServletResponse response) throws IOException {
        AuthRequest authRequest = OAuthRequestFactory.getAuthRequest(source);
        response.sendRedirect(authRequest.authorize());
    }

    /**
     * 第三方登录成功后的回调地址
     *
     * @author xgh
     * @Date 2019/6/9 16:45
     */
    @RequestMapping("/callback/{source}")
    public String callback(@PathVariable("source") String source, AuthCallback callback) {

        //通过回调的code，请求对应的oauth server获取用户基本信息和token
        AuthRequest authRequest = OAuthRequestFactory.getAuthRequest(source);
        AuthResponse authResponse = authRequest.login(callback);

        AuthUser oauthUser = (AuthUser) authResponse.getData();
        log.info("第三方登录回调成功：" + oauthUser);

        //进行第三方用户登录过程
        loginService.oauthLogin(oauthUser);

        return "redirect:/";
    }

    /**
     * 第三方登录的头像
     *
     * @author xgh
     * @Date 2019/6/9 16:44
     */
    @RequestMapping("/avatar")
    public String avatar() {

        Long userId = ShiroKit.getUserNotNull().getId();

        //获取第三方登录用户的头像
        String avatarUrl = oauthUserInfoService.getAvatarUrl(userId);

        return REDIRECT + avatarUrl;
    }

}
