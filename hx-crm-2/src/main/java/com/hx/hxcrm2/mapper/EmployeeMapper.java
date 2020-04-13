package com.hx.hxcrm2.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.hx.hxcrm2.entity.Employee;
import org.springframework.stereotype.Repository;

@Repository
public interface EmployeeMapper extends BaseMapper<Employee> {

    IPage<Employee> selectList(Page<Employee> page);

    Employee selectByName(String empName);

}
