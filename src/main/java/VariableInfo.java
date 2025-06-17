import java.util.List;

public class VariableInfo {
    private String name;
    private String type;
    private String comment;
    private List<String> links; // Field to store @link references


    public VariableInfo(String name, String type, String comment, List<String> links) {
        this.name = name;
        this.type = type;
        this.comment = comment;
        this.links = links;
    }

    public String getName() {
        return name;
    }
    public String getType() {
        return type;
    }
    public String getComment() {
        return comment;
    }
    public void setName(String name) {
        this.name = name;
    }

    public void setType(String type) {
        this.type = type;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public List<String> getLinks() {
        return links;
    }

    public void setLinks(List<String> links) {
        this.links = links;
    }
}