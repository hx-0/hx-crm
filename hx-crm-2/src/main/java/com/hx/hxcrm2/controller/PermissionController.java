package com.hx.hxcrm2.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.hx.hxcrm2.entity.Permission;
import com.hx.hxcrm2.service.PermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@RestController
public class PermissionController {

    @Autowired
    private PermissionService permissionService;

    /**
     *  查询一页权限信息
     * @param page 当前页码
     * @param limit 每页记录数
     * @return
     */
    @GetMapping("/permission")
    public Map getList(Integer page, Integer limit){
        Map<String,Object> map = new HashMap<String,Object>();
        Page<Permission> p = new Page<Permission>();
        p.setSize(limit);
        p.setCurrent(page);
        IPage<Permission> iPage = permissionService.selectList(p);
        map.put("msg","查询情况");
        map.put("count",iPage.getTotal());
        map.put("data",iPage.getRecords());
        map.put("code",0);
        return map;
    }

    /**
     *  新增权限
     */
    @PostMapping("/permission")
    public Map add(Permission permission,Integer roleId){
        Map<String,Object> result = new HashMap<String,Object>();
        result.put("state",permissionService.add(permission,roleId));
        return result;
    }

    /**
     *  删除权限
     */
    @DeleteMapping("/permission/del/{permId}")
    public Map del(@PathVariable Integer permId){
        Permission permission = new Permission();
        permission.setPermId(permId);
        permission.setIsDel(1);
        Map<String,Object> result = new HashMap<String,Object>();
        result.put("state",permissionService.updateById(permission));
        return result;
    }

    /**
     *  修改权限
     */
    @PutMapping("/permission")
    public Map edit(Permission permission,Integer roleId){
        Map<String,Object> result = new HashMap<String,Object>();
        result.put("state",permissionService.update(permission,roleId));
        return result;
    }

}
