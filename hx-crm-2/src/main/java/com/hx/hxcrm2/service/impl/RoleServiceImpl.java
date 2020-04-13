package com.hx.hxcrm2.service.impl;

import com.baomidou.mybatisplus.core.conditions.AbstractWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.hx.hxcrm2.entity.DepartmentRole;
import com.hx.hxcrm2.entity.Role;
import com.hx.hxcrm2.mapper.DepartmentRoleMapper;
import com.hx.hxcrm2.mapper.RoleMapper;
import com.hx.hxcrm2.service.RoleService;
import com.hx.hxcrm2.utils.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service
public class RoleServiceImpl extends ServiceImpl<RoleMapper, Role> implements RoleService {

    @Autowired
    private RoleMapper roleMapper;
    @Autowired
    private DepartmentRoleMapper departmentRoleMapper;

    @Override
    public IPage<Role> selectList(Page<Role> page) {
        return roleMapper.selectList(page);
    }

    @Override
    public Integer add(Role role, Integer deptId) {
        role.setCreateTime(StringUtils.getNowTime());
        role.setUpdateTime(StringUtils.getNowTime());
        role.setIsDel(0);
        int result =  roleMapper.insert(role);
        DepartmentRole departmentRole = new DepartmentRole();
        departmentRole.setRoleId(role.getRoleId());
        departmentRole.setDeptId(deptId);
        departmentRole.setCreateTime(StringUtils.getNowTime());
        departmentRole.setUpdateTime(StringUtils.getNowTime());
        departmentRole.setIsDel(0);
        departmentRoleMapper.insert(departmentRole);
        return result;
    }

    @Override
    public Integer update(Role role, Integer deptId) {
        role.setUpdateTime(StringUtils.getNowTime());
        int result =  roleMapper.updateById(role);
        DepartmentRole departmentRole = new DepartmentRole();
        departmentRole.setRoleId(role.getRoleId());
        departmentRole.setDeptId(deptId);
        departmentRole.setUpdateTime(StringUtils.getNowTime());
        AbstractWrapper abstractWrapper = new QueryWrapper();
        abstractWrapper.eq("role_id",role.getRoleId());
        departmentRoleMapper.update(departmentRole,abstractWrapper);
        return result;
    }

}
