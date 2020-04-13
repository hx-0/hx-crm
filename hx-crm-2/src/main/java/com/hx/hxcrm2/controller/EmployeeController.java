package com.hx.hxcrm2.controller;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.hx.hxcrm2.entity.Employee;
import com.hx.hxcrm2.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
public class EmployeeController {

    @Autowired
    private EmployeeService employeeService;

    @GetMapping("/employees")
    public List<Employee> employees(){
        return employeeService.list();
    }

    /**
     *  查询一页员工信息
     * @param page 当前页码
     * @param limit 每页记录数
     * @return
     */
    @GetMapping("/employee")
    public Map getList(Integer page,Integer limit){
        Map<String,Object> map = new HashMap<String,Object> ();
        //设置mybatisPlus分页
        Page<Employee> p = new Page<Employee>();
        //设置每页记录数
        p.setSize(limit);
        //设置当前页码
        p.setCurrent(page);
        IPage<Employee> iPage = employeeService.selectList(p);
        map.put("msg","查询情况");
        map.put("count",iPage.getTotal());
        map.put("data",iPage.getRecords());
        map.put("code",0);
        return map;
    }

    /**
     *  新增用户
     */
    @PostMapping("/employee")
    public Map add(Employee employee,Integer roleId){
        System.out.println(employee+","+roleId);
        Map<String,Object> result = new HashMap<String,Object>();
        result.put("state",employeeService.add(employee,roleId));
        return result;
    }

    /**
     *  删除用户
     */
    @DeleteMapping("/employee/del/{empId}")
    public Map del(@PathVariable Integer empId){
        Employee employee = new Employee();
        employee.setEmpId(empId);
        employee.setIsDel(1);
        Map<String,Object> result = new HashMap<String,Object>();
        result.put("state",employeeService.updateById(employee));
        return result;
    }

    /**
     *  修改用户
     */
    @PutMapping("/employee")
    public Map edit(Employee employee,Integer roleId){
        Map<String,Object> result = new HashMap<String,Object>();
        result.put("state",employeeService.update(employee,roleId));
        return result;
    }

}