package com.invoicing.mapper;

import com.invoicing.pojo.Plate;
import java.util.List;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface PlateMapper {

  List<Plate> queryList();
}
