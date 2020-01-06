package com.situ.mall.user.controller;

import java.io.Serializable;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.situ.mall.user.domain.User;
import com.situ.mall.user.service.UserService;

@Controller
@RequestMapping("/mall")
public class UserController implements Serializable {

	private static final long serialVersionUID = 1L;

	@Autowired
	private UserService userService;
	
	
	/**
	 * @跳转登录页面
	 * @param modelAndView
	 * @return
	 */
	@RequestMapping("/goLogin")
	public ModelAndView goLogin(ModelAndView modelAndView) {
		modelAndView.setViewName("user/login");
		return modelAndView;
	}

	/**
	 * @跳转注册页面
	 * @param modelAndView
	 * @return
	 */
	@RequestMapping("/goRegister")
	public ModelAndView goRegister(ModelAndView modelAndView) {
		modelAndView.setViewName("user/register");
		return modelAndView;
	}


	/**
	 * 
	 * @跳转购物车
	 * @param modelAndView
	 * @return
	 */
	@RequestMapping("/goCart")
	public ModelAndView goCart(ModelAndView modelAndView) {
		modelAndView.setViewName("user/cart");
		return modelAndView;
	}

	/**
	 * 
	 * @跳转checkout
	 * @param modelAndView
	 * @return
	 */
	@RequestMapping("/goCheckout")
	public ModelAndView goCheckout(ModelAndView modelAndView) {
		modelAndView.setViewName("user/checkout");
		return modelAndView;
	}

	/**
	 * 
	 * @跳转产品页
	 * @param modelAndView
	 * @return
	 */
	@RequestMapping("/goProducts")
	public ModelAndView goProducts(ModelAndView modelAndView) {
		modelAndView.setViewName("products/products");
		return modelAndView;
	}
    
	/**
	 * 
	 * @跳转Product-Details
	 * @param modelAndView
	 * @return
	 */
	@RequestMapping("/goProduct-Details")
	public ModelAndView goProductDetails(ModelAndView modelAndView) {
		modelAndView.setViewName("products/product-details");
		return modelAndView;
	}

	/**
	 * 
	 * @跳转About
	 * @param modelAndView
	 * @return
	 */
	@RequestMapping("/goAbout")
	public ModelAndView goAbout(ModelAndView modelAndView) {
		modelAndView.setViewName("products/about");
		return modelAndView;
	}

	/**
	 * 
	 * @跳转Blog
	 * @param modelAndView
	 * @return
	 */
	@RequestMapping("/goBlog")
	public ModelAndView gogoBlog(ModelAndView modelAndView) {
		modelAndView.setViewName("products/blog");
		return modelAndView;
	}

	/**
	 * 
	 * @跳转Blog-Post
	 * @param modelAndView
	 * @return
	 */
	@RequestMapping("/goBlog-Post")
	public ModelAndView goBlogPost(ModelAndView modelAndView) {
		modelAndView.setViewName("products/blog-post");
		return modelAndView;
	}

	/**
	 * 
	 * @跳转Contact
	 * @param modelAndView
	 * @return
	 */
	@RequestMapping("/goContact")
	public ModelAndView goContact(ModelAndView modelAndView) {
		modelAndView.setViewName("products/contact");
		return modelAndView;
	}
	/**
	 * 
	 * @跳转Account
	 * @param modelAndView
	 * @return
	 */
	@RequestMapping("/goAccount")
	public ModelAndView goAccount(ModelAndView modelAndView) {
		modelAndView.setViewName("user/account");
		return modelAndView;
	}
	
	/**
	 * 
	 * @跳转Account
	 * @param modelAndView
	 * @return
	 */
	@RequestMapping("/goUserAccount")
	public ModelAndView goUserAccount(ModelAndView modelAndView) {
		modelAndView.setViewName("user/user_account");
		return modelAndView;
	}
	
	/**
	 * 
	 * 用户账号的表单校验  账户是否存在
	 * @param userCode
	 * @return
	 */
	  @ResponseBody
	  @RequestMapping("/checkUserCode") 
	  public boolean checkUserCode(String userCode) {
	  
	  return userService.checkByCode(userCode); }

	
	
	
	/**
	 * @注册
	 * @param user
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/doRegister")
	public long doRegister(User user) {
		
		return userService.regUser(user);
	}
	
	/**
	 * 
	 * @登录
	 * @param user
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/doLogin")
	public Integer doLogin(HttpServletRequest request,User user) {
		
		return userService.find(request,user);
    }

	
	/**
	 * 
	 * @退出账户
	 * @param request
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/doOutLogin")
	public Long doOutLogin(HttpServletRequest request) {
		
		return userService.doOutLogin(request);
	}
	
	  
	/**
	 * 
	 * @删除账户(逻辑删除)
	 * @param rowId
	 * @return
	 */
	  @ResponseBody
	  @RequestMapping("/doDelete/{rowId}")
	  public Long doDelete(HttpServletRequest request, long rowId) {
		  
		  return userService.doDelete(request, rowId);
	  }
	  
	  /**
	   * 
	   * @进入修改页面
	   * @param rowId
	   * @return
	   */
	  @ResponseBody
	  @RequestMapping("/goupdate/{rowId}")
		public User goUpdate(@PathVariable("rowId") long rowId) {
		 
			return userService.findUserById(rowId);
		}
	 
	  /**
	   * 
	   * @修改user信息
	   * @param request
	   * @param user
	   * @return
	   */
	  @ResponseBody
	  @RequestMapping("/doupdate")
	  public long doUpdate(HttpServletRequest request,User user) {
		  
		  return userService.doUpdate(request, user);
	  }
	  
}










