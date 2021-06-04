/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TheoryOfAlgorithms.NewSkill.Lab3;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Random;

public class Lab3 {
    private int[] array;
    private int border;
    
    public Lab3(int length, int border)
    {
        if(length < 0)
            length = 20;
        if(border < 0)
            border = 50;
        array = new int[length];
        this.border = border;
    }
    
    public int GetBorder()
    {
        return border;
    }
    
    public int GetArrayLength()
    {
        return array.length;
    }
    
    public void InitArray()
    {
        Random rd = new Random();
        for (int i = 0; i < array.length; i++)
            array[i] = rd.nextInt(border) + 1;
    }
    
    public String Count()
    {
        List<Integer> sums = new ArrayList(array.length);
        HashSet<Integer> uniqueSums = new HashSet<Integer>();
        
        int buff = 0;
        int sum = 0;
        for (int i = 0; i < array.length; i++) {
            buff = array[i];
            sum = 0;
            while(buff >= 1)
            {
                sum += buff % 10;
                buff /= 10;
            }
            sums.add(sum);
            uniqueSums.add(sums.get(i));
        }
        
        int counter = 0;
        Integer[] uniqueSumsArray = uniqueSums.toArray(new Integer[uniqueSums.size()]);
        int occurrences = 0;
        for (int i = 0; i < uniqueSumsArray.length; i++) {
            occurrences = Collections.frequency(sums, uniqueSumsArray[i]);
            if(occurrences > 1)
                counter += occurrences;
        }
        
        return Integer.toString(counter);
    }
    
    public String DisplayArray()
    {
        return Arrays.toString(array);
    }
}
