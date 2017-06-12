package cn.bdqn.servlet.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.bdqn.bean.User;
import cn.bdqn.service.user.UserService;
import cn.bdqn.service.user.UserServiceImpl;
import cn.bdqn.utils.Constants;


public class LoginServlet extends HttpServlet {

	/**
		 * 出品人：rick
		 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);

	}

	/**
		 * 出品人：rick
		 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 获取用户名和密码
		String userCode = request.getParameter("userCode");
		String userPassword = request.getParameter("userPassword");
		// 调用service方法，进行用户匹配
		UserService userService = new UserServiceImpl();
		User user = userService.login(userCode, userPassword);
		if (null != user) { // 登录成功
			// 放入session
			request.getSession().setAttribute(Constants.USER_SESSION, user);
			// 页面跳转（frame.jsp）
			request.getRequestDispatcher("WEB-INF/jsp/public/welcome.jsp").forward(request, response);
		} else { // 登录失败
			// 页面跳转（login.jsp）带出提示信息--转发
			request.setAttribute("error", "用户名或密码不正确");
			request.getRequestDispatcher("/login.jsp").forward(request,
					response);
		}
	}

}
