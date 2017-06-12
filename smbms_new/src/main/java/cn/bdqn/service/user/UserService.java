package cn.bdqn.service.user;

import java.util.HashMap;
import java.util.List;

import cn.bdqn.bean.User;


public interface UserService {

	/**
	 * 增加用户信息
	 * @param user
	 * @return
	 */
	public boolean add(User user);

	/**
	 * 判断用户是否存在
	 * @param userCode
	 * @param userPassword
	 * @return
	 */
	public User login(String userCode, String userPassword);

	/**
	 * 查询用户列表
	 * @param userName
	 * @return
	 */
	public List<User> getUserList(String queryUserName);

	/**
	 * 根据userCode查询出User
	 * @param userCode
	 * @return
	 */
	public User selectUserCodeExist(String userCode);

	/**
	 * 根据id删除User
	 * @param delId
	 * @return
	 */
	public boolean deleteUserById(Integer delId);

	/**
	 * 根据id查询User
	 * @param id
	 * @return
	 */
	public User getUserById(String id);

	/**
	 * 修改User
	 * @param user
	 * @return
	 */
	public boolean modify(User user);

	/**
	 * 根据userId修改密码
	 * @param id
	 * @param newpassword
	 * @return
	 */
	public boolean updatePwd(int id, String newpassword);

	/**
	 * 分页获取userList
	 * @param userName
	 * @param pageInfo
	 * @return
	 */
	public List<User> getPageUserList(String userName,
			HashMap<String, Integer> pageInfo);

	/**
	 * 通过userName查询得到总记录条数
	 * @param userName
	 * @return
	 */
	public int getRecCountByName(String userName);
}
