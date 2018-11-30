package utils;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateTag extends SimpleTagSupport {

    private long date;

    public void setDate(long date) {
        this.date = date;
    }
    public long getDate() {
        return date;
    }
    @Override
    public void doTag() throws  IOException {
        long currentDate = System.currentTimeMillis();
        if (currentDate - date < 1000 * 60 * 60 * 24 ) {
            getJspContext().getOut().write("today.");
        } else {
            getJspContext().getOut().write("earlier, than today.");
        }
//        Date date = new Date(getDate());
//        SimpleDateFormat df2 = new SimpleDateFormat("dd/MM/yy");
//        String dateText = df2.format(date);
//        getJspContext().getOut().write(dateText);
    }
}
