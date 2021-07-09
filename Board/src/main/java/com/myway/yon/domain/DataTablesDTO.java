package com.myway.yon.domain;

import java.util.ArrayList;
import java.util.List;

import org.springframework.util.CollectionUtils;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class DataTablesDTO {
	
	  private int draw;
	    private int recordsTotal;
	    private int recordsFiltered;

	    private List data;

	    public List getData(){
	        if(CollectionUtils.isEmpty(data)){
	            data = new ArrayList();
	        }
	        return data;
	    }

}
