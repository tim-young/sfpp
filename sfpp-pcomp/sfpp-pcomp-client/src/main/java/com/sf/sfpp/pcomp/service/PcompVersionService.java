package com.sf.sfpp.pcomp.service;

import com.sf.sfpp.pcomp.common.model.PcompVersion;
import com.sf.sfpp.pcomp.common.model.extend.PcompVersionExtend;

import java.util.List;

/**
 * 注意，和其他服务不同的是，这个服务所有对象参数为PcompVersionExtend，而不是PcompVersion
 * @author Hash Zhang
 * @version 1.0.0
 * @date 2016/8/12
 */
public interface PcompVersionService {
    /**
     * 根据software寻找所有versions信息
     * @param softwareId
     * @return
     */
    List<PcompVersionExtend> fetchAllVersionsSeparatelyBySoftware(String softwareId);

    /**
     * 根据software id判断version是否已经存在
     * @param softwareId
     * @param version
     * @return
     */
    boolean existsVersion(String softwareId, String version);

    /**
     * 添加软件版本以及版本相关所有信息
     * @param softwareId
     * @param version
     * @return
     */
    boolean addVersion(String softwareId, PcompVersionExtend version);

    /**
     * 更新软件版本以及版本相关所有信息
     * @param version
     * @return
     */
    boolean updateVersion(PcompVersionExtend version);

    /**
     * 移除对应版本id的版本
     * @param versionId
     * @return
     */
    boolean removeVersion(String versionId);
}