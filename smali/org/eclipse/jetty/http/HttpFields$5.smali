.class Lorg/eclipse/jetty/http/HttpFields$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/http/HttpFields;->getValues(Lorg/eclipse/jetty/io/Buffer;)Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lorg/eclipse/jetty/http/HttpFields$Field;

.field final synthetic b:Lorg/eclipse/jetty/http/HttpFields$Field;

.field final synthetic c:Lorg/eclipse/jetty/http/HttpFields;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/http/HttpFields;Lorg/eclipse/jetty/http/HttpFields$Field;)V
    .locals 1

    .prologue
    .line 535
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpFields$5;->c:Lorg/eclipse/jetty/http/HttpFields;

    iput-object p2, p0, Lorg/eclipse/jetty/http/HttpFields$5;->b:Lorg/eclipse/jetty/http/HttpFields$Field;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$5;->b:Lorg/eclipse/jetty/http/HttpFields$Field;

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$5;->a:Lorg/eclipse/jetty/http/HttpFields$Field;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$5;->a:Lorg/eclipse/jetty/http/HttpFields$Field;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 546
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$5;->a:Lorg/eclipse/jetty/http/HttpFields$Field;

    .line 547
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpFields$5;->a:Lorg/eclipse/jetty/http/HttpFields$Field;

    invoke-static {v1}, Lorg/eclipse/jetty/http/HttpFields$Field;->c(Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpFields$5;->a:Lorg/eclipse/jetty/http/HttpFields$Field;

    .line 548
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpFields$Field;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasMoreElements()Z
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$5;->a:Lorg/eclipse/jetty/http/HttpFields$Field;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic nextElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 535
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpFields$5;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
