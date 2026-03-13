package com.hm.test;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@Data
@NoArgsConstructor
public class Result {
    private  String payname;
    private int people;
    private int total;
    private int pay;

}
