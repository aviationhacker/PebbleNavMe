.class public Lcom/batescorp/pebble/nav/lib/CompareUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(Ljava/lang/Enum;Ljava/lang/Enum;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 99
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    if-nez p0, :cond_2

    move v0, v1

    .line 105
    goto :goto_0

    .line 109
    :cond_2
    if-nez p1, :cond_3

    move v0, v1

    .line 110
    goto :goto_0

    .line 113
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static compare(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 73
    const/4 v0, 0x1

    .line 86
    :cond_0
    :goto_0
    return v0

    .line 77
    :cond_1
    if-eqz p0, :cond_0

    .line 82
    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 19
    const/4 v0, 0x1

    .line 32
    :cond_0
    :goto_0
    return v0

    .line 23
    :cond_1
    if-eqz p0, :cond_0

    .line 28
    if-eqz p1, :cond_0

    .line 32
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static compareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 45
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 46
    const/4 v0, 0x1

    .line 59
    :cond_0
    :goto_0
    return v0

    .line 50
    :cond_1
    if-eqz p0, :cond_0

    .line 55
    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
