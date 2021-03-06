package com.hx.hxcrm2.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.hx.hxcrm2.entity.Department;
import com.hx.hxcrm2.mapper.DepartmentMapper;
import com.hx.hxcrm2.service.DepartmentService;
import com.hx.hxcrm2.utils.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service
public class DepartmentServiceImpl extends ServiceImpl<DepartmentMapper, Department> implements DepartmentService {

    @Autowired
    private DepartmentMapper departmentMapper;

    @Override
    public IPage<Department> selectList(Page<Department> page) {
        return departmentMapper.selectList(page);
    }

    @Override
    public Integer add(Department department) {
        department.setCreateTime(StringUtils.getNowTime());
        department.setUpdateTime(StringUtils.getNowTime());
        department.setIsDel(0);
        int result = departmentMapper.insert(department);
        return result;
    }

    @Override
    public Integer update(Department department) {
        department.setUpdateTime(StringUtils.getNowTime());
        int result =  departmentMapper.updateById(department);
        return result;
    }

}
