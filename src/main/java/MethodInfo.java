import java.util.List;

public class MethodInfo {
    private String name;
    private String returnType;
    private String comment;
    private List<String> links; // Field to store @link references


    public MethodInfo(String name, String returnType, String comment, List<String> links) {
        this.name = name;
        this.returnType = returnType;
        this.comment = comment;
        this.links = links;
    }

    public String getName() {
        return name;
    }

    public String getReturnType() {
        return returnType;
    }

    public String getComment() {
        return comment;
    }

    public void setName(String name) {
        this.name = name;
    }
    public void setReturnType(String returnType) {
        this.returnType = returnType;
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
