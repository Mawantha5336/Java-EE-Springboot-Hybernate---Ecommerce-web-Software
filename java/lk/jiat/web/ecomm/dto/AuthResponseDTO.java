package lk.jiat.web.ecomm.dto;

public class AuthResponseDTO {
    private String accessToken;
    private String refreshToken;
    private String expireIn;

    public AuthResponseDTO() {
    }

    public AuthResponseDTO(String accessToken, String refreshToken, String expireIn) {
        this.accessToken = accessToken;
        this.refreshToken = refreshToken;
        this.expireIn = expireIn;
    }

    public String getAccessToken() {
        return accessToken;
    }

    public void setAccessToken(String accessToken) {
        this.accessToken = accessToken;
    }

    public String getRefreshToken() {
        return refreshToken;
    }

    public void setRefreshToken(String refreshToken) {
        this.refreshToken = refreshToken;
    }

    public String getExpireIn() {
        return expireIn;
    }

    public void setExpireIn(String expireIn) {
        this.expireIn = expireIn;
    }
}
