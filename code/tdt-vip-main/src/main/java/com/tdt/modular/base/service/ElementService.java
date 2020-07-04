package com.tdt.modular.base.service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.tdt.modular.base.entity.BElement;
import com.tdt.modular.base.mapper.BElementMapper;
import org.springframework.stereotype.Service;

/**
 * Created by xuguanghui on 2020/7/3.
 */
@Service
public class ElementService extends ServiceImpl<BElementMapper, BElement> {
}
