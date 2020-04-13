package com.hx.hxcrm2.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.hx.hxcrm2.entity.Permission;

public interface PermissionService extends IService<Permission> {

    IPage<Permission> selectList(Page<Permission> page);

    Integer add(Permission permission,Integer roleId);

    Integer update(Permission permission,Integer roleId);

}
