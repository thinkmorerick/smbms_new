package cn.bdqn.dao.provider;

import java.sql.Connection;
import java.util.HashMap;
import java.util.List;

import cn.bdqn.bean.Bill;
import cn.bdqn.bean.Provider;


public interface ProviderDao {

	/**
	 * 增加供应商
	 * @param connection
	 * @param provider
	 * @return
	 * @throws Exception
	 */
	public boolean add(Connection connection, Provider provider)
			throws Exception;

	/**
	 * 通过供应商名称获取供应商列表-模糊查询-providerList
	 * @param connection
	 * @param proName
	 * @return
	 */
	public List<Provider> getProviderList(Connection connection, String proName)
			throws Exception;

	/**
	 * 通过proId删除Provider
	 * @param connection
	 * @param string
	 * @return
	 * @throws Exception
	 */
	public boolean deleteProviderById(Connection connection, String delId)
			throws Exception;

	/**
	 * 通过proId获取Provider
	 * @param connection
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public Provider getProviderById(Connection connection, String id)
			throws Exception;

	/**
	 * 修改用户信息
	 * @param connection
	 * @param provider
	 * @return
	 * @throws Exception
	 */
	public boolean modify(Connection connection, Provider provider)
			throws Exception;
	
	/**
	 * 分页获取pageProviderList,通过Provider模糊查询
	 * @param connection
	 * @param provider
	 * @param pageInfo
	 * @return
	 * @throws Exception
	 */
	public List<Provider> getPageProviderList(Connection connection, Provider provider,
			HashMap<String, Integer> pageInfo) throws Exception;

	/**
	 * 获取订单条数，模糊查询
	 * @param connection
	 * @param provider
	 * @return
	 * @throws Exception
	 */
	public int getRecCountByProvider(Connection connection, Provider provider)
			throws Exception;
}
