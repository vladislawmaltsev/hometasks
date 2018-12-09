package entities;

import lombok.*;

import java.util.Date;
import java.util.Objects;
@Data
@Builder
@ToString
public class Delivery {
    protected Product product;
    private String country_from;
    private String country_to;
    protected User customer;
    private Integer id;

    public Delivery(Product product, String country_from, String country_to, User customer, Integer id) {
        this.product = product;
        this.country_from = country_from;
        this.country_to = country_to;
        this.customer = customer;
        this.id = id;
    }

    public Delivery(String country_to, String country_from) {
        this.country_to = country_to;
        this.country_from = country_from;
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Delivery delivery = (Delivery) o;
        return Objects.equals(product, delivery.product) &&
                Objects.equals(country_from, delivery.country_from) &&
                Objects.equals(country_to, delivery.country_to) &&
                Objects.equals(customer, delivery.customer);
    }

    @Override
    public int hashCode() {
        return Objects.hash(product, country_from, country_to, customer);
    }



    public String getCountry_from() {
        return country_from;
    }

    public void setCountry_from(String country_from) {
        this.country_from = country_from;
    }

    public String getCountry_to() {
        return country_to;
    }

    public void setCountry_to(String country_to) {
        this.country_to = country_to;
    }


    public User getCustomer() {
        return customer;
    }

    public String  getCustomerUsername(){
        return customer.getUsername();
    }

    public Product getProduct() {
        return product;
    }

}
