package utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class BirthdayRegValidator {
    public boolean validate(String bDay) {
        SimpleDateFormat format = new SimpleDateFormat("dd-MM-yyyy");
        Date currentDate = new Date();
        String date="1900-01-01";
        Date parsed = null;
        Date borderDate = null;
        try {
            borderDate = format.parse(date);
            parsed = format.parse(bDay);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        if (currentDate.after(parsed) && parsed.after(borderDate)) {
            return true;
        } else {
            return false;
        }
    }
}
