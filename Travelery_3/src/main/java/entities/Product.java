package entities;

import lombok.Builder;
import lombok.ToString;

import java.util.Objects;
@Builder
@ToString
public class Product {
    private String title;

    public Product(String title) {
        this.title = title;
    }




    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Product product = (Product) o;
        return Objects.equals(title, product.title);
    }

    @Override
    public int hashCode() {
        return Objects.hash(title);
    }
}

