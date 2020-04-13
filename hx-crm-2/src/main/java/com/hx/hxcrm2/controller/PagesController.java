package com.hx.hxcrm2.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.hx.hxcrm2.entity.Customer;
import com.hx.hxcrm2.entity.Department;
import com.hx.hxcrm2.entity.Employee;
import com.hx.hxcrm2.entity.Role;
import com.hx.hxcrm2.service.CustomerService;
import com.hx.hxcrm2.service.DepartmentService;
import com.hx.hxcrm2.service.EmployeeService;
import com.hx.hxcrm2.service.RoleService;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * 返回视图的控制器
 */
@Controller
public class PagesController {

    @Autowired
    private EmployeeService employeeService;
    @Autowired
    private DepartmentService departmentService;
    @Autowired
    private RoleService roleService;
    @Autowired
    private CustomerService customerService;

    @GetMapping("/")
    public String index(Model model){
        model.addAttribute("employee",SecurityUtils.getSubject().getPrincipal());
        return "index";
    }

    @GetMapping("/welcome")
    public String welcome(Model model){
        QueryWrapper<Employee> queryWrapper1 = new QueryWrapper<>();
        model.addAttribute("empNum",employeeService.count(queryWrapper1.eq("is_del",0)));
        QueryWrapper<Department> queryWrapper2 = new QueryWrapper<>();
        model.addAttribute("deptNum",departmentService.count(queryWrapper2.eq("is_del",0)));
        QueryWrapper<Role> queryWrapper3 = new QueryWrapper<>();
        model.addAttribute("roleNum",roleService.count(queryWrapper3.eq("is_del",0)));
        QueryWrapper<Customer> queryWrapper4 = new QueryWrapper<>();
        model.addAttribute("custNum",customerService.count(queryWrapper4.eq("is_del",0)));
        return "welcome";
    }

    @GetMapping("/403")
    public String un(){
        return "403";
    }

}
