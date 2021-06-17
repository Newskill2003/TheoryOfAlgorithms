package TheoryOfAlgorithms.NewSkill;

import TheoryOfAlgorithms.NewSkill.Lab2.Lab2;
import TheoryOfAlgorithms.NewSkill.Lab3.Lab3;
import TheoryOfAlgorithms.NewSkill.Lab4.Lab4;
import TheoryOfAlgorithms.NewSkill.Lab5.Lab5_2;
import static org.junit.jupiter.api.Assertions.assertEquals;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class NewSkillApplicationTests {

    @Test
    void contextLoads() {
    }
    
    @Test
    void Laba2Test()
    {
        Lab2 calculator = new Lab2();
        
        assertEquals(Float.MAX_VALUE, calculator.CalculateFormula(0));
        assertEquals(0, calculator.CalculateFormula(0.5f));
        assertEquals(0.05f, calculator.CalculateFormula(2));
    }

    @Test
    void Laba3Test()
    {
        Lab3 lab3 = new Lab3(-5, 10);
        assertEquals(20, lab3.GetArrayLength());
        lab3 = new Lab3(10, -5);
        assertEquals(50, lab3.GetBorder());
    }
    
    @Test
    void Laba4Test()
    {
        Lab4 lab4 = new Lab4("qqqq lorem ipsum dolor sit amet consectetur adipiscing elit donec eget");
        
        assertEquals(11, lab4.GetWordsNumber());
        assertEquals(1, lab4.GetNumberOfWordsThatContainSimilarLetters(4));
        assertEquals(11, lab4.GetNumberOfWordsThatNotContain('y'));
        assertEquals(11, lab4.GetUniqueWordsNumber());
        assertEquals("[ip=2, qq=2]", lab4.MostPopularSequences(2, 2));
    }
    
    @Test
    void Laba5Test()
    {
        Lab5_2 lab5 = new Lab5_2(20);
        lab5.InitList();
        
        assertEquals(-1, lab5.jumpSearch("test"));
        lab5.SortByStringField();
        assertEquals(10, lab5.jumpSearch("model #18"));
    }

    @Test
    void testFormula()
    {
        assertEquals(0.5555555555555556, TheoryOfAlgorithms.NewSkill.Exam.CalcExam.Calculate(4));
    }
}
