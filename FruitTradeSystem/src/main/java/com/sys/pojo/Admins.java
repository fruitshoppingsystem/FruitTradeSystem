package com.sys.pojo;

public class Admins {
    private Integer aId;
    private String aName;
    private String aPassword;
    private Integer aState;

    public Admins() {
    }

    public Admins(Integer aId, String aName, String aPassword, Integer aState) {
        this.aId = aId;
        this.aName = aName;
        this.aPassword = aPassword;
        this.aState = aState;
    }

    @Override
    public String toString() {
        return "Admins{" +
                "aId=" + aId +
                ", aName='" + aName + '\'' +
                ", aPassword='" + aPassword + '\'' +
                ", aState='" + aState + '\'' +
                '}';
    }

    public Integer getaId() {
        return aId;
    }

    public void setaId(Integer aId) {
        this.aId = aId;
    }

    public String getaName() {
        return aName;
    }

    public void setaName(String aName) {
        this.aName = aName;
    }

    public String getaPassword() {
        return aPassword;
    }

    public void setaPassword(String aPassword) {
        this.aPassword = aPassword;
    }

    public Integer getaState() {
        return aState;
    }

    public void setaState(Integer aState) {
        this.aState = aState;
    }
}
