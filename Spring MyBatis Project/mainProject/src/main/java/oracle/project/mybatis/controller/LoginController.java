package oracle.project.mybatis.controller;



import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.validator.internal.util.privilegedactions.GetMethod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import oracle.project.mybatis.service.Paging;
import oracle.project.mybatis.dao.LoginDao;
import oracle.project.mybatis.model.Images;
import oracle.project.mybatis.model.Login;
import oracle.project.mybatis.service.Service1;

@Controller
public class LoginController {
	
	@Autowired
	private Service1 serv;
	
	@RequestMapping(value="showPass",method=RequestMethod.GET)
	public String showPass() {


	return 	"showPass";
		
	}
	
	@RequestMapping(value="findPass")
	public String pass() {
	return 	"findPass";
		
	}
	
	@RequestMapping(value="passFound", method=RequestMethod.GET)
	@ResponseBody
	public String passFound(Model model, String id, String birthday) {
		String result = serv.findPass(id, birthday);
		
		System.out.println("controller"+result);
	
			model.addAttribute("pw", result);
			return result;
		
	}
	
	
	@RequestMapping(value="homePage")
	public String main(Images images, Model model) {
		
		
		List<Images> list = serv.list(images); // emp 전체 count
		System.out.println("list = " + list);
		System.out.println("LoginController homePage Start...");
		model.addAttribute("list",list);
		return "homePage";
	}
	
	
	@RequestMapping(value="login", method = RequestMethod.GET)
	public String init(Model model) {
	
	
		return "login";
		
	}
	
	@RequestMapping(value = "logout") 
    public String logout(HttpSession session) {
        session.invalidate();
        return "forward:homePage.do";
    }
	
	@RequestMapping(value="create")
	public String create(Model model) {
		
		return "create";
	}
	
	@RequestMapping(value="createSuccess", method=RequestMethod.POST)
	@ResponseBody
	public int createSuccess(Login login, Model model, HttpServletRequest request) {
		int result = serv.insert(login);
		
			model.addAttribute("login", result);
			return result;

		
	}
	
	@RequestMapping(value="confirm")
	@ResponseBody
	public String confirm(@RequestParam String id, Model model) {
		String check = serv.getId(id);
		String msg = null;
		if(check != null) {
			if(check.equals(id)) {
				msg = "아이디가 존재합니다";
			}
		} else {
			msg = "아이디 사용 가능";
		}
		return msg;
	}
	

	@RequestMapping(value="success", method=RequestMethod.GET)
	@ResponseBody
	public int success(Model model, HttpSession session, String id,  String pw) {
		
		int login = serv.userPass(id, pw);

		 
			session.setAttribute("id", id);
			System.out.println(login);
			return login;

	}
	
	@RequestMapping(value="list")
	public String list(Images images, String currentPage, Model model) {
		int total = serv.total();   // emp 전체 count ->137
		Paging pg = new Paging(total, currentPage);

		model.addAttribute("pg",pg);
		return "list";
	}
	
	@RequestMapping(value="detail")
	public String detail(String imgId, Model model) {
		int update = serv.viewUpdate(imgId);
		Images images = serv.detail(imgId);
		model.addAttribute("images", images);
		return "detail";
	}


	
}
	
