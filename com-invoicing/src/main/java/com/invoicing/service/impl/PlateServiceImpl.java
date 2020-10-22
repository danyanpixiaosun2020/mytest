package com.invoicing.service.impl;

import com.invoicing.mapper.PlateMapper;
import com.invoicing.pojo.Plate;
import com.invoicing.service.PlateService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PlateServiceImpl implements PlateService {

  @Autowired
  private PlateMapper plateMapper;
  @Override
  public List<Plate> queryList() {
    List<Plate> reslut=plateMapper.queryList();
    return reslut;
  }
}
