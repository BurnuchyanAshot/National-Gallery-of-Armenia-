package MyPackege;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class HistoryDAO {
    List<History> historyList = new ArrayList<>();
    ConnectionDB connectionDB = new ConnectionDB();
    Statement statement = connectionDB.connect().createStatement();
    ResultSet resultSet = null;

    public HistoryDAO() throws SQLException {
    }
    public void fillHistory() throws SQLException {
        String query = "SELECT * FROM history";
        resultSet = statement.executeQuery(query);
        while (resultSet.next()){
            History history = new History();
            history.setHistoryId(resultSet.getInt(1));
            history.setHistoryYear(resultSet.getString(2));
            history.setHistoryPicture(resultSet.getString(3));
            history.setHistoryText(resultSet.getString(4));
            historyList.add(history);
        }
    }
    public List<History> getHistoryList(){
        return historyList;
    }
}
