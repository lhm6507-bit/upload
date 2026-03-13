package com.hm.unit;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class UnitVO {
    private double num;
    private String unit;
    private String colorC;
    private String result;
    private String convertedUnit;


}
