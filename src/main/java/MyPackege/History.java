package MyPackege;

public class History {
    private int historyId;
    private String historyYear;
    private String historyPicture;
    private String historyText;
    public History() {
    }
    public History(int historyId, String historyYear, String historyPicture, String historyText) {
        this.historyId = historyId;
        this.historyYear = historyYear;
        this.historyPicture = historyPicture;
        this.historyText = historyText;
    }

    public int getHistoryId() {
        return historyId;
    }

    public void setHistoryId(int historyId) {
        this.historyId = historyId;
    }

    public String getHistoryYear() {
        return historyYear;
    }

    public void setHistoryYear(String historyYear) {
        this.historyYear = historyYear;
    }

    public String getHistoryPicture() {
        return historyPicture;
    }

    public void setHistoryPicture(String historyPicture) {
        this.historyPicture = historyPicture;
    }

    public String getHistoryText() {
        return historyText;
    }

    public void setHistoryText(String historyText) {
        this.historyText = historyText;
    }
}
