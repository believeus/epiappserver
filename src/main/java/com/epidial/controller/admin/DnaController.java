package com.epidial.controller.admin;

import com.alibaba.fastjson.JSONObject;
import com.epidial.bean.Dnakit;
import com.epidial.common.Page;
import com.epidial.dao.epi.DnakitDao;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.Resource;
import java.io.IOException;
import java.nio.file.FileSystems;
import java.util.ArrayList;
import java.util.List;

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

    /*
    * 根据barcode 查看
    * */
    @RequestMapping("/admin/dnakit/getbybarcode")
    @ResponseBody
    public String getBybarcode(String barcode){
        List<Dnakit> dnakitList = dnakitDao.getBybarcode(barcode);
        return JSONObject.toJSONString(dnakitList);
    }
    /*
    * 创建索引库
    * */
//    @RequestMapping("/create")
//    public void create(String barcode){
//        //1收集数据
//        List<Dnakit> dnakitList=dnakitDao.getBybarcode(barcode);
//        List<Document> documents = new ArrayList<>();
//        Document document;
//        if(dnakitList!=null&&dnakitList.size()>0){
//            for (Dnakit dnakit:dnakitList) {
//                //2创建文本对象
//                 document =new Document();
//                //3根据不同字段的需求创建file对象
//                // 分词 索引 存储
////              id  不分词，存储
//                document.add(new StoredField("id",String.valueOf(dnakit.getId())));
//                // 分词 索引 存储
//                document.add(new TextField("name",dnakit.getName(), Field.Store.YES));
//                // 分词 索引 存储
//                document.add(new TextField("barcode",dnakit.getBarcode(), Field.Store.YES));
//                // 分词 索引 不存储
//                document.add(new TextField("createtime",String.valueOf(dnakit.getCreatetime()), Field.Store.NO));
//                //将文档对象放入到文档集合
//                documents.add(document);
//            }
//        }
//        //将document对象用分词器进行分词
//        Analyzer analyzer= new StandardAnalyzer();//中午分词器
//        //创建索引目录
//        try {
//            Directory directory = FSDirectory.open(FileSystems.getDefault().getPath("D:\\user\\local\\workspace\\luceneindex"));
//            //创建索引的配置对象
//            IndexWriterConfig config = new IndexWriterConfig(analyzer);
//            //开始构造索引 写入到指定目录
//            IndexWriter indexWriter = new IndexWriter(directory,config);
//            if(documents!=null&&documents.size()>0){
//                for (Document document1:documents) {
//                     indexWriter.addDocument(document1);
//                }
//            }
//            indexWriter.close();
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//
//    }




}
