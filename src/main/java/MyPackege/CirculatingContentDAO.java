package MyPackege;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CirculatingContentDAO {

    public List<CirculatingContent> circulatingContentList = new ArrayList<>();
    private ConnectionDB connectionDB = new ConnectionDB();
    Statement statement = connectionDB.connect().createStatement();
    ResultSet resultSet = null;

    public CirculatingContentDAO() throws SQLException{

    }
    public void fillCirculatingContent() throws SQLException {
        String query = "SELECT * FROM circulating";
        resultSet = statement.executeQuery(query);
        while (resultSet.next()){
            CirculatingContent circulatingContent = new CirculatingContent();
            circulatingContent.setId(resultSet.getInt(1));
            circulatingContent.setPicture(resultSet.getString(2));
            circulatingContent.setPictureName((resultSet.getString(3)));
            circulatingContent.setArtist((resultSet.getString(4)));
            circulatingContent.setMaterial((resultSet.getString(5)));
            circulatingContent.setSizes(resultSet.getString(6));
            circulatingContentList.add(circulatingContent);
        }
    }
    public List<CirculatingContent> getCirculatingContentList(){
        return circulatingContentList;
    }

}
