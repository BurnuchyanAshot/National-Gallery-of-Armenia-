package MyPackege;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class EmployeeDB {
    public List<Employee> employeeList = new ArrayList<>();
    private ConnectionDB connectionDB = new ConnectionDB();
    Statement statement = connectionDB.connect().createStatement();
    ResultSet resultSet = null;
    public EmployeeDB() throws SQLException {
    }
    public void fillEmployees() throws SQLException{
        String query = "SELECT * FROM employee";
        resultSet = statement.executeQuery(query);
        while (resultSet.next()){
            Employee employee = new Employee();
            employee.setEmployeeId(resultSet.getInt(1));
            employee.setEmployeePicture(resultSet.getString(2));
            employee.setEmployeeNameSurname(resultSet.getString(3));
            employee.setEmployeePosition(resultSet.getString(4));
            employee.setEmployeePhoneNumber(resultSet.getString(5));
            employee.setEmployeeEmail(resultSet.getString(6));
            employeeList.add(employee);
        }
    }
    public List<Employee> getEmployeeList() {
        return employeeList;
    }
}
