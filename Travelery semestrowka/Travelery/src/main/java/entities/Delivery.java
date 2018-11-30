package entities;

import java.util.Date;
import java.util.Objects;

public class Delivery {
    private Product product;
    private String country_from;
    private String country_to;
    private User customer;

    public Delivery(Product product, String country_from, String country_to, User customer) {
        this.product = product;
        this.country_from = country_from;
        this.country_to = country_to;
        this.customer = customer;
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

}
