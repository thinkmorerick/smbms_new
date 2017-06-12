package cn.bdqn.service.provider;

import java.util.HashMap;
import java.util.List;

import cn.bdqn.bean.Bill;
import cn.bdqn.bean.Provider;


public interface ProviderService {
	/**
	 * 增加供应商
	 * @param provider
	 * @return
	 */
	public boolean add(Provider provider);

	/**
	 * 通过供应商名称获取供应商列表-模糊查询-providerList
	 * @param proName
	 * @return
	 */
	public List<Provider> getProviderList(String proName);

	/**
	 * 通过proId删除Provider
	 * @param delId
	 * @return
	 */
	public int deleteProviderById(String delId);

	/**
	 * 通过proId获取Provider
	 * @param connection
	 * @param id
	 * @return
	 * @throws Exception
	 */
	public Provider getProviderById(String id);

	/**
	 * 修改用户信息
	 * @param connection
	 * @param provider
	 * @return
	 * @throws Exception
	 */
	public boolean modify(Provider provider);

	/**
	 * 获取分页ProviderList,模糊查询
	 * @param provider
	 * @return
	 */
	public List<Provider> getPageProviderList(Provider provider,
			HashMap<String, Integer> pageInfo);

	/**
	 * 获取供应商条数，模糊查询
	 * @param provider
	 * @return
	 */
	public int getRecCountByProvider(Provider provider);
}
