package entities;

import java.util.Date;

public class Dream {
    private int dream_id;
    private   String dream_name;
    private String dream_text;
    private int dream_count_of_likes;
    private int next_dream;
    private Date dream_date;
    private int isPublic;

    public Dream(String dream_name,String dream_text,boolean isPublic) {
        this.dream_text = dream_text;
        this.dream_name = dream_name;
    }
    public Dream(String dream_name,String dream_text, Date dream_date, int next_dream) {
        this.dream_text = dream_text;
        this.dream_name = dream_name;
        this.dream_date = dream_date;
        this.next_dream = next_dream;
    }
    public Dream(int dream_id,String dream_name,String dream_text, int dream_count_of_likes) {
        this.dream_text = dream_text;
        this.dream_name = dream_name;
        this.dream_id = dream_id;
        this.dream_count_of_likes = dream_count_of_likes;
    }
    public Dream(int dream_id,String dream_name,String dream_text, int dream_count_of_likes, Date dream_date, int next_dream,int isPublic) {
        this.dream_text = dream_text;
        this.dream_name = dream_name;
        this.dream_id = dream_id;
        this.dream_count_of_likes = dream_count_of_likes;
        this.dream_date = dream_date;
        this.next_dream = next_dream;
        this.isPublic = isPublic;
    }
    public Dream(String dream_name,String dream_text, int dream_count_of_likes) {
        this.dream_text = dream_text;
        this.dream_name = dream_name;
        this.dream_count_of_likes = dream_count_of_likes;
    }
    public Dream(String dream_name,String dream_text, int dream_count_of_likes, Date dream_date) {
        this.dream_text = dream_text;
        this.dream_name = dream_name;
        this.dream_date = dream_date;
        this.dream_count_of_likes = dream_count_of_likes;
    }
    public Dream(int dream_id,String dream_name,String dream_text) {
        this.dream_text = dream_text;
        this.dream_name = dream_name;
        this.dream_id = dream_id;
    }

    public int isPublic() {
        return isPublic;
    }

    public void setPublic(int aPublic) {
        isPublic = aPublic;
    }

    public int getNext_dream() {
        return next_dream;
    }

    public void setNext_dream(int next_dream) {
        this.next_dream = next_dream;
    }

    public Date getDream_date() {
        return dream_date;
    }

    public void setDream_date(Date dream_date) {
        this.dream_date = dream_date;
    }

    public String getDream_text() {
        return dream_text;
    }

    public void setDream_text(String dream_text) {
        this.dream_text = dream_text;
    }

    public String getDream_name() {
        return dream_name;
    }

    public void setDream_name(String dream_name) {
        this.dream_name = dream_name;
    }

    public int getDream_count_of_likes() {
        return dream_count_of_likes;
    }

    public void setDream_count_of_likes(int dream_count_of_likes) {
        this.dream_count_of_likes = dream_count_of_likes;
    }

    public int getDream_id() {
        return dream_id;
    }

    public void setDream_id(int dream_id) {
        this.dream_id = dream_id;
    }
}
