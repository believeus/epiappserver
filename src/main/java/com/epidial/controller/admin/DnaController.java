package com.epidial.controller.admin;

import com.epidial.bean.Dnakit;
import com.epidial.common.Page;
import com.epidial.dao.epi.DnakitDao;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class DnaController {
    @Resource
    private DnakitDao dnakitDao;
    @RequestMapping("/admin/dnakit/view")
    public ModelAndView view(@RequestParam(defaultValue = "1",value = "idx") int idx,@RequestParam(defaultValue = "200",value = "size") int size){
        ModelAndView modelView=new ModelAndView();
        int idx2=(idx-1)*200;
        List<Dnakit> databox = dnakitDao.paging(idx2, size);
        int c=dnakitDao.count();
        Page page=new Page();
        page.setTotalCount(c);
        page.setCurrPageNo(idx);
        page.setPageSize(size);
        modelView.addObject("page",page);
        modelView.setViewName("/WEB-INF/back/dna-list.jsp");
        modelView.addObject("databox",databox);
        return  modelView;
    }

    @RequestMapping("/admin/dnakit/addview")
    public ModelAndView addview() {
        return new ModelAndView("/WEB-INF/back/dnakit-add.jsp");
    }


    @ResponseBody
    @RequestMapping("/admin/dnakit/save")
    public String save(Dnakit dnakit){
        dnakit.setCreatetime(System.currentTimeMillis());
        dnakitDao.save(dnakit);
        return "success";
    }

    @ResponseBody
    @RequestMapping("/admin/dnakit/update")
    public String update(Dnakit dnakit){
        dnakitDao.update(dnakit);
        return "success";
    }

    @ResponseBody
    @RequestMapping("/admin/dnakit/del")
    public String  del(int id){
        dnakitDao.delete(id);//删除用户
        return "success";
    }

}
