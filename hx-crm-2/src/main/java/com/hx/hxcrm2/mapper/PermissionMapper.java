package com.hx.hxcrm2.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.hx.hxcrm2.entity.Permission;
import org.springframework.stereotype.Repository;

@Repository
public interface PermissionMapper extends BaseMapper<Permission> {

    IPage<Permission> selectList(Page<Permission> page);

}
