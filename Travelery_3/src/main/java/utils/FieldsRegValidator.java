package utils;


import org.json.JSONObject;

public class FieldsRegValidator {
    public JSONObject validate(String email, String password, String bDay) {
        EmailRegValidator emailValidator = new EmailRegValidator();
        PasswordRegValidator passwordValidator = new PasswordRegValidator();
        BirthdayRegValidator birthdayValidator = new BirthdayRegValidator();
        JSONObject map = new JSONObject();
        if (!emailValidator.validate(email)) {
            map.put("fieldError", "Wrong email!");
        }
        if (!passwordValidator.validate(password)) {
            map.put("fieldError", "Wrong password!");
        }
        if (!birthdayValidator.validate(bDay)) {
            map.put("fieldError","Wrong birthday!");
        }
        return map;
    }
}
