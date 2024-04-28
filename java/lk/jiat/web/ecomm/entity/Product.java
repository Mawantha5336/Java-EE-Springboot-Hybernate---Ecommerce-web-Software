package lk.jiat.web.ecomm.entity;

import jakarta.persistence.*;

import java.math.BigDecimal;
import java.util.List;

@Entity
public class Product extends BaseEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private BigDecimal price;
    private BigDecimal discount_price;
    @Column(columnDefinition = "LONGTEXT")
    private String description;
    private Boolean active;
    @Column(name = "image")
    @CollectionTable(name = "product_image", joinColumns = @JoinColumn(name = "product_id"))
    @ElementCollection(fetch = FetchType.EAGER)
    private List<String> images;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public BigDecimal getDiscount_price() {
        return discount_price;
    }

    public void setDiscount_price(BigDecimal discount_price) {
        this.discount_price = discount_price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Boolean getActive() {
        return active;
    }

    public void setActive(Boolean active) {
        this.active = active;
    }

    public List<String> getImages() {
        return images;
    }

    public void setImages(List<String> images) {
        this.images = images;
    }
}
