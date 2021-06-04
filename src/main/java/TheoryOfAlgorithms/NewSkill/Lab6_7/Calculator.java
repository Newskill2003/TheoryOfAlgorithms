/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TheoryOfAlgorithms.NewSkill.Lab6_7;

public class Calculator {
    public static double Calculate(int i, double base, int degree)
    {
        if(i == degree)
            return 1;
        return base * Calculate(i + 1, base, degree);
    }
}
