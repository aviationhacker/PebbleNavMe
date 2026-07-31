.class public Lorg/eclipse/jetty/util/IntrospectionUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkParams([Ljava/lang/Class;[Ljava/lang/Class;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;Z)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 147
    if-nez p0, :cond_2

    .line 148
    if-nez p1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 148
    goto :goto_0

    .line 149
    :cond_2
    if-nez p1, :cond_3

    move v0, v1

    .line 150
    goto :goto_0

    .line 152
    :cond_3
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_4

    move v0, v1

    .line 153
    goto :goto_0

    .line 155
    :cond_4
    array-length v2, p0

    if-eqz v2, :cond_0

    .line 159
    if-eqz p2, :cond_6

    move v2, v1

    .line 161
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_5

    aget-object v3, p0, v2

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 162
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 166
    :goto_2
    array-length v3, p0

    if-ge v2, v3, :cond_5

    aget-object v3, p0, v2

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 168
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 172
    :cond_5
    array-length v3, p0

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 174
    goto :goto_0

    :cond_6
    move v2, v1

    goto :goto_2
.end method

.method public static containsSameFieldName(Ljava/lang/reflect/Field;Ljava/lang/Class;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class",
            "<*>;Z)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 236
    if-eqz p2, :cond_0

    .line 238
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    :goto_0
    return v0

    .line 243
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    move v1, v0

    .line 244
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    if-nez v1, :cond_2

    .line 246
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 247
    const/4 v1, 0x1

    .line 244
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 249
    goto :goto_0
.end method

.method public static containsSameMethodSignature(Ljava/lang/reflect/Method;Ljava/lang/Class;Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<*>;Z)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 217
    if-eqz p2, :cond_0

    .line 219
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    :goto_0
    return v0

    .line 224
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    move v1, v0

    .line 225
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_2

    if-nez v1, :cond_2

    .line 227
    aget-object v3, v2, v0

    invoke-static {p0, v3}, Lorg/eclipse/jetty/util/IntrospectionUtil;->isSameSignature(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 228
    const/4 v1, 0x1

    .line 225
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 230
    goto :goto_0
.end method

.method public static findField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;ZZ)Ljava/lang/reflect/Field;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;ZZ)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 89
    if-nez p0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/NoSuchFieldException;

    const-string v1, "No class"

    invoke-direct {v0, v1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    if-nez p1, :cond_1

    .line 92
    new-instance v0, Ljava/lang/NoSuchFieldException;

    const-string v1, "No field name"

    invoke-direct {v0, v1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 97
    if-eqz p4, :cond_3

    .line 99
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 116
    :cond_2
    :goto_0
    return-object v0

    .line 104
    :cond_3
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 107
    :cond_4
    if-eqz p3, :cond_5

    .line 109
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p4}, Lorg/eclipse/jetty/util/IntrospectionUtil;->findInheritedField(Ljava/lang/Package;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_0

    .line 112
    :cond_5
    new-instance v0, Ljava/lang/NoSuchFieldException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No field with name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :catch_0
    move-exception v0

    .line 116
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p4}, Lorg/eclipse/jetty/util/IntrospectionUtil;->findInheritedField(Ljava/lang/Package;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_0
.end method

.method protected static findInheritedField(Ljava/lang/Package;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/reflect/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Package;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 282
    if-nez p1, :cond_0

    .line 283
    new-instance v0, Ljava/lang/NoSuchFieldException;

    const-string v1, "No class"

    invoke-direct {v0, v1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_0
    if-nez p2, :cond_1

    .line 285
    new-instance v0, Ljava/lang/NoSuchFieldException;

    const-string v1, "No field name"

    invoke-direct {v0, v1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_1
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 289
    invoke-static {p0, v0}, Lorg/eclipse/jetty/util/IntrospectionUtil;->isInheritable(Ljava/lang/Package;Ljava/lang/reflect/Member;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p3, v1, p4}, Lorg/eclipse/jetty/util/IntrospectionUtil;->isTypeCompatible(Ljava/lang/Class;Ljava/lang/Class;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 296
    :goto_0
    return-object v0

    .line 292
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1, p2, p3, p4}, Lorg/eclipse/jetty/util/IntrospectionUtil;->findInheritedField(Ljava/lang/Package;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 296
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1, p2, p3, p4}, Lorg/eclipse/jetty/util/IntrospectionUtil;->findInheritedField(Ljava/lang/Package;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_0
.end method

.method protected static findInheritedMethod(Ljava/lang/Package;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Package;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;Z)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 257
    if-nez p1, :cond_0

    .line 258
    new-instance v0, Ljava/lang/NoSuchMethodException;

    const-string v1, "No class"

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_0
    if-nez p2, :cond_1

    .line 260
    new-instance v0, Ljava/lang/NoSuchMethodException;

    const-string v1, "No method name"

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_1
    const/4 v1, 0x0

    .line 263
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 264
    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_3

    if-nez v0, :cond_3

    .line 266
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, v2, v1

    invoke-static {p0, v3}, Lorg/eclipse/jetty/util/IntrospectionUtil;->isInheritable(Ljava/lang/Package;Ljava/lang/reflect/Member;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, p3, p4}, Lorg/eclipse/jetty/util/IntrospectionUtil;->checkParams([Ljava/lang/Class;[Ljava/lang/Class;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 269
    aget-object v0, v2, v1

    .line 264
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 271
    :cond_3
    if-eqz v0, :cond_4

    .line 276
    :goto_1
    return-object v0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1, p2, p3, p4}, Lorg/eclipse/jetty/util/IntrospectionUtil;->findInheritedMethod(Ljava/lang/Package;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_1
.end method

.method public static findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;ZZ)Ljava/lang/reflect/Method;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;ZZ)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 56
    if-nez p0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/NoSuchMethodException;

    const-string v1, "No class"

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    :cond_1
    new-instance v0, Ljava/lang/NoSuchMethodException;

    const-string v1, "No method name"

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_2
    const/4 v0, 0x0

    .line 62
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    move v1, v2

    .line 63
    :goto_0
    array-length v3, v4

    if-ge v1, v3, :cond_5

    if-nez v0, :cond_5

    .line 65
    aget-object v3, v4, v1

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    aget-object v3, v4, v1

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    if-nez p2, :cond_4

    new-array v3, v2, [Ljava/lang/Class;

    :goto_1
    invoke-static {v5, v3, p4}, Lorg/eclipse/jetty/util/IntrospectionUtil;->checkParams([Ljava/lang/Class;[Ljava/lang/Class;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 67
    aget-object v0, v4, v1

    .line 63
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    move-object v3, p2

    .line 65
    goto :goto_1

    .line 71
    :cond_5
    if-eqz v0, :cond_6

    .line 76
    :goto_2
    return-object v0

    .line 75
    :cond_6
    if-eqz p3, :cond_7

    .line 76
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p4}, Lorg/eclipse/jetty/util/IntrospectionUtil;->findInheritedMethod(Ljava/lang/Package;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_2

    .line 78
    :cond_7
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No such method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isInheritable(Ljava/lang/Package;Ljava/lang/reflect/Member;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 126
    if-nez p0, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v0

    .line 128
    :cond_1
    if-eqz p1, :cond_0

    .line 131
    invoke-interface {p1}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v2

    .line 132
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 133
    goto :goto_0

    .line 134
    :cond_2
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 135
    goto :goto_0

    .line 136
    :cond_3
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p1}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 137
    goto :goto_0
.end method

.method public static isJavaBeanCompliantSetter(Ljava/lang/reflect/Method;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 38
    if-nez p0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v0

    .line 41
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_0

    .line 44
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "set"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    if-ne v2, v1, :cond_0

    move v0, v1

    .line 50
    goto :goto_0
.end method

.method public static isSameSignature(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 183
    if-nez p0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return v0

    .line 185
    :cond_1
    if-eqz p1, :cond_0

    .line 188
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 189
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 191
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isTypeCompatible(Ljava/lang/Class;Ljava/lang/Class;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;Z)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 201
    if-nez p0, :cond_1

    .line 202
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 209
    :cond_0
    :goto_0
    return v0

    .line 203
    :cond_1
    if-eqz p1, :cond_0

    .line 206
    if-eqz p2, :cond_2

    .line 207
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 209
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0
.end method
