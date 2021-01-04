package ssm.dao;

import java.util.List;
import org.apache.ibatis.annotations.Param;
import ssm.bean.Manager;
import ssm.bean.ManagerExample;

public interface ManagerMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table manager
     *
     * @mbg.generated Wed Oct 14 22:15:16 CST 2020
     */
    long countByExample(ManagerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table manager
     *
     * @mbg.generated Wed Oct 14 22:15:16 CST 2020
     */
    int deleteByExample(ManagerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table manager
     *
     * @mbg.generated Wed Oct 14 22:15:16 CST 2020
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table manager
     *
     * @mbg.generated Wed Oct 14 22:15:16 CST 2020
     */
    int insert(Manager record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table manager
     *
     * @mbg.generated Wed Oct 14 22:15:16 CST 2020
     */
    int insertSelective(Manager record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table manager
     *
     * @mbg.generated Wed Oct 14 22:15:16 CST 2020
     */
    List<Manager> selectByExample(ManagerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table manager
     *
     * @mbg.generated Wed Oct 14 22:15:16 CST 2020
     */
    Manager selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table manager
     *
     * @mbg.generated Wed Oct 14 22:15:16 CST 2020
     */
    int updateByExampleSelective(@Param("record") Manager record, @Param("example") ManagerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table manager
     *
     * @mbg.generated Wed Oct 14 22:15:16 CST 2020
     */
    int updateByExample(@Param("record") Manager record, @Param("example") ManagerExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table manager
     *
     * @mbg.generated Wed Oct 14 22:15:16 CST 2020
     */
    int updateByPrimaryKeySelective(Manager record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table manager
     *
     * @mbg.generated Wed Oct 14 22:15:16 CST 2020
     */
    int updateByPrimaryKey(Manager record);
}