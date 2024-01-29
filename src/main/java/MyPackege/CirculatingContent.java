package MyPackege;

public class CirculatingContent {
    private int id;
    private String picture;
    private String pictureName;
    private String artist;
    private String material;
    private String sizes;

    public CirculatingContent() {
    }

    public CirculatingContent(int id, String picture, String pictureName, String artist, String material, String sizes) {
        this.id = id;
        this.picture = picture;
        this.pictureName = pictureName;
        this.artist = artist;
        this.material = material;
        this.sizes = sizes;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public String getPictureName() {
        return pictureName;
    }

    public void setPictureName(String pictureName) {
        this.pictureName = pictureName;
    }

    public String getArtist() {
        return artist;
    }

    public void setArtist(String artist) {
        this.artist = artist;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    public String getSizes() {
        return sizes;
    }

    public void setSizes(String sizes) {
        this.sizes = sizes;
    }
}
