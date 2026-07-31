.class public Lorg/eclipse/jetty/util/Loader;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClassPath(Ljava/lang/ClassLoader;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, p0

    .line 171
    :goto_0
    if-eqz v1, :cond_3

    instance-of v0, v1, Ljava/net/URLClassLoader;

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 173
    check-cast v0, Ljava/net/URLClassLoader;

    invoke-virtual {v0}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v3

    .line 174
    if-eqz v3, :cond_2

    .line 176
    const/4 v0, 0x0

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 178
    aget-object v4, v3, v0

    invoke-static {v4}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v4

    .line 179
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v4

    .line 180
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 182
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 183
    sget-char v5, Ljava/io/File;->pathSeparatorChar:C

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 188
    :cond_2
    invoke-virtual {v1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_0

    .line 190
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/net/URL;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 51
    .line 52
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    move-object v2, v1

    .line 53
    :goto_0
    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 56
    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0

    .line 59
    :cond_1
    if-nez p0, :cond_2

    move-object v0, v1

    :goto_1
    move-object v4, v0

    move-object v0, v2

    move-object v2, v4

    .line 60
    :goto_2
    if-nez v0, :cond_4

    if-eqz v2, :cond_4

    .line 62
    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    .line 63
    if-nez v3, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {v2}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_3
    move-object v2, v0

    move-object v0, v3

    goto :goto_2

    .line 59
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 63
    goto :goto_3

    .line 66
    :cond_4
    if-nez v0, :cond_5

    .line 68
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 71
    :cond_5
    return-object v0
.end method

.method public static getResourceBundle(Ljava/lang/Class;Ljava/lang/String;ZLjava/util/Locale;)Ljava/util/ResourceBundle;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/ResourceBundle;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 130
    .line 132
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    move-object v2, v1

    move-object v3, v1

    .line 133
    :goto_0
    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    .line 135
    :try_start_0
    invoke-static {p1, p3, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 137
    :cond_0
    :goto_1
    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v4

    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 137
    goto :goto_0

    .line 140
    :cond_2
    if-nez p0, :cond_3

    move-object v0, v1

    :goto_2
    move-object v4, v0

    move-object v0, v2

    move-object v2, v3

    .line 141
    :goto_3
    if-nez v0, :cond_5

    if-eqz v4, :cond_5

    .line 143
    :try_start_1
    invoke-static {p1, p3, v4}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v3, v2

    move-object v2, v0

    .line 145
    :goto_4
    if-nez v2, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {v4}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_5
    move-object v4, v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_3

    .line 140
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_2

    .line 144
    :catch_1
    move-exception v3

    if-nez v2, :cond_9

    move-object v2, v0

    goto :goto_4

    :cond_4
    move-object v0, v1

    .line 145
    goto :goto_5

    .line 148
    :cond_5
    if-nez v0, :cond_7

    .line 150
    :try_start_2
    invoke-static {p1, p3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    move-object v1, v2

    .line 154
    :cond_6
    :goto_6
    if-eqz v0, :cond_8

    .line 155
    return-object v0

    .line 151
    :catch_2
    move-exception v1

    if-eqz v2, :cond_6

    :cond_7
    move-object v1, v2

    goto :goto_6

    .line 156
    :cond_8
    throw v1

    :cond_9
    move-object v3, v2

    move-object v2, v0

    goto :goto_4
.end method

.method public static loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static loadClass(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 95
    .line 97
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    move-object v2, v1

    move-object v3, v1

    .line 98
    :goto_0
    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    .line 100
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 102
    :cond_0
    :goto_1
    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v4

    if-nez v3, :cond_0

    move-object v3, v4

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 102
    goto :goto_0

    .line 105
    :cond_2
    if-nez p0, :cond_3

    move-object v0, v1

    :goto_2
    move-object v4, v0

    move-object v0, v2

    move-object v2, v3

    .line 106
    :goto_3
    if-nez v0, :cond_5

    if-eqz v4, :cond_5

    .line 108
    :try_start_1
    invoke-virtual {v4, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v3, v2

    move-object v2, v0

    .line 110
    :goto_4
    if-nez v2, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {v4}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_5
    move-object v4, v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_3

    .line 105
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_2

    .line 109
    :catch_1
    move-exception v3

    if-nez v2, :cond_9

    move-object v2, v0

    goto :goto_4

    :cond_4
    move-object v0, v1

    .line 110
    goto :goto_5

    .line 113
    :cond_5
    if-nez v0, :cond_7

    .line 115
    :try_start_2
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    move-object v1, v2

    .line 119
    :cond_6
    :goto_6
    if-eqz v0, :cond_8

    .line 120
    return-object v0

    .line 116
    :catch_2
    move-exception v1

    if-eqz v2, :cond_6

    :cond_7
    move-object v1, v2

    goto :goto_6

    .line 121
    :cond_8
    throw v1

    :cond_9
    move-object v3, v2

    move-object v2, v0

    goto :goto_4
.end method
