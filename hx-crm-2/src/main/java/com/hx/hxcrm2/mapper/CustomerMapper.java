package com.hx.hxcrm2.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.hx.hxcrm2.entity.Customer;
import org.springframework.stereotype.Repository;

@Repository
public interface CustomerMapper extends BaseMapper<Customer> {

    IPage<Customer> selectList(Page<Customer> page);

}
