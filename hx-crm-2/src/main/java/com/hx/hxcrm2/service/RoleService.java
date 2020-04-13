package com.hx.hxcrm2.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.hx.hxcrm2.entity.Role;

public interface RoleService extends IService<Role> {

    IPage<Role> selectList(Page<Role> page);

    Integer add(Role role,Integer deptId);

    Integer update(Role role,Integer deptId);

}
