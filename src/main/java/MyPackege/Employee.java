package MyPackege;

public class Employee {
    private int employeeId;
    private String employeePicture;
    private String employeeNameSurname;
    private String employeePosition;
    private String employeePhoneNumber;
    private String employeeEmail;

    public Employee() {
    }

    public Employee(int employeeId, String employeePicture, String employeeNameSurname, String employeePosition, String employeePhoneNumber, String employeeEmail) {
        this.employeeId = employeeId;
        this.employeePicture = employeePicture;
        this.employeeNameSurname = employeeNameSurname;
        this.employeePosition = employeePosition;
        this.employeePhoneNumber = employeePhoneNumber;
        this.employeeEmail = employeeEmail;
    }

    public int getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(int employeeId) {
        this.employeeId = employeeId;
    }

    public String getEmployeePicture() {
        return employeePicture;
    }

    public void setEmployeePicture(String employeePicture) {
        this.employeePicture = employeePicture;
    }

    public String getEmployeeNameSurname() {
        return employeeNameSurname;
    }

    public void setEmployeeNameSurname(String employeeNameSurname) {
        this.employeeNameSurname = employeeNameSurname;
    }

    public String getEmployeePosition() {
        return employeePosition;
    }

    public void setEmployeePosition(String employeePosition) {
        this.employeePosition = employeePosition;
    }

    public String getEmployeePhoneNumber() {
        return employeePhoneNumber;
    }

    public void setEmployeePhoneNumber(String employeePhoneNumber) {
        this.employeePhoneNumber = employeePhoneNumber;
    }

    public String getEmployeeEmail() {
        return employeeEmail;
    }

    public void setEmployeeEmail(String employeeEmail) {
        this.employeeEmail = employeeEmail;
    }
}
