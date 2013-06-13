package pt.ulht.es.cookbook.domain;

import org.joda.time.DateTime;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;

public class Version extends Version_Base implements Comparable<Version> {
		    
    /*public static class TitleComp implements Comparator<Version> {

		public int compare(Version o1, Version o2) {
			return o1.getTitle().compareTo(o2.getTitle());
		}
	}*/
	DateTimeFormatter format = DateTimeFormat.forPattern("dd/MM/yyyy HH:mm:ss");

	public Version(String title, String problem, String solution, String author, String tag) {    	
		setTitle(title);
        setProblem(problem);
        setSolution(solution);
        setAuthor(author);
        setTag(tag);
        setCreationTimestamp(new DateTime());
    }

	public int compareTo(Version o) {
		return getCreationTimestamp().compareTo(o.getCreationTimestamp());
	}    
	
	public void delete() {
		removeRecipe();
		super.deleteDomainObject();
	}

    

}