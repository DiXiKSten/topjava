package ru.javawebinar.topjava;

import ru.javawebinar.topjava.model.Meal;
import ru.javawebinar.topjava.util.TimeUtil;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

/**
 * @see <a href="http://topjava.herokuapp.com">Demo</a>
 * @see <a href="https://github.com/JavaOPs/topjava">Initial project</a>
 */
public class Main {
    public static List<Meal> mealList = new ArrayList<Meal>();
    static{
        LocalDateTime dt = LocalDateTime.now();
        mealList.add(new Meal(dt,"Булка",500));
        mealList.add(new Meal(dt,"Чай",50));
        mealList.add(new Meal(dt,"Сахер",200));
        mealList.add(new Meal(dt,"Сосиска",700));
    }
    public static void main(String[] args) {
        System.out.format("Hello Topjava Enterprise!");
    }
}
