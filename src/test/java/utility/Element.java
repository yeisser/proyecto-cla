package utility;

import org.openqa.selenium.By;

public class Element {

    public enum TipoIndentificadores{
        xpath,
        name,
        classname,
        cssselector,
        id,
        linktext,
        partiallinktext,
        tagname,
        value,
        novalue;

        public static TipoIndentificadores getValue(String str){
            try{return valueOf(str);}
            catch (IllegalArgumentException ex){return novalue;}
        }
    }


    public static By Mobile_Element(String objectType, String objectName)
    {
        switch (TipoIndentificadores.getValue(objectType.toLowerCase()))
        {
            case xpath:
                return By.xpath(objectName);
            case classname:
                return By.className(objectName);
            case id:
                return By.id(objectName);
            case name:
                return By.name(objectName);
            case cssselector:
                return By.cssSelector(objectName);
            case linktext:
                return By.linkText(objectName);
            case partiallinktext:
                return By.partialLinkText(objectName);
            default:
                break;
        }

        return null;
    }

}
