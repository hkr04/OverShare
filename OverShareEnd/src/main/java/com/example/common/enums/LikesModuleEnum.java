package com.example.common.enums;

public enum LikesModuleEnum {
    BlOG("作品"),
    ACTIVITY("活动");

    private final String value;

    LikesModuleEnum(String value) {
        this.value = value;
    }

    public String getValue() {
        return value;
    }
}
