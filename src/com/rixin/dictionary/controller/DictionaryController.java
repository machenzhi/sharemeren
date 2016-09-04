package com.rixin.dictionary.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.rixin.common.util.RixinUtil;
import com.rixin.dictionary.model.Dictionary;
import com.rixin.dictionary.service.IDictionaryService;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

// 注解配置控制器
@Controller
// 设置访问路径
@RequestMapping("/dictionary")
public class DictionaryController {
	private final Log log = LogFactory.getLog(getClass());
	// 注入DictionaryServiceImpl对象
	@Resource
	@Qualifier("DictionaryServiceImpl")
	private IDictionaryService dictionaryService;

	/**
	 * 添加字典信息
	 * 
	 * @param name
	 *            字典名称
	 * @param value
	 *            字典值
	 * @param pid
	 *            父id
	 * @param abspath
	 *            绝对id
	 * @return
	 */
	@RequestMapping("/addDictionary.do")
	@ResponseBody
	public Map<String, Object> addDictionary(HttpServletRequest request, Dictionary dictionary) {
		String id = RixinUtil.getUUID();
		dictionary.setId(id);
		dictionary.setAbspath(dictionary.getAbspath() + "." + id);
		dictionary.setDate(RixinUtil.getCurrentDateTime());

		Map<String, Object> resultMap = new HashMap<String, Object>();
		boolean isSuccess = dictionaryService.addDictionary(dictionary);
		resultMap.put("isSuccess", isSuccess);
		return resultMap;
	}

	@RequestMapping(value = "/getAllDictionarys4Json.do", produces = "text/plain;charset=UTF-8")
	@ResponseBody
	public String getAllDictionarys4Json(String id) {
		JSONArray jsonArray;
		if (id != null) {
			jsonArray = dictionaryService.getDictionarys4Json(id);
		} else {
			jsonArray = dictionaryService.getDictionarys4Json("0");
			JSONObject jsonObj = new JSONObject();
			jsonObj.put("id", "0");
			jsonObj.put("name", "所有类型");
			jsonObj.put("value", "0");
			jsonObj.put("pId", "");
			jsonObj.put("abspath", "0");
			jsonObj.put("isinfo", "");
			jsonObj.put("url", "");
			jsonObj.put("css", "");
			jsonObj.put("sort", "1");
			jsonArray.add(jsonObj);
		}
		return jsonArray.toString();
	}

	/**
	 * 根據pid獲取字典列表
	 * 
	 * @param model
	 * @param pid
	 * @return
	 */
	@RequestMapping("/getDictionarysByPid.do")
	public String getDictionarysByPid(Model model, String pid) {
		List<Dictionary> dictionaryList = dictionaryService.getDictionarysByPid(pid);
		model.addAttribute("dictionaryList", dictionaryList);
		return "dictionary/dictionarylist";
	}

	/**
	 * 根據id獲取字典信息
	 * 
	 * @param model
	 * @param id
	 * @return
	 */
	@RequestMapping("/getDictionaryById.do")
	public String getDictionaryById(Model model, String id) {
		if (id != null && !"".equals(id)) {
			Dictionary dictionary = dictionaryService.getDictionaryById(id);
			model.addAttribute("dictionary", dictionary);
		}
		return "dictionary/dictionaryDetail";
	}

	@RequestMapping("/updateDictionaryById.do")
	@ResponseBody
	public Map<String, Object> updateDictionaryById(HttpServletRequest request, Dictionary dictionary) {
		dictionary.setDate(RixinUtil.getCurrentDateTime());
		Map<String, Object> resultMap = new HashMap<String, Object>();
		boolean isSuccess = dictionaryService.updateDictionaryById(dictionary);
		resultMap.put("isSuccess", isSuccess);
		return resultMap;
	}

	/**
	 * 根据ID删除字典信息
	 * 
	 * @param id
	 *            主键
	 * @return
	 */
	@RequestMapping("/deleteDictionaryById.do")
	@ResponseBody
	public Map<String, Object> deleteDictionaryById(HttpServletRequest request, String id) {
		boolean isSuccess = dictionaryService.deleteDictionaryById(id);
		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("isSuccess", isSuccess);
		return resultMap;
	}

	/**
	 * 根据pid删除字典信息
	 * 
	 * @param pid
	 *            父id
	 * @return
	 */
	@RequestMapping("/deleteDictionaryByPid.do")
	@ResponseBody
	public Map<String, Object> deleteDictionaryByPid(HttpServletRequest request, String pid) {
		boolean isSuccess = dictionaryService.deleteDictionaryById(pid);
		Map<String, Object> resultMap = new HashMap<String, Object>();
		resultMap.put("isSuccess", isSuccess);
		return resultMap;
	}

	/**
	 * 查询所有字典信息
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping("/getDictionarysList.do")
	public String getDictionarysList(Model model) {
		List<Dictionary> dictionarysList = dictionaryService.getDictionarys();
		model.addAttribute("dictionarysList", dictionarysList);
		return "../news/news_list";
	}
}
