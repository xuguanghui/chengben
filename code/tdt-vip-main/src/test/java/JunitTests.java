import com.tdt.TdtApplication;
import com.tdt.modular.base.entity.BCompanyInfo;
import com.tdt.modular.base.service.BCompanyInfoServiceImpl;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

/**
 * Created by xuguanghui on 2020/7/2.
 */
@RunWith(SpringRunner.class)
@SpringBootTest(classes = TdtApplication.class)
public class JunitTests {
    @Autowired
    BCompanyInfoServiceImpl bCompanyInfoService;
    @Test
    public void test01(){
        List<BCompanyInfo> list = bCompanyInfoService.list();
        for (int i = 0; i < list.size(); i++) {
            BCompanyInfo bCompanyInfo =  list.get(i);
            System.out.println(bCompanyInfo.toString());

        }
    }
}
