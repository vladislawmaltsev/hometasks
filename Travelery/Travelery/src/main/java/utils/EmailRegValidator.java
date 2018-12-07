package utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class EmailRegValidator {
    private final Pattern VALID_EMAIL_ADDRESS_REGEX =
            Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$", Pattern.CASE_INSENSITIVE);

    public boolean validate(String source) {
        Matcher matcher = VALID_EMAIL_ADDRESS_REGEX.matcher(source);
        return matcher.find();
    }
}
