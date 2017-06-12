package cn.bdqn.service.user.test;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

import cn.bdqn.bean.User;
import cn.bdqn.service.user.UserService;
import cn.bdqn.service.user.UserServiceImpl;

public class UserServiceTest {
	UserService userService = null;
	
	@Before
	public void setUp() throws Exception {
		userService=new UserServiceImpl();
	}

	@Test
	public void testAdd() {
		fail("Not yet implemented");
	}

	@Test
	public void testLogin() {
		User user = userService.login("2", "2");
		System.out.println(user);
		
	}

	@Test
	public void testGetUserList() {
		fail("Not yet implemented");
	}

	@Test
	public void testSelectUserCodeExist() {
		fail("Not yet implemented");
	}

	@Test
	public void testDeleteUserById() {
		fail("Not yet implemented");
	}

	@Test
	public void testGetUserById() {
		fail("Not yet implemented");
	}

	@Test
	public void testModify() {
		fail("Not yet implemented");
	}

	@Test
	public void testUpdatePwd() {
		fail("Not yet implemented");
	}

	@Test
	public void testGetPageUserList() {
		fail("Not yet implemented");
	}

	@Test
	public void testGetRecCountByName() {
		fail("Not yet implemented");
	}

}
